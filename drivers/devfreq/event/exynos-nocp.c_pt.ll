; ModuleID = '/llk/IR_all_yes/drivers/devfreq/event/exynos-nocp.c_pt.bc'
source_filename = "../drivers/devfreq/event/exynos-nocp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devfreq_event_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.exynos_nocp = type { ptr, %struct.devfreq_event_desc, ptr, ptr, ptr }
%struct.devfreq_event_desc = type { ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.devfreq_event_dev = type { %struct.list_head, %struct.device, %struct.mutex, i32, ptr }
%struct.devfreq_event_data = type { i32, i32 }

@__initcall__kmod_exynos_nocp__171_296_exynos_nocp_driver_init6 = internal global ptr @exynos_nocp_driver_init, section ".initcall6.init", align 4
@exynos_nocp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_nocp_probe, ptr @exynos_nocp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_nocp_id_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_nocp_driver_exit = internal global ptr @exynos_nocp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [66 x i8] c"exynos_nocp.description=Exynos NoC (Network on Chip) Probe driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [56 x i8] c"exynos_nocp.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [51 x i8] c"exynos_nocp.file=drivers/devfreq/event/exynos-nocp\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [24 x i8] c"exynos_nocp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos-nocp\00", [20 x i8] zeroinitializer }, align 32
@exynos_nocp_id_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-nocp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@exynos_nocp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to parse devicetree for resource\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"exynos_nocp_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/devfreq/event/exynos-nocp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_nocp_probe._entry_ptr = internal global ptr @exynos_nocp_probe._entry, section ".printk_index", align 4
@exynos_nocp_ops = internal constant { %struct.devfreq_event_ops, [44 x i8] } { %struct.devfreq_event_ops { ptr null, ptr null, ptr null, ptr @exynos_nocp_set_event, ptr @exynos_nocp_get_event }, [44 x i8] zeroinitializer }, align 32
@exynos_nocp_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to add devfreq-event device\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos_nocp_probe._entry_ptr.8 = internal global ptr @exynos_nocp_probe._entry.6, section ".printk_index", align 4
@exynos_nocp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to prepare ppmu clock\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_nocp_probe._entry_ptr.11 = internal global ptr @exynos_nocp_probe._entry.9, section ".printk_index", align 4
@exynos_nocp_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016exynos-nocp: new NoC Probe device registered: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@exynos_nocp_probe._entry_ptr.14 = internal global ptr @exynos_nocp_probe._entry.12, section ".printk_index", align 4
@exynos_nocp_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find devicetree node\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exynos_nocp_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@exynos_nocp_parse_dt._entry_ptr = internal global ptr @exynos_nocp_parse_dt._entry, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nocp\00", [27 x i8] zeroinitializer }, align 32
@exynos_nocp_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 380, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@exynos_nocp_parse_dt._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"exynos_nocp:225:(&exynos_nocp_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@exynos_nocp_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@exynos_nocp_parse_dt._entry_ptr.21 = internal global ptr @exynos_nocp_parse_dt._entry.19, section ".printk_index", align 4
@exynos_nocp_set_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 41, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to disable the NoC probe device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_nocp_set_event\00", [42 x i8] zeroinitializer }, align 32
@exynos_nocp_set_event._entry_ptr = internal global ptr @exynos_nocp_set_event._entry, section ".printk_index", align 4
@exynos_nocp_set_event._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to reset NoC probe device\0A\00", [62 x i8] zeroinitializer }, align 32
@exynos_nocp_set_event._entry_ptr.26 = internal global ptr @exynos_nocp_set_event._entry.24, section ".printk_index", align 4
@exynos_nocp_get_event.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exynos_nocp\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_nocp_get_event\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s (event: %ld/%ld)\0A\00", [43 x i8] zeroinitializer }, align 32
@exynos_nocp_get_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to read the counter of NoC probe device\0A\00", [48 x i8] zeroinitializer }, align 32
@exynos_nocp_get_event._entry_ptr = internal global ptr @exynos_nocp_get_event._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"exynos_nocp_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 288, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 292, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"exynos_nocp_id_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 186, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 250, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"exynos_nocp_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 181, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 261, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 269, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 273, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 208, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 212, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [26 x i8] c"exynos_nocp_regmap_config\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 192, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 224, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 227, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 41, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 137, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 170, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [39 x i8] c"../drivers/devfreq/event/exynos-nocp.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 176, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_exynos_nocp_driver_exit, ptr @__initcall__kmod_exynos_nocp__171_296_exynos_nocp_driver_init6, ptr @exynos_nocp_driver_exit, ptr @exynos_nocp_get_event._entry, ptr @exynos_nocp_get_event._entry_ptr, ptr @exynos_nocp_parse_dt._entry, ptr @exynos_nocp_parse_dt._entry.19, ptr @exynos_nocp_parse_dt._entry_ptr, ptr @exynos_nocp_parse_dt._entry_ptr.21, ptr @exynos_nocp_probe._entry, ptr @exynos_nocp_probe._entry.12, ptr @exynos_nocp_probe._entry.6, ptr @exynos_nocp_probe._entry.9, ptr @exynos_nocp_probe._entry_ptr, ptr @exynos_nocp_probe._entry_ptr.11, ptr @exynos_nocp_probe._entry_ptr.14, ptr @exynos_nocp_probe._entry_ptr.8, ptr @exynos_nocp_set_event._entry, ptr @exynos_nocp_set_event._entry.24, ptr @exynos_nocp_set_event._entry_ptr, ptr @exynos_nocp_set_event._entry_ptr.26, ptr @exynos_nocp_driver, ptr @.str, ptr @exynos_nocp_id_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @exynos_nocp_ops, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @exynos_nocp_regmap_config, ptr @exynos_nocp_parse_dt._key, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_id_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_parse_dt._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_set_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_set_event._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_nocp_get_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_nocp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_nocp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_nocp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_nocp_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_nocp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.exynos_nocp, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev4, align 4
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %exynos_nocp_parse_dt.exit.thread, label %if.end.i

exynos_nocp_parse_dt.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call.i64 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.17) #6
  %clk.i = getelementptr inbounds %struct.exynos_nocp, ptr %call.i, i32 0, i32 4
  %cmp.i.i = icmp ugt ptr %call.i64, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i64
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.store.select.i, ptr %clk.i, align 4
  %call7.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call8.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7.i) #6
  %cmp.i41.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i, label %if.end.i.exynos_nocp_parse_dt.exit_crit_edge, label %if.end12.i

