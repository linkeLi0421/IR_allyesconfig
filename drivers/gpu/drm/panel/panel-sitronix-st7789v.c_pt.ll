; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sitronix-st7789v.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sitronix-st7789v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.st7789v = type { %struct.drm_panel, ptr, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_sitronix_st7789v__304_413_st7789v_driver_init6 = internal global ptr @st7789v_driver_init, section ".initcall6.init", align 4
@st7789v_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @st7789v_probe, ptr @st7789v_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st7789v_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_st7789v_driver_exit = internal global ptr @st7789v_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [79 x i8] c"panel_sitronix_st7789v.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [63 x i8] c"panel_sitronix_st7789v.description=Sitronix st7789v LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [73 x i8] c"panel_sitronix_st7789v.file=drivers/gpu/drm/panel/panel-sitronix-st7789v\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [38 x i8] c"panel_sitronix_st7789v.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st7789v\00", [24 x i8] zeroinitializer }, align 32
@st7789v_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sitronix,st7789v\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st7789v_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @st7789v_prepare, ptr @st7789v_enable, ptr @st7789v_disable, ptr @st7789v_unprepare, ptr @st7789v_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@st7789v_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st7789v_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/panel/panel-sitronix-st7789v.c\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st7789v_probe._entry_ptr = internal global ptr @st7789v_probe._entry, section ".printk_index", align 4
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 7000, i16 240, i16 278, i16 288, i16 298, i16 0, i16 320, i16 328, i16 332, i16 336, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@st7789v_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 179, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st7789v_get_modes\00", [46 x i8] zeroinitializer }, align 32
@st7789v_get_modes._entry_ptr = internal global ptr @st7789v_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"st7789v_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 405, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 409, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"st7789v_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 399, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"st7789v_drm_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 348, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 371, i32 45 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 375, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 377, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 158, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [50 x i8] c"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 177, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_st7789v_driver_exit, ptr @__initcall__kmod_panel_sitronix_st7789v__304_413_st7789v_driver_init6, ptr @st7789v_driver_exit, ptr @st7789v_get_modes._entry, ptr @st7789v_get_modes._entry_ptr, ptr @st7789v_probe._entry, ptr @st7789v_probe._entry_ptr, ptr @st7789v_driver, ptr @.str, ptr @st7789v_of_match, ptr @st7789v_drm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @default_mode, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7789v_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7789v_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7789v_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7789v_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7789v_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @st7789v_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st7789v_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @st7789v_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 36, i32 noundef 3520) #5
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
  %spi1 = getelementptr inbounds %struct.st7789v, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %spi1, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %spi, ptr noundef nonnull @st7789v_drm_funcs, i32 noundef 17) #5
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #5
  %power = getelementptr inbounds %struct.st7789v, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %power, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef 3) #5
  %reset = getelementptr inbounds %struct.st7789v, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %reset, align 4
  %cmp.i45 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.3) #8
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call21 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %7, %do.end ], [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_prepare(ptr noundef readonly %panel) #2 align 64 {
entry:
  %xfer.i.i613 = alloca %struct.spi_transfer, align 4
  %msg.i.i614 = alloca %struct.spi_message, align 4
  %txbuf.i.i615 = alloca i16, align 2
  %xfer.i.i598 = alloca %struct.spi_transfer, align 4
  %msg.i.i599 = alloca %struct.spi_message, align 4
  %txbuf.i.i600 = alloca i16, align 2
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txbuf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.st7789v, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reset = getelementptr inbounds %struct.st7789v, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 30) #5
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 120) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #5
  %6 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  %8 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 17, ptr %txbuf.i.i, align 2
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %15 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %txbuf.i.i, ptr %xfer.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %bits_per_word.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.st7789v_write_command.exit_crit_edge

if.end.st7789v_write_command.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_write_command.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %st7789v_write_command.exit

st7789v_write_command.exit:                       ; preds = %if.end.i.i.i.i.i, %if.end.st7789v_write_command.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.st7789v, ptr %panel, i32 0, i32 1
  %22 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %23, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %do.end, label %st7789v_write_command.exit.cleanup_crit_edge

