; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/pl111/pl111_versatile.c_pt.bc'
source_filename = "../drivers/gpu/drm/pl111/pl111_versatile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pl111_versatile_init\22, \22a\22\09"
module asm "\09.weak\09__crc_pl111_versatile_init\09\09\09\09"
module asm "\09.long\09__crc_pl111_versatile_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl111_versatile_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pl111_versatile_init\22\09\09\09\09\09"
module asm "__kstrtabns_pl111_versatile_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pl111_variant_data = type { ptr, i8, i8, i8, i8, i8, i8, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pl111_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i32, i32, i32, ptr, %struct.clk_hw, %struct.spinlock, ptr, ptr, ptr, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }

@versatile_clcd_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,core-module-integrator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-sysreg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-eb-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pb1176-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pb11mp-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pba8-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pbx-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,vexpress-muxfpga\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 491, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Versatile Express init failed - %d\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pl111_versatile_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/pl111/pl111_versatile.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry_ptr = internal global ptr @pl111_versatile_init._entry, section ".printk_index", align 4
@impd1_clcd_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,im-pd1-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 510, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no Versatile syscon regmap\0A\00", [36 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry_ptr.7 = internal global ptr @pl111_versatile_init._entry.5, section ".printk_index", align 4
@versatile_syscon_map = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pl110_integrator = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.48, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, ptr @pl110_integrator_pixel_formats, i32 8, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 519, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set up callbacks for Integrator PL110\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry_ptr.11 = internal global ptr @pl111_versatile_init._entry.8, section ".printk_index", align 4
@pl110_impd1 = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.54, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, ptr @pl110_integrator_pixel_formats, i32 8, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 526, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set up callbacks for IM-PD1 PL110\0A\00", [61 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry_ptr.14 = internal global ptr @pl111_versatile_init._entry.12, section ".printk_index", align 4
@pl110_versatile = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.59, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, ptr @pl110_versatile_pixel_formats, i32 10, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 541, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set up callbacks for Versatile PL110\0A\00", [58 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry_ptr.17 = internal global ptr @pl111_versatile_init._entry.15, section ".printk_index", align 4
@pl111_realview = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.67, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @pl111_realview_pixel_formats, i32 14, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 552, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set up callbacks for RealView PL111\0A\00", [59 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry_ptr.20 = internal global ptr @pl111_versatile_init._entry.18, section ".printk_index", align 4
@pl111_versatile_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 555, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unknown Versatile system controller\0A\00", [59 x i8] zeroinitializer }, align 32
@pl111_versatile_init._entry_ptr.23 = internal global ptr @pl111_versatile_init._entry.21, section ".printk_index", align 4
@__kstrtab_pl111_versatile_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl111_versatile_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pl111_versatile_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl111_versatile_init to i32), ptr @__kstrtab_pl111_versatile_init, ptr @__kstrtabns_pl111_versatile_init }, section "___ksymtab_gpl+pl111_versatile_init", align 4
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arm,pl111\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arm,hdlcd\00", [22 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 432, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DVI muxed to motherboard CLCD\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pl111_vexpress_clcd_init\00", [39 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry_ptr = internal global ptr @pl111_vexpress_clcd_init._entry, section ".printk_index", align 4
@pl111_vexpress_clcd_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 436, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DVI muxed to daughterboard 1 (core tile) CLCD\0A\00", [49 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry_ptr.31 = internal global ptr @pl111_vexpress_clcd_init._entry.29, section ".printk_index", align 4
@pl111_vexpress_clcd_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 439, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"core tile graphics present\0A\00", [36 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry_ptr.34 = internal global ptr @pl111_vexpress_clcd_init._entry.32, section ".printk_index", align 4
@pl111_vexpress_clcd_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 440, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"this device will be deactivated\0A\00", [63 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry_ptr.37 = internal global ptr @pl111_vexpress_clcd_init._entry.35, section ".printk_index", align 4
@pl111_vexpress_clcd_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't find the sysreg device, deferring\0A\00", [55 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry_ptr.40 = internal global ptr @pl111_vexpress_clcd_init._entry.38, section ".printk_index", align 4
@pl111_vexpress_clcd_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error setting DVI muxmode\0A\00", [37 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry_ptr.43 = internal global ptr @pl111_vexpress_clcd_init._entry.41, section ".printk_index", align 4
@pl111_vexpress = internal constant { %struct.pl111_variant_data, [40 x i8] } { %struct.pl111_variant_data { ptr @.str.47, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, ptr @pl111_realview_pixel_formats, i32 14, i32 16 }, [40 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.28, ptr @.str.2, i32 465, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"initializing Versatile Express PL111\0A\00", [58 x i8] zeroinitializer }, align 32
@pl111_vexpress_clcd_init._entry_ptr.46 = internal global ptr @pl111_vexpress_clcd_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PL111 Versatile Express\00", [40 x i8] zeroinitializer }, align 32
@pl111_realview_pixel_formats = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792, i32 842089025, i32 842089048, i32 842093121, i32 842093144], [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PL110 Integrator\00", [47 x i8] zeroinitializer }, align 32
@pl110_integrator_pixel_formats = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 892420673, i32 892420696, i32 892424769, i32 892424792], [32 x i8] zeroinitializer }, align 32
@pl111_integrator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 116, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enable Integrator CLCD connectors\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl111_integrator_enable\00", [40 x i8] zeroinitializer }, align 32
@pl111_integrator_enable._entry_ptr = internal global ptr @pl111_integrator_enable._entry, section ".printk_index", align 4
@pl111_integrator_enable._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unhandled format on Integrator 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@pl111_integrator_enable._entry_ptr.53 = internal global ptr @pl111_integrator_enable._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PL110 IM-PD1\00", [19 x i8] zeroinitializer }, align 32
@pl111_impd1_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 156, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enable IM-PD1 CLCD connectors\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pl111_impd1_enable\00", [45 x i8] zeroinitializer }, align 32
@pl111_impd1_enable._entry_ptr = internal global ptr @pl111_impd1_enable._entry, section ".printk_index", align 4
@pl111_impd1_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 167, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"disable IM-PD1 CLCD connectors\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl111_impd1_disable\00", [44 x i8] zeroinitializer }, align 32
@pl111_impd1_disable._entry_ptr = internal global ptr @pl111_impd1_disable._entry, section ".printk_index", align 4
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PL110 Versatile\00", [16 x i8] zeroinitializer }, align 32
@pl110_versatile_pixel_formats = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792], [56 x i8] zeroinitializer }, align 32
@pl111_versatile_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 205, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"enable Versatile CLCD connectors\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pl111_versatile_enable\00", [41 x i8] zeroinitializer }, align 32
@pl111_versatile_enable._entry_ptr = internal global ptr @pl111_versatile_enable._entry, section ".printk_index", align 4
@pl111_versatile_enable._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unhandled format on Versatile 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@pl111_versatile_enable._entry_ptr.64 = internal global ptr @pl111_versatile_enable._entry.62, section ".printk_index", align 4
@pl111_versatile_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 194, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"disable Versatile CLCD connectors\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pl111_versatile_disable\00", [40 x i8] zeroinitializer }, align 32
@pl111_versatile_disable._entry_ptr = internal global ptr @pl111_versatile_disable._entry, section ".printk_index", align 4
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PL111 RealView\00", [17 x i8] zeroinitializer }, align 32
@pl111_realview_clcd_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 256, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enable RealView CLCD connectors\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pl111_realview_clcd_enable\00", [37 x i8] zeroinitializer }, align 32
@pl111_realview_clcd_enable._entry_ptr = internal global ptr @pl111_realview_clcd_enable._entry, section ".printk_index", align 4
@pl111_realview_clcd_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 247, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"disable RealView CLCD connectors\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pl111_realview_clcd_disable\00", [36 x i8] zeroinitializer }, align 32
@pl111_realview_clcd_disable._entry_ptr = internal global ptr @pl111_realview_clcd_disable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 875709016, i64 875713112, i64 892420696, i64 892424792]
@__sancov_gen_cov_switch_values.73 = internal global [12 x i64] [i64 10, i64 32, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 892420673, i64 892420696, i64 892424769, i64 892424792, i64 909199170, i64 909199186]
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"versatile_clcd_of_match\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 41, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 491, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"impd1_clcd_of_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 77, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 510, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [21 x i8] c"versatile_syscon_map\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 24, i32 23 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"pl110_integrator\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 310, i32 40 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 519, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"pl110_impd1\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 324, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 526, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"pl110_versatile\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 338, i32 40 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 541, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"pl111_realview\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 352, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 552, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 555, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 397, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 402, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 407, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 432, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 435, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 439, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 440, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 447, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 460, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [15 x i8] c"pl111_vexpress\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 364, i32 40 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 465, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 365, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant [29 x i8] c"pl111_realview_pixel_formats\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 289, i32 18 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 311, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"pl110_integrator_pixel_formats\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 264, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 116, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 134, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 325, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 156, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 167, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 339, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant [30 x i8] c"pl110_versatile_pixel_formats\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 276, i32 18 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 205, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 227, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 194, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 353, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 256, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [43 x i8] c"../drivers/gpu/drm/pl111/pl111_versatile.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 247, i32 2 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__ksymtab_pl111_versatile_init, ptr @pl111_impd1_disable._entry, ptr @pl111_impd1_disable._entry_ptr, ptr @pl111_impd1_enable._entry, ptr @pl111_impd1_enable._entry_ptr, ptr @pl111_integrator_enable._entry, ptr @pl111_integrator_enable._entry.51, ptr @pl111_integrator_enable._entry_ptr, ptr @pl111_integrator_enable._entry_ptr.53, ptr @pl111_realview_clcd_disable._entry, ptr @pl111_realview_clcd_disable._entry_ptr, ptr @pl111_realview_clcd_enable._entry, ptr @pl111_realview_clcd_enable._entry_ptr, ptr @pl111_versatile_disable._entry, ptr @pl111_versatile_disable._entry_ptr, ptr @pl111_versatile_enable._entry, ptr @pl111_versatile_enable._entry.62, ptr @pl111_versatile_enable._entry_ptr, ptr @pl111_versatile_enable._entry_ptr.64, ptr @pl111_versatile_init._entry, ptr @pl111_versatile_init._entry.12, ptr @pl111_versatile_init._entry.15, ptr @pl111_versatile_init._entry.18, ptr @pl111_versatile_init._entry.21, ptr @pl111_versatile_init._entry.5, ptr @pl111_versatile_init._entry.8, ptr @pl111_versatile_init._entry_ptr, ptr @pl111_versatile_init._entry_ptr.11, ptr @pl111_versatile_init._entry_ptr.14, ptr @pl111_versatile_init._entry_ptr.17, ptr @pl111_versatile_init._entry_ptr.20, ptr @pl111_versatile_init._entry_ptr.23, ptr @pl111_versatile_init._entry_ptr.7, ptr @pl111_vexpress_clcd_init._entry, ptr @pl111_vexpress_clcd_init._entry.29, ptr @pl111_vexpress_clcd_init._entry.32, ptr @pl111_vexpress_clcd_init._entry.35, ptr @pl111_vexpress_clcd_init._entry.38, ptr @pl111_vexpress_clcd_init._entry.41, ptr @pl111_vexpress_clcd_init._entry.44, ptr @pl111_vexpress_clcd_init._entry_ptr, ptr @pl111_vexpress_clcd_init._entry_ptr.31, ptr @pl111_vexpress_clcd_init._entry_ptr.34, ptr @pl111_vexpress_clcd_init._entry_ptr.37, ptr @pl111_vexpress_clcd_init._entry_ptr.40, ptr @pl111_vexpress_clcd_init._entry_ptr.43, ptr @pl111_vexpress_clcd_init._entry_ptr.46, ptr @versatile_clcd_of_match, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @impd1_clcd_of_match, ptr @.str.6, ptr @versatile_syscon_map, ptr @pl110_integrator, ptr @.str.9, ptr @.str.10, ptr @pl110_impd1, ptr @.str.13, ptr @pl110_versatile, ptr @.str.16, ptr @pl111_realview, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @pl111_vexpress, ptr @.str.45, ptr @.str.47, ptr @pl111_realview_pixel_formats, ptr @.str.48, ptr @pl110_integrator_pixel_formats, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @pl110_versatile_pixel_formats, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_clcd_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impd1_clcd_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versatile_syscon_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_integrator to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_impd1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_versatile to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_realview to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress_clcd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress_clcd_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress_clcd_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress_clcd_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress_clcd_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress_clcd_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_vexpress_clcd_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_realview_pixel_formats to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_integrator_pixel_formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_integrator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_integrator_enable._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_impd1_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_impd1_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl110_versatile_pixel_formats to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_enable._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_versatile_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_realview_clcd_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_realview_clcd_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pl111_versatile_init(ptr noundef %dev, ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  %clcd_id = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clcd_id) #4
  %0 = ptrtoint ptr %clcd_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clcd_id, align 4, !annotation !154
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @versatile_clcd_of_match, ptr noundef nonnull %clcd_id) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %clcd_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clcd_id, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %4, inttoptr (i32 8 to ptr)
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %call.i.i = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.24, ptr noundef null) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then1.do.end_crit_edge, label %if.end.i

