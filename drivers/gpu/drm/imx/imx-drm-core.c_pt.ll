; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/imx/imx-drm-core.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/imx-drm-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_drm_connector_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_drm_connector_destroy\09\09\09\09"
module asm "\09.long\09__crc_imx_drm_connector_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_drm_connector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_drm_connector_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_imx_drm_connector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_drm_encoder_parse_of\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_drm_encoder_parse_of\09\09\09\09"
module asm "\09.long\09__crc_imx_drm_encoder_parse_of\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_drm_encoder_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_drm_encoder_parse_of\22\09\09\09\09\09"
module asm "__kstrtabns_imx_drm_encoder_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipu_client_platformdata = type { i32, i32, i32, i32, [2 x i32], ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@__param_str_legacyfb_depth = internal constant [22 x i8] c"imxdrm.legacyfb_depth\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@legacyfb_depth = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_legacyfb_depth = internal constant %struct.kernel_param { ptr @__param_str_legacyfb_depth, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @legacyfb_depth } }, section "__param", align 4
@__UNIQUE_ID_legacyfb_depthtype319 = internal constant [35 x i8] c"imxdrm.parmtype=legacyfb_depth:int\00", section ".modinfo", align 1
@__kstrtab_imx_drm_connector_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_drm_connector_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_drm_connector_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_drm_connector_destroy to i32), ptr @__kstrtab_imx_drm_connector_destroy, ptr @__kstrtabns_imx_drm_connector_destroy }, section "___ksymtab_gpl+imx_drm_connector_destroy", align 4
@__kstrtab_imx_drm_encoder_parse_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_drm_encoder_parse_of = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_drm_encoder_parse_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_drm_encoder_parse_of to i32), ptr @__kstrtab_imx_drm_encoder_parse_of, ptr @__kstrtabns_imx_drm_encoder_parse_of }, section "___ksymtab_gpl+imx_drm_encoder_parse_of", align 4
@__initcall__kmod_imxdrm__320_346_imx_drm_init6 = internal global ptr @imx_drm_init, section ".initcall6.init", align 4
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @imx_drm_pdrv, ptr @ipu_drm_driver], [24 x i8] zeroinitializer }, align 32
@__exitcall_imx_drm_exit = internal global ptr @imx_drm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [52 x i8] c"imxdrm.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [40 x i8] c"imxdrm.description=i.MX drm driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [39 x i8] c"imxdrm.file=drivers/gpu/drm/imx/imxdrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [19 x i8] c"imxdrm.license=GPL\00", section ".modinfo", align 1
@imx_drm_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_drm_platform_probe, ptr @imx_drm_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_drm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ipu_drm_driver = external dso_local global %struct.platform_driver, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-drm\00", [24 x i8] zeroinitializer }, align 32
@imx_drm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-display-subsystem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx_drm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_drm_suspend, ptr @imx_drm_resume, ptr @imx_drm_suspend, ptr @imx_drm_resume, ptr @imx_drm_suspend, ptr @imx_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_drm_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @imx_drm_bind, ptr @imx_drm_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx-ipuv3-crtc\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lvds-channel\00", [19 x i8] zeroinitializer }, align 32
@imx_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @imx_drm_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.8, ptr @.str.9, i32 19, ptr @imx_drm_ioctls, i32 0, ptr @imx_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@imx_drm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @imx_drm_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx_drm_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @imx_drm_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@imx_drm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid legacyfb_depth.  Defaulting to 16bpp\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx_drm_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/imx/imx-drm-core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_drm_bind._entry_ptr = internal global ptr @imx_drm_bind._entry, section ".printk_index", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i.MX DRM graphics\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20120507\00", [23 x i8] zeroinitializer }, align 32
@imx_drm_ioctls = internal constant { [0 x %struct.drm_ioctl_desc], [32 x i8] } zeroinitializer, align 32
@imx_drm_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/drm/drm_atomic_helper.h\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"legacyfb_depth\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 34, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 337, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"imx_drm_pdrv\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 327, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 331, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"imx_drm_dt_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 321, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"imx_drm_pm_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 319, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"imx_drm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 282, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 184, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 191, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"imx_drm_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 165, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"imx_drm_mode_config_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 71, i32 43 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"imx_drm_mode_config_helpers\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 116, i32 50 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 244, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 172, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 173, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"imx_drm_ioctls\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 144, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"imx_drm_driver_fops\00", align 1
@___asan_gen_.75 = private constant [38 x i8] c"../drivers/gpu/drm/imx/imx-drm-core.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 37, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [35 x i8] c"../include/drm/drm_atomic_helper.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 220, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_legacyfb_depthtype319, ptr @__UNIQUE_ID_license324, ptr @__exitcall_imx_drm_exit, ptr @__initcall__kmod_imxdrm__320_346_imx_drm_init6, ptr @__ksymtab_imx_drm_connector_destroy, ptr @__ksymtab_imx_drm_encoder_parse_of, ptr @__param_legacyfb_depth, ptr @imx_drm_bind._entry, ptr @imx_drm_bind._entry_ptr, ptr @imx_drm_exit, ptr @legacyfb_depth, ptr @drivers, ptr @imx_drm_pdrv, ptr @.str, ptr @imx_drm_dt_ids, ptr @imx_drm_pm_ops, ptr @imx_drm_ops, ptr @.str.1, ptr @.str.2, ptr @imx_drm_driver, ptr @imx_drm_mode_config_funcs, ptr @imx_drm_mode_config_helpers, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @imx_drm_ioctls, ptr @imx_drm_driver_fops, ptr @.str.10], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacyfb_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_ioctls to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_drm_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_drm_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #5
  tail call void @drm_connector_cleanup(ptr noundef %connector) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_drm_encoder_parse_of(ptr noundef %drm, ptr nocapture noundef writeonly %encoder, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %drm, ptr noundef %np) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 6
  %0 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %possible_crtcs, align 4
  %possible_clones = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 7
  %1 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %possible_clones, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_drm_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @drm_of_component_probe(ptr noundef %dev, ptr noundef nonnull @compare_of, ptr noundef nonnull @imx_drm_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_platform_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @imx_drm_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_component_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(15) @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.ipu_client_platformdata, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 4
  %cmp1 = icmp eq ptr %7, %data
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @of_node_name_eq(ptr noundef %data, ptr noundef nonnull @.str.2) #5
  br i1 %call2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @of_get_parent(ptr noundef %data) #5
  tail call void @of_node_put(ptr noundef %call4) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %np.0 = phi ptr [ %call4, %if.then3 ], [ %data, %if.end.if.end5_crit_edge ]
  %of_node6 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %8 = ptrtoint ptr %of_node6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node6, align 8
  %cmp7 = icmp eq ptr %9, %np.0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0.in = phi i1 [ %cmp1, %if.then ], [ %cmp7, %if.end5 ]
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_bind(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_dev_alloc(ptr noundef nonnull @imx_drm_driver, ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_width = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 23
  %1 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 24
  %2 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 25
  %3 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 26
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %max_height, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 27
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @imx_drm_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 103
  %6 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @imx_drm_mode_config_helpers, ptr %helper_private, align 4
  %normalize_zpos = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 30, i32 98
  %7 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %normalize_zpos, align 1
  %call9 = tail call i32 @drmm_mode_config_init(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end.err_kms_crit_edge

if.end.err_kms_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_kms

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @drm_vblank_init(ptr noundef %call, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_kms_crit_edge

if.end11.err_kms_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_kms

if.end15:                                         ; preds = %if.end11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %driver_data.i, align 4
  %call16 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_kms_crit_edge

if.end15.err_kms_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_kms

if.end19:                                         ; preds = %if.end15
  tail call void @drm_mode_config_reset(ptr noundef %call) #5
  %9 = load i32, ptr @legacyfb_depth, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 16, label %if.end19.if.end22_crit_edge
    i32 32, label %if.end19.if.end22_crit_edge56
  ]

if.end19.if.end22_crit_edge56:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  store i32 16, ptr @legacyfb_depth, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end19.if.end22_crit_edge, %if.end19.if.end22_crit_edge56
  tail call void @drm_kms_helper_poll_init(ptr noundef %call) #5
  %call23 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %err_poll_fini

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %11 = load i32, ptr @legacyfb_depth, align 4
  tail call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef %11) #5
  br label %cleanup

err_poll_fini:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_kms_helper_poll_fini(ptr noundef %call) #5
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev27, align 4
  tail call void @component_unbind_all(ptr noundef %13, ptr noundef %call) #5
  br label %err_kms

err_kms:                                          ; preds = %err_poll_fini, %if.end15.err_kms_crit_edge, %if.end11.err_kms_crit_edge, %if.end.err_kms_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end.err_kms_crit_edge ], [ %call12, %if.end11.err_kms_crit_edge ], [ %call16, %if.end15.err_kms_crit_edge ], [ %call23, %err_poll_fini ]
  tail call void @drm_dev_put(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_kms, %if.end26, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %err_kms ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_drm_unbind(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %1) #5
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @component_unbind_all(ptr noundef %3, ptr noundef %1) #5
  tail call void @drm_dev_put(ptr noundef %1) #5
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_dumb_create(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %width1 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width1, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, -8
  store i32 %and, ptr %width1, align 4
  %call = tail call i32 @drm_gem_cma_dumb_create(ptr noundef %file_priv, ptr noundef %drm, ptr noundef %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %width1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %width1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_atomic_check(ptr noundef %dev, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_atomic_helper_check(ptr noundef %dev, ptr noundef %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @drm_atomic_helper_check_modeset(ptr noundef %dev, ptr noundef %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @ipu_planes_assign_pre(ptr noundef %dev, ptr noundef %state) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_modeset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_planes_assign_pre(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_drm_atomic_commit_tail(ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %state) #5
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %state, i32 noundef 3) #5
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %state) #5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %num_total_plane68 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 17
  %4 = ptrtoint ptr %num_total_plane68 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_total_plane68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp69 = icmp sgt i32 %5, 0
  br i1 %cmp69, label %for.body.lr.ph, label %if.end37.critedge

for.body.lr.ph:                                   ; preds = %entry
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %plane_disabling.0.off070 = phi i1 [ false, %for.body.lr.ph ], [ %plane_disabling.1.off0, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %7, i32 %i.071
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_planes_state, ptr %7, i32 %i.071, i32 2
  %10 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state, align 4
  %new_state = getelementptr %struct.__drm_planes_state, ptr %7, i32 %i.071, i32 3
  %12 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_state, align 4
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc.i, align 4
  %cmp.i = icmp eq ptr %15, null
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb.i, align 4
  %cmp1.not.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %land.lhs.true.i, label %land.rhs.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true
  br i1 %cmp1.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !70

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 221, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  %crtc24.i = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %crtc24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc24.i, align 4
  %tobool25.not.i = icmp eq ptr %19, null
  br i1 %tobool25.not.i, label %if.end.i.drm_atomic_plane_disabling.exit_crit_edge, label %land.rhs26.i

if.end.i.drm_atomic_plane_disabling.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_atomic_plane_disabling.exit

land.rhs26.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtc.i, align 4
  %tobool28.not.i = icmp eq ptr %21, null
  br label %drm_atomic_plane_disabling.exit

drm_atomic_plane_disabling.exit:                  ; preds = %land.rhs26.i, %if.end.i.drm_atomic_plane_disabling.exit_crit_edge
  %22 = phi i1 [ false, %if.end.i.drm_atomic_plane_disabling.exit_crit_edge ], [ %tobool28.not.i, %land.rhs26.i ]
  %spec.select = select i1 %22, i1 true, i1 %plane_disabling.0.off070
  br label %for.inc

for.inc:                                          ; preds = %drm_atomic_plane_disabling.exit, %for.body.for.inc_crit_edge
  %plane_disabling.1.off0 = phi i1 [ %plane_disabling.0.off070, %for.body.for.inc_crit_edge ], [ %spec.select, %drm_atomic_plane_disabling.exit ]
  %inc = add nuw nsw i32 %i.071, 1
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 17
  %25 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_total_plane, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %1, ptr noundef %state) #5
  br i1 %plane_disabling.1.off0, label %for.cond14.preheader, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

for.cond14.preheader:                             ; preds = %for.end
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  %num_total_plane1773 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 17
  %29 = ptrtoint ptr %num_total_plane1773 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_total_plane1773, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1874 = icmp sgt i32 %30, 0
  br i1 %cmp1874, label %for.cond14.preheader.for.body19_crit_edge, label %for.cond14.preheader.if.end37_crit_edge

for.cond14.preheader.if.end37_crit_edge:          ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

for.cond14.preheader.for.body19_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body19

for.body19:                                       ; preds = %for.inc34.for.body19_crit_edge, %for.cond14.preheader.for.body19_crit_edge
  %i.175 = phi i32 [ %inc35, %for.inc34.for.body19_crit_edge ], [ 0, %for.cond14.preheader.for.body19_crit_edge ]
  %31 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %planes, align 4
  %arrayidx21 = getelementptr %struct.__drm_planes_state, ptr %32, i32 %i.175
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx21, align 4
  %tobool23.not = icmp eq ptr %34, null
  br i1 %tobool23.not, label %for.body19.for.inc34_crit_edge, label %land.lhs.true24

for.body19.for.inc34_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

land.lhs.true24:                                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipu_plane_disable_deferred(ptr noundef nonnull %34) #5
  br label %for.inc34

for.inc34:                                        ; preds = %land.lhs.true24, %for.body19.for.inc34_crit_edge
  %inc35 = add nuw nsw i32 %i.175, 1
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 4
  %num_total_plane17 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 30, i32 17
  %37 = ptrtoint ptr %num_total_plane17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_total_plane17, align 4
  %cmp18 = icmp slt i32 %inc35, %38
  br i1 %cmp18, label %for.inc34.for.body19_crit_edge, label %for.inc34.if.end37_crit_edge

for.inc34.if.end37_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

for.inc34.for.body19_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

if.end37.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %1, ptr noundef %state) #5
  br label %if.end37

if.end37:                                         ; preds = %if.end37.critedge, %for.inc34.if.end37_crit_edge, %for.cond14.preheader.if.end37_crit_edge, %for.end.if.end37_crit_edge
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %state) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_plane_disable_deferred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_drm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__param_legacyfb_depth, !1, !"__param_legacyfb_depth", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_legacyfb_depthtype319, !1, !"__UNIQUE_ID_legacyfb_depthtype319", i1 false, i1 false}
!3 = !{ptr @__ksymtab_imx_drm_connector_destroy, !4, !"__ksymtab_imx_drm_connector_destroy", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 44, i32 1}
!5 = !{ptr @__ksymtab_imx_drm_encoder_parse_of, !6, !"__ksymtab_imx_drm_encoder_parse_of", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 142, i32 1}
!7 = !{ptr @__initcall__kmod_imxdrm__320_346_imx_drm_init6, !8, !"__initcall__kmod_imxdrm__320_346_imx_drm_init6", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 346, i32 1}
!9 = !{ptr @__exitcall_imx_drm_exit, !10, !"__exitcall_imx_drm_exit", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 352, i32 1}
!11 = !{ptr @__UNIQUE_ID_author321, !12, !"__UNIQUE_ID_author321", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 354, i32 1}
!13 = !{ptr @__UNIQUE_ID_description322, !14, !"__UNIQUE_ID_description322", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 355, i32 1}
!15 = !{ptr @__UNIQUE_ID_file323, !16, !"__UNIQUE_ID_file323", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 356, i32 1}
!17 = !{ptr @__UNIQUE_ID_license324, !16, !"__UNIQUE_ID_license324", i1 false, i1 false}
!18 = !{ptr @__param_str_legacyfb_depth, !1, !"__param_str_legacyfb_depth", i1 false, i1 false}
!19 = !{ptr @legacyfb_depth, !20, !"legacyfb_depth", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 34, i32 12}
!21 = !{ptr @drivers, !22, !"drivers", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 337, i32 39}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 331, i32 11}
!25 = !{ptr @imx_drm_pdrv, !26, !"imx_drm_pdrv", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 327, i32 31}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 184, i32 32}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 191, i32 26}
!31 = !{ptr @imx_drm_ops, !32, !"imx_drm_ops", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 282, i32 42}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 244, i32 3}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @imx_drm_bind._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @imx_drm_bind._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 172, i32 12}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 173, i32 12}
!45 = !{ptr @imx_drm_driver, !46, !"imx_drm_driver", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 165, i32 32}
!47 = !{ptr @imx_drm_ioctls, !48, !"imx_drm_ioctls", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 144, i32 36}
!49 = !{ptr @imx_drm_driver_fops, !50, !"imx_drm_driver_fops", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 37, i32 1}
!51 = !{ptr @imx_drm_mode_config_funcs, !52, !"imx_drm_mode_config_funcs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 71, i32 43}
!53 = !{ptr @imx_drm_mode_config_helpers, !54, !"imx_drm_mode_config_helpers", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 116, i32 50}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/drm/drm_atomic_helper.h", i32 220, i32 2}
!57 = !{ptr @imx_drm_dt_ids, !58, !"imx_drm_dt_ids", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 321, i32 34}
!59 = !{ptr @imx_drm_pm_ops, !60, !"imx_drm_pm_ops", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/imx/imx-drm-core.c", i32 319, i32 8}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