st7789v_write_command.exit.cleanup_crit_edge:     ; preds = %st7789v_write_command.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %st7789v_write_command.exit
  call void @msleep(i32 noundef 120) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i598) #5
  %24 = getelementptr inbounds i8, ptr %xfer.i.i598, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i599) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i600) #5
  %26 = ptrtoint ptr %txbuf.i.i600 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 54, ptr %txbuf.i.i600, align 2
  %27 = getelementptr inbounds i8, ptr %msg.i.i599, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i599 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i599, ptr %msg.i.i599, align 4
  %prev.i.i.i.i.i601 = getelementptr inbounds %struct.list_head, ptr %msg.i.i599, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i601 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i599, ptr %prev.i.i.i.i.i601, align 4
  %resources.i.i.i.i602 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i599, i32 0, i32 10
  %31 = ptrtoint ptr %resources.i.i.i.i602 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i602, ptr %resources.i.i.i.i602, align 4
  %prev.i2.i.i.i.i603 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i599, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i.i.i603 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i602, ptr %prev.i2.i.i.i.i603, align 4
  %33 = ptrtoint ptr %xfer.i.i598 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %txbuf.i.i600, ptr %xfer.i.i598, align 4
  %bits_per_word.i.i604 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i598, i32 0, i32 8
  %34 = ptrtoint ptr %bits_per_word.i.i604 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 9, ptr %bits_per_word.i.i604, align 1
  %len.i.i605 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i598, i32 0, i32 2
  %35 = ptrtoint ptr %len.i.i605 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %len.i.i605, align 4
  %transfer_list.i.i.i606 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i598, i32 0, i32 18
  %call.i.i.i.i.i607 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i606, ptr noundef nonnull %msg.i.i599, ptr noundef nonnull %msg.i.i599) #5
  br i1 %call.i.i.i.i.i607, label %if.end.i.i.i.i.i609, label %do.end.st7789v_write_command.exit612_crit_edge

do.end.st7789v_write_command.exit612_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_write_command.exit612

if.end.i.i.i.i.i609:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %prev.i.i.i.i.i601 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i606, ptr %prev.i.i.i.i.i601, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i606 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i599, ptr %transfer_list.i.i.i606, align 4
  %prev3.i.i.i.i.i608 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i598, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i.i608 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i599, ptr %prev3.i.i.i.i.i608, align 4
  %39 = ptrtoint ptr %msg.i.i599 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i606, ptr %msg.i.i599, align 4
  br label %st7789v_write_command.exit612

st7789v_write_command.exit612:                    ; preds = %if.end.i.i.i.i.i609, %do.end.st7789v_write_command.exit612_crit_edge
  %40 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi.i.i, align 4
  %call.i.i611 = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %msg.i.i599) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i600) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i599) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i598) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i611)
  %tobool9.not = icmp eq i32 %call.i.i611, 0
  br i1 %tobool9.not, label %do.body14, label %st7789v_write_command.exit612.cleanup_crit_edge

st7789v_write_command.exit612.cleanup_crit_edge:  ; preds = %st7789v_write_command.exit612
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body14:                                        ; preds = %st7789v_write_command.exit612
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i613) #5
  %42 = getelementptr inbounds i8, ptr %xfer.i.i613, i32 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i614) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i615) #5
  %44 = ptrtoint ptr %txbuf.i.i615 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 256, ptr %txbuf.i.i615, align 2
  %45 = getelementptr inbounds i8, ptr %msg.i.i614, i32 8
  %46 = call ptr @memset(ptr %45, i32 0, i32 40)
  %47 = ptrtoint ptr %msg.i.i614 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %msg.i.i614, ptr %msg.i.i614, align 4
  %prev.i.i.i.i.i616 = getelementptr inbounds %struct.list_head, ptr %msg.i.i614, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i.i616 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i614, ptr %prev.i.i.i.i.i616, align 4
  %resources.i.i.i.i617 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i614, i32 0, i32 10
  %49 = ptrtoint ptr %resources.i.i.i.i617 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %resources.i.i.i.i617, ptr %resources.i.i.i.i617, align 4
  %prev.i2.i.i.i.i618 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i614, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i2.i.i.i.i618 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %resources.i.i.i.i617, ptr %prev.i2.i.i.i.i618, align 4
  %51 = ptrtoint ptr %xfer.i.i613 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %txbuf.i.i615, ptr %xfer.i.i613, align 4
  %bits_per_word.i.i619 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i613, i32 0, i32 8
  %52 = ptrtoint ptr %bits_per_word.i.i619 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 9, ptr %bits_per_word.i.i619, align 1
  %len.i.i620 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i613, i32 0, i32 2
  %53 = ptrtoint ptr %len.i.i620 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %len.i.i620, align 4
  %transfer_list.i.i.i621 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i613, i32 0, i32 18
  %call.i.i.i.i.i622 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i621, ptr noundef nonnull %msg.i.i614, ptr noundef nonnull %msg.i.i614) #5
  br i1 %call.i.i.i.i.i622, label %if.end.i.i.i.i.i624, label %do.body14.st7789v_write_data.exit_crit_edge