if.then1.do.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %if.then1
  %call1.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call.i.i, ptr noundef null) #4
  %cmp.not95.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not95.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %child.096.i = phi ptr [ %call10.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %if.end.i.for.body.i_crit_edge ]
  %call2.i = call i32 @of_device_is_compatible(ptr noundef nonnull %child.096.i, ptr noundef nonnull @.str.25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.end5.i:                                        ; preds = %for.body.i
  %call6.i = call i32 @of_device_is_compatible(ptr noundef nonnull %child.096.i, ptr noundef nonnull @.str.26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %5

for.inc.i:                                        ; preds = %if.end5.i
  %call10.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call.i.i, ptr noundef nonnull %child.096.i) #4
  %cmp.not.i = icmp eq ptr %call10.i, null
  br i1 %cmp.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

5:                                                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @of_node_put(ptr noundef nonnull %child.096.i) #4
  br label %if.else.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i.i) #4
  br label %if.end32.i

if.else.i:                                        ; preds = %5, %for.body.i.if.else.i_crit_edge
  %ct_clcd.08890.i = phi ptr [ null, %5 ], [ %child.096.i, %for.body.i.if.else.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i.i) #4
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %cmp19.i = icmp eq ptr %ct_clcd.08890.i, %7
  br i1 %cmp19.i, label %if.else.i.if.end32.i_crit_edge, label %do.end27.i

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

