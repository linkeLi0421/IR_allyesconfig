; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-microchip-sparx5.c_pt.bc'
source_filename = "../drivers/reset/reset-microchip-sparx5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_props = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mchp_reset_context = type { ptr, ptr, %struct.reset_controller_dev, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_reset_microchip_sparx5__170_166_mchp_sparx5_reset_init2 = internal global ptr @mchp_sparx5_reset_init, section ".initcall2.init", align 4
@__UNIQUE_ID_description171 = internal constant [72 x i8] c"reset_microchip_sparx5.description=Microchip Sparx5 switch reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [76 x i8] c"reset_microchip_sparx5.author=Steen Hegelund <steen.hegelund@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [65 x i8] c"reset_microchip_sparx5.file=drivers/reset/reset-microchip-sparx5\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [44 x i8] c"reset_microchip_sparx5.license=Dual MIT/GPL\00", section ".modinfo", align 1
@mchp_sparx5_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mchp_sparx5_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp_sparx5_reset_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sparx5-switch-reset\00", [44 x i8] zeroinitializer }, align 32
@mchp_sparx5_reset_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sparx5-switch-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_props_sparx5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,lan966x-switch-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_props_lan966x }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu-syscon\00", [21 x i8] zeroinitializer }, align 32
@sparx5_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @sparx5_switch_reset, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mchp_sparx5_map_syscon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No '%s' map: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp_sparx5_map_syscon\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/reset/reset-microchip-sparx5.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mchp_sparx5_map_syscon._entry_ptr = internal global ptr @mchp_sparx5_map_syscon._entry, section ".printk_index", align 4
@mchp_sparx5_map_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 91, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not map resource %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mchp_sparx5_map_io\00", [45 x i8] zeroinitializer }, align 32
@mchp_sparx5_map_io._entry_ptr = internal global ptr @mchp_sparx5_map_io._entry, section ".printk_index", align 4
@sparx5_reset_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mchp_sparx5_map_io._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"reset_microchip_sparx5:95:(&sparx5_reset_regmap_config)->lock\00", [34 x i8] zeroinitializer }, align 32
@reset_props_sparx5 = internal constant { %struct.reset_props, [16 x i8] } { %struct.reset_props { i32 132, i32 1024, i32 0, i32 2 }, [16 x i8] zeroinitializer }, align 32
@reset_props_lan966x = internal constant { %struct.reset_props, [16 x i8] } { %struct.reset_props { i32 136, i32 32, i32 0, i32 2 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [25 x i8] c"mchp_sparx5_reset_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 153, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 156, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"mchp_sparx5_reset_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 142, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 112, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"sparx5_reset_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 57, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 75, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 91, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"sparx5_reset_regmap_config\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 30, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 95, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"reset_props_sparx5\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 128, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"reset_props_lan966x\00", align 1
@___asan_gen_.65 = private constant [42 x i8] c"../drivers/reset/reset-microchip-sparx5.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 135, i32 33 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__initcall__kmod_reset_microchip_sparx5__170_166_mchp_sparx5_reset_init2, ptr @mchp_sparx5_map_io._entry, ptr @mchp_sparx5_map_io._entry_ptr, ptr @mchp_sparx5_map_syscon._entry, ptr @mchp_sparx5_map_syscon._entry_ptr, ptr @mchp_sparx5_reset_driver, ptr @.str, ptr @mchp_sparx5_reset_of_match, ptr @.str.1, ptr @sparx5_reset_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sparx5_reset_regmap_config, ptr @mchp_sparx5_map_io._key, ptr @.str.9, ptr @reset_props_sparx5, ptr @reset_props_lan966x], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_reset_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_map_syscon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_map_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_reset_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sparx5_map_io._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_props_sparx5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_props_lan966x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_sparx5_reset_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mchp_sparx5_reset_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_sparx5_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca ptr, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %4 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %cleanup

of_parse_phandle.exit.i:                          ; preds = %if.end
  %5 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.cleanup_crit_edge, label %if.end.i

of_parse_phandle.exit.i.cleanup_crit_edge:        ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %6) #5
  call void @of_node_put(ptr noundef nonnull %6) #5
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mchp_sparx5_map_syscon.exit, label %mchp_sparx5_map_syscon.exit.thread44

mchp_sparx5_map_syscon.exit.thread44:             ; preds = %if.end.i
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %call.i, align 4
  %gcb_ctrl = getelementptr inbounds %struct.mchp_reset_context, ptr %call.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #5
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !50
  %call.i37 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res.i) #5
  %cmp.i.i38 = icmp ugt ptr %call.i37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i38, label %do.end.i, label %if.end.i40

