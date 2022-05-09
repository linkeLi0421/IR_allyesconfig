; ModuleID = '/llk/IR_all_yes/drivers/memory/ti-aemif.c_pt.bc'
source_filename = "../drivers/memory/ti-aemif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.aemif_device = type { ptr, ptr, i32, i8, i32, [4 x %struct.aemif_cs_data] }
%struct.aemif_cs_data = type { i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.aemif_platform_data = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.aemif_abus_data = type { i32 }

@__initcall__kmod_ti_aemif__174_449_aemif_driver_init6 = internal global ptr @aemif_driver_init, section ".initcall6.init", align 4
@aemif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aemif_probe, ptr @aemif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aemif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aemif_driver_exit = internal global ptr @aemif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [55 x i8] c"ti_aemif.author=Murali Karicheri <m-karicheri2@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [57 x i8] c"ti_aemif.author=Ivan Khoronzhuk <ivan.khoronzhuk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [52 x i8] c"ti_aemif.description=Texas Instruments AEMIF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [38 x i8] c"ti_aemif.file=drivers/memory/ti-aemif\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [24 x i8] c"ti_aemif.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias180 = internal constant [33 x i8] c"ti_aemif.alias=platform:ti_aemif\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti-aemif\00", [23 x i8] zeroinitializer }, align 32
@aemif_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-aemif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da850-aemif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@aemif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot get clock 'aemif'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aemif_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/memory/ti-aemif.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aemif_probe._entry_ptr = internal global ptr @aemif_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,da850-aemif\00", [17 x i8] zeroinitializer }, align 32
@aemif_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error configuring chip select %d\0A\00", [62 x i8] zeroinitializer }, align 32
@aemif_probe._entry_ptr.9 = internal global ptr @aemif_probe._entry.7, section ".printk_index", align 4
@aemif_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 421, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error register sub device %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aemif_probe._entry_ptr.13 = internal global ptr @aemif_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,cs-chipselect\00", [47 x i8] zeroinitializer }, align 32
@of_aemif_parse_abus_config.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti_aemif\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"of_aemif_parse_abus_config\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cs property is required\00", [40 x i8] zeroinitializer }, align 32
@of_aemif_parse_abus_config.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cs number is incorrect %d\00", [38 x i8] zeroinitializer }, align 32
@of_aemif_parse_abus_config.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.19, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs count is more than %d\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,cs-min-turnaround-ns\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,cs-read-hold-ns\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,cs-read-strobe-ns\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,cs-read-setup-ns\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,cs-write-hold-ns\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,cs-write-strobe-ns\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,cs-write-setup-ns\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,cs-bus-width\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,cs-extended-wait-mode\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,cs-select-strobe-mode\00", [39 x i8] zeroinitializer }, align 32
@aemif_config_abus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: cannot get suitable timings\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aemif_config_abus\00", [46 x i8] zeroinitializer }, align 32
@aemif_config_abus._entry_ptr = internal global ptr @aemif_config_abus._entry, section ".printk_index", align 4
@aemif_calc_rate.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aemif_calc_rate\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: result %d from %ld, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"aemif_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 440, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 444, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"aemif_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 320, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 350, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 360, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 396, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 420, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 269, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 270, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 275, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 280, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 291, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 294, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 297, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 300, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 303, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 306, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 309, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 312, i32 32 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 315, i32 46 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 316, i32 46 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 195, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [29 x i8] c"../drivers/memory/ti-aemif.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 146, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias180, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_aemif_driver_exit, ptr @__initcall__kmod_ti_aemif__174_449_aemif_driver_init6, ptr @aemif_config_abus._entry, ptr @aemif_config_abus._entry_ptr, ptr @aemif_driver_exit, ptr @aemif_probe._entry, ptr @aemif_probe._entry.10, ptr @aemif_probe._entry.7, ptr @aemif_probe._entry_ptr, ptr @aemif_probe._entry_ptr.13, ptr @aemif_probe._entry_ptr.9, ptr @aemif_driver, ptr @.str, ptr @aemif_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aemif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aemif_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aemif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aemif_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aemif_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aemif_config_abus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aemif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aemif_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aemif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @aemif_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aemif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 76, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.aemif_device, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end12:                                         ; preds = %cond.end
  %call.i208 = tail call i32 @clk_prepare(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool.not.i = icmp eq i32 %call.i208, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call6) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call19 = tail call i32 @clk_get_rate(ptr noundef %12) #6
  %div = udiv i32 %call19, 1000
  %clk_rate = getelementptr inbounds %struct.aemif_device, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %clk_rate, align 4
  %tobool20.not = icmp eq ptr %1, null
  br i1 %tobool20.not, label %if.end17.if.else_crit_edge, label %land.lhs.true

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %call21 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end29.sink.split_crit_edge

land.lhs.true.if.end29.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end17.if.else_crit_edge
  br i1 %tobool4.not, label %if.else.if.end29_crit_edge, label %if.then25

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %cs_offset26 = getelementptr inbounds %struct.aemif_platform_data, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %cs_offset26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cs_offset26, align 4
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.then25, %land.lhs.true.if.end29.sink.split_crit_edge
  %.sink = phi i32 [ %15, %if.then25 ], [ 2, %land.lhs.true.if.end29.sink.split_crit_edge ]
  %cs_offset27 = getelementptr inbounds %struct.aemif_device, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %cs_offset27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %cs_offset27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge
  %call30 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call31 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call30) #6
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call31, ptr %call.i, align 4
  %cmp.i209 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call31 to i32
  br label %error

if.end37:                                         ; preds = %if.end29
  br i1 %tobool20.not, label %if.else46, label %if.then39

if.then39:                                        ; preds = %if.end37
  %call40 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #6
  %cmp.not217 = icmp eq ptr %call40, null
  br i1 %cmp.not217, label %if.then39.if.end61_crit_edge, label %if.then39.for.body_crit_edge

