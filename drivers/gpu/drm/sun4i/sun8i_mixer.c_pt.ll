; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_mixer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.de2_fmt_info = type { i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }
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
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }

@de2_formats = internal constant { [48 x %struct.de2_fmt_info], [96 x i8] } { [48 x %struct.de2_fmt_info] [%struct.de2_fmt_info { i32 875713089, i32 0 }, %struct.de2_fmt_info { i32 875708993, i32 1 }, %struct.de2_fmt_info { i32 875708754, i32 2 }, %struct.de2_fmt_info { i32 875708738, i32 3 }, %struct.de2_fmt_info { i32 875713112, i32 4 }, %struct.de2_fmt_info { i32 875709016, i32 5 }, %struct.de2_fmt_info { i32 875714642, i32 6 }, %struct.de2_fmt_info { i32 875714626, i32 7 }, %struct.de2_fmt_info { i32 875710290, i32 8 }, %struct.de2_fmt_info { i32 875710274, i32 9 }, %struct.de2_fmt_info { i32 909199186, i32 10 }, %struct.de2_fmt_info { i32 909199170, i32 11 }, %struct.de2_fmt_info { i32 842093121, i32 12 }, %struct.de2_fmt_info { i32 842093144, i32 12 }, %struct.de2_fmt_info { i32 842089025, i32 13 }, %struct.de2_fmt_info { i32 842089048, i32 13 }, %struct.de2_fmt_info { i32 842088786, i32 14 }, %struct.de2_fmt_info { i32 842094674, i32 14 }, %struct.de2_fmt_info { i32 842088770, i32 15 }, %struct.de2_fmt_info { i32 842094658, i32 15 }, %struct.de2_fmt_info { i32 892424769, i32 16 }, %struct.de2_fmt_info { i32 892424792, i32 16 }, %struct.de2_fmt_info { i32 892420673, i32 17 }, %struct.de2_fmt_info { i32 892420696, i32 17 }, %struct.de2_fmt_info { i32 892420434, i32 18 }, %struct.de2_fmt_info { i32 892426322, i32 18 }, %struct.de2_fmt_info { i32 892420418, i32 19 }, %struct.de2_fmt_info { i32 892426306, i32 19 }, %struct.de2_fmt_info { i32 808669761, i32 20 }, %struct.de2_fmt_info { i32 808665665, i32 21 }, %struct.de2_fmt_info { i32 808665426, i32 22 }, %struct.de2_fmt_info { i32 808665410, i32 23 }, %struct.de2_fmt_info { i32 1498831189, i32 1 }, %struct.de2_fmt_info { i32 1498765654, i32 3 }, %struct.de2_fmt_info { i32 1448695129, i32 0 }, %struct.de2_fmt_info { i32 1431918169, i32 2 }, %struct.de2_fmt_info { i32 909203022, i32 4 }, %struct.de2_fmt_info { i32 825644622, i32 5 }, %struct.de2_fmt_info { i32 842094158, i32 8 }, %struct.de2_fmt_info { i32 825382478, i32 9 }, %struct.de2_fmt_info { i32 909202777, i32 6 }, %struct.de2_fmt_info { i32 842093913, i32 10 }, %struct.de2_fmt_info { i32 825316697, i32 14 }, %struct.de2_fmt_info { i32 909203033, i32 6 }, %struct.de2_fmt_info { i32 842094169, i32 10 }, %struct.de2_fmt_info { i32 825316953, i32 14 }, %struct.de2_fmt_info { i32 808530000, i32 16 }, %struct.de2_fmt_info { i32 808530512, i32 18 }], [96 x i8] zeroinitializer }, align 32
@__initcall__kmod_sun8i_mixer__318_665_sun8i_mixer_platform_driver_init6 = internal global ptr @sun8i_mixer_platform_driver_init, section ".initcall6.init", align 4
@sun8i_mixer_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun8i_mixer_probe, ptr @sun8i_mixer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun8i_mixer_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun8i_mixer_platform_driver_exit = internal global ptr @sun8i_mixer_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [51 x i8] c"sun8i_mixer.author=Icenowy Zheng <icenowy@aosc.io>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [51 x i8] c"sun8i_mixer.description=Allwinner DE2 Mixer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [51 x i8] c"sun8i_mixer.file=drivers/gpu/drm/sun4i/sun8i-mixer\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [24 x i8] c"sun8i_mixer.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sun8i-mixer\00", [20 x i8] zeroinitializer }, align 32
@sun8i_mixer_of_table = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-de2-mixer-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_mixer1_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-de2-mixer-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_mixer1_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-de2-mixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_mixer_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-de2-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_mixer0_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-de2-mixer-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_mixer1_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-de3-mixer-0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_mixer0_cfg }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@sun8i_mixer_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun8i_mixer_bind, ptr @sun8i_mixer_unbind }, [24 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot do 32-bit DMA.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun8i_mixer_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/sun4i/sun8i_mixer.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry_ptr = internal global ptr @sun8i_mixer_bind._entry, section ".printk_index", align 4
@sun8i_engine_ops = internal constant { %struct.sunxi_engine_ops, [36 x i8] } { %struct.sunxi_engine_ops { ptr null, ptr null, ptr @sun8i_mixer_commit, ptr @sun8i_layers_init, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun8i_mixer_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1048572, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sun8i_mixer:397:(&sun8i_mixer_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't create the mixer regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry_ptr.10 = internal global ptr @sun8i_mixer_bind._entry.8, section ".printk_index", align 4
@sun8i_mixer_bind._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry_ptr.13 = internal global ptr @sun8i_mixer_bind._entry.11, section ".printk_index", align 4
@sun8i_mixer_bind._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't deassert our reset line\0A\00", [62 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry_ptr.16 = internal global ptr @sun8i_mixer_bind._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't get the mixer bus clock\0A\00", [62 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry_ptr.20 = internal global ptr @sun8i_mixer_bind._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't get the mixer module clock\0A\00", [59 x i8] zeroinitializer }, align 32
@sun8i_mixer_bind._entry_ptr.24 = internal global ptr @sun8i_mixer_bind._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Committing changes\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_layers_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't initialize overlay plane\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_layers_init\00", [46 x i8] zeroinitializer }, align 32
@sun8i_layers_init._entry_ptr = internal global ptr @sun8i_layers_init._entry, section ".printk_index", align 4
@sun8i_layers_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't initialize %s plane\0A\00", [34 x i8] zeroinitializer }, align 32
@sun8i_layers_init._entry_ptr.30 = internal global ptr @sun8i_layers_init._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@sun8i_a83t_mixer0_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 0, i8 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@sun8i_a83t_mixer1_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 1, i32 3, i32 1, i32 0, i8 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@sun8i_h3_mixer0_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 432000000, i8 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@sun8i_r40_mixer0_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 297000000, i8 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@sun8i_r40_mixer1_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 1, i32 3, i32 1, i32 297000000, i8 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@sun8i_v3s_mixer_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 2, i32 1, i32 3, i32 0, i32 150000000, i8 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@sun50i_a64_mixer0_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 297000000, i8 0, i32 4096 }, [36 x i8] zeroinitializer }, align 32
@sun50i_a64_mixer1_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 1, i32 3, i32 1, i32 297000000, i8 0, i32 2048 }, [36 x i8] zeroinitializer }, align 32
@sun50i_h6_mixer0_cfg = internal constant { %struct.sun8i_mixer_cfg, [36 x i8] } { %struct.sun8i_mixer_cfg { i32 1, i32 3, i32 15, i32 0, i32 600000000, i8 -128, i32 4096 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"de2_formats\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 35, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"sun8i_mixer_platform_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 657, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 661, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"sun8i_mixer_of_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 616, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"sun8i_mixer_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 519, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 354, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"sun8i_engine_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 301, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 365, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"sun8i_mixer_regmap_config\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 306, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 396, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 399, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 405, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 411, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 415, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 417, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 423, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 425, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 253, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 277, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 290, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"sun8i_a83t_mixer0_cfg\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 536, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"sun8i_a83t_mixer1_cfg\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 544, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"sun8i_h3_mixer0_cfg\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 552, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"sun8i_r40_mixer0_cfg\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 561, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"sun8i_r40_mixer1_cfg\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 570, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c"sun8i_v3s_mixer_cfg\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 579, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"sun50i_a64_mixer0_cfg\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 588, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"sun50i_a64_mixer1_cfg\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 597, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"sun50i_h6_mixer0_cfg\00", align 1
@___asan_gen_.166 = private constant [39 x i8] c"../drivers/gpu/drm/sun4i/sun8i_mixer.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 606, i32 37 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_sun8i_mixer_platform_driver_exit, ptr @__initcall__kmod_sun8i_mixer__318_665_sun8i_mixer_platform_driver_init6, ptr @sun8i_layers_init._entry, ptr @sun8i_layers_init._entry.28, ptr @sun8i_layers_init._entry_ptr, ptr @sun8i_layers_init._entry_ptr.30, ptr @sun8i_mixer_bind._entry, ptr @sun8i_mixer_bind._entry.11, ptr @sun8i_mixer_bind._entry.14, ptr @sun8i_mixer_bind._entry.18, ptr @sun8i_mixer_bind._entry.22, ptr @sun8i_mixer_bind._entry.8, ptr @sun8i_mixer_bind._entry_ptr, ptr @sun8i_mixer_bind._entry_ptr.10, ptr @sun8i_mixer_bind._entry_ptr.13, ptr @sun8i_mixer_bind._entry_ptr.16, ptr @sun8i_mixer_bind._entry_ptr.20, ptr @sun8i_mixer_bind._entry_ptr.24, ptr @sun8i_mixer_platform_driver_exit, ptr @de2_formats, ptr @sun8i_mixer_platform_driver, ptr @.str, ptr @sun8i_mixer_of_table, ptr @sun8i_mixer_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sun8i_engine_ops, ptr @.str.6, ptr @sun8i_mixer_bind._key, ptr @sun8i_mixer_regmap_config, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @sun8i_a83t_mixer0_cfg, ptr @sun8i_a83t_mixer1_cfg, ptr @sun8i_h3_mixer0_cfg, ptr @sun8i_r40_mixer0_cfg, ptr @sun8i_r40_mixer1_cfg, ptr @sun8i_v3s_mixer_cfg, ptr @sun50i_a64_mixer0_cfg, ptr @sun50i_a64_mixer1_cfg, ptr @sun50i_h6_mixer0_cfg], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de2_formats to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_of_table to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_engine_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_bind._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_bind._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_bind._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_bind._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_mixer_bind._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_layers_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_layers_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_mixer0_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_mixer1_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_mixer0_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_mixer0_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_mixer1_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_mixer_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_mixer0_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_mixer1_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_mixer0_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @sun8i_mixer_drm_format_to_hw(i32 noundef %format, ptr nocapture noundef writeonly %hw_format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [48 x %struct.de2_fmt_info], ptr @de2_formats, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %format)
  %cmp1 = icmp eq i32 %1, %format
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %de2_fmt = getelementptr [48 x %struct.de2_fmt_info], ptr @de2_formats, i32 0, i32 %i.07, i32 1
  %2 = ptrtoint ptr %de2_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %de2_fmt, align 4
  %4 = ptrtoint ptr %hw_format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hw_format, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_mixer_platform_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun8i_mixer_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_mixer_platform_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun8i_mixer_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_mixer_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @sun8i_mixer_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_mixer_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sun8i_mixer_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_mixer_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  %of_ep.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sun8i_engine_ops, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %node = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %node, align 4
  %call7 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.if.end16_crit_edge, label %if.then9

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %if.end4
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev10, align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i303 = tail call i32 @of_dma_configure_id(ptr noundef %8, ptr noundef %10, i1 noundef zeroext true, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool13.not = icmp eq i32 %call.i303, 0
  br i1 %tobool13.not, label %if.then9.if.end16_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep.i) #7
  %13 = ptrtoint ptr %of_ep.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %of_ep.i, align 4, !annotation !101
  %14 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !101
  %16 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !101
  %call.i304 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %12, i32 noundef 1, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i304, null
  br i1 %tobool.not.i, label %if.end16.sun8i_mixer_of_get_id.exit_crit_edge, label %if.end.i

if.end16.sun8i_mixer_of_get_id.exit_crit_edge:    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_mixer_of_get_id.exit

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %call.i304) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i304) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.sun8i_mixer_of_get_id.exit_crit_edge, label %if.end4.i