if.end.i.exynos_nocp_parse_dt.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exynos_nocp_parse_dt.exit

if.end12.i:                                       ; preds = %if.end.i
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i.i, align 4
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call7.i, align 4
  %add.i.i = add i32 %7, -3
  %sub.i = sub i32 %add.i.i, %9
  store i32 %sub.i, ptr getelementptr inbounds (%struct.regmap_config, ptr @exynos_nocp_regmap_config, i32 0, i32 19), align 4
  %call14.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call8.i, ptr noundef nonnull @exynos_nocp_regmap_config, ptr noundef nonnull @exynos_nocp_parse_dt._key, ptr noundef nonnull @.str.18) #6
  %regmap.i = getelementptr inbounds %struct.exynos_nocp, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14.i, ptr %regmap.i, align 4
  %cmp.i42.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.i, label %do.end20.i, label %if.end12.i.if.end8_crit_edge

if.end12.i.if.end8_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end20.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  br label %exynos_nocp_parse_dt.exit

exynos_nocp_parse_dt.exit:                        ; preds = %do.end20.i, %if.end.i.exynos_nocp_parse_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %12, %do.end20.i ], [ %call8.i, %if.end.i.exynos_nocp_parse_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %cmp = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp, label %exynos_nocp_parse_dt.exit.do.end_crit_edge, label %exynos_nocp_parse_dt.exit.if.end8_crit_edge

exynos_nocp_parse_dt.exit.if.end8_crit_edge:      ; preds = %exynos_nocp_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

exynos_nocp_parse_dt.exit.do.end_crit_edge:       ; preds = %exynos_nocp_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %exynos_nocp_parse_dt.exit.do.end_crit_edge, %exynos_nocp_parse_dt.exit.thread
  %retval.0.i70 = phi i32 [ -22, %exynos_nocp_parse_dt.exit.thread ], [ %retval.0.i, %exynos_nocp_parse_dt.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end8:                                          ; preds = %exynos_nocp_parse_dt.exit.if.end8_crit_edge, %if.end12.i.if.end8_crit_edge
  %desc = getelementptr inbounds %struct.exynos_nocp, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.exynos_nocp, ptr %call.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @exynos_nocp_ops, ptr %ops, align 4
  %driver_data = getelementptr inbounds %struct.exynos_nocp, ptr %call.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %full_name, align 4
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %desc, align 4
  %call13 = tail call ptr @devm_devfreq_event_add_edev(ptr noundef %dev1, ptr noundef %desc) #6
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.i, align 4
  %call24 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end34, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

do.end34:                                         ; preds = %if.end23
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i65 = icmp eq ptr %26, null
  br i1 %tobool.not.i65, label %if.end.i66, label %do.end34.dev_name.exit_crit_edge

do.end34.dev_name.exit_crit_edge:                 ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i66:                                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i66, %do.end34.dev_name.exit_crit_edge
  %retval.0.i67 = phi ptr [ %28, %if.end.i66 ], [ %26, %do.end34.dev_name.exit_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i67) #9
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %do.end29, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i70, %do.end ], [ %21, %do.end19 ], [ %call24, %do.end29 ], [ 0, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_nocp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.exynos_nocp, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_event_add_edev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_nocp_set_event(ptr nocapture noundef readonly %edev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.exynos_nocp, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i114 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 312, i32 noundef 31, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp9 = icmp slt i32 %call.i114, 0
  br i1 %cmp9, label %if.end6.out_crit_edge, label %if.end11

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 332, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp14 = icmp slt i32 %call.i115, 0
  br i1 %cmp14, label %if.end11.out_crit_edge, label %if.end16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 352, i32 noundef 31, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp19 = icmp slt i32 %call.i116, 0
  br i1 %cmp19, label %if.end16.out_crit_edge, label %if.end21

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i117 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 372, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp24 = icmp slt i32 %call.i117, 0
  br i1 %cmp24, label %if.end21.out_crit_edge, label %if.end26

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end26:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call28 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 44, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.out_crit_edge, label %if.end31

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end31:                                         ; preds = %if.end26
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 48, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.out_crit_edge, label %if.end36

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end36:                                         ; preds = %if.end31
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i118 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 316, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp39 = icmp slt i32 %call.i118, 0
  br i1 %cmp39, label %if.end36.out_crit_edge, label %if.end41

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end41:                                         ; preds = %if.end36
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i119 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 336, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp44 = icmp slt i32 %call.i119, 0
  br i1 %cmp44, label %if.end41.out_crit_edge, label %if.end46

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end46:                                         ; preds = %if.end41
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 356, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp49 = icmp slt i32 %call.i120, 0
  br i1 %cmp49, label %if.end46.out_crit_edge, label %if.end51

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end51:                                         ; preds = %if.end46
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i121 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 376, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp54 = icmp slt i32 %call.i121, 0
  br i1 %cmp54, label %if.end51.out_crit_edge, label %if.end56

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end56:                                         ; preds = %if.end51
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i122 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 8, i32 noundef 24, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp59 = icmp slt i32 %call.i122, 0
  br i1 %cmp59, label %if.end56.out_crit_edge, label %if.end61

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end61:                                         ; preds = %if.end56
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i123 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 12, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp64 = icmp slt i32 %call.i123, 0
  br i1 %cmp64, label %if.end61.out_crit_edge, label %if.end66

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end66:                                         ; preds = %if.end61
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i124 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 8, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp69 = icmp slt i32 %call.i124, 0
  br i1 %cmp69, label %if.end66.out_crit_edge, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end66.out_crit_edge, %if.end61.out_crit_edge, %if.end56.out_crit_edge, %if.end51.out_crit_edge, %if.end46.out_crit_edge, %if.end41.out_crit_edge, %if.end36.out_crit_edge, %if.end31.out_crit_edge, %if.end26.out_crit_edge, %if.end21.out_crit_edge, %if.end16.out_crit_edge, %if.end11.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call.i114, %if.end6.out_crit_edge ], [ %call.i115, %if.end11.out_crit_edge ], [ %call.i116, %if.end16.out_crit_edge ], [ %call.i117, %if.end21.out_crit_edge ], [ %call28, %if.end26.out_crit_edge ], [ %call33, %if.end31.out_crit_edge ], [ %call.i118, %if.end36.out_crit_edge ], [ %call.i119, %if.end41.out_crit_edge ], [ %call.i120, %if.end46.out_crit_edge ], [ %call.i121, %if.end51.out_crit_edge ], [ %call.i122, %if.end56.out_crit_edge ], [ %call.i123, %if.end61.out_crit_edge ], [ %call.i124, %if.end66.out_crit_edge ]
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i125 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not = icmp eq i32 %call.i125, 0
  br i1 %tobool.not, label %out.cleanup_crit_edge, label %out.cleanup.sink.split_crit_edge

out.cleanup.sink.split_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %out.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.22, %entry.cleanup.sink.split_crit_edge ], [ @.str.25, %out.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %ret.0, %out.cleanup.sink.split_crit_edge ]
  %dev78 = getelementptr inbounds %struct.exynos_nocp, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull %.str.25.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out.cleanup_crit_edge, %if.end66.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_nocp_get_event(ptr noundef %edev, ptr nocapture noundef %edata) #2 align 64 {
entry:
  %counter = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 4
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 8
  %driver_data.i = getelementptr inbounds %struct.devfreq_event_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %counter) #6
  %4 = getelementptr inbounds [4 x i32], ptr %counter, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i32], ptr %counter, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i32], ptr %counter, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.exynos_nocp, ptr %3, i32 0, i32 3
  %7 = call ptr @memset(ptr %counter, i32 255, i32 16)
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %9, i32 noundef 320, ptr noundef nonnull %counter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.do.end35_crit_edge, label %if.end

