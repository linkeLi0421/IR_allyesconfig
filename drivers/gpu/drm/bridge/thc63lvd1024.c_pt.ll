; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/thc63lvd1024.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/thc63lvd1024.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.thc63_dev = type { ptr, ptr, ptr, ptr, %struct.drm_bridge, ptr, %struct.drm_bridge_timings }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }

@__initcall__kmod_thc63lvd1024__308_256_thc63_driver_init6 = internal global ptr @thc63_driver_init, section ".initcall6.init", align 4
@thc63_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @thc63_probe, ptr @thc63_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @thc63_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_thc63_driver_exit = internal global ptr @thc63_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [53 x i8] c"thc63lvd1024.author=Jacopo Mondi <jacopo@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [75 x i8] c"thc63lvd1024.description=Thine THC63LVD1024 LVDS decoder DRM bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [54 x i8] c"thc63lvd1024.file=drivers/gpu/drm/bridge/thc63lvd1024\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [28 x i8] c"thc63lvd1024.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thc63lvd1024\00", [19 x i8] zeroinitializer }, align 32
@thc63_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"thine,thc63lvd1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@thc63_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to get \22vcc\22 supply: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thc63_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/bridge/thc63lvd1024.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@thc63_probe._entry_ptr = internal global ptr @thc63_probe._entry, section ".printk_index", align 4
@thc63_bridge_func = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @thc63_attach, ptr null, ptr @thc63_mode_valid, ptr null, ptr @thc63_disable, ptr null, ptr null, ptr null, ptr @thc63_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"oe\00", [29 x i8] zeroinitializer }, align 32
@thc63_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to get \22oe-gpios\22: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thc63_gpio_init\00", [16 x i8] zeroinitializer }, align 32
@thc63_gpio_init._entry_ptr = internal global ptr @thc63_gpio_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@thc63_gpio_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to get \22powerdown-gpios\22: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@thc63_gpio_init._entry_ptr.13 = internal global ptr @thc63_gpio_init._entry.11, section ".printk_index", align 4
@thc63_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing endpoint in port@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"thc63_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@thc63_parse_dt._entry_ptr = internal global ptr @thc63_parse_dt._entry, section ".printk_index", align 4
@thc63_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Endpoint in port@%u unconnected\0A\00", [63 x i8] zeroinitializer }, align 32
@thc63_parse_dt._entry_ptr.18 = internal global ptr @thc63_parse_dt._entry.16, section ".printk_index", align 4
@thc63_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"port@%u remote endpoint is disabled\0A\00", [59 x i8] zeroinitializer }, align 32
@thc63_parse_dt._entry_ptr.21 = internal global ptr @thc63_parse_dt._entry.19, section ".printk_index", align 4
@thc63_parse_dt.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.22, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"operating in %s-link mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"single\00", [25 x i8] zeroinitializer }, align 32
@thc63_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 111, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to disable regulator \22vcc\22: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thc63_disable\00", [18 x i8] zeroinitializer }, align 32
@thc63_disable._entry_ptr = internal global ptr @thc63_disable._entry, section ".printk_index", align 4
@thc63_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 92, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable regulator \22vcc\22: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thc63_enable\00", [19 x i8] zeroinitializer }, align 32
@thc63_enable._entry_ptr = internal global ptr @thc63_enable._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"thc63_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 248, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 252, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"thc63_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 242, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 205, i32 46 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 210, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"thc63_bridge_func\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 114, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 175, i32 50 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 177, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 182, i32 52 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 185, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 129, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 137, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 143, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 167, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 110, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [41 x i8] c"../drivers/gpu/drm/bridge/thc63lvd1024.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 91, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_thc63_driver_exit, ptr @__initcall__kmod_thc63lvd1024__308_256_thc63_driver_init6, ptr @thc63_disable._entry, ptr @thc63_disable._entry_ptr, ptr @thc63_driver_exit, ptr @thc63_enable._entry, ptr @thc63_enable._entry_ptr, ptr @thc63_gpio_init._entry, ptr @thc63_gpio_init._entry.11, ptr @thc63_gpio_init._entry_ptr, ptr @thc63_gpio_init._entry_ptr.13, ptr @thc63_parse_dt._entry, ptr @thc63_parse_dt._entry.16, ptr @thc63_parse_dt._entry.19, ptr @thc63_parse_dt._entry_ptr, ptr @thc63_parse_dt._entry_ptr.18, ptr @thc63_parse_dt._entry_ptr.21, ptr @thc63_probe._entry, ptr @thc63_probe._entry_ptr, ptr @thc63_driver, ptr @.str, ptr @thc63_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @thc63_bridge_func, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_bridge_func to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_gpio_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thc63_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @thc63_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @thc63_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @thc63_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @thc63_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thc63_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 316, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %vcc = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %vcc, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call4, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %do.end

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call4 to i32
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %3) #8
  %6 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call.i58 = tail call ptr @devm_gpiod_get_optional(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef 3) #5
  %oe.i = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %oe.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i58, ptr %oe.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i58, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call.i58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %14) #8
  br label %thc63_gpio_init.exit