if.end.i.sun8i_mixer_of_get_id.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sun8i_mixer_of_get_id.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %call1.i, ptr noundef nonnull %of_ep.i) #7
  call void @of_node_put(ptr noundef nonnull %call1.i) #7
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 4
  br label %sun8i_mixer_of_get_id.exit

sun8i_mixer_of_get_id.exit:                       ; preds = %if.end4.i, %if.end.i.sun8i_mixer_of_get_id.exit_crit_edge, %if.end16.sun8i_mixer_of_get_id.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.end4.i ], [ -22, %if.end16.sun8i_mixer_of_get_id.exit_crit_edge ], [ -22, %if.end.i.sun8i_mixer_of_get_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep.i) #7
  %id = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %id, align 4
  %call20 = call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20, ptr %cfg, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %sun8i_mixer_of_get_id.exit.cleanup_crit_edge, label %if.end24

sun8i_mixer_of_get_id.exit.cleanup_crit_edge:     ; preds = %sun8i_mixer_of_get_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %sun8i_mixer_of_get_id.exit
  %call25 = call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call31 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call25, ptr noundef nonnull @sun8i_mixer_regmap_config, ptr noundef nonnull @sun8i_mixer_bind._key, ptr noundef nonnull @.str.7) #7
  %regs33 = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %regs33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call31, ptr %regs33, align 4
  %cmp.i305 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %24 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs33, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end29
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %reset = getelementptr inbounds %struct.sun8i_mixer, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i306 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %28 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reset, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %call56 = call i32 @reset_control_deassert(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end62, label %do.end61

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %call63 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  %bus_clk = getelementptr inbounds %struct.sun8i_mixer, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call63, ptr %bus_clk, align 4
  %cmp.i307 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %do.end69, label %if.end72

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  %32 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus_clk, align 4
  br label %err_assert_reset

if.end72:                                         ; preds = %if.end62
  %call.i308 = call i32 @clk_prepare(ptr noundef %call63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool.not.i309 = icmp eq i32 %call.i308, 0
  br i1 %tobool.not.i309, label %if.end.i312, label %if.end72.clk_prepare_enable.exit_crit_edge

if.end72.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i312:                                      ; preds = %if.end72
  %call1.i310 = call i32 @clk_enable(ptr noundef %call63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i310)
  %tobool2.not.i311 = icmp eq i32 %call1.i310, 0
  br i1 %tobool2.not.i311, label %if.end.i312.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i312.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call63) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i312.clk_prepare_enable.exit_crit_edge, %if.end72.clk_prepare_enable.exit_crit_edge
  %call75 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  %mod_clk = getelementptr inbounds %struct.sun8i_mixer, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call75, ptr %mod_clk, align 4
  %cmp.i313 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i313, label %do.end81, label %if.end84

do.end81:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %35 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mod_clk, align 4
  %37 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus_clk, align 4
  call void @clk_disable(ptr noundef %38) #7
  call void @clk_unprepare(ptr noundef %38) #7
  br label %err_assert_reset

if.end84:                                         ; preds = %clk_prepare_enable.exit
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg, align 4
  %mod_rate = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %mod_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mod_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool86.not = icmp eq i32 %42, 0
  br i1 %tobool86.not, label %if.end84.if.end92_crit_edge, label %if.then87

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = call i32 @clk_set_rate(ptr noundef %call75, i32 noundef %42) #7
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end84.if.end92_crit_edge
  %43 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mod_clk, align 4
  %call.i314 = call i32 @clk_prepare(ptr noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool.not.i315 = icmp eq i32 %call.i314, 0
  br i1 %tobool.not.i315, label %if.end.i318, label %if.end92.clk_prepare_enable.exit320_crit_edge

if.end92.clk_prepare_enable.exit320_crit_edge:    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit320

if.end.i318:                                      ; preds = %if.end92
  %call1.i316 = call i32 @clk_enable(ptr noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i316)
  %tobool2.not.i317 = icmp eq i32 %call1.i316, 0
  br i1 %tobool2.not.i317, label %if.end.i318.clk_prepare_enable.exit320_crit_edge, label %if.then3.i319

if.end.i318.clk_prepare_enable.exit320_crit_edge: ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit320

if.then3.i319:                                    ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %44) #7
  br label %clk_prepare_enable.exit320

clk_prepare_enable.exit320:                       ; preds = %if.then3.i319, %if.end.i318.clk_prepare_enable.exit320_crit_edge, %if.end92.clk_prepare_enable.exit320_crit_edge
  %list = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i321 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %46, ptr noundef %1) #7
  br i1 %call.i.i321, label %if.end.i.i, label %clk_prepare_enable.exit320.list_add_tail.exit_crit_edge