if.then39.for.body_crit_edge:                     ; preds = %if.then39
  br label %for.body

if.then39.if.end61_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then39.for.body_crit_edge
  %child_np.0218 = phi ptr [ %call45, %for.inc.for.body_crit_edge ], [ %call40, %if.then39.for.body_crit_edge ]
  %call41 = tail call fastcc i32 @of_aemif_parse_abus_config(ptr noundef %pdev, ptr noundef nonnull %child_np.0218)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %child_np.0218) #6
  br label %error

for.inc:                                          ; preds = %for.body
  %call45 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child_np.0218) #6
  %cmp.not = icmp eq ptr %call45, null
  br i1 %cmp.not, label %for.inc.if.end61_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end61_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.else46:                                        ; preds = %if.end37
  br i1 %tobool4.not, label %if.else46.if.end61_crit_edge, label %land.lhs.true48

if.else46.if.end61_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true48:                                  ; preds = %if.else46
  %num_abus_data = getelementptr inbounds %struct.aemif_platform_data, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %num_abus_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_abus_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp49.not = icmp eq i32 %20, 0
  br i1 %cmp49.not, label %land.lhs.true48.if.end61_crit_edge, label %for.cond51.preheader

land.lhs.true48.if.end61_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.cond51.preheader:                             ; preds = %land.lhs.true48
  %21 = ptrtoint ptr %num_abus_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_abus_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp53219.not = icmp eq i32 %22, 0
  br i1 %cmp53219.not, label %for.cond51.preheader.if.end61_crit_edge, label %for.body54.lr.ph

for.cond51.preheader.if.end61_crit_edge:          ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body54.lr.ph:                                 ; preds = %for.cond51.preheader
  %abus_data = getelementptr inbounds %struct.aemif_platform_data, ptr %3, i32 0, i32 2
  %num_cs = getelementptr inbounds %struct.aemif_device, ptr %call.i, i32 0, i32 3
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body54.lr.ph
  %i.0220 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc, %for.body54.for.body54_crit_edge ]
  %23 = ptrtoint ptr %abus_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %abus_data, align 4
  %arrayidx = getelementptr %struct.aemif_abus_data, ptr %24, i32 %i.0220
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %26 to i8
  %arrayidx55 = getelementptr %struct.aemif_device, ptr %call.i, i32 0, i32 5, i32 %i.0220
  %27 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %arrayidx55, align 2
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220
  %clk_rate1.i = getelementptr inbounds %struct.aemif_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %clk_rate1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clk_rate1.i, align 4
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %33 to i32
  %cs_offset.i = getelementptr inbounds %struct.aemif_device, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %cs_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cs_offset.i, align 4
  %sub.i = sub i32 %conv.i, %35
  %mul.i = shl i32 %sub.i, 2
  %add.i = add i32 %mul.i, 16
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 %add.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %and.i = lshr i32 %39, 2
  %shr.i = and i32 %and.i, 3
  %40 = mul nuw nsw i32 %shr.i, 1000000
  %mul.i.i = add nuw nsw i32 %40, 1000000
  %div.i.i = udiv i32 %mul.i.i, %31
  %conv5.i = trunc i32 %div.i.i to i8
  %ta.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 7
  %41 = ptrtoint ptr %ta.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv5.i, ptr %ta.i, align 2
  %and6.i = lshr i32 %39, 4
  %shr7.i = and i32 %and6.i, 7
  %42 = mul nuw nsw i32 %shr7.i, 1000000
  %mul.i66.i = add nuw nsw i32 %42, 1000000
  %div.i67.i = udiv i32 %mul.i66.i, %31
  %conv9.i = trunc i32 %div.i67.i to i8
  %rhold.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 6
  %43 = ptrtoint ptr %rhold.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv9.i, ptr %rhold.i, align 1
  %and10.i = lshr i32 %39, 7
  %shr11.i = and i32 %and10.i, 63
  %44 = mul nuw nsw i32 %shr11.i, 1000000
  %mul.i68.i = add nuw nsw i32 %44, 1000000
  %div.i69.i = udiv i32 %mul.i68.i, %31
  %conv13.i = trunc i32 %div.i69.i to i16
  %rstrobe.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 2
  %45 = ptrtoint ptr %rstrobe.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv13.i, ptr %rstrobe.i, align 2
  %and14.i = lshr i32 %39, 13
  %shr15.i = and i32 %and14.i, 15
  %46 = mul nuw nsw i32 %shr15.i, 1000000
  %mul.i70.i = add nuw nsw i32 %46, 1000000
  %div.i71.i = udiv i32 %mul.i70.i, %31
  %conv17.i = trunc i32 %div.i71.i to i8
  %rsetup.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 5
  %47 = ptrtoint ptr %rsetup.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv17.i, ptr %rsetup.i, align 2
  %and18.i = lshr i32 %39, 17
  %shr19.i = and i32 %and18.i, 7
  %48 = mul nuw nsw i32 %shr19.i, 1000000
  %mul.i72.i = add nuw nsw i32 %48, 1000000
  %div.i73.i = udiv i32 %mul.i72.i, %31
  %conv21.i = trunc i32 %div.i73.i to i8
  %whold.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 4
  %49 = ptrtoint ptr %whold.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv21.i, ptr %whold.i, align 1
  %and22.i = lshr i32 %39, 20
  %shr23.i = and i32 %and22.i, 63
  %50 = mul nuw nsw i32 %shr23.i, 1000000
  %mul.i74.i = add nuw nsw i32 %50, 1000000
  %div.i75.i = udiv i32 %mul.i74.i, %31
  %conv25.i = trunc i32 %div.i75.i to i16
  %wstrobe.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 1
  %51 = ptrtoint ptr %wstrobe.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv25.i, ptr %wstrobe.i, align 2
  %and26.i = lshr i32 %39, 26
  %shr27.i = and i32 %and26.i, 15
  %52 = mul nuw nsw i32 %shr27.i, 1000000
  %mul.i76.i = add nuw nsw i32 %52, 1000000
  %div.i77.i = udiv i32 %mul.i76.i, %31
  %conv29.i = trunc i32 %div.i77.i to i8
  %wsetup.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 3
  %53 = ptrtoint ptr %wsetup.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv29.i, ptr %wsetup.i, align 2
  %and30.i = lshr i32 %39, 30
  %54 = trunc i32 %and30.i to i8
  %conv32.i = and i8 %54, 1
  %enable_ew.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 9
  %55 = ptrtoint ptr %enable_ew.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv32.i, ptr %enable_ew.i, align 2
  %shr34.i = lshr i32 %39, 31
  %conv35.i = trunc i32 %shr34.i to i8
  %enable_ss.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 8
  %56 = ptrtoint ptr %enable_ss.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv35.i, ptr %enable_ss.i, align 1
  %57 = trunc i32 %39 to i8
  %conv37.i = and i8 %57, 1
  %asize.i = getelementptr %struct.aemif_device, ptr %29, i32 0, i32 5, i32 %i.0220, i32 10
  %58 = ptrtoint ptr %asize.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv37.i, ptr %asize.i, align 1
  %inc = add nuw i32 %i.0220, 1
  %59 = ptrtoint ptr %num_cs to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_cs, align 4
  %inc58 = add i8 %60, 1
  store i8 %inc58, ptr %num_cs, align 4
  %61 = ptrtoint ptr %num_abus_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_abus_data, align 4
  %cmp53 = icmp ult i32 %inc, %62
  br i1 %cmp53, label %for.body54.for.body54_crit_edge, label %for.body54.if.end61_crit_edge

