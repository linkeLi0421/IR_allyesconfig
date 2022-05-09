; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun8i_dw_hdmi_quirks = type { ptr, i8 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.sun8i_dw_hdmi = type { ptr, ptr, ptr, %struct.drm_encoder, ptr, %struct.dw_hdmi_plat_data, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@sun8i_dw_hdmi_pltfm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_dw_hdmi_probe, ptr @sun8i_dw_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_dw_hdmi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sun8i_hdmi_phy_driver = external dso_local global %struct.platform_driver, align 4
@__initcall__kmod_sun8i_drm_hdmi__313_345_sun8i_dw_hdmi_init6 = internal global ptr @sun8i_dw_hdmi_init, section ".initcall6.init", align 4
@__exitcall_sun8i_dw_hdmi_exit = internal global ptr @sun8i_dw_hdmi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author314 = internal constant [63 x i8] c"sun8i_drm_hdmi.author=Jernej Skrabec <jernej.skrabec@siol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description315 = internal constant [52 x i8] c"sun8i_drm_hdmi.description=Allwinner DW HDMI bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [57 x i8] c"sun8i_drm_hdmi.file=drivers/gpu/drm/sun4i/sun8i-drm-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [27 x i8] c"sun8i_drm_hdmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun8i-dw-hdmi\00", [18 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-dw-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_quirks }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun8i_dw_hdmi_bind, ptr @sun8i_dw_hdmi_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not get ctrl reset control\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tmds\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get the tmds clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hvcc\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Couldn't get regulator\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ddc-en\00", [25 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 177, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't get ddc-en gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun8i_dw_hdmi_bind\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry_ptr = internal global ptr @sun8i_dw_hdmi_bind._entry, section ".printk_index", align 4
@sun8i_dw_hdmi_bind._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 184, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry_ptr.15 = internal global ptr @sun8i_dw_hdmi_bind._entry.13, section ".printk_index", align 4
@sun8i_dw_hdmi_bind._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 192, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not deassert ctrl reset control\0A\00", [57 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry_ptr.18 = internal global ptr @sun8i_dw_hdmi_bind._entry.16, section ".printk_index", align 4
@sun8i_dw_hdmi_bind._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.10, i32 198, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not enable tmds clock\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry_ptr.21 = internal global ptr @sun8i_dw_hdmi_bind._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.10, i32 204, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't found PHY phandle\0A\00", [39 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry_ptr.25 = internal global ptr @sun8i_dw_hdmi_bind._entry.23, section ".printk_index", align 4
@sun8i_dw_hdmi_bind._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str.10, i32 212, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't get the HDMI PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@sun8i_dw_hdmi_bind._entry_ptr.28 = internal global ptr @sun8i_dw_hdmi_bind._entry.26, section ".printk_index", align 4
@sun8i_dw_hdmi_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_dw_hdmi_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi-connector\00", [17 x i8] zeroinitializer }, align 32
@sun8i_a83t_quirks = internal constant { %struct.sun8i_dw_hdmi_quirks, [24 x i8] } { %struct.sun8i_dw_hdmi_quirks { ptr @sun8i_dw_hdmi_mode_valid_a83t, i8 0 }, [24 x i8] zeroinitializer }, align 32
@sun50i_h6_quirks = internal constant { %struct.sun8i_dw_hdmi_quirks, [24 x i8] } { %struct.sun8i_dw_hdmi_quirks { ptr @sun8i_dw_hdmi_mode_valid_h6, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"sun8i_dw_hdmi_pltfm_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 313, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 317, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"sun8i_dw_hdmi_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 300, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"sun8i_dw_hdmi_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 274, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 155, i32 47 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 158, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 160, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 163, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 165, i32 44 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 168, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 173, i32 9 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 177, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 184, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 192, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 198, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 202, i32 44 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 204, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 212, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [35 x i8] c"sun8i_dw_hdmi_encoder_helper_funcs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 28, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 106, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"sun8i_a83t_quirks\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 291, i32 42 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"sun50i_h6_quirks\00", align 1
@___asan_gen_.124 = private constant [41 x i8] c"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 295, i32 42 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_sun8i_dw_hdmi_exit, ptr @__initcall__kmod_sun8i_drm_hdmi__313_345_sun8i_dw_hdmi_init6, ptr @sun8i_dw_hdmi_bind._entry, ptr @sun8i_dw_hdmi_bind._entry.13, ptr @sun8i_dw_hdmi_bind._entry.16, ptr @sun8i_dw_hdmi_bind._entry.19, ptr @sun8i_dw_hdmi_bind._entry.23, ptr @sun8i_dw_hdmi_bind._entry.26, ptr @sun8i_dw_hdmi_bind._entry_ptr, ptr @sun8i_dw_hdmi_bind._entry_ptr.15, ptr @sun8i_dw_hdmi_bind._entry_ptr.18, ptr @sun8i_dw_hdmi_bind._entry_ptr.21, ptr @sun8i_dw_hdmi_bind._entry_ptr.25, ptr @sun8i_dw_hdmi_bind._entry_ptr.28, ptr @sun8i_dw_hdmi_exit, ptr @sun8i_dw_hdmi_pltfm_driver, ptr @.str, ptr @sun8i_dw_hdmi_dt_ids, ptr @sun8i_dw_hdmi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @sun8i_dw_hdmi_encoder_helper_funcs, ptr @.str.29, ptr @sun8i_a83t_quirks, ptr @sun50i_h6_quirks], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_pltfm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_bind._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_bind._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_bind._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_bind._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_bind._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_dw_hdmi_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_quirks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_quirks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dw_hdmi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_dw_hdmi_pltfm_driver) #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_hdmi_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dw_hdmi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_dw_hdmi_pltfm_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_hdmi_phy_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_dw_hdmi_pltfm_driver) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dw_hdmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @sun8i_dw_hdmi_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dw_hdmi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sun8i_dw_hdmi_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_dw_hdmi_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %plat_data6 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 5
  %dev8 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev8, align 4
  %encoder9 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 3
  %call10 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %quirks = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %quirks, align 4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i201 = tail call ptr @of_graph_get_remote_node(ptr noundef %5, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i201, null
  br i1 %tobool.not.i, label %sun8i_dw_hdmi_find_possible_crtcs.exit.thread, label %if.end.i

sun8i_dw_hdmi_find_possible_crtcs.exit.thread:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %possible_crtcs224 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 3, i32 6
  %6 = ptrtoint ptr %possible_crtcs224 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %possible_crtcs224, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  %call.i.i = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef nonnull %call.i201) #6
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = tail call ptr @of_graph_get_port_by_id(ptr noundef nonnull %call.i201, i32 noundef 4) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then2.i.sun8i_dw_hdmi_find_possible_crtcs.exit.thread226_crit_edge, label %if.end6.i

if.then2.i.sun8i_dw_hdmi_find_possible_crtcs.exit.thread226_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun8i_dw_hdmi_find_possible_crtcs.exit.thread226

if.end6.i:                                        ; preds = %if.then2.i
  %call7.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef null) #6
  %cmp.not32.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not32.i, label %if.end6.i.sun8i_dw_hdmi_find_possible_crtcs.exit.thread226_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.sun8i_dw_hdmi_find_possible_crtcs.exit.thread226_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun8i_dw_hdmi_find_possible_crtcs.exit.thread226

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %crtcs.034.i = phi i32 [ %crtcs.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %ep.033.i = phi ptr [ %call13.i, %for.inc.i.for.body.i_crit_edge ], [ %call7.i, %if.end6.i.for.body.i_crit_edge ]
  %call8.i = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %ep.033.i) #6
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 @drm_of_crtc_port_mask(ptr noundef %data, ptr noundef nonnull %call8.i) #6
  %or.i = or i32 %call11.i, %crtcs.034.i
  tail call void @of_node_put(ptr noundef nonnull %call8.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %crtcs.1.i = phi i32 [ %or.i, %if.then10.i ], [ %crtcs.034.i, %for.body.i.for.inc.i_crit_edge ]
  %call13.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef nonnull %ep.033.i) #6
  %cmp.not.i = icmp eq ptr %call13.i, null
  br i1 %cmp.not.i, label %for.inc.i.sun8i_dw_hdmi_find_possible_crtcs.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.sun8i_dw_hdmi_find_possible_crtcs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun8i_dw_hdmi_find_possible_crtcs.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %data, ptr noundef %5) #6
  br label %sun8i_dw_hdmi_find_possible_crtcs.exit

sun8i_dw_hdmi_find_possible_crtcs.exit.thread226: ; preds = %if.end6.i.sun8i_dw_hdmi_find_possible_crtcs.exit.thread226_crit_edge, %if.then2.i.sun8i_dw_hdmi_find_possible_crtcs.exit.thread226_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i201) #6
  %possible_crtcs228 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %possible_crtcs228 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %possible_crtcs228, align 4
  br label %cleanup

sun8i_dw_hdmi_find_possible_crtcs.exit:           ; preds = %if.else.i, %for.inc.i.sun8i_dw_hdmi_find_possible_crtcs.exit_crit_edge
  %crtcs.2.i = phi i32 [ %call14.i, %if.else.i ], [ %crtcs.1.i, %for.inc.i.sun8i_dw_hdmi_find_possible_crtcs.exit_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call.i201) #6
  %possible_crtcs = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %crtcs.2.i, ptr %possible_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crtcs.2.i)
  %cmp = icmp eq i32 %crtcs.2.i, 0
  br i1 %cmp, label %sun8i_dw_hdmi_find_possible_crtcs.exit.cleanup_crit_edge, label %if.end15

sun8i_dw_hdmi_find_possible_crtcs.exit.cleanup_crit_edge: ; preds = %sun8i_dw_hdmi_find_possible_crtcs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %sun8i_dw_hdmi_find_possible_crtcs.exit
  %call.i.i202 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst_ctrl = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %rst_ctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i202, ptr %rst_ctrl, align 4
  %cmp.i = icmp ugt ptr %call.i.i202, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i.i202 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call24, ptr %call.i, align 4
  %cmp.i203 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call24 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %12, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call32 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  %regulator = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %regulator, align 4
  %cmp.i204 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call32 to i32
  %call38 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call.i205 = tail call ptr @of_graph_get_remote_node(ptr noundef %16, i32 noundef 1, i32 noundef -1) #6
  %tobool.not.i206 = icmp eq ptr %call.i205, null
  br i1 %tobool.not.i206, label %if.end39.if.end51_crit_edge, label %if.end.i207

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.end.i207:                                      ; preds = %if.end39
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call.i205, ptr noundef nonnull @.str.29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %call.i205) #6
  br label %if.end51