clk_prepare_enable.exit320.list_add_tail.exit_crit_edge: ; preds = %clk_prepare_enable.exit320
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %clk_prepare_enable.exit320
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list, ptr %prev.i, align 4
  %48 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %1, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sunxi_engine, ptr %call.i, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %clk_prepare_enable.exit320.list_add_tail.exit_crit_edge
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg, align 4
  %is_de3.i = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %is_de3.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i = load i8, ptr %is_de3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i322 = icmp sgt i8 %bf.load.i, -1
  %cond.i = select i1 %tobool.not.i322, i32 4096, i32 2048
  br i1 %tobool.not.i322, label %list_add_tail.exit.for.body135_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  br label %for.body

list_add_tail.exit.for.body135_crit_edge:         ; preds = %list_add_tail.exit
  br label %for.body135

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_add_tail.exit.for.body_crit_edge
  %i.0324 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %list_add_tail.exit.for.body_crit_edge ]
  %54 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs33, align 4
  %call102 = call i32 @regmap_write(ptr noundef %55, i32 noundef %i.0324, i32 noundef 0) #7
  %add = add nuw nsw i32 %i.0324, 4
  %cmp = icmp ult i32 %i.0324, 12284
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs33, align 4
  %call105 = call i32 @regmap_write(ptr noundef %57, i32 noundef 458752, i32 noundef 0) #7
  %58 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs33, align 4
  %call108 = call i32 @regmap_write(ptr noundef %59, i32 noundef 460800, i32 noundef 0) #7
  %60 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs33, align 4
  %call111 = call i32 @regmap_write(ptr noundef %61, i32 noundef 462848, i32 noundef 0) #7
  br label %if.end163

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %list_add_tail.exit.for.body135_crit_edge
  %i.1325 = phi i32 [ %add140, %for.body135.for.body135_crit_edge ], [ 0, %list_add_tail.exit.for.body135_crit_edge ]
  %62 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs33, align 4
  %call138 = call i32 @regmap_write(ptr noundef %63, i32 noundef %i.1325, i32 noundef 0) #7
  %add140 = add nuw nsw i32 %i.1325, 4
  %cmp134 = icmp ult i32 %i.1325, 24572
  br i1 %cmp134, label %for.body135.for.body135_crit_edge, label %for.body135.if.end163_crit_edge