mchp_sparx5_map_syscon.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call1.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %9) #8
  br label %cleanup

do.end.i:                                         ; preds = %mchp_sparx5_map_syscon.exit.thread44
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0) #8
  br label %mchp_sparx5_map_io.exit

if.end.i40:                                       ; preds = %mchp_sparx5_map_syscon.exit.thread44
  %10 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res.i, align 4
  %name.i = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  store ptr %13, ptr @sparx5_reset_regmap_config, align 4
  %call4.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call.i37, ptr noundef nonnull @sparx5_reset_regmap_config, ptr noundef nonnull @mchp_sparx5_map_io._key, ptr noundef nonnull @.str.9) #5
  %cmp.i1.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.end.i40.mchp_sparx5_map_io.exit_crit_edge, label %mchp_sparx5_map_io.exit.thread

if.end.i40.mchp_sparx5_map_io.exit_crit_edge:     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %mchp_sparx5_map_io.exit

mchp_sparx5_map_io.exit.thread:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %gcb_ctrl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %gcb_ctrl, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #5
  %rcdev = getelementptr inbounds %struct.mchp_reset_context, ptr %call.i, i32 0, i32 2
  %owner = getelementptr inbounds %struct.mchp_reset_context, ptr %call.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %owner, align 4
  %nr_resets = getelementptr inbounds %struct.mchp_reset_context, ptr %call.i, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nr_resets, align 4
  %17 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sparx5_reset_ops, ptr %rcdev, align 4
  %of_node13 = getelementptr inbounds %struct.mchp_reset_context, ptr %call.i, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %of_node13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %of_node13, align 4
  %call15 = call ptr @device_get_match_data(ptr noundef %dev) #5
  %props = getelementptr inbounds %struct.mchp_reset_context, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call15, ptr %props, align 4
  %call18 = call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef %rcdev) #5
  br label %cleanup

mchp_sparx5_map_io.exit:                          ; preds = %if.end.i40.mchp_sparx5_map_io.exit_crit_edge, %do.end.i
  %retval.0.i41.in = phi ptr [ %call.i37, %do.end.i ], [ %call4.i, %if.end.i40.mchp_sparx5_map_io.exit_crit_edge ]
  %retval.0.i41 = ptrtoint ptr %retval.0.i41.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #5
  br label %cleanup