for.body54.if.end61_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body54

if.end61:                                         ; preds = %for.body54.if.end61_crit_edge, %for.cond51.preheader.if.end61_crit_edge, %land.lhs.true48.if.end61_crit_edge, %if.else46.if.end61_crit_edge, %for.inc.if.end61_crit_edge, %if.then39.if.end61_crit_edge
  %num_cs63 = getelementptr inbounds %struct.aemif_device, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %num_cs63 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_cs63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp65222.not = icmp eq i8 %64, 0
  br i1 %cmp65222.not, label %if.end61.for.end82_crit_edge, label %if.end61.for.body67_crit_edge

if.end61.for.body67_crit_edge:                    ; preds = %if.end61
  br label %for.body67

if.end61.for.end82_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end82

for.body67:                                       ; preds = %for.inc80.for.body67_crit_edge, %if.end61.for.body67_crit_edge
  %i.1223 = phi i32 [ %inc81, %for.inc80.for.body67_crit_edge ], [ 0, %if.end61.for.body67_crit_edge ]
  %call68 = tail call fastcc i32 @aemif_config_abus(ptr noundef %pdev, i32 noundef %i.1223)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %for.inc80

do.end74:                                         ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx76 = getelementptr %struct.aemif_device, ptr %call.i, i32 0, i32 5, i32 %i.1223
  %65 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx76, align 2
  %conv78 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv78) #9
  br label %error

for.inc80:                                        ; preds = %for.body67
  %inc81 = add nuw nsw i32 %i.1223, 1
  %67 = ptrtoint ptr %num_cs63 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_cs63, align 4
  %conv64 = zext i8 %68 to i32
  %cmp65 = icmp ult i32 %inc81, %conv64
  br i1 %cmp65, label %for.inc80.for.body67_crit_edge, label %for.inc80.for.end82_crit_edge

for.inc80.for.end82_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end82

for.inc80.for.body67_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

for.end82:                                        ; preds = %for.inc80.for.end82_crit_edge, %if.end61.for.end82_crit_edge
  br i1 %tobool20.not, label %if.else98, label %if.then84

if.then84:                                        ; preds = %for.end82
  %call85 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #6
  %cmp87.not224 = icmp eq ptr %call85, null
  br i1 %cmp87.not224, label %if.then84.cleanup_crit_edge, label %if.then84.for.body89_crit_edge

if.then84.for.body89_crit_edge:                   ; preds = %if.then84
  br label %for.body89

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body89:                                       ; preds = %for.inc95.for.body89_crit_edge, %if.then84.for.body89_crit_edge
  %child_np.1225 = phi ptr [ %call96, %for.inc95.for.body89_crit_edge ], [ %call85, %if.then84.for.body89_crit_edge ]
  %call90 = tail call i32 @of_platform_populate(ptr noundef nonnull %child_np.1225, ptr noundef null, ptr noundef %cond, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %for.inc95

if.then93:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %child_np.1225) #6
  br label %error

for.inc95:                                        ; preds = %for.body89
  %call96 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child_np.1225) #6
  %cmp87.not = icmp eq ptr %call96, null
  br i1 %cmp87.not, label %for.inc95.cleanup_crit_edge, label %for.inc95.for.body89_crit_edge

for.inc95.for.body89_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body89

for.inc95.cleanup_crit_edge:                      ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else98:                                        ; preds = %for.end82
  br i1 %tobool4.not, label %if.else98.cleanup_crit_edge, label %for.cond101.preheader

if.else98.cleanup_crit_edge:                      ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond101.preheader:                            ; preds = %if.else98
  %num_sub_devices = getelementptr inbounds %struct.aemif_platform_data, ptr %3, i32 0, i32 5
  %69 = ptrtoint ptr %num_sub_devices to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_sub_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp102226.not = icmp eq i32 %70, 0
  br i1 %cmp102226.not, label %for.cond101.preheader.cleanup_crit_edge, label %for.body104.lr.ph

for.cond101.preheader.cleanup_crit_edge:          ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body104.lr.ph:                                ; preds = %for.cond101.preheader
  %sub_devices = getelementptr inbounds %struct.aemif_platform_data, ptr %3, i32 0, i32 4
  br label %for.body104