do.end27.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36) #7
  br label %do.end

if.end32.i:                                       ; preds = %if.else.i.if.end32.i_crit_edge, %do.end.i
  %.str.30.sink.i = phi ptr [ @.str.27, %do.end.i ], [ @.str.30, %if.else.i.if.end32.i_crit_edge ]
  %val.0.i = phi i32 [ 0, %do.end.i ], [ 1, %if.else.i.if.end32.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.30.sink.i) #7
  %call33.i = call ptr @of_find_device_by_node(ptr noundef nonnull %call) #4
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %do.end38.i, label %if.end39.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #7
  br label %do.end

if.end39.i:                                       ; preds = %if.end32.i
  %dev40.i = getelementptr inbounds %struct.platform_device, ptr %call33.i, i32 0, i32 3
  %call41.i = call ptr @devm_regmap_init_vexpress_config(ptr noundef %dev40.i) #4
  %cmp.i.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pl111_vexpress_clcd_init.exit, label %if.end45.i

if.end45.i:                                       ; preds = %if.end39.i
  %call46.i = call i32 @regmap_write(ptr noundef %call41.i, i32 noundef 0, i32 noundef %val.0.i) #4
  call void @platform_device_put(ptr noundef nonnull %call33.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %pl111_vexpress_clcd_init.exit.thread89, label %do.end51.i

do.end51.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #7
  br label %do.end

pl111_vexpress_clcd_init.exit.thread89:           ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #6
  %variant.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 12
  %8 = ptrtoint ptr %variant.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pl111_vexpress, ptr %variant.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.45) #7
  call void @of_node_put(ptr noundef nonnull %call) #4
  br label %cleanup