cleanup:                                          ; preds = %mchp_sparx5_map_io.exit, %mchp_sparx5_map_io.exit.thread, %mchp_sparx5_map_syscon.exit, %of_parse_phandle.exit.i.cleanup_crit_edge, %of_parse_phandle.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %mchp_sparx5_map_io.exit.thread ], [ -12, %entry.cleanup_crit_edge ], [ %9, %mchp_sparx5_map_syscon.exit ], [ %retval.0.i41, %mchp_sparx5_map_io.exit ], [ -19, %of_parse_phandle.exit.i.cleanup_crit_edge ], [ -19, %of_parse_phandle.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_switch_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !50
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %props = getelementptr i8, ptr %rcdev, i32 44
  %3 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %props, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %protect_bit = getelementptr inbounds %struct.reset_props, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %protect_bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %protect_bit, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %6, i32 noundef %8, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %gcb_ctrl = getelementptr i8, ptr %rcdev, i32 -4
  %9 = ptrtoint ptr %gcb_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gcb_ctrl, align 4
  %11 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %props, align 4
  %reset_reg = getelementptr inbounds %struct.reset_props, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %reset_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reset_reg, align 4
  %reset_bit = getelementptr inbounds %struct.reset_props, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %reset_bit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reset_bit, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %14, i32 noundef %16) #5
  %call7 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call7, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 54) #5
  %17 = ptrtoint ptr %gcb_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gcb_ctrl, align 4
  %19 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %props, align 4
  %reset_reg1775 = getelementptr inbounds %struct.reset_props, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %reset_reg1775 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reset_reg1775, align 4
  %call1876 = call i32 @regmap_read(ptr noundef %18, i32 noundef %22, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1876)
  %tobool.not77 = icmp eq i32 %call1876, 0
  br i1 %tobool.not77, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then35.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %props, align 4
  %reset_bit20 = getelementptr inbounds %struct.reset_props, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %reset_bit20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reset_bit20, align 4
  %and = and i32 %28, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp21 = icmp eq i32 %and, 0
  br i1 %cmp21, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call25 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %29 = ptrtoint ptr %gcb_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gcb_ctrl, align 4
  %31 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %props, align 4
  %reset_reg17 = getelementptr inbounds %struct.reset_props, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %reset_reg17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reset_reg17, align 4
  %call18 = call i32 @regmap_read(ptr noundef %30, i32 noundef %34, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then35.lor.lhs.false_crit_edge, label %if.then35.lor.end_crit_edge

if.then35.lor.end_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

if.then35.lor.lhs.false_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %35 = ptrtoint ptr %gcb_ctrl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gcb_ctrl, align 4
  %37 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %props, align 4
  %reset_reg31 = getelementptr inbounds %struct.reset_props, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %reset_reg31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reset_reg31, align 4
  %call32 = call i32 @regmap_read(ptr noundef %36, i32 noundef %40, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool38.not = icmp eq i32 %call32, 0
  br i1 %tobool38.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %43 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %props, align 4
  %reset_bit40 = getelementptr inbounds %struct.reset_props, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %reset_bit40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reset_bit40, align 4
  %and41 = and i32 %46, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp42 = icmp eq i32 %and41, 0
  %phi.sel = select i1 %cmp42, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then35.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool38.not68 = phi i32 [ %call32, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1876, %entry.lor.end_crit_edge ], [ %call18, %if.then35.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %tobool38.not68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_reset_microchip_sparx5__170_166_mchp_sparx5_reset_init2, !1, !"__initcall__kmod_reset_microchip_sparx5__170_166_mchp_sparx5_reset_init2", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 166, i32 1}
!2 = !{ptr @__UNIQUE_ID_description171, !3, !"__UNIQUE_ID_description171", i1 false, i1 false}
!3 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 168, i32 1}
!4 = !{ptr @__UNIQUE_ID_author172, !5, !"__UNIQUE_ID_author172", i1 false, i1 false}
!5 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 169, i32 1}
!6 = !{ptr @__UNIQUE_ID_file173, !7, !"__UNIQUE_ID_file173", i1 false, i1 false}
!7 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 170, i32 1}
!8 = !{ptr @__UNIQUE_ID_license174, !7, !"__UNIQUE_ID_license174", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 156, i32 11}
!11 = !{ptr @mchp_sparx5_reset_driver, !12, !"mchp_sparx5_reset_driver", i1 false, i1 false}
!12 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 153, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 112, i32 37}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 75, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mchp_sparx5_map_syscon._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @mchp_sparx5_map_syscon._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 91, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mchp_sparx5_map_io._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @mchp_sparx5_map_io._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mchp_sparx5_map_io._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 95, i32 8}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sparx5_reset_regmap_config, !32, !"sparx5_reset_regmap_config", i1 false, i1 false}
!32 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 30, i32 29}
!33 = !{ptr @sparx5_reset_ops, !34, !"sparx5_reset_ops", i1 false, i1 false}
!34 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 57, i32 39}
!35 = !{ptr @mchp_sparx5_reset_of_match, !36, !"mchp_sparx5_reset_of_match", i1 false, i1 false}
!36 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 142, i32 34}
!37 = !{ptr @reset_props_sparx5, !38, !"reset_props_sparx5", i1 false, i1 false}
!38 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 128, i32 33}
!39 = !{ptr @reset_props_lan966x, !40, !"reset_props_lan966x", i1 false, i1 false}
!40 = !{!"../drivers/reset/reset-microchip-sparx5.c", i32 135, i32 33}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