do.body14.st7789v_write_data.exit_crit_edge:      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_write_data.exit

if.end.i.i.i.i.i624:                              ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %prev.i.i.i.i.i616 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i.i.i621, ptr %prev.i.i.i.i.i616, align 4
  %55 = ptrtoint ptr %transfer_list.i.i.i621 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i614, ptr %transfer_list.i.i.i621, align 4
  %prev3.i.i.i.i.i623 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i613, i32 0, i32 18, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i.i.i623 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i614, ptr %prev3.i.i.i.i.i623, align 4
  %57 = ptrtoint ptr %msg.i.i614 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i.i.i621, ptr %msg.i.i614, align 4
  br label %st7789v_write_data.exit

st7789v_write_data.exit:                          ; preds = %if.end.i.i.i.i.i624, %do.body14.st7789v_write_data.exit_crit_edge
  %58 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spi.i.i, align 4
  %call.i.i626 = call i32 @spi_sync(ptr noundef %59, ptr noundef nonnull %msg.i.i614) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i615) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i614) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i613) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i626)
  %tobool16.not = icmp eq i32 %call.i.i626, 0
  br i1 %tobool16.not, label %do.body21, label %st7789v_write_data.exit.cleanup_crit_edge

st7789v_write_data.exit.cleanup_crit_edge:        ; preds = %st7789v_write_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body21:                                        ; preds = %st7789v_write_data.exit
  %call22 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext 58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body28, label %do.body21.cleanup_crit_edge

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body28:                                        ; preds = %do.body21
  %call29 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body35, label %do.body28.cleanup_crit_edge

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body35:                                        ; preds = %do.body28
  %call36 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body42, label %do.body35.cleanup_crit_edge

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body42:                                        ; preds = %do.body35
  %call43 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body49, label %do.body42.cleanup_crit_edge

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body49:                                        ; preds = %do.body42
  %call50 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.body56, label %do.body49.cleanup_crit_edge

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body56:                                        ; preds = %do.body49
  %call57 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.body63, label %do.body56.cleanup_crit_edge

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body63:                                        ; preds = %do.body56
  %call64 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.body70, label %do.body63.cleanup_crit_edge

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body70:                                        ; preds = %do.body63
  %call71 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body77, label %do.body70.cleanup_crit_edge

do.body70.cleanup_crit_edge:                      ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body77:                                        ; preds = %do.body70
  %call78 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %do.body84, label %do.body77.cleanup_crit_edge

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body84:                                        ; preds = %do.body77
  %call85 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.body91, label %do.body84.cleanup_crit_edge

do.body84.cleanup_crit_edge:                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body91:                                        ; preds = %do.body84
  %call92 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.body98, label %do.body91.cleanup_crit_edge

do.body91.cleanup_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body98:                                        ; preds = %do.body91
  %call99 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.body105, label %do.body98.cleanup_crit_edge

do.body98.cleanup_crit_edge:                      ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body105:                                       ; preds = %do.body98
  %call106 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body112, label %do.body105.cleanup_crit_edge

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body112:                                       ; preds = %do.body105
  %call113 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.body119, label %do.body112.cleanup_crit_edge