pl111_vexpress_clcd_init.exit:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @platform_device_put(ptr noundef nonnull %call33.i) #4
  %9 = ptrtoint ptr %call41.i to i32
  br label %do.end

do.end:                                           ; preds = %pl111_vexpress_clcd_init.exit, %do.end51.i, %do.end38.i, %do.end27.i, %if.then1.do.end_crit_edge
  %retval.0.i88 = phi i32 [ %9, %pl111_vexpress_clcd_init.exit ], [ -22, %if.then1.do.end_crit_edge ], [ -19, %do.end27.i ], [ -517, %do.end38.i ], [ -19, %do.end51.i ]
  call void @of_node_put(ptr noundef nonnull %call) #4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %retval.0.i88) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %4 to i32
  %cmp7 = icmp eq ptr %4, inttoptr (i32 1 to ptr)
  br i1 %cmp7, label %if.then8, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call9 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @impd1_clcd_of_match, ptr noundef nonnull %clcd_id) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %clcd_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clcd_id, align 4
  %data12 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data12, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %versatile_clcd_type.0 = phi i32 [ %15, %if.then11 ], [ 1, %if.then8.if.end14_crit_edge ], [ %10, %if.end6.if.end14_crit_edge ]
  %np.0 = phi ptr [ %call9, %if.then11 ], [ null, %if.then8.if.end14_crit_edge ], [ %call, %if.end6.if.end14_crit_edge ]
  %call15 = call ptr @syscon_node_to_regmap(ptr noundef %np.0) #4
  call void @of_node_put(ptr noundef %np.0) #4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  %16 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %17 = zext i32 %versatile_clcd_type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %versatile_clcd_type.0, label %do.end48 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb26
    i32 2, label %sw.bb32
    i32 3, label %if.end22.sw.bb39_crit_edge
    i32 4, label %if.end22.sw.bb39_crit_edge104
    i32 5, label %if.end22.sw.bb39_crit_edge105
    i32 6, label %if.end22.sw.bb39_crit_edge106
    i32 7, label %if.end22.sw.bb39_crit_edge107
  ]