entry.do.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %11, i32 noundef 340, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.do.end35_crit_edge, label %if.end7

if.end.do.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %13, i32 noundef 360, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end7.do.end35_crit_edge, label %if.end13

if.end7.do.end35_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

if.end13:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_read(ptr noundef %15, i32 noundef 380, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end13.do.end35_crit_edge, label %if.end19

if.end13.do.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %shl = shl i32 %17, 16
  %18 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter, align 4
  %or = or i32 %shl, %19
  %20 = ptrtoint ptr %edata to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %edata, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %6, align 4
  %shl23 = shl i32 %22, 16
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %or25 = or i32 %shl23, %24
  %total_count = getelementptr inbounds %struct.devfreq_event_data, ptr %edata, i32 0, i32 1
  %25 = ptrtoint ptr %total_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or25, ptr %total_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_nocp_get_event.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_nocp_get_event, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !81

if.then29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.devfreq_event_dev, ptr %edev, i32 0, i32 1
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %edata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %edata, align 4
  %32 = ptrtoint ptr %total_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %total_count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exynos_nocp_get_event.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %29, i32 noundef %31, i32 noundef %33) #6
  br label %cleanup

do.end35:                                         ; preds = %if.end13.do.end35_crit_edge, %if.end7.do.end35_crit_edge, %if.end.do.end35_crit_edge, %entry.do.end35_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.do.end35_crit_edge ], [ %call4, %if.end.do.end35_crit_edge ], [ %call10, %if.end7.do.end35_crit_edge ], [ %call16, %if.end13.do.end35_crit_edge ]
  %dev36 = getelementptr inbounds %struct.exynos_nocp, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.30) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then29, %if.end19
  %retval.0 = phi i32 [ %ret.0, %do.end35 ], [ 0, %if.then29 ], [ 0, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %counter) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_exynos_nocp__171_296_exynos_nocp_driver_init6, !1, !"__initcall__kmod_exynos_nocp__171_296_exynos_nocp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 296, i32 1}