do.body112.cleanup_crit_edge:                     ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body119:                                       ; preds = %do.body112
  %call120 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %do.body126, label %do.body119.cleanup_crit_edge

do.body119.cleanup_crit_edge:                     ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body126:                                       ; preds = %do.body119
  %call127 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %do.body133, label %do.body126.cleanup_crit_edge

do.body126.cleanup_crit_edge:                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body133:                                       ; preds = %do.body126
  %call134 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %do.body140, label %do.body133.cleanup_crit_edge

do.body133.cleanup_crit_edge:                     ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body140:                                       ; preds = %do.body133
  %call141 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %do.body147, label %do.body140.cleanup_crit_edge

do.body140.cleanup_crit_edge:                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body147:                                       ; preds = %do.body140
  %call148 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %do.body154, label %do.body147.cleanup_crit_edge

do.body147.cleanup_crit_edge:                     ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body154:                                       ; preds = %do.body147
  %call155 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %do.body161, label %do.body154.cleanup_crit_edge

do.body154.cleanup_crit_edge:                     ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body161:                                       ; preds = %do.body154
  %call162 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %do.body168, label %do.body161.cleanup_crit_edge

do.body161.cleanup_crit_edge:                     ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body168:                                       ; preds = %do.body161
  %call169 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %do.body175, label %do.body168.cleanup_crit_edge

do.body168.cleanup_crit_edge:                     ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body175:                                       ; preds = %do.body168
  %call176 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %do.body182, label %do.body175.cleanup_crit_edge

do.body175.cleanup_crit_edge:                     ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body182:                                       ; preds = %do.body175
  %call183 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext -92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %do.body189, label %do.body182.cleanup_crit_edge

do.body182.cleanup_crit_edge:                     ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body189:                                       ; preds = %do.body182
  %call190 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext -95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %do.body196, label %do.body189.cleanup_crit_edge

do.body189.cleanup_crit_edge:                     ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body196:                                       ; preds = %do.body189
  %call197 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %do.body203, label %do.body196.cleanup_crit_edge

do.body196.cleanup_crit_edge:                     ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body203:                                       ; preds = %do.body196
  %call204 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext -48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %do.body210, label %do.body203.cleanup_crit_edge

do.body203.cleanup_crit_edge:                     ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body210:                                       ; preds = %do.body203
  %call211 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %do.body217, label %do.body210.cleanup_crit_edge

do.body210.cleanup_crit_edge:                     ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body217:                                       ; preds = %do.body210
  %call218 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %do.body224, label %do.body217.cleanup_crit_edge

do.body217.cleanup_crit_edge:                     ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body224:                                       ; preds = %do.body217
  %call225 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %do.body231, label %do.body224.cleanup_crit_edge

do.body224.cleanup_crit_edge:                     ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body231:                                       ; preds = %do.body224
  %call232 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %do.body238, label %do.body231.cleanup_crit_edge

do.body231.cleanup_crit_edge:                     ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body238:                                       ; preds = %do.body231
  %call239 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %do.body245, label %do.body238.cleanup_crit_edge

do.body238.cleanup_crit_edge:                     ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body245:                                       ; preds = %do.body238
  %call246 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %do.body252, label %do.body245.cleanup_crit_edge

do.body245.cleanup_crit_edge:                     ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body252:                                       ; preds = %do.body245
  %call253 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %do.body259, label %do.body252.cleanup_crit_edge

do.body252.cleanup_crit_edge:                     ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body259:                                       ; preds = %do.body252
  %call260 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %do.body266, label %do.body259.cleanup_crit_edge

do.body259.cleanup_crit_edge:                     ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body266:                                       ; preds = %do.body259
  %call267 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %do.body273, label %do.body266.cleanup_crit_edge

do.body266.cleanup_crit_edge:                     ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body273:                                       ; preds = %do.body266
  %call274 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %do.body280, label %do.body273.cleanup_crit_edge

do.body273.cleanup_crit_edge:                     ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body280:                                       ; preds = %do.body273
  %call281 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %do.body287, label %do.body280.cleanup_crit_edge

do.body280.cleanup_crit_edge:                     ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body287:                                       ; preds = %do.body280
  %call288 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %do.body294, label %do.body287.cleanup_crit_edge