for.body104:                                      ; preds = %for.inc118.for.body104_crit_edge, %for.body104.lr.ph
  %i.2227 = phi i32 [ 0, %for.body104.lr.ph ], [ %inc119, %for.inc118.for.body104_crit_edge ]
  %71 = ptrtoint ptr %sub_devices to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sub_devices, align 4
  %parent = getelementptr %struct.platform_device, ptr %72, i32 %i.2227, i32 3, i32 1
  %73 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dev1, ptr %parent, align 8
  %74 = load ptr, ptr %sub_devices, align 4
  %arrayidx108 = getelementptr %struct.platform_device, ptr %74, i32 %i.2227
  %call109 = tail call i32 @platform_device_register(ptr noundef %arrayidx108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %for.body104.for.inc118_crit_edge, label %do.end114

for.body104.for.inc118_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc118

do.end114:                                        ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %sub_devices to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sub_devices, align 4
  %arrayidx116 = getelementptr %struct.platform_device, ptr %76, i32 %i.2227
  %77 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx116, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef %78) #9
  br label %for.inc118

for.inc118:                                       ; preds = %do.end114, %for.body104.for.inc118_crit_edge
  %inc119 = add nuw i32 %i.2227, 1
  %79 = ptrtoint ptr %num_sub_devices to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_sub_devices, align 4
  %cmp102 = icmp ult i32 %inc119, %80
  br i1 %cmp102, label %for.inc118.for.body104_crit_edge, label %for.inc118.cleanup_crit_edge

for.inc118.cleanup_crit_edge:                     ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc118.for.body104_crit_edge:                 ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body104

error:                                            ; preds = %if.then93, %do.end74, %if.then43, %if.then34
  %ret.0 = phi i32 [ %18, %if.then34 ], [ %call41, %if.then43 ], [ %call68, %do.end74 ], [ %call90, %if.then93 ]
  %81 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %82) #6
  tail call void @clk_unprepare(ptr noundef %82) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %for.inc118.cleanup_crit_edge, %for.cond101.preheader.cleanup_crit_edge, %if.else98.cleanup_crit_edge, %for.inc95.cleanup_crit_edge, %if.then84.cleanup_crit_edge, %if.then3.i, %if.end12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ %ret.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else98.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i208, %if.end12.cleanup_crit_edge ], [ 0, %for.cond101.preheader.cleanup_crit_edge ], [ 0, %if.then84.cleanup_crit_edge ], [ 0, %for.inc118.cleanup_crit_edge ], [ 0, %for.inc95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aemif_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.aemif_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_aemif_parse_abus_config(ptr noundef %pdev, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %cs = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #6
  %2 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cs, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !92
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef nonnull %cs, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_aemif_parse_abus_config, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !93

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug171, ptr noundef %dev, ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs, align 4
  %cs_offset = getelementptr inbounds %struct.aemif_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cs_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_offset, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp = icmp ugt i32 %sub, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp9 = icmp ult i32 %5, %7
  %or.cond = or i1 %cmp9, %cmp
  br i1 %or.cond, label %do.body11, label %if.end28

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_aemif_parse_abus_config, %if.then23)) #6
          to label %cleanup [label %if.then23], !srcloc !93

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %8 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cs, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug172, ptr noundef %dev24, ptr noundef nonnull @.str.18, i32 noundef %9) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %num_cs = getelementptr inbounds %struct.aemif_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %num_cs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp29 = icmp ugt i8 %11, 3
  br i1 %cmp29, label %do.body32, label %if.end49

do.body32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_aemif_parse_abus_config, %if.then44)) #6
          to label %cleanup [label %if.then44], !srcloc !93

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug173, ptr noundef %dev45, ptr noundef nonnull @.str.19, i32 noundef 4) #6
  br label %cleanup