if.end22.sw.bb39_crit_edge107:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb39

if.end22.sw.bb39_crit_edge106:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb39

if.end22.sw.bb39_crit_edge105:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb39

if.end22.sw.bb39_crit_edge104:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb39

if.end22.sw.bb39_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb39

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call15, ptr @versatile_syscon_map, align 4
  %variant = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 12
  %18 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pl110_integrator, ptr %variant, align 4
  %variant_display_enable = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 13
  %19 = ptrtoint ptr %variant_display_enable to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pl111_integrator_enable, ptr %variant_display_enable, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %cleanup

sw.bb26:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call15, ptr @versatile_syscon_map, align 4
  %variant27 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 12
  %20 = ptrtoint ptr %variant27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pl110_impd1, ptr %variant27, align 4
  %variant_display_enable28 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 13
  %21 = ptrtoint ptr %variant_display_enable28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pl111_impd1_enable, ptr %variant_display_enable28, align 8
  %variant_display_disable = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 14
  %22 = ptrtoint ptr %variant_display_disable to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pl111_impd1_disable, ptr %variant_display_disable, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  br label %cleanup

sw.bb32:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call15, ptr @versatile_syscon_map, align 4
  %variant33 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 12
  %23 = ptrtoint ptr %variant33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pl110_versatile, ptr %variant33, align 4
  %variant_display_enable34 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 13
  %24 = ptrtoint ptr %variant_display_enable34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pl111_versatile_enable, ptr %variant_display_enable34, align 8
  %variant_display_disable35 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 14
  %25 = ptrtoint ptr %variant_display_disable35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pl111_versatile_disable, ptr %variant_display_disable35, align 4
  %ienb = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 7
  %26 = ptrtoint ptr %ienb to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 28, ptr %ienb, align 8
  %ctrl = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 8
  %27 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 24, ptr %ctrl, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %cleanup