for.body135.if.end163_crit_edge:                  ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body135

if.end163:                                        ; preds = %for.body135.if.end163_crit_edge, %for.end
  %.sink333 = phi i32 [ 464896, %for.end ], [ 655360, %for.body135.if.end163_crit_edge ]
  %.sink332 = phi i32 [ 466944, %for.end ], [ 663552, %for.body135.if.end163_crit_edge ]
  %.sink331 = phi i32 [ 524288, %for.end ], [ 671744, %for.body135.if.end163_crit_edge ]
  %.sink330 = phi i32 [ 655360, %for.end ], [ 679936, %for.body135.if.end163_crit_edge ]
  %.sink329 = phi i32 [ 851968, %for.end ], [ 696320, %for.body135.if.end163_crit_edge ]
  %.sink328 = phi i32 [ 884736, %for.end ], [ 720896, %for.body135.if.end163_crit_edge ]
  %64 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs33, align 4
  %call144 = call i32 @regmap_write(ptr noundef %65, i32 noundef %.sink333, i32 noundef 0) #7
  %66 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs33, align 4
  %call147 = call i32 @regmap_write(ptr noundef %67, i32 noundef %.sink332, i32 noundef 0) #7
  %68 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs33, align 4
  %call150 = call i32 @regmap_write(ptr noundef %69, i32 noundef %.sink331, i32 noundef 0) #7
  %70 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs33, align 4
  %call153 = call i32 @regmap_write(ptr noundef %71, i32 noundef %.sink330, i32 noundef 0) #7
  %72 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs33, align 4
  %call156 = call i32 @regmap_write(ptr noundef %73, i32 noundef 688128, i32 noundef 0) #7
  %74 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs33, align 4
  %call159 = call i32 @regmap_write(ptr noundef %75, i32 noundef %.sink329, i32 noundef 0) #7
  %76 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs33, align 4
  %call162 = call i32 @regmap_write(ptr noundef %77, i32 noundef %.sink328, i32 noundef 0) #7
  %78 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs33, align 4
  %call166 = call i32 @regmap_write(ptr noundef %79, i32 noundef 0, i32 noundef 1) #7
  %80 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs33, align 4
  %add169 = or i32 %cond.i, 136
  %call170 = call i32 @regmap_write(ptr noundef %81, i32 noundef %add169, i32 noundef -16777216) #7
  %82 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs33, align 4
  %call174 = call i32 @regmap_write(ptr noundef %83, i32 noundef %cond.i, i32 noundef 1) #7
  %84 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs33, align 4
  %add177 = or i32 %cond.i, 4
  %call179 = call i32 @regmap_write(ptr noundef %85, i32 noundef %add177, i32 noundef -16777216) #7
  %86 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %ui_num = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %ui_num to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ui_num, align 4
  %add182 = add i32 %91, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add182)
  %cmp184326 = icmp sgt i32 %add182, 0
  br i1 %cmp184326, label %for.body185.lr.ph, label %if.end163.for.end192_crit_edge