do.body287.cleanup_crit_edge:                     ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body294:                                       ; preds = %do.body287
  %call295 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %do.body301, label %do.body294.cleanup_crit_edge

do.body294.cleanup_crit_edge:                     ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body301:                                       ; preds = %do.body294
  %call302 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %do.body308, label %do.body301.cleanup_crit_edge

do.body301.cleanup_crit_edge:                     ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body308:                                       ; preds = %do.body301
  %call309 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext -48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309)
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %do.body315, label %do.body308.cleanup_crit_edge

do.body308.cleanup_crit_edge:                     ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body315:                                       ; preds = %do.body308
  %call316 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %do.body322, label %do.body315.cleanup_crit_edge

do.body315.cleanup_crit_edge:                     ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body322:                                       ; preds = %do.body315
  %call323 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %do.body329, label %do.body322.cleanup_crit_edge

do.body322.cleanup_crit_edge:                     ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body329:                                       ; preds = %do.body322
  %call330 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %do.body336, label %do.body329.cleanup_crit_edge

do.body329.cleanup_crit_edge:                     ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body336:                                       ; preds = %do.body329
  %call337 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call337)
  %tobool338.not = icmp eq i32 %call337, 0
  br i1 %tobool338.not, label %do.body343, label %do.body336.cleanup_crit_edge

do.body336.cleanup_crit_edge:                     ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body343:                                       ; preds = %do.body336
  %call344 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %do.body350, label %do.body343.cleanup_crit_edge

do.body343.cleanup_crit_edge:                     ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body350:                                       ; preds = %do.body343
  %call351 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %do.body357, label %do.body350.cleanup_crit_edge

do.body350.cleanup_crit_edge:                     ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body357:                                       ; preds = %do.body350
  %call358 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool359.not = icmp eq i32 %call358, 0
  br i1 %tobool359.not, label %do.body364, label %do.body357.cleanup_crit_edge

do.body357.cleanup_crit_edge:                     ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body364:                                       ; preds = %do.body357
  %call365 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool366.not = icmp eq i32 %call365, 0
  br i1 %tobool366.not, label %do.body371, label %do.body364.cleanup_crit_edge

do.body364.cleanup_crit_edge:                     ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body371:                                       ; preds = %do.body364
  %call372 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %do.body378, label %do.body371.cleanup_crit_edge

do.body371.cleanup_crit_edge:                     ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body378:                                       ; preds = %do.body371
  %call379 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call379)
  %tobool380.not = icmp eq i32 %call379, 0
  br i1 %tobool380.not, label %do.body385, label %do.body378.cleanup_crit_edge

do.body378.cleanup_crit_edge:                     ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body385:                                       ; preds = %do.body378
  %call386 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %do.body392, label %do.body385.cleanup_crit_edge

do.body385.cleanup_crit_edge:                     ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body392:                                       ; preds = %do.body385
  %call393 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call393)
  %tobool394.not = icmp eq i32 %call393, 0
  br i1 %tobool394.not, label %do.body399, label %do.body392.cleanup_crit_edge

do.body392.cleanup_crit_edge:                     ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body399:                                       ; preds = %do.body392
  %call400 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400)
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %do.body406, label %do.body399.cleanup_crit_edge

do.body399.cleanup_crit_edge:                     ; preds = %do.body399
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body406:                                       ; preds = %do.body399
  %call407 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call407)
  %tobool408.not = icmp eq i32 %call407, 0
  br i1 %tobool408.not, label %do.body413, label %do.body406.cleanup_crit_edge

do.body406.cleanup_crit_edge:                     ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body413:                                       ; preds = %do.body406
  %call414 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call414)
  %tobool415.not = icmp eq i32 %call414, 0
  br i1 %tobool415.not, label %do.body420, label %do.body413.cleanup_crit_edge

do.body413.cleanup_crit_edge:                     ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body420:                                       ; preds = %do.body413
  %call421 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call421)
  %tobool422.not = icmp eq i32 %call421, 0
  br i1 %tobool422.not, label %do.body427, label %do.body420.cleanup_crit_edge