if.end4.i:                                        ; preds = %if.end.i207
  %call5.i = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call.i205) #6
  tail call void @of_node_put(ptr noundef nonnull %call.i205) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end51_crit_edge, label %if.then42

if.end4.i.if.end51_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then42:                                        ; preds = %if.end4.i
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %call5.i, i32 0, i32 3
  %call44 = tail call ptr @gpiod_get_optional(ptr noundef %dev43, ptr noundef nonnull @.str.7, i32 noundef 7) #6
  %ddc_en = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %ddc_en to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call44, ptr %ddc_en, align 4
  tail call void @platform_device_put(ptr noundef nonnull %call5.i) #6
  %18 = ptrtoint ptr %ddc_en to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddc_en, align 4
  %cmp.i209 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %do.end, label %if.then42.if.end51_crit_edge

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end:                                           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %20 = ptrtoint ptr %ddc_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddc_en, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.then42.if.end51_crit_edge, %if.end4.i.if.end51_crit_edge, %if.then3.i, %if.end39.if.end51_crit_edge
  %23 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regulator, align 4
  %call53 = tail call i32 @regulator_enable(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %err_unref_ddc_en

if.end59:                                         ; preds = %if.end51
  %ddc_en60 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %ddc_en60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ddc_en60, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef 1) #6
  %27 = ptrtoint ptr %rst_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rst_ctrl, align 4
  %call62 = tail call i32 @reset_control_deassert(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end68, label %do.end67

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %err_disable_ddc_en

if.end68:                                         ; preds = %if.end59
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %call.i210 = tail call i32 @clk_prepare(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool.not.i211 = icmp eq i32 %call.i210, 0
  br i1 %tobool.not.i211, label %if.end.i214, label %if.end68.do.end75_crit_edge

if.end68.do.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

if.end.i214:                                      ; preds = %if.end68
  %call1.i212 = tail call i32 @clk_enable(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i212)
  %tobool2.not.i213 = icmp eq i32 %call1.i212, 0
  br i1 %tobool2.not.i213, label %if.end76, label %if.then3.i215

if.then3.i215:                                    ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then3.i215, %if.end68.do.end75_crit_edge
  %retval.0.i216.ph = phi i32 [ %call1.i212, %if.then3.i215 ], [ %call.i210, %if.end68.do.end75_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %err_assert_ctrl_reset

if.end76:                                         ; preds = %if.end.i214
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %33 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i217 = call i32 @__of_parse_phandle_with_args(ptr noundef %32, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not.i218 = icmp eq i32 %call.i217, 0
  br i1 %tobool.not.i218, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end83

of_parse_phandle.exit:                            ; preds = %if.end76
  %34 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool79.not = icmp eq ptr %35, null
  br i1 %tobool79.not, label %of_parse_phandle.exit.do.end83_crit_edge, label %if.end84

of_parse_phandle.exit.do.end83_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

do.end83:                                         ; preds = %of_parse_phandle.exit.do.end83_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  br label %err_disable_clk_tmds

if.end84:                                         ; preds = %of_parse_phandle.exit
  %call85 = call i32 @sun8i_hdmi_phy_get(ptr noundef nonnull %call.i, ptr noundef nonnull %35) #6
  call void @of_node_put(ptr noundef nonnull %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end91, label %do.end90

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %err_disable_clk_tmds

if.end91:                                         ; preds = %if.end84
  %phy = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy, align 4
  %call92 = call i32 @sun8i_hdmi_phy_init(ptr noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.err_disable_clk_tmds_crit_edge

if.end91.err_disable_clk_tmds_crit_edge:          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clk_tmds

if.end95:                                         ; preds = %if.end91
  %helper_private.i = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 3, i32 11
  %38 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @sun8i_dw_hdmi_encoder_helper_funcs, ptr %helper_private.i, align 4
  %call96 = call i32 @drm_simple_encoder_init(ptr noundef %data, ptr noundef %encoder9, i32 noundef 2) #6
  %39 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %quirks, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %mode_valid98 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 5, i32 6
  %43 = ptrtoint ptr %mode_valid98 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %mode_valid98, align 4
  %use_drm_infoframe = getelementptr inbounds %struct.sun8i_dw_hdmi_quirks, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %use_drm_infoframe to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %use_drm_infoframe, align 4
  %use_drm_infoframe101 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 5, i32 3
  %bf.load.lobit = lshr i8 %bf.load, 7
  %45 = ptrtoint ptr %use_drm_infoframe101 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %bf.load.lobit, ptr %use_drm_infoframe101, align 4
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 4
  call void @sun8i_hdmi_phy_set_ops(ptr noundef %47, ptr noundef %plat_data6) #6
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call103 = call ptr @dw_hdmi_bind(ptr noundef %add.ptr, ptr noundef %encoder9, ptr noundef %plat_data6) #6
  %hdmi104 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %hdmi104 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call103, ptr %hdmi104, align 4
  %cmp.i221 = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.then107, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then107:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %call103 to i32
  call void @drm_encoder_cleanup(ptr noundef %encoder9) #6
  br label %err_disable_clk_tmds

err_disable_clk_tmds:                             ; preds = %if.then107, %if.end91.err_disable_clk_tmds_crit_edge, %do.end90, %do.end83
  %ret.0 = phi i32 [ %call85, %do.end90 ], [ %call92, %if.end91.err_disable_clk_tmds_crit_edge ], [ %50, %if.then107 ], [ -22, %do.end83 ]
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void @clk_disable(ptr noundef %52) #6
  call void @clk_unprepare(ptr noundef %52) #6
  br label %err_assert_ctrl_reset

err_assert_ctrl_reset:                            ; preds = %err_disable_clk_tmds, %do.end75
  %ret.1 = phi i32 [ %retval.0.i216.ph, %do.end75 ], [ %ret.0, %err_disable_clk_tmds ]
  %53 = ptrtoint ptr %rst_ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rst_ctrl, align 4
  %call113 = call i32 @reset_control_assert(ptr noundef %54) #6
  br label %err_disable_ddc_en

err_disable_ddc_en:                               ; preds = %err_assert_ctrl_reset, %do.end67
  %ret.2 = phi i32 [ %call62, %do.end67 ], [ %ret.1, %err_assert_ctrl_reset ]
  %55 = ptrtoint ptr %ddc_en60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ddc_en60, align 4
  call void @gpiod_set_value(ptr noundef %56, i32 noundef 0) #6
  %57 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regulator, align 4
  %call116 = call i32 @regulator_disable(ptr noundef %58) #6
  br label %err_unref_ddc_en

err_unref_ddc_en:                                 ; preds = %err_disable_ddc_en, %do.end58
  %ret.3 = phi i32 [ %call53, %do.end58 ], [ %ret.2, %err_disable_ddc_en ]
  %ddc_en117 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %call.i, i32 0, i32 9
  %59 = ptrtoint ptr %ddc_en117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ddc_en117, align 4
  %tobool118.not = icmp eq ptr %60, null
  br i1 %tobool118.not, label %err_unref_ddc_en.cleanup_crit_edge, label %if.then119

err_unref_ddc_en.cleanup_crit_edge:               ; preds = %err_unref_ddc_en
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then119:                                       ; preds = %err_unref_ddc_en
  call void @__sanitizer_cov_trace_pc() #8
  call void @gpiod_put(ptr noundef nonnull %60) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %err_unref_ddc_en.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %do.end, %if.then35, %if.then27, %if.then19, %sun8i_dw_hdmi_find_possible_crtcs.exit.cleanup_crit_edge, %sun8i_dw_hdmi_find_possible_crtcs.exit.thread226, %sun8i_dw_hdmi_find_possible_crtcs.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then19 ], [ %call30, %if.then27 ], [ %call38, %if.then35 ], [ %22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %sun8i_dw_hdmi_find_possible_crtcs.exit.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ], [ %ret.3, %if.then119 ], [ %ret.3, %err_unref_ddc_en.cleanup_crit_edge ], [ -517, %sun8i_dw_hdmi_find_possible_crtcs.exit.thread ], [ -517, %sun8i_dw_hdmi_find_possible_crtcs.exit.thread226 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dw_hdmi_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hdmi1 = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1, align 4
  tail call void @dw_hdmi_unbind(ptr noundef %3) #6
  %phy = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  tail call void @sun8i_hdmi_phy_deinit(ptr noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %rst_ctrl = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %rst_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_ctrl, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %9) #6
  %ddc_en = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %ddc_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc_en, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #6
  %regulator = getelementptr inbounds %struct.sun8i_dw_hdmi, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %13) #6
  %14 = ptrtoint ptr %ddc_en to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddc_en, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_put(ptr noundef nonnull %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_hdmi_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_hdmi_phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_hdmi_phy_set_ops(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_hdmi_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_crtc_port_mask(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_dw_hdmi_encoder_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adj_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %encoder, i32 -12
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %2 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %3, 1000
  %call1 = tail call i32 @clk_set_rate(ptr noundef %1, i32 noundef %mul) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_unbind(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_hdmi_phy_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun8i_dw_hdmi_mode_valid_a83t(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 297000, i32 %1)
  %cmp = icmp sgt i32 %1, 297000
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun8i_dw_hdmi_mode_valid_h6(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 594000, i32 %1)
  %cmp = icmp sgt i32 %1, 594000
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_sun8i_drm_hdmi__313_345_sun8i_dw_hdmi_init6, !1, !"__initcall__kmod_sun8i_drm_hdmi__313_345_sun8i_dw_hdmi_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 345, i32 1}
!2 = !{ptr @__exitcall_sun8i_dw_hdmi_exit, !3, !"__exitcall_sun8i_dw_hdmi_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 346, i32 1}
!4 = !{ptr @__UNIQUE_ID_author314, !5, !"__UNIQUE_ID_author314", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 348, i32 1}
!6 = !{ptr @__UNIQUE_ID_description315, !7, !"__UNIQUE_ID_description315", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 349, i32 1}
!8 = !{ptr @__UNIQUE_ID_file316, !9, !"__UNIQUE_ID_file316", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 350, i32 1}
!10 = !{ptr @__UNIQUE_ID_license317, !9, !"__UNIQUE_ID_license317", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 317, i32 11}
!13 = !{ptr @sun8i_dw_hdmi_pltfm_driver, !14, !"sun8i_dw_hdmi_pltfm_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 313, i32 31}
!15 = !{ptr @sun8i_dw_hdmi_ops, !16, !"sun8i_dw_hdmi_ops", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 274, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 155, i32 47}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 158, i32 10}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 160, i32 37}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 163, i32 10}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 165, i32 44}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 168, i32 10}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 173, i32 9}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 177, i32 4}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sun8i_dw_hdmi_bind._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @sun8i_dw_hdmi_bind._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 184, i32 3}
!41 = !{ptr @sun8i_dw_hdmi_bind._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun8i_dw_hdmi_bind._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 192, i32 3}
!45 = !{ptr @sun8i_dw_hdmi_bind._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sun8i_dw_hdmi_bind._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 198, i32 3}
!49 = !{ptr @sun8i_dw_hdmi_bind._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sun8i_dw_hdmi_bind._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 202, i32 44}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 204, i32 3}
!55 = !{ptr @sun8i_dw_hdmi_bind._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sun8i_dw_hdmi_bind._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 212, i32 3}
!59 = !{ptr @sun8i_dw_hdmi_bind._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sun8i_dw_hdmi_bind._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 106, i32 39}
!63 = !{ptr @sun8i_dw_hdmi_encoder_helper_funcs, !64, !"sun8i_dw_hdmi_encoder_helper_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 28, i32 1}
!65 = !{ptr @sun8i_dw_hdmi_dt_ids, !66, !"sun8i_dw_hdmi_dt_ids", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 300, i32 34}
!67 = !{ptr @sun8i_a83t_quirks, !68, !"sun8i_a83t_quirks", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 291, i32 42}
!69 = !{ptr @sun50i_h6_quirks, !70, !"sun50i_h6_quirks", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c", i32 295, i32 42}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