if.end163.for.end192_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end192

for.body185.lr.ph:                                ; preds = %if.end163
  %add188 = or i32 %cond.i, 144
  br label %for.body185

for.body185:                                      ; preds = %for.body185.for.body185_crit_edge, %for.body185.lr.ph
  %i.2327 = phi i32 [ 0, %for.body185.lr.ph ], [ %inc, %for.body185.for.body185_crit_edge ]
  %92 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs33, align 4
  %mul = shl i32 %i.2327, 2
  %add189 = add i32 %add188, %mul
  %call190 = call i32 @regmap_write(ptr noundef %93, i32 noundef %add189, i32 noundef 50397953) #7
  %inc = add nuw nsw i32 %i.2327, 1
  %exitcond.not = icmp eq i32 %inc, %add182
  br i1 %exitcond.not, label %for.body185.for.end192_crit_edge, label %for.body185.for.body185_crit_edge

for.body185.for.body185_crit_edge:                ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body185

for.body185.for.end192_crit_edge:                 ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end192

for.end192:                                       ; preds = %for.body185.for.end192_crit_edge, %if.end163.for.end192_crit_edge
  %94 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs33, align 4
  %call.i323 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef %cond.i, i32 noundef 7936, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

err_assert_reset:                                 ; preds = %do.end81, %do.end69
  %ret.0.in = phi ptr [ %33, %do.end69 ], [ %36, %do.end81 ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %96 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reset, align 4
  %call199 = call i32 @reset_control_assert(ptr noundef %97) #7
  br label %cleanup

cleanup:                                          ; preds = %err_assert_reset, %for.end192, %do.end61, %do.end51, %do.end40, %if.then27, %sun8i_mixer_of_get_id.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %22, %if.then27 ], [ %26, %do.end40 ], [ %30, %do.end51 ], [ %call56, %do.end61 ], [ %ret.0, %err_assert_reset ], [ 0, %for.end192 ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i303, %if.then9.cleanup_crit_edge ], [ -22, %sun8i_mixer_of_get_id.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_mixer_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %list = getelementptr inbounds %struct.sunxi_engine, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.sunxi_engine, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.sunxi_engine, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %mod_clk = getelementptr inbounds %struct.sun8i_mixer, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %bus_clk = getelementptr inbounds %struct.sun8i_mixer, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %reset = getelementptr inbounds %struct.sun8i_mixer, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_mixer_commit(ptr nocapture noundef readonly %engine) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #7
  %regs = getelementptr inbounds %struct.sunxi_engine, ptr %engine, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 8, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun8i_layers_init(ptr noundef %drm, ptr noundef %engine) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %engine, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %ui_num = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ui_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ui_num, align 4
  %add = add i32 %3, 1
  %add2 = add i32 %add, %5
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add2, i32 4) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %entry.cleanup40_crit_edge, label %devm_kcalloc.exit, !prof !102

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