if.end49:                                         ; preds = %if.end28
  %conv = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv
  %conv51 = trunc i32 %5 to i8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv51, ptr %arrayidx, align 2
  %inc = add nuw nsw i8 %11, 1
  %13 = ptrtoint ptr %num_cs to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %inc, ptr %num_cs, align 4
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv
  %clk_rate1.i = getelementptr inbounds %struct.aemif_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %clk_rate1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_rate1.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %19 to i32
  %cs_offset.i = getelementptr inbounds %struct.aemif_device, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %cs_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cs_offset.i, align 4
  %sub.i = sub i32 %conv.i, %21
  %mul.i = shl i32 %sub.i, 2
  %add.i = add i32 %mul.i, 16
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %15, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add.i
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  %25 = call i32 @llvm.bswap.i32(i32 %24) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %and.i = lshr i32 %25, 2
  %shr.i = and i32 %and.i, 3
  %26 = mul nuw nsw i32 %shr.i, 1000000
  %mul.i.i = add nuw nsw i32 %26, 1000000
  %div.i.i = udiv i32 %mul.i.i, %17
  %conv5.i = trunc i32 %div.i.i to i8
  %ta.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 7
  %27 = ptrtoint ptr %ta.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5.i, ptr %ta.i, align 2
  %and6.i = lshr i32 %25, 4
  %shr7.i = and i32 %and6.i, 7
  %28 = mul nuw nsw i32 %shr7.i, 1000000
  %mul.i66.i = add nuw nsw i32 %28, 1000000
  %div.i67.i = udiv i32 %mul.i66.i, %17
  %conv9.i = trunc i32 %div.i67.i to i8
  %rhold.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 6
  %29 = ptrtoint ptr %rhold.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv9.i, ptr %rhold.i, align 1
  %and10.i = lshr i32 %25, 7
  %shr11.i = and i32 %and10.i, 63
  %30 = mul nuw nsw i32 %shr11.i, 1000000
  %mul.i68.i = add nuw nsw i32 %30, 1000000
  %div.i69.i = udiv i32 %mul.i68.i, %17
  %conv13.i = trunc i32 %div.i69.i to i16
  %rstrobe.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 2
  %31 = ptrtoint ptr %rstrobe.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv13.i, ptr %rstrobe.i, align 2
  %and14.i = lshr i32 %25, 13
  %shr15.i = and i32 %and14.i, 15
  %32 = mul nuw nsw i32 %shr15.i, 1000000
  %mul.i70.i = add nuw nsw i32 %32, 1000000
  %div.i71.i = udiv i32 %mul.i70.i, %17
  %conv17.i = trunc i32 %div.i71.i to i8
  %rsetup.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 5
  %33 = ptrtoint ptr %rsetup.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv17.i, ptr %rsetup.i, align 2
  %and18.i = lshr i32 %25, 17
  %shr19.i = and i32 %and18.i, 7
  %34 = mul nuw nsw i32 %shr19.i, 1000000
  %mul.i72.i = add nuw nsw i32 %34, 1000000
  %div.i73.i = udiv i32 %mul.i72.i, %17
  %conv21.i = trunc i32 %div.i73.i to i8
  %whold.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 4
  %35 = ptrtoint ptr %whold.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv21.i, ptr %whold.i, align 1
  %and22.i = lshr i32 %25, 20
  %shr23.i = and i32 %and22.i, 63
  %36 = mul nuw nsw i32 %shr23.i, 1000000
  %mul.i74.i = add nuw nsw i32 %36, 1000000
  %div.i75.i = udiv i32 %mul.i74.i, %17
  %conv25.i = trunc i32 %div.i75.i to i16
  %wstrobe.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 1
  %37 = ptrtoint ptr %wstrobe.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv25.i, ptr %wstrobe.i, align 2
  %and26.i = lshr i32 %25, 26
  %shr27.i = and i32 %and26.i, 15
  %38 = mul nuw nsw i32 %shr27.i, 1000000
  %mul.i76.i = add nuw nsw i32 %38, 1000000
  %div.i77.i = udiv i32 %mul.i76.i, %17
  %conv29.i = trunc i32 %div.i77.i to i8
  %wsetup.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 3
  %39 = ptrtoint ptr %wsetup.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv29.i, ptr %wsetup.i, align 2
  %and30.i = lshr i32 %25, 30
  %40 = trunc i32 %and30.i to i8
  %conv32.i = and i8 %40, 1
  %enable_ew.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 9
  %41 = ptrtoint ptr %enable_ew.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv32.i, ptr %enable_ew.i, align 2
  %shr34.i = lshr i32 %25, 31
  %conv35.i = trunc i32 %shr34.i to i8
  %enable_ss.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 8
  %42 = ptrtoint ptr %enable_ss.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv35.i, ptr %enable_ss.i, align 1
  %43 = trunc i32 %25 to i8
  %conv37.i = and i8 %43, 1
  %asize.i = getelementptr %struct.aemif_device, ptr %15, i32 0, i32 5, i32 %conv, i32 10
  %44 = ptrtoint ptr %asize.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv37.i, ptr %asize.i, align 1
  %call.i.i140 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.20, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i140)
  %tobool56.not = icmp sgt i32 %call.i.i140, -1
  br i1 %tobool56.not, label %if.then57, label %if.end49.if.end59_crit_edge

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %conv58 = trunc i32 %46 to i8
  %ta = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 7
  %47 = ptrtoint ptr %ta to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv58, ptr %ta, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end49.if.end59_crit_edge
  %call.i.i141 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.21, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i141)
  %tobool61.not = icmp sgt i32 %call.i.i141, -1
  br i1 %tobool61.not, label %if.then62, label %if.end59.if.end64_crit_edge

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %conv63 = trunc i32 %49 to i8
  %rhold = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 6
  %50 = ptrtoint ptr %rhold to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv63, ptr %rhold, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %call.i.i142 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.22, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i142)
  %tobool66.not = icmp sgt i32 %call.i.i142, -1
  br i1 %tobool66.not, label %if.then67, label %if.end64.if.end69_crit_edge

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val, align 4
  %conv68 = trunc i32 %52 to i16
  %rstrobe = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 2
  %53 = ptrtoint ptr %rstrobe to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv68, ptr %rstrobe, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge
  %call.i.i143 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.23, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i143)
  %tobool71.not = icmp sgt i32 %call.i.i143, -1
  br i1 %tobool71.not, label %if.then72, label %if.end69.if.end74_crit_edge

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %conv73 = trunc i32 %55 to i8
  %rsetup = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 5
  %56 = ptrtoint ptr %rsetup to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv73, ptr %rsetup, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end69.if.end74_crit_edge
  %call.i.i144 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.24, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i144)
  %tobool76.not = icmp sgt i32 %call.i.i144, -1
  br i1 %tobool76.not, label %if.then77, label %if.end74.if.end79_crit_edge

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val, align 4
  %conv78 = trunc i32 %58 to i8
  %whold = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 4
  %59 = ptrtoint ptr %whold to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv78, ptr %whold, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end74.if.end79_crit_edge
  %call.i.i145 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.25, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i145)
  %tobool81.not = icmp sgt i32 %call.i.i145, -1
  br i1 %tobool81.not, label %if.then82, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  %conv83 = trunc i32 %61 to i16
  %wstrobe = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 1
  %62 = ptrtoint ptr %wstrobe to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv83, ptr %wstrobe, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end79.if.end84_crit_edge
  %call.i.i146 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.26, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i146)
  %tobool86.not = icmp sgt i32 %call.i.i146, -1
  br i1 %tobool86.not, label %if.then87, label %if.end84.if.end89_crit_edge