sw.bb39:                                          ; preds = %if.end22.sw.bb39_crit_edge, %if.end22.sw.bb39_crit_edge104, %if.end22.sw.bb39_crit_edge105, %if.end22.sw.bb39_crit_edge106, %if.end22.sw.bb39_crit_edge107
  store ptr %call15, ptr @versatile_syscon_map, align 4
  %variant40 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 12
  %28 = ptrtoint ptr %variant40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pl111_realview, ptr %variant40, align 4
  %variant_display_enable41 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 13
  %29 = ptrtoint ptr %variant_display_enable41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pl111_realview_clcd_enable, ptr %variant_display_enable41, align 8
  %variant_display_disable42 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %priv, i32 0, i32 14
  %30 = ptrtoint ptr %variant_display_disable42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pl111_realview_clcd_disable, ptr %variant_display_disable42, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %cleanup

do.end48:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %sw.bb39, %sw.bb32, %sw.bb26, %sw.bb, %do.end20, %do.end, %pl111_vexpress_clcd_init.exit.thread89, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end20 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i88, %do.end ], [ 0, %do.end48 ], [ 0, %sw.bb39 ], [ 0, %sw.bb32 ], [ 0, %sw.bb26 ], [ 0, %sw.bb ], [ 0, %pl111_vexpress_clcd_init.exit.thread89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clcd_id) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_integrator_enable(ptr nocapture noundef readonly %drm, i32 noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.49) #7
  %2 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %format, label %do.end5 [
    i32 875709016, label %entry.sw.epilog_crit_edge
    i32 875713112, label %entry.sw.epilog_crit_edge11
    i32 892420696, label %entry.sw.bb1_crit_edge
    i32 892424792, label %entry.sw.bb1_crit_edge12
  ]

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge12
  br label %sw.epilog

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.52, i32 noundef %format) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end5, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge11
  %val.0 = phi i32 [ 245760, %do.end5 ], [ 253952, %sw.bb1 ], [ 260096, %entry.sw.epilog_crit_edge ], [ 260096, %entry.sw.epilog_crit_edge11 ]
  %5 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 1048320, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_impd1_enable(ptr nocapture noundef readonly %drm, i32 noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.55) #7
  %2 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 24, i32 noundef 7, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_impd1_disable(ptr nocapture noundef readonly %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.57) #7
  %2 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 24, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_versatile_enable(ptr nocapture noundef readonly %drm, i32 noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.60) #7
  %2 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %format, label %do.end9 [
    i32 875708993, label %entry.sw.epilog_crit_edge
    i32 875709016, label %entry.sw.epilog_crit_edge19
    i32 875713089, label %entry.sw.epilog_crit_edge20
    i32 875713112, label %entry.sw.epilog_crit_edge21
    i32 909199170, label %sw.bb1
    i32 909199186, label %sw.bb3
    i32 892420673, label %entry.sw.bb5_crit_edge
    i32 892420696, label %entry.sw.bb5_crit_edge22
    i32 892424769, label %entry.sw.bb5_crit_edge23
    i32 892424792, label %entry.sw.bb5_crit_edge24
  ]

entry.sw.bb5_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.sw.bb5_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.sw.bb5_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge22, %entry.sw.bb5_crit_edge23, %entry.sw.bb5_crit_edge24
  br label %sw.epilog

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.63, i32 noundef %format) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end9, %sw.bb5, %sw.bb3, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge19, %entry.sw.epilog_crit_edge20, %entry.sw.epilog_crit_edge21
  %val.0 = phi i32 [ 0, %do.end9 ], [ 1, %sw.bb5 ], [ 3, %sw.bb3 ], [ 2, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge19 ], [ 0, %entry.sw.epilog_crit_edge20 ], [ 0, %entry.sw.epilog_crit_edge21 ]
  %5 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 80, i32 noundef 3, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %6 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 80, i32 noundef 60, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_versatile_disable(ptr nocapture noundef readonly %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.65) #7
  %2 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 80, i32 noundef 60, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_realview_clcd_enable(ptr nocapture noundef readonly %drm, i32 noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.68) #7
  %2 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 80, i32 noundef 60, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_realview_clcd_disable(ptr nocapture noundef readonly %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.70) #7
  %2 = load ptr, ptr @versatile_syscon_map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 80, i32 noundef 60, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_init_vexpress_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 491, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pl111_versatile_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pl111_versatile_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 510, i32 3}