devm_kcalloc.exit:                                ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup40_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup40_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp77 = icmp sgt i32 %14, 0
  br i1 %cmp77, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond13.preheader_crit_edge

for.cond.preheader.for.cond13.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond13.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond13.preheader:                             ; preds = %for.inc.for.cond13.preheader_crit_edge, %for.cond.preheader.for.cond13.preheader_crit_edge
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg, align 4
  %ui_num1579 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ui_num1579 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ui_num1579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1680 = icmp sgt i32 %18, 0
  br i1 %cmp1680, label %for.cond13.preheader.for.body17_crit_edge, label %for.cond13.preheader.cleanup40_crit_edge

for.cond13.preheader.cleanup40_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

for.cond13.preheader.for.body17_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body17

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call7 = tail call ptr @sun8i_vi_layer_init_one(ptr noundef %drm, ptr noundef %engine, i32 noundef %i.078) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.26) #10
  br label %cleanup40

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %call5.i.i, i32 %i.078
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.078, 1
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond13.preheader_crit_edge

for.inc.for.cond13.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond13.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body17:                                       ; preds = %for.inc37.for.body17_crit_edge, %for.cond13.preheader.for.body17_crit_edge
  %i.181 = phi i32 [ %inc38, %for.inc37.for.body17_crit_edge ], [ 0, %for.cond13.preheader.for.body17_crit_edge ]
  %call19 = tail call ptr @sun8i_ui_layer_init_one(ptr noundef %drm, ptr noundef %engine, i32 noundef %i.181) #7
  %cmp.i71 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %cleanup34.thread, label %for.inc37