if.end84.if.end89_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val, align 4
  %conv88 = trunc i32 %64 to i8
  %wsetup = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 3
  %65 = ptrtoint ptr %wsetup to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv88, ptr %wsetup, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end84.if.end89_crit_edge
  %call.i.i147 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.27, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i147)
  %tobool91.not = icmp sgt i32 %call.i.i147, -1
  br i1 %tobool91.not, label %if.then92, label %if.end89.if.end97_crit_edge

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then92:                                        ; preds = %if.end89
  %66 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %67)
  %cmp93 = icmp eq i32 %67, 16
  br i1 %cmp93, label %if.then95, label %if.then92.if.end97_crit_edge

if.then92.if.end97_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %asize = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 10
  %68 = ptrtoint ptr %asize to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %asize, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.then92.if.end97_crit_edge, %if.end89.if.end97_crit_edge
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.28, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %conv99 = zext i1 %tobool.i to i8
  %enable_ew = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 9
  %69 = ptrtoint ptr %enable_ew to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv99, ptr %enable_ew, align 2
  %call.i148 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.29, ptr noundef null) #6
  %tobool.i149 = icmp ne ptr %call.i148, null
  %conv101 = zext i1 %tobool.i149 to i8
  %enable_ss = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %conv, i32 8
  %70 = ptrtoint ptr %enable_ss to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv101, ptr %enable_ss, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then44, %do.body32, %if.then23, %do.body11, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end97 ], [ -22, %if.then6 ], [ -22, %if.then23 ], [ -22, %if.then44 ], [ -22, %do.body ], [ -22, %do.body11 ], [ -22, %do.body32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aemif_config_abus(ptr noundef %pdev, i32 noundef %csnum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum
  %clk_rate1 = getelementptr inbounds %struct.aemif_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_rate1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_rate1, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %5 to i32
  %cs_offset = getelementptr inbounds %struct.aemif_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cs_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_offset, align 4
  %sub = sub i32 %conv, %7
  %mul = shl i32 %sub, 2
  %add = add i32 %mul, 16
  %ta2 = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 7
  %8 = ptrtoint ptr %ta2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ta2, align 2
  %conv3 = zext i8 %9 to i32
  %mul.i = mul i32 %3, %conv3
  %sub.i = add i32 %mul.i, 999999
  %div.i = udiv i32 %sub.i, 1000000
  %sub1.i = add nsw i32 %div.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aemif_config_abus, %if.then.i)) #6
          to label %aemif_calc_rate.exit [label %if.then.i], !srcloc !93

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aemif_calc_rate.__UNIQUE_ID_ddebug170, ptr noundef %dev.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %sub1.i, i32 noundef %3, i32 noundef %conv3) #6
  br label %aemif_calc_rate.exit

aemif_calc_rate.exit:                             ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i)
  %10 = icmp ult i32 %sub.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999999, i32 %sub.i)
  %cmp5.i = icmp ugt i32 %sub.i, 4999999
  %spec.store.select.i = select i1 %cmp5.i, i32 -22, i32 %sub1.i
  %result.0.i = select i1 %10, i32 0, i32 %spec.store.select.i
  %rhold5 = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 6
  %11 = ptrtoint ptr %rhold5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rhold5, align 1
  %conv6 = zext i8 %12 to i32
  %mul.i128 = mul i32 %3, %conv6
  %sub.i129 = add i32 %mul.i128, 999999
  %div.i130 = udiv i32 %sub.i129, 1000000
  %sub1.i131 = add nsw i32 %div.i130, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aemif_config_abus, %if.then.i133)) #6
          to label %aemif_calc_rate.exit137 [label %if.then.i133], !srcloc !93

if.then.i133:                                     ; preds = %aemif_calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i132 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aemif_calc_rate.__UNIQUE_ID_ddebug170, ptr noundef %dev.i132, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %sub1.i131, i32 noundef %3, i32 noundef %conv6) #6
  br label %aemif_calc_rate.exit137

aemif_calc_rate.exit137:                          ; preds = %if.then.i133, %aemif_calc_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i129)
  %13 = icmp ult i32 %sub.i129, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8999999, i32 %sub.i129)
  %cmp5.i134 = icmp ugt i32 %sub.i129, 8999999
  %spec.store.select.i135 = select i1 %cmp5.i134, i32 -22, i32 %sub1.i131
  %result.0.i136 = select i1 %13, i32 0, i32 %spec.store.select.i135
  %rstrobe8 = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 2
  %14 = ptrtoint ptr %rstrobe8 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rstrobe8, align 2
  %conv9 = zext i16 %15 to i32
  %mul.i138 = mul i32 %3, %conv9
  %sub.i139 = add i32 %mul.i138, 999999
  %div.i140 = udiv i32 %sub.i139, 1000000
  %sub1.i141 = add nsw i32 %div.i140, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aemif_config_abus, %if.then.i143)) #6
          to label %aemif_calc_rate.exit147 [label %if.then.i143], !srcloc !93

if.then.i143:                                     ; preds = %aemif_calc_rate.exit137
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i142 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aemif_calc_rate.__UNIQUE_ID_ddebug170, ptr noundef %dev.i142, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %sub1.i141, i32 noundef %3, i32 noundef %conv9) #6
  br label %aemif_calc_rate.exit147

aemif_calc_rate.exit147:                          ; preds = %if.then.i143, %aemif_calc_rate.exit137
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i139)
  %16 = icmp ult i32 %sub.i139, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 64999999, i32 %sub.i139)
  %cmp5.i144 = icmp ugt i32 %sub.i139, 64999999
  %spec.store.select.i145 = select i1 %cmp5.i144, i32 -22, i32 %sub1.i141
  %result.0.i146 = select i1 %16, i32 0, i32 %spec.store.select.i145
  %rsetup11 = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 5
  %17 = ptrtoint ptr %rsetup11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rsetup11, align 2
  %conv12 = zext i8 %18 to i32
  %mul.i148 = mul i32 %3, %conv12
  %sub.i149 = add i32 %mul.i148, 999999
  %div.i150 = udiv i32 %sub.i149, 1000000
  %sub1.i151 = add nsw i32 %div.i150, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aemif_config_abus, %if.then.i153)) #6
          to label %aemif_calc_rate.exit157 [label %if.then.i153], !srcloc !93