!10 = !{ptr @pl111_versatile_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @pl111_versatile_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 519, i32 3}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pl111_versatile_init._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @pl111_versatile_init._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 526, i32 3}
!19 = !{ptr @pl111_versatile_init._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @pl111_versatile_init._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 541, i32 3}
!23 = !{ptr @pl111_versatile_init._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pl111_versatile_init._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 552, i32 3}
!27 = !{ptr @pl111_versatile_init._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pl111_versatile_init._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 555, i32 3}
!31 = !{ptr @pl111_versatile_init._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pl111_versatile_init._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_pl111_versatile_init, !34, !"__ksymtab_pl111_versatile_init", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 561, i32 1}
!35 = !{ptr @versatile_syscon_map, !36, !"versatile_syscon_map", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 24, i32 23}
!37 = !{ptr @versatile_clcd_of_match, !38, !"versatile_clcd_of_match", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 41, i32 34}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 397, i32 30}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 402, i32 38}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 407, i32 38}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 432, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pl111_vexpress_clcd_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @pl111_vexpress_clcd_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 435, i32 3}
!52 = !{ptr @pl111_vexpress_clcd_init._entry.29, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pl111_vexpress_clcd_init._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 439, i32 3}
!56 = !{ptr @pl111_vexpress_clcd_init._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pl111_vexpress_clcd_init._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 440, i32 3}
!60 = !{ptr @pl111_vexpress_clcd_init._entry.35, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pl111_vexpress_clcd_init._entry_ptr.37, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 447, i32 3}
!64 = !{ptr @pl111_vexpress_clcd_init._entry.38, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pl111_vexpress_clcd_init._entry_ptr.40, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 460, i32 3}
!68 = !{ptr @pl111_vexpress_clcd_init._entry.41, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pl111_vexpress_clcd_init._entry_ptr.43, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 465, i32 2}
!72 = !{ptr @pl111_vexpress_clcd_init._entry.44, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @pl111_vexpress_clcd_init._entry_ptr.46, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 365, i32 10}
!76 = !{ptr @pl111_vexpress, !77, !"pl111_vexpress", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 364, i32 40}
!78 = !{ptr @pl111_realview_pixel_formats, !79, !"pl111_realview_pixel_formats", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 289, i32 18}
!80 = !{ptr @impd1_clcd_of_match, !81, !"impd1_clcd_of_match", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 77, i32 34}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 311, i32 10}
!84 = !{ptr @pl110_integrator, !85, !"pl110_integrator", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 310, i32 40}
!86 = !{ptr @pl110_integrator_pixel_formats, !87, !"pl110_integrator_pixel_formats", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 264, i32 18}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 116, i32 2}
!90 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pl111_integrator_enable._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @pl111_integrator_enable._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 134, i32 3}
!95 = !{ptr @pl111_integrator_enable._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @pl111_integrator_enable._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 325, i32 10}
!99 = !{ptr @pl110_impd1, !100, !"pl110_impd1", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 324, i32 40}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 156, i32 2}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pl111_impd1_enable._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @pl111_impd1_enable._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 167, i32 2}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @pl111_impd1_disable._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @pl111_impd1_disable._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 339, i32 10}
!113 = !{ptr @pl110_versatile, !114, !"pl110_versatile", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 338, i32 40}
!115 = !{ptr @pl110_versatile_pixel_formats, !116, !"pl110_versatile_pixel_formats", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 276, i32 18}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 205, i32 2}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @pl111_versatile_enable._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @pl111_versatile_enable._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 227, i32 3}
!124 = !{ptr @pl111_versatile_enable._entry.62, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @pl111_versatile_enable._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 194, i32 2}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @pl111_versatile_disable._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @pl111_versatile_disable._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 353, i32 10}
!133 = !{ptr @pl111_realview, !134, !"pl111_realview", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 352, i32 40}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 256, i32 2}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @pl111_realview_clcd_enable._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @pl111_realview_clcd_enable._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/pl111/pl111_versatile.c", i32 247, i32 2}
!142 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @pl111_realview_clcd_disable._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @pl111_realview_clcd_disable._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