!2 = !{ptr @__exitcall_exynos_nocp_driver_exit, !1, !"__exitcall_exynos_nocp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 298, i32 1}
!5 = !{ptr @__UNIQUE_ID_author173, !6, !"__UNIQUE_ID_author173", i1 false, i1 false}
!6 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 299, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 300, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 292, i32 11}
!12 = !{ptr @exynos_nocp_driver, !13, !"exynos_nocp_driver", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 288, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 250, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @exynos_nocp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @exynos_nocp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 261, i32 3}
!24 = !{ptr @exynos_nocp_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @exynos_nocp_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 269, i32 3}
!28 = !{ptr @exynos_nocp_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @exynos_nocp_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 273, i32 2}
!32 = !{ptr @exynos_nocp_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @exynos_nocp_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 208, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @exynos_nocp_parse_dt._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @exynos_nocp_parse_dt._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 212, i32 32}
!41 = !{ptr @exynos_nocp_parse_dt._key, !42, !"_key", i1 false, i1 false}
!42 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 224, i32 17}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 227, i32 3}
!46 = !{ptr @exynos_nocp_parse_dt._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @exynos_nocp_parse_dt._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @exynos_nocp_regmap_config, !49, !"exynos_nocp_regmap_config", i1 false, i1 false}
!49 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 192, i32 29}
!50 = !{ptr @exynos_nocp_ops, !51, !"exynos_nocp_ops", i1 false, i1 false}
!51 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 181, i32 39}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 41, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @exynos_nocp_set_event._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @exynos_nocp_set_event._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 137, i32 3}
!59 = !{ptr @exynos_nocp_set_event._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @exynos_nocp_set_event._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 170, i32 2}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @exynos_nocp_get_event.__UNIQUE_ID_ddebug170, !62, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 176, i32 2}
!68 = !{ptr @exynos_nocp_get_event._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @exynos_nocp_get_event._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @exynos_nocp_id_match, !71, !"exynos_nocp_id_match", i1 false, i1 false}
!71 = !{!"../drivers/devfreq/event/exynos-nocp.c", i32 186, i32 34}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148727360, i64 2148727365, i64 2148727378, i64 2148727422, i64 2148727456, i64 2148727477}