do.body420.cleanup_crit_edge:                     ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body427:                                       ; preds = %do.body420
  %call428 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext -16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call428)
  %tobool429.not = icmp eq i32 %call428, 0
  br i1 %tobool429.not, label %do.body434, label %do.body427.cleanup_crit_edge

do.body427.cleanup_crit_edge:                     ; preds = %do.body427
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body434:                                       ; preds = %do.body427
  %call435 = call fastcc i32 @st7789v_write_command(ptr noundef %panel, i8 noundef zeroext -79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call435)
  %tobool436.not = icmp eq i32 %call435, 0
  br i1 %tobool436.not, label %do.body441, label %do.body434.cleanup_crit_edge

do.body434.cleanup_crit_edge:                     ; preds = %do.body434
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body441:                                       ; preds = %do.body434
  %call442 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext -50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call442)
  %tobool443.not = icmp eq i32 %call442, 0
  br i1 %tobool443.not, label %do.body448, label %do.body441.cleanup_crit_edge

do.body441.cleanup_crit_edge:                     ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body448:                                       ; preds = %do.body441
  %call449 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %do.body455, label %do.body448.cleanup_crit_edge

do.body448.cleanup_crit_edge:                     ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body455:                                       ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #7
  %call456 = call fastcc i32 @st7789v_write_data(ptr noundef %panel, i8 noundef zeroext 20)
  br label %cleanup

