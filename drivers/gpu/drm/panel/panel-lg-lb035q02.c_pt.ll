; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-lg-lb035q02.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-lg-lb035q02.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.72 = type { i16, i16 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.lb035q02_device = type { %struct.drm_panel, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_lg_lb035q02__248_240_lb035q02_driver_init6 = internal global ptr @lb035q02_driver_init, section ".initcall6.init", align 4
@lb035q02_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @lb035q02_ids, ptr @lb035q02_probe, ptr @lb035q02_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lb035q02_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lb035q02_driver_exit = internal global ptr @lb035q02_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [64 x i8] c"panel_lg_lb035q02.author=Tomi Valkeinen <tomi.valkeinen@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [67 x i8] c"panel_lg_lb035q02.description=LG.Philips LB035Q02 LCD Panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [63 x i8] c"panel_lg_lb035q02.file=drivers/gpu/drm/panel/panel-lg-lb035q02\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [30 x i8] c"panel_lg_lb035q02.license=GPL\00", section ".modinfo", align 1
@lb035q02_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"lb035q02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"panel-lg-lb035q02\00", [46 x i8] zeroinitializer }, align 32
@lb035q02_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lgphilips,lb035q02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lb035q02_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to parse enable gpio\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lb035q02_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/panel/panel-lg-lb035q02.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lb035q02_probe._entry_ptr = internal global ptr @lb035q02_probe._entry, section ".printk_index", align 4
@lb035q02_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr null, ptr @lb035q02_enable, ptr @lb035q02_disable, ptr null, ptr @lb035q02_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@lb035q02_init.init_data = internal constant { [24 x %struct.anon.72], [32 x i8] } { [24 x %struct.anon.72] [%struct.anon.72 { i16 1, i16 25344 }, %struct.anon.72 { i16 2, i16 512 }, %struct.anon.72 { i16 3, i16 375 }, %struct.anon.72 { i16 4, i16 1223 }, %struct.anon.72 { i16 5, i16 -64 }, %struct.anon.72 { i16 6, i16 -6138 }, %struct.anon.72 { i16 10, i16 16392 }, %struct.anon.72 { i16 11, i16 0 }, %struct.anon.72 { i16 13, i16 48 }, %struct.anon.72 { i16 14, i16 10240 }, %struct.anon.72 { i16 15, i16 0 }, %struct.anon.72 { i16 22, i16 -24704 }, %struct.anon.72 { i16 23, i16 2575 }, %struct.anon.72 { i16 30, i16 193 }, %struct.anon.72 { i16 48, i16 768 }, %struct.anon.72 { i16 49, i16 7 }, %struct.anon.72 { i16 50, i16 0 }, %struct.anon.72 { i16 51, i16 0 }, %struct.anon.72 { i16 52, i16 1799 }, %struct.anon.72 { i16 53, i16 4 }, %struct.anon.72 { i16 54, i16 770 }, %struct.anon.72 { i16 55, i16 514 }, %struct.anon.72 { i16 58, i16 2573 }, %struct.anon.72 { i16 59, i16 2054 }], [32 x i8] zeroinitializer }, align 32
@lb035q02_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 6500, i16 320, i16 340, i16 342, i16 410, i16 0, i16 240, i16 244, i16 246, i16 264, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 70, i16 53, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"lb035q02_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 230, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"lb035q02_ids\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 223, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 235, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"lb035q02_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 216, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 188, i32 47 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 190, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"lb035q02_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 170, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"init_data\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 69, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"lb035q02_mode\00", align 1
@___asan_gen_.47 = private constant [45 x i8] c"../drivers/gpu/drm/panel/panel-lg-lb035q02.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 127, i32 38 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_lb035q02_driver_exit, ptr @__initcall__kmod_panel_lg_lb035q02__248_240_lb035q02_driver_init6, ptr @lb035q02_driver_exit, ptr @lb035q02_probe._entry, ptr @lb035q02_probe._entry_ptr, ptr @lb035q02_driver, ptr @lb035q02_ids, ptr @.str, ptr @lb035q02_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lb035q02_funcs, ptr @lb035q02_init.init_data, ptr @lb035q02_mode], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb035q02_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb035q02_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb035q02_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb035q02_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb035q02_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb035q02_init.init_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb035q02_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lb035q02_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @lb035q02_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lb035q02_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @lb035q02_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb035q02_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %index_xfer.i.i = alloca %struct.spi_transfer, align 4
  %value_xfer.i.i = alloca %struct.spi_transfer, align 4
  %buffer.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.lb035q02_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %spi1, align 4
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %enable_gpio = getelementptr inbounds %struct.lb035q02_device, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  %3 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enable_gpio, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = getelementptr inbounds i8, ptr %index_xfer.i.i, i32 4
  %7 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %index_xfer.i.i, i32 0, i32 2
  %8 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %index_xfer.i.i, i32 0, i32 7
  %9 = getelementptr inbounds i8, ptr %value_xfer.i.i, i32 4
  %10 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %value_xfer.i.i, i32 0, i32 2
  %11 = getelementptr inbounds [16 x i8], ptr %buffer.i.i, i32 0, i32 1
  %12 = getelementptr inbounds [16 x i8], ptr %buffer.i.i, i32 0, i32 2
  %13 = getelementptr inbounds [16 x i8], ptr %buffer.i.i, i32 0, i32 4
  %14 = getelementptr inbounds [16 x i8], ptr %buffer.i.i, i32 0, i32 5
  %15 = getelementptr inbounds [16 x i8], ptr %buffer.i.i, i32 0, i32 6
  %16 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %17 = getelementptr inbounds i8, ptr %buffer.i.i, i32 3
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %index_xfer.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %index_xfer.i.i, i32 0, i32 18, i32 1
  %transfer_list.i13.i.i = getelementptr inbounds %struct.spi_transfer, ptr %value_xfer.i.i, i32 0, i32 18
  %prev3.i.i.i16.i.i = getelementptr inbounds %struct.spi_transfer, ptr %value_xfer.i.i, i32 0, i32 18, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %lb035q02_write.exit.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %if.end13, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end10
  %i.08.i = phi i32 [ 0, %if.end10 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [24 x %struct.anon.72], ptr @lb035q02_init.init_data, i32 0, i32 %i.08.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  %value.i = getelementptr [24 x %struct.anon.72], ptr @lb035q02_init.init_data, i32 0, i32 %i.08.i, i32 1
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %value.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %index_xfer.i.i) #5
  %22 = call ptr @memset(ptr %6, i32 0, i32 92)
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %7, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 64, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %value_xfer.i.i) #5
  %25 = call ptr @memset(ptr %9, i32 0, i32 92)
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i.i) #5
  %27 = call ptr @memset(ptr %17, i32 255, i32 13)
  %28 = call ptr @memset(ptr %16, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %30 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %32 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %33 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 112, ptr %buffer.i.i, align 1
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %11, align 1
  %35 = trunc i16 %19 to i8
  %conv2.i.i = and i8 %35, 127
  %36 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv2.i.i, ptr %12, align 1
  %37 = ptrtoint ptr %index_xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buffer.i.i, ptr %index_xfer.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.spi_message_add_tail.exit.i.i_crit_edge

for.body.i.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %40 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %for.body.i.spi_message_add_tail.exit.i.i_crit_edge
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 114, ptr %13, align 1
  %43 = lshr i16 %21, 8
  %conv6.i.i = trunc i16 %43 to i8
  %44 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv6.i.i, ptr %14, align 1
  %conv8.i.i = trunc i16 %21 to i8
  %45 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv8.i.i, ptr %15, align 1
  %46 = ptrtoint ptr %value_xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %13, ptr %value_xfer.i.i, align 4
  %47 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i15.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i13.i.i, ptr noundef %48, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i15.i.i, label %if.end.i.i.i17.i.i, label %spi_message_add_tail.exit.i.i.lb035q02_write.exit.i_crit_edge

spi_message_add_tail.exit.i.i.lb035q02_write.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lb035q02_write.exit.i

if.end.i.i.i17.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i13.i.i, ptr %prev.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %transfer_list.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i, ptr %transfer_list.i13.i.i, align 4
  %51 = ptrtoint ptr %prev3.i.i.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i16.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i13.i.i, ptr %48, align 4
  br label %lb035q02_write.exit.i

lb035q02_write.exit.i:                            ; preds = %if.end.i.i.i17.i.i, %spi_message_add_tail.exit.i.i.lb035q02_write.exit.i_crit_edge
  %53 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spi1, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %54, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %value_xfer.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %index_xfer.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %lb035q02_write.exit.i.cleanup_crit_edge, label %for.cond.i

lb035q02_write.exit.i.cleanup_crit_edge:          ; preds = %lb035q02_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi1, align 4
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %56, ptr noundef nonnull @lb035q02_funcs, i32 noundef 17) #5
  call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lb035q02_write.exit.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %lb035q02_write.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb035q02_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #5
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb035q02_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_gpio = getelementptr inbounds %struct.lb035q02_device, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb035q02_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_gpio = getelementptr inbounds %struct.lb035q02_device, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lb035q02_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @lb035q02_mode) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %2 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 70, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 53, ptr %height_mm, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %4 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 134, ptr %bus_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_panel_lg_lb035q02__248_240_lb035q02_driver_init6, !1, !"__initcall__kmod_panel_lg_lb035q02__248_240_lb035q02_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 240, i32 1}
!2 = !{ptr @__exitcall_lb035q02_driver_exit, !1, !"__exitcall_lb035q02_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author249, !4, !"__UNIQUE_ID_author249", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 242, i32 1}
!5 = !{ptr @__UNIQUE_ID_description250, !6, !"__UNIQUE_ID_description250", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 243, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 244, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 235, i32 11}
!12 = !{ptr @lb035q02_driver, !13, !"lb035q02_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 230, i32 26}
!14 = !{ptr @lb035q02_ids, !15, !"lb035q02_ids", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 223, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 188, i32 47}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 190, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lb035q02_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lb035q02_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @lb035q02_init.init_data, !27, !"init_data", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 69, i32 4}
!28 = !{ptr @lb035q02_funcs, !29, !"lb035q02_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 170, i32 37}
!30 = !{ptr @lb035q02_mode, !31, !"lb035q02_mode", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 127, i32 38}
!32 = !{ptr @lb035q02_of_match, !33, !"lb035q02_of_match", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-lg-lb035q02.c", i32 216, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