if.then.i153:                                     ; preds = %aemif_calc_rate.exit147
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i152 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aemif_calc_rate.__UNIQUE_ID_ddebug170, ptr noundef %dev.i152, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %sub1.i151, i32 noundef %3, i32 noundef %conv12) #6
  br label %aemif_calc_rate.exit157

aemif_calc_rate.exit157:                          ; preds = %if.then.i153, %aemif_calc_rate.exit147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i149)
  %19 = icmp ult i32 %sub.i149, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 16999999, i32 %sub.i149)
  %cmp5.i154 = icmp ugt i32 %sub.i149, 16999999
  %spec.store.select.i155 = select i1 %cmp5.i154, i32 -22, i32 %sub1.i151
  %result.0.i156 = select i1 %19, i32 0, i32 %spec.store.select.i155
  %whold14 = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 4
  %20 = ptrtoint ptr %whold14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %whold14, align 1
  %conv15 = zext i8 %21 to i32
  %mul.i158 = mul i32 %3, %conv15
  %sub.i159 = add i32 %mul.i158, 999999
  %div.i160 = udiv i32 %sub.i159, 1000000
  %sub1.i161 = add nsw i32 %div.i160, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aemif_config_abus, %if.then.i163)) #6
          to label %aemif_calc_rate.exit167 [label %if.then.i163], !srcloc !93

if.then.i163:                                     ; preds = %aemif_calc_rate.exit157
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i162 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aemif_calc_rate.__UNIQUE_ID_ddebug170, ptr noundef %dev.i162, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %sub1.i161, i32 noundef %3, i32 noundef %conv15) #6
  br label %aemif_calc_rate.exit167

aemif_calc_rate.exit167:                          ; preds = %if.then.i163, %aemif_calc_rate.exit157
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i159)
  %22 = icmp ult i32 %sub.i159, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8999999, i32 %sub.i159)
  %cmp5.i164 = icmp ugt i32 %sub.i159, 8999999
  %spec.store.select.i165 = select i1 %cmp5.i164, i32 -22, i32 %sub1.i161
  %result.0.i166 = select i1 %22, i32 0, i32 %spec.store.select.i165
  %wstrobe17 = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 1
  %23 = ptrtoint ptr %wstrobe17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %wstrobe17, align 2
  %conv18 = zext i16 %24 to i32
  %mul.i168 = mul i32 %3, %conv18
  %sub.i169 = add i32 %mul.i168, 999999
  %div.i170 = udiv i32 %sub.i169, 1000000
  %sub1.i171 = add nsw i32 %div.i170, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aemif_config_abus, %if.then.i173)) #6
          to label %aemif_calc_rate.exit177 [label %if.then.i173], !srcloc !93

if.then.i173:                                     ; preds = %aemif_calc_rate.exit167
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i172 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aemif_calc_rate.__UNIQUE_ID_ddebug170, ptr noundef %dev.i172, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %sub1.i171, i32 noundef %3, i32 noundef %conv18) #6
  br label %aemif_calc_rate.exit177

aemif_calc_rate.exit177:                          ; preds = %if.then.i173, %aemif_calc_rate.exit167
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i169)
  %25 = icmp ult i32 %sub.i169, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 64999999, i32 %sub.i169)
  %cmp5.i174 = icmp ugt i32 %sub.i169, 64999999
  %spec.store.select.i175 = select i1 %cmp5.i174, i32 -22, i32 %sub1.i171
  %result.0.i176 = select i1 %25, i32 0, i32 %spec.store.select.i175
  %wsetup20 = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 3
  %26 = ptrtoint ptr %wsetup20 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wsetup20, align 2
  %conv21 = zext i8 %27 to i32
  %mul.i178 = mul i32 %3, %conv21
  %sub.i179 = add i32 %mul.i178, 999999
  %div.i180 = udiv i32 %sub.i179, 1000000
  %sub1.i181 = add nsw i32 %div.i180, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aemif_config_abus, %if.then.i183)) #6
          to label %aemif_calc_rate.exit187 [label %if.then.i183], !srcloc !93

if.then.i183:                                     ; preds = %aemif_calc_rate.exit177
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i182 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aemif_calc_rate.__UNIQUE_ID_ddebug170, ptr noundef %dev.i182, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %sub1.i181, i32 noundef %3, i32 noundef %conv21) #6
  br label %aemif_calc_rate.exit187

aemif_calc_rate.exit187:                          ; preds = %if.then.i183, %aemif_calc_rate.exit177
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %sub.i179)
  %28 = icmp ult i32 %sub.i179, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 16999999, i32 %sub.i179)
  %cmp5.i184 = icmp ugt i32 %sub.i179, 16999999
  %spec.store.select.i185 = select i1 %cmp5.i184, i32 -22, i32 %sub1.i181
  %result.0.i186 = select i1 %28, i32 0, i32 %spec.store.select.i185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp = icmp slt i32 %result.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i136)
  %cmp24 = icmp slt i32 %result.0.i136, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i146)
  %cmp27 = icmp slt i32 %result.0.i146, 0
  %or.cond123 = select i1 %or.cond, i1 true, i1 %cmp27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i156)
  %cmp30 = icmp slt i32 %result.0.i156, 0
  %or.cond124 = select i1 %or.cond123, i1 true, i1 %cmp30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i166)
  %cmp33 = icmp slt i32 %result.0.i166, 0
  %or.cond125 = select i1 %or.cond124, i1 true, i1 %cmp33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i176)
  %cmp36 = icmp slt i32 %result.0.i176, 0
  %or.cond126 = select i1 %or.cond125, i1 true, i1 %cmp36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i186)
  %cmp39 = icmp slt i32 %result.0.i186, 0
  %or.cond127 = select i1 %or.cond126, i1 true, i1 %cmp39
  br i1 %or.cond127, label %do.end, label %if.end