if.end.i:                                         ; preds = %if.end17
  %call9.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 7) #5
  %pdwn.i = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %pdwn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %pdwn.i, align 4
  %cmp.i32.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %do.end14.i, label %if.end.i.if.end21_crit_edge

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %18 = ptrtoint ptr %call9.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef %18) #8
  br label %thc63_gpio_init.exit

thc63_gpio_init.exit:                             ; preds = %do.end14.i, %do.end.i
  %pdwn.sink.i = phi ptr [ %pdwn.i, %do.end14.i ], [ %oe.i, %do.end.i ]
  %19 = ptrtoint ptr %pdwn.sink.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdwn.sink.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %thc63_gpio_init.exit.if.end21_crit_edge, label %thc63_gpio_init.exit.cleanup_crit_edge

thc63_gpio_init.exit.cleanup_crit_edge:           ; preds = %thc63_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

thc63_gpio_init.exit.if.end21_crit_edge:          ; preds = %thc63_gpio_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end21:                                         ; preds = %thc63_gpio_init.exit.if.end21_crit_edge, %if.end.i.if.end21_crit_edge
  %call22 = tail call fastcc i32 @thc63_parse_dt(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %bridge = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 4
  %driver_private = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %driver_private to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_private, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %of_node28 = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %of_node28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %of_node28, align 4
  %funcs = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 4, i32 7
  %26 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @thc63_bridge_func, ptr %funcs, align 4
  %timings = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 6
  %timings31 = getelementptr inbounds %struct.thc63_dev, ptr %call.i, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %timings31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %timings, ptr %timings31, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %thc63_gpio_init.exit.cleanup_crit_edge, %do.end, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end ], [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then7.cleanup_crit_edge ], [ %21, %thc63_gpio_init.exit.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thc63_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.thc63_dev, ptr %1, i32 0, i32 4
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @thc63_parse_dt(ptr nocapture noundef %thc63) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %thc63 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thc63, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %3, i32 noundef 2, i32 noundef -1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %thc63 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thc63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef 2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call) #5
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %thc63 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thc63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef 2) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call2) #5
  br i1 %call10, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %thc63 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thc63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20, i32 noundef 2) #8
  tail call void @of_node_put(ptr noundef nonnull %call2) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call2) #5
  %next = getelementptr inbounds %struct.thc63_dev, ptr %thc63, i32 0, i32 5
  %10 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %next, align 4
  tail call void @of_node_put(ptr noundef nonnull %call2) #5
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %thc63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %thc63, align 4
  %of_node23 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node23, align 8
  %call24 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %16, i32 noundef 1, i32 noundef -1) #5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end21.do.body35_crit_edge, label %if.then26

if.end21.do.body35_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body35