cleanup34.thread:                                 ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.181)
  %tobool26.not = icmp eq i32 %i.181, 0
  %cond = select i1 %tobool26.not, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond) #10
  br label %cleanup40

for.inc37:                                        ; preds = %for.body17
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add32 = add i32 %31, %i.181
  %arrayidx33 = getelementptr ptr, ptr %call5.i.i, i32 %add32
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call19, ptr %arrayidx33, align 4
  %inc38 = add nuw nsw i32 %i.181, 1
  %ui_num15 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %ui_num15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ui_num15, align 4
  %cmp16 = icmp slt i32 %inc38, %34
  br i1 %cmp16, label %for.inc37.for.body17_crit_edge, label %for.inc37.cleanup40_crit_edge

for.inc37.cleanup40_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

for.inc37.for.body17_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

cleanup40:                                        ; preds = %for.inc37.cleanup40_crit_edge, %cleanup34.thread, %cleanup.thread, %for.cond13.preheader.cleanup40_crit_edge, %devm_kcalloc.exit.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.4 = phi ptr [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.cleanup40_crit_edge ], [ %call7, %cleanup.thread ], [ %call19, %cleanup34.thread ], [ inttoptr (i32 -12 to ptr), %entry.cleanup40_crit_edge ], [ %call5.i.i, %for.cond13.preheader.cleanup40_crit_edge ], [ %call5.i.i, %for.inc37.cleanup40_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun8i_vi_layer_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun8i_ui_layer_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_sun8i_mixer__318_665_sun8i_mixer_platform_driver_init6, !1, !"__initcall__kmod_sun8i_mixer__318_665_sun8i_mixer_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 665, i32 1}
!2 = !{ptr @__exitcall_sun8i_mixer_platform_driver_exit, !1, !"__exitcall_sun8i_mixer_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author319, !4, !"__UNIQUE_ID_author319", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 667, i32 1}
!5 = !{ptr @__UNIQUE_ID_description320, !6, !"__UNIQUE_ID_description320", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 668, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 669, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @de2_formats, !11, !"de2_formats", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 35, i32 34}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 661, i32 12}
!14 = !{ptr @sun8i_mixer_platform_driver, !15, !"sun8i_mixer_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 657, i32 31}
!16 = !{ptr @sun8i_mixer_ops, !17, !"sun8i_mixer_ops", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 519, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 354, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sun8i_mixer_bind._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun8i_mixer_bind._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 365, i32 37}
!28 = !{ptr @sun8i_mixer_bind._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 396, i32 23}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 399, i32 3}
!33 = !{ptr @sun8i_mixer_bind._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sun8i_mixer_bind._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 405, i32 3}
!37 = !{ptr @sun8i_mixer_bind._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sun8i_mixer_bind._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 411, i32 3}
!41 = !{ptr @sun8i_mixer_bind._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun8i_mixer_bind._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 415, i32 37}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 417, i32 3}
!47 = !{ptr @sun8i_mixer_bind._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sun8i_mixer_bind._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 423, i32 37}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 425, i32 3}
!53 = !{ptr @sun8i_mixer_bind._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sun8i_mixer_bind._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sun8i_engine_ops, !56, !"sun8i_engine_ops", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 301, i32 38}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 253, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 277, i32 4}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sun8i_layers_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sun8i_layers_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 290, i32 4}
!66 = !{ptr @sun8i_layers_init._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sun8i_layers_init._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sun8i_mixer_regmap_config, !71, !"sun8i_mixer_regmap_config", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 306, i32 35}
!72 = !{ptr @sun8i_mixer_of_table, !73, !"sun8i_mixer_of_table", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 616, i32 34}
!74 = !{ptr @sun8i_a83t_mixer0_cfg, !75, !"sun8i_a83t_mixer0_cfg", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 536, i32 37}
!76 = !{ptr @sun8i_a83t_mixer1_cfg, !77, !"sun8i_a83t_mixer1_cfg", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 544, i32 37}
!78 = !{ptr @sun8i_h3_mixer0_cfg, !79, !"sun8i_h3_mixer0_cfg", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 552, i32 37}
!80 = !{ptr @sun8i_r40_mixer0_cfg, !81, !"sun8i_r40_mixer0_cfg", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 561, i32 37}
!82 = !{ptr @sun8i_r40_mixer1_cfg, !83, !"sun8i_r40_mixer1_cfg", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 570, i32 37}
!84 = !{ptr @sun8i_v3s_mixer_cfg, !85, !"sun8i_v3s_mixer_cfg", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 579, i32 37}
!86 = !{ptr @sun50i_a64_mixer0_cfg, !87, !"sun50i_a64_mixer0_cfg", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 588, i32 37}
!88 = !{ptr @sun50i_a64_mixer1_cfg, !89, !"sun50i_a64_mixer1_cfg", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 597, i32 37}
!90 = !{ptr @sun50i_h6_mixer0_cfg, !91, !"sun50i_h6_mixer0_cfg", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sun4i/sun8i_mixer.c", i32 606, i32 37}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{!"branch_weights", i32 1, i32 2000}