do.end:                                           ; preds = %aemif_calc_rate.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end:                                           ; preds = %aemif_calc_rate.exit187
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %result.0.i, 2
  %shl41 = shl nuw nsw i32 %result.0.i136, 4
  %or = or i32 %shl41, %shl
  %shl42 = shl nuw nsw i32 %result.0.i146, 7
  %or43 = or i32 %or, %shl42
  %shl44 = shl nuw nsw i32 %result.0.i156, 13
  %or45 = or i32 %or43, %shl44
  %shl46 = shl nuw nsw i32 %result.0.i166, 17
  %or47 = or i32 %or45, %shl46
  %shl48 = shl nuw nsw i32 %result.0.i176, 20
  %or49 = or i32 %or47, %shl48
  %shl50 = shl nuw nsw i32 %result.0.i186, 26
  %or51 = or i32 %or49, %shl50
  %asize = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 10
  %29 = ptrtoint ptr %asize to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %asize, align 1
  %31 = and i8 %30, 3
  %and = zext i8 %31 to i32
  %or53 = or i32 %or51, %and
  %enable_ew = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 9
  %32 = ptrtoint ptr %enable_ew to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enable_ew, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  %or55 = or i32 %or53, 1073741824
  %spec.select = select i1 %tobool.not, i32 %or53, i32 %or55
  %enable_ss = getelementptr %struct.aemif_device, ptr %1, i32 0, i32 5, i32 %csnum, i32 8
  %34 = ptrtoint ptr %enable_ss to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %enable_ss, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool57.not = icmp eq i8 %35, 0
  %or59 = or i32 %spec.select, -2147483648
  %set.1 = select i1 %tobool57.not, i32 %spec.select, i32 %or59
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 %add
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !90
  %39 = lshr i32 %38, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and63 = and i32 %39, 2
  %or64 = or i32 %set.1, %and63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %or64)
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr69 = getelementptr i8, ptr %42, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %40) #6, !srcloc !96
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_ti_aemif__174_449_aemif_driver_init6, !1, !"__initcall__kmod_ti_aemif__174_449_aemif_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/ti-aemif.c", i32 449, i32 1}
!2 = !{ptr @__exitcall_aemif_driver_exit, !1, !"__exitcall_aemif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author175, !4, !"__UNIQUE_ID_author175", i1 false, i1 false}
!4 = !{!"../drivers/memory/ti-aemif.c", i32 451, i32 1}
!5 = !{ptr @__UNIQUE_ID_author176, !6, !"__UNIQUE_ID_author176", i1 false, i1 false}
!6 = !{!"../drivers/memory/ti-aemif.c", i32 452, i32 1}
!7 = !{ptr @__UNIQUE_ID_description177, !8, !"__UNIQUE_ID_description177", i1 false, i1 false}
!8 = !{!"../drivers/memory/ti-aemif.c", i32 453, i32 1}
!9 = !{ptr @__UNIQUE_ID_file178, !10, !"__UNIQUE_ID_file178", i1 false, i1 false}
!10 = !{!"../drivers/memory/ti-aemif.c", i32 454, i32 1}
!11 = !{ptr @__UNIQUE_ID_license179, !10, !"__UNIQUE_ID_license179", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias180, !13, !"__UNIQUE_ID_alias180", i1 false, i1 false}
!13 = !{!"../drivers/memory/ti-aemif.c", i32 455, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/ti-aemif.c", i32 444, i32 11}
!16 = !{ptr @aemif_driver, !17, !"aemif_driver", i1 false, i1 false}
!17 = !{!"../drivers/memory/ti-aemif.c", i32 440, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/ti-aemif.c", i32 350, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @aemif_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @aemif_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/ti-aemif.c", i32 360, i32 40}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/ti-aemif.c", i32 396, i32 4}
!30 = !{ptr @aemif_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @aemif_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/ti-aemif.c", i32 420, i32 5}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @aemif_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @aemif_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memory/ti-aemif.c", i32 269, i32 31}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/memory/ti-aemif.c", i32 270, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug171, !40, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memory/ti-aemif.c", i32 275, i32 3}
!46 = !{ptr @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug172, !45, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/ti-aemif.c", i32 280, i32 3}
!49 = !{ptr @of_aemif_parse_abus_config.__UNIQUE_ID_ddebug173, !48, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memory/ti-aemif.c", i32 291, i32 32}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/ti-aemif.c", i32 294, i32 32}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/ti-aemif.c", i32 297, i32 32}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/memory/ti-aemif.c", i32 300, i32 32}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/ti-aemif.c", i32 303, i32 32}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/ti-aemif.c", i32 306, i32 32}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/ti-aemif.c", i32 309, i32 32}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memory/ti-aemif.c", i32 312, i32 32}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/memory/ti-aemif.c", i32 315, i32 46}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/ti-aemif.c", i32 316, i32 46}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/ti-aemif.c", i32 195, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @aemif_config_abus._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @aemif_config_abus._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/memory/ti-aemif.c", i32 146, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @aemif_calc_rate.__UNIQUE_ID_ddebug170, !76, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!79 = !{ptr @aemif_of_match, !80, !"aemif_of_match", i1 false, i1 false}
!80 = !{!"../drivers/memory/ti-aemif.c", i32 320, i32 34}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2040269}
!91 = !{i64 2152546387}
!92 = !{!"auto-init"}
!93 = !{i64 2148732761, i64 2148732766, i64 2148732779, i64 2148732823, i64 2148732857, i64 2148732878}
!94 = !{i64 2152544781}
!95 = !{i64 2152545528}
!96 = !{i64 2039851}