if.then26:                                        ; preds = %if.end21
  %call27 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call24) #5
  tail call void @of_node_put(ptr noundef nonnull %call24) #5
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then26.do.body35_crit_edge, label %if.then29

if.then26.do.body35_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body35

if.then29:                                        ; preds = %if.then26
  %call30 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call27) #5
  br i1 %call30, label %if.then31, label %if.then29.if.end32_crit_edge

if.then29.if.end32_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %dual_link = getelementptr inbounds %struct.thc63_dev, ptr %thc63, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %dual_link to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %dual_link, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29.if.end32_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call27) #5
  br label %do.body35

do.body35:                                        ; preds = %if.end32, %if.then26.do.body35_crit_edge, %if.end21.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thc63_parse_dt.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thc63_parse_dt, %if.then40)) #5
          to label %cleanup [label %if.then40], !srcloc !78

if.then40:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %thc63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %thc63, align 4
  %dual_link43 = getelementptr inbounds %struct.thc63_dev, ptr %thc63, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %dual_link43 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dual_link43, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not = icmp eq i8 %21, 0
  %cond = select i1 %tobool44.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thc63_parse_dt.__UNIQUE_ID_ddebug307, ptr noundef %19, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body35, %if.end16.cleanup_crit_edge, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end14 ], [ -19, %do.end7 ], [ -19, %do.end ], [ -517, %if.end16.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thc63_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %call1 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #5
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @thc63_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dual_link = getelementptr i8, ptr %bridge, i32 296
  %0 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dual_link, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 8000, i32 40000
  %.10 = select i1 %tobool.not, i32 135000, i32 150000
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %.)
  %cmp = icmp ult i32 %3, %.
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %.10)
  %cmp4 = icmp ugt i32 %3, %.10
  %.11 = select i1 %cmp4, i32 15, i32 0
  %retval.0 = select i1 %cmp, i32 16, i32 %.11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @thc63_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %oe = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oe, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #5
  %pdwn = getelementptr i8, ptr %bridge, i32 -8
  %2 = ptrtoint ptr %pdwn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdwn, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #5
  %vcc = getelementptr i8, ptr %bridge, i32 -12
  %4 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.25, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @thc63_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc = getelementptr i8, ptr %bridge, i32 -12
  %0 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdwn = getelementptr i8, ptr %bridge, i32 -8
  %4 = ptrtoint ptr %pdwn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdwn, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #5
  %oe = getelementptr i8, ptr %bridge, i32 -4
  %6 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oe, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_thc63lvd1024__308_256_thc63_driver_init6, !1, !"__initcall__kmod_thc63lvd1024__308_256_thc63_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 256, i32 1}
!2 = !{ptr @__exitcall_thc63_driver_exit, !1, !"__exitcall_thc63_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 258, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 259, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 260, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 252, i32 12}
!12 = !{ptr @thc63_driver, !13, !"thc63_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 248, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 205, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 210, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @thc63_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @thc63_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 175, i32 50}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 177, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @thc63_gpio_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @thc63_gpio_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 182, i32 52}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 185, i32 3}
!35 = !{ptr @thc63_gpio_init._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @thc63_gpio_init._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 129, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @thc63_parse_dt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @thc63_parse_dt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 137, i32 3}
!44 = !{ptr @thc63_parse_dt._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @thc63_parse_dt._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 143, i32 3}
!48 = !{ptr @thc63_parse_dt._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @thc63_parse_dt._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 167, i32 2}
!52 = !{ptr @thc63_parse_dt.__UNIQUE_ID_ddebug307, !51, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @thc63_bridge_func, !56, !"thc63_bridge_func", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 114, i32 38}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 110, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @thc63_disable._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @thc63_disable._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 91, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @thc63_enable._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @thc63_enable._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @thc63_match, !68, !"thc63_match", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/thc63lvd1024.c", i32 242, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148171599, i64 2148171604, i64 2148171617, i64 2148171661, i64 2148171695, i64 2148171716}
!79 = !{i8 0, i8 2}