cleanup:                                          ; preds = %do.body455, %do.body448.cleanup_crit_edge, %do.body441.cleanup_crit_edge, %do.body434.cleanup_crit_edge, %do.body427.cleanup_crit_edge, %do.body420.cleanup_crit_edge, %do.body413.cleanup_crit_edge, %do.body406.cleanup_crit_edge, %do.body399.cleanup_crit_edge, %do.body392.cleanup_crit_edge, %do.body385.cleanup_crit_edge, %do.body378.cleanup_crit_edge, %do.body371.cleanup_crit_edge, %do.body364.cleanup_crit_edge, %do.body357.cleanup_crit_edge, %do.body350.cleanup_crit_edge, %do.body343.cleanup_crit_edge, %do.body336.cleanup_crit_edge, %do.body329.cleanup_crit_edge, %do.body322.cleanup_crit_edge, %do.body315.cleanup_crit_edge, %do.body308.cleanup_crit_edge, %do.body301.cleanup_crit_edge, %do.body294.cleanup_crit_edge, %do.body287.cleanup_crit_edge, %do.body280.cleanup_crit_edge, %do.body273.cleanup_crit_edge, %do.body266.cleanup_crit_edge, %do.body259.cleanup_crit_edge, %do.body252.cleanup_crit_edge, %do.body245.cleanup_crit_edge, %do.body238.cleanup_crit_edge, %do.body231.cleanup_crit_edge, %do.body224.cleanup_crit_edge, %do.body217.cleanup_crit_edge, %do.body210.cleanup_crit_edge, %do.body203.cleanup_crit_edge, %do.body196.cleanup_crit_edge, %do.body189.cleanup_crit_edge, %do.body182.cleanup_crit_edge, %do.body175.cleanup_crit_edge, %do.body168.cleanup_crit_edge, %do.body161.cleanup_crit_edge, %do.body154.cleanup_crit_edge, %do.body147.cleanup_crit_edge, %do.body140.cleanup_crit_edge, %do.body133.cleanup_crit_edge, %do.body126.cleanup_crit_edge, %do.body119.cleanup_crit_edge, %do.body112.cleanup_crit_edge, %do.body105.cleanup_crit_edge, %do.body98.cleanup_crit_edge, %do.body91.cleanup_crit_edge, %do.body84.cleanup_crit_edge, %do.body77.cleanup_crit_edge, %do.body70.cleanup_crit_edge, %do.body63.cleanup_crit_edge, %do.body56.cleanup_crit_edge, %do.body49.cleanup_crit_edge, %do.body42.cleanup_crit_edge, %do.body35.cleanup_crit_edge, %do.body28.cleanup_crit_edge, %do.body21.cleanup_crit_edge, %st7789v_write_data.exit.cleanup_crit_edge, %st7789v_write_command.exit612.cleanup_crit_edge, %st7789v_write_command.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call.i.i, %st7789v_write_command.exit.cleanup_crit_edge ], [ %call.i.i611, %st7789v_write_command.exit612.cleanup_crit_edge ], [ %call.i.i626, %st7789v_write_data.exit.cleanup_crit_edge ], [ %call22, %do.body21.cleanup_crit_edge ], [ %call29, %do.body28.cleanup_crit_edge ], [ %call36, %do.body35.cleanup_crit_edge ], [ %call43, %do.body42.cleanup_crit_edge ], [ %call50, %do.body49.cleanup_crit_edge ], [ %call57, %do.body56.cleanup_crit_edge ], [ %call64, %do.body63.cleanup_crit_edge ], [ %call71, %do.body70.cleanup_crit_edge ], [ %call78, %do.body77.cleanup_crit_edge ], [ %call85, %do.body84.cleanup_crit_edge ], [ %call92, %do.body91.cleanup_crit_edge ], [ %call99, %do.body98.cleanup_crit_edge ], [ %call106, %do.body105.cleanup_crit_edge ], [ %call113, %do.body112.cleanup_crit_edge ], [ %call120, %do.body119.cleanup_crit_edge ], [ %call127, %do.body126.cleanup_crit_edge ], [ %call134, %do.body133.cleanup_crit_edge ], [ %call141, %do.body140.cleanup_crit_edge ], [ %call148, %do.body147.cleanup_crit_edge ], [ %call155, %do.body154.cleanup_crit_edge ], [ %call162, %do.body161.cleanup_crit_edge ], [ %call169, %do.body168.cleanup_crit_edge ], [ %call176, %do.body175.cleanup_crit_edge ], [ %call183, %do.body182.cleanup_crit_edge ], [ %call190, %do.body189.cleanup_crit_edge ], [ %call197, %do.body196.cleanup_crit_edge ], [ %call204, %do.body203.cleanup_crit_edge ], [ %call211, %do.body210.cleanup_crit_edge ], [ %call218, %do.body217.cleanup_crit_edge ], [ %call225, %do.body224.cleanup_crit_edge ], [ %call232, %do.body231.cleanup_crit_edge ], [ %call239, %do.body238.cleanup_crit_edge ], [ %call246, %do.body245.cleanup_crit_edge ], [ %call253, %do.body252.cleanup_crit_edge ], [ %call260, %do.body259.cleanup_crit_edge ], [ %call267, %do.body266.cleanup_crit_edge ], [ %call274, %do.body273.cleanup_crit_edge ], [ %call281, %do.body280.cleanup_crit_edge ], [ %call288, %do.body287.cleanup_crit_edge ], [ %call295, %do.body294.cleanup_crit_edge ], [ %call302, %do.body301.cleanup_crit_edge ], [ %call309, %do.body308.cleanup_crit_edge ], [ %call316, %do.body315.cleanup_crit_edge ], [ %call323, %do.body322.cleanup_crit_edge ], [ %call330, %do.body329.cleanup_crit_edge ], [ %call337, %do.body336.cleanup_crit_edge ], [ %call344, %do.body343.cleanup_crit_edge ], [ %call351, %do.body350.cleanup_crit_edge ], [ %call358, %do.body357.cleanup_crit_edge ], [ %call365, %do.body364.cleanup_crit_edge ], [ %call372, %do.body371.cleanup_crit_edge ], [ %call379, %do.body378.cleanup_crit_edge ], [ %call386, %do.body385.cleanup_crit_edge ], [ %call393, %do.body392.cleanup_crit_edge ], [ %call400, %do.body399.cleanup_crit_edge ], [ %call407, %do.body406.cleanup_crit_edge ], [ %call414, %do.body413.cleanup_crit_edge ], [ %call421, %do.body420.cleanup_crit_edge ], [ %call428, %do.body427.cleanup_crit_edge ], [ %call435, %do.body434.cleanup_crit_edge ], [ %call442, %do.body441.cleanup_crit_edge ], [ %call449, %do.body448.cleanup_crit_edge ], [ %call456, %do.body455 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txbuf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #5
  %0 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  %2 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 41, ptr %txbuf.i.i, align 2
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %9 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txbuf.i.i, ptr %xfer.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %bits_per_word.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.st7789v_write_command.exit_crit_edge

entry.st7789v_write_command.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_write_command.exit

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %st7789v_write_command.exit

st7789v_write_command.exit:                       ; preds = %if.end.i.i.i.i.i, %entry.st7789v_write_command.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.st7789v, ptr %panel, i32 0, i32 1
  %16 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txbuf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #5
  %0 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  %2 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 40, ptr %txbuf.i.i, align 2
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %9 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txbuf.i.i, ptr %xfer.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %bits_per_word.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.st7789v_write_command.exit_crit_edge

entry.st7789v_write_command.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_write_command.exit

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %st7789v_write_command.exit

st7789v_write_command.exit:                       ; preds = %if.end.i.i.i.i.i, %entry.st7789v_write_command.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.st7789v, ptr %panel, i32 0, i32 1
  %16 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %txbuf.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #5
  %0 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  %2 = ptrtoint ptr %txbuf.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %txbuf.i.i, align 2
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %9 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txbuf.i.i, ptr %xfer.i.i, align 4
  %bits_per_word.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %bits_per_word.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.st7789v_write_command.exit_crit_edge

entry.st7789v_write_command.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_write_command.exit

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %st7789v_write_command.exit

st7789v_write_command.exit:                       ; preds = %if.end.i.i.i.i.i, %entry.st7789v_write_command.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.st7789v, ptr %panel, i32 0, i32 1
  %16 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %do.end, label %st7789v_write_command.exit.cleanup_crit_edge

st7789v_write_command.exit.cleanup_crit_edge:     ; preds = %st7789v_write_command.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %st7789v_write_command.exit
  call void @__sanitizer_cov_trace_pc() #7
  %power = getelementptr inbounds %struct.st7789v, ptr %panel, i32 0, i32 3
  %18 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %power, align 4
  %call2 = call i32 @regulator_disable(ptr noundef %19) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %st7789v_write_command.exit.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7789v_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef 240, i32 noundef 320, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %5 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 61, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 103, ptr %height_mm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st7789v_write_command(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %txbuf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %0 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i) #5
  %conv1.i = zext i8 %cmd to i16
  %2 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv1.i, ptr %txbuf.i, align 2
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %9 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txbuf.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.st7789v_spi_write.exit_crit_edge

entry.st7789v_spi_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_spi_write.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %st7789v_spi_write.exit

st7789v_spi_write.exit:                           ; preds = %if.end.i.i.i.i, %entry.st7789v_spi_write.exit_crit_edge
  %spi.i = getelementptr inbounds %struct.st7789v, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st7789v_write_data(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %txbuf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %0 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i) #5
  %conv.i = zext i8 %cmd to i16
  %or.i = or i16 %conv.i, 256
  %2 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %or.i, ptr %txbuf.i, align 2
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %9 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txbuf.i, ptr %xfer.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.st7789v_spi_write.exit_crit_edge

entry.st7789v_spi_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %st7789v_spi_write.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %st7789v_spi_write.exit

st7789v_spi_write.exit:                           ; preds = %if.end.i.i.i.i, %entry.st7789v_spi_write.exit_crit_edge
  %spi.i = getelementptr inbounds %struct.st7789v, ptr %ctx, i32 0, i32 1
  %16 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_panel_sitronix_st7789v__304_413_st7789v_driver_init6, !1, !"__initcall__kmod_panel_sitronix_st7789v__304_413_st7789v_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 413, i32 1}
!2 = !{ptr @__exitcall_st7789v_driver_exit, !1, !"__exitcall_st7789v_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 415, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 416, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 417, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 409, i32 11}
!12 = !{ptr @st7789v_driver, !13, !"st7789v_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 405, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 371, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 375, i32 41}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 377, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @st7789v_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @st7789v_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @st7789v_drm_funcs, !27, !"st7789v_drm_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 348, i32 37}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 177, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @st7789v_get_modes._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @st7789v_get_modes._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @default_mode, !34, !"default_mode", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 158, i32 38}
!35 = !{ptr @st7789v_of_match, !36, !"st7789v_of_match", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7789v.c", i32 399, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
