; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/dm355_ccdc.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/dm355_ccdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccdc_hw_device = type { [32 x i8], ptr, %struct.ccdc_hw_ops }
%struct.ccdc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ccdc_oper_config = type { ptr, i32, %struct.ccdc_params_raw, %struct.ccdc_params_ycbcr, ptr }
%struct.ccdc_params_raw = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, %struct.ccdc_gain, i32, i8, i8, %struct.ccdc_config_params_raw }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ccdc_gain = type { i16, i16, i16, i16 }
%struct.ccdc_config_params_raw = type { i32, i32, i32, i32, i8, i32, %struct.ccdc_data_offset, %struct.ccdc_a_law, %struct.ccdc_black_clamp, %struct.ccdc_black_compensation, %struct.ccdc_vertical_dft, %struct.ccdc_csc, %struct.ccdc_col_pat, %struct.ccdc_col_pat }
%struct.ccdc_data_offset = type { i8, i8 }
%struct.ccdc_a_law = type { i8, i32 }
%struct.ccdc_black_clamp = type { i8, i32, i32, i16, i16, i16 }
%struct.ccdc_black_compensation = type { i8, i8, i8, i8 }
%struct.ccdc_vertical_dft = type { i8, i8, i32, %struct.ccdc_dft_corr_ctl, %struct.ccdc_dft_corr_mem_ctl, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32] }
%struct.ccdc_dft_corr_ctl = type { i32, i32, i32 }
%struct.ccdc_dft_corr_mem_ctl = type { i32, i32, i32, i32 }
%struct.ccdc_csc = type { i8, [16 x %struct.ccdc_float] }
%struct.ccdc_float = type { i32, i32 }
%struct.ccdc_col_pat = type { i32, i32, i32, i32 }
%struct.ccdc_params_ycbcr = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i32, i32 }
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
%struct.vpfe_hw_if_param = type { i32, i32, i32 }

@__UNIQUE_ID_file174 = internal constant [58 x i8] c"dm355_ccdc.file=drivers/media/platform/davinci/dm355_ccdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [23 x i8] c"dm355_ccdc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [45 x i8] c"dm355_ccdc.description=CCDC Driver for DM355\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [36 x i8] c"dm355_ccdc.author=Texas Instruments\00", section ".modinfo", align 1
@__initcall__kmod_dm355_ccdc__197_935_dm355_ccdc_driver_init6 = internal global ptr @dm355_ccdc_driver_init, section ".initcall6.init", align 4
@dm355_ccdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dm355_ccdc_probe, ptr @dm355_ccdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dm355_ccdc_driver_exit = internal global ptr @dm355_ccdc_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dm355_ccdc\00", [21 x i8] zeroinitializer }, align 32
@ccdc_hw_dev = internal constant { %struct.ccdc_hw_device, [40 x i8] } { %struct.ccdc_hw_device { [32 x i8] c"DM355 CCDC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.ccdc_hw_ops { ptr @ccdc_open, ptr @ccdc_close, ptr null, ptr @ccdc_enable, ptr null, ptr @ccdc_enable_output_to_sdram, ptr @ccdc_set_hw_if_params, ptr null, ptr @ccdc_configure, ptr @ccdc_set_buftype, ptr @ccdc_get_buftype, ptr @ccdc_set_frame_format, ptr @ccdc_get_frame_format, ptr @ccdc_enum_pix, ptr @ccdc_get_pixel_format, ptr @ccdc_set_pixel_format, ptr @ccdc_set_image_window, ptr @ccdc_get_image_window, ptr @ccdc_get_line_length, ptr @ccdc_setfbaddr, ptr @ccdc_getfid } }, [40 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ccdc_cfg = internal global { %struct.ccdc_oper_config, [164 x i8] } { %struct.ccdc_oper_config { ptr null, i32 0, %struct.ccdc_params_raw { i32 0, i32 0, %struct.v4l2_rect { i32 0, i32 0, i32 640, i32 480 }, i32 0, i32 0, i32 0, i32 0, %struct.ccdc_gain { i16 256, i16 256, i16 256, i16 256 }, i32 0, i8 0, i8 0, %struct.ccdc_config_params_raw { i32 2, i32 0, i32 0, i32 0, i8 0, i32 0, %struct.ccdc_data_offset zeroinitializer, %struct.ccdc_a_law { i8 0, i32 2 }, %struct.ccdc_black_clamp { i8 0, i32 1, i32 0, i16 0, i16 0, i16 25 }, %struct.ccdc_black_compensation zeroinitializer, %struct.ccdc_vertical_dft zeroinitializer, %struct.ccdc_csc zeroinitializer, %struct.ccdc_col_pat { i32 2, i32 3, i32 0, i32 1 }, %struct.ccdc_col_pat { i32 2, i32 3, i32 0, i32 1 } } }, %struct.ccdc_params_ycbcr { i32 2, i32 1, %struct.v4l2_rect { i32 0, i32 0, i32 720, i32 576 }, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0 }, ptr null }, [164 x i8] zeroinitializer }, align 32
@dm355_ccdc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s is registered with vpfe.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm355_ccdc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/davinci/dm355_ccdc.c\00", [52 x i8] zeroinitializer }, align 32
@dm355_ccdc_probe._entry_ptr = internal global ptr @dm355_ccdc_probe._entry, section ".printk_index", align 4
@ccdc_restore_defaults.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.5, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccdc_restore_defaults\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0Astarting ccdc_restore_defaults...\00", [61 x i8] zeroinitializer }, align 32
@ccdc_restore_defaults.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.6, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0Acouldn't select ccdc input source\00", [61 x i8] zeroinitializer }, align 32
@ccdc_restore_defaults.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.7, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0Acouldn't enable ccdc clock\00", [36 x i8] zeroinitializer }, align 32
@ccdc_restore_defaults.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.8, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0AEnd of ccdc_restore_defaults...\00", [63 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccdc_config_raw\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AStarting ccdc_config_raw...\00", [35 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AWriting 0x%x to MODESET...\0A\00", [35 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AWriting 0x%x to GAMMAWD...\0A\00", [35 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.13, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0AWriting %x to COLPTN...\0A\00", [38 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.14, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0AWriting 0x%x to HSIZE...\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.14, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ccdc_config_raw.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.15, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0AWriting %x to SDOFST...\0A\00", [38 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.15, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ccdc_config_raw.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.15, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ccdc_config_raw.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.15, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ccdc_config_raw.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.16, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0Aend of ccdc_config_raw...\00", [37 x i8] zeroinitializer }, align 32
@ccdc_setwin.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ccdc_setwin\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0AStarting ccdc_setwin...\00", [39 x i8] zeroinitializer }, align 32
@ccdc_setwin.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0AEnd of ccdc_setwin...\00", [41 x i8] zeroinitializer }, align 32
@ccdc_write_dfc_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 388, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"defect table write timeout !!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccdc_write_dfc_entry\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccdc_write_dfc_entry._entry_ptr = internal global ptr @ccdc_write_dfc_entry._entry, section ".printk_index", align 4
@ccdc_config_ycbcr.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccdc_config_ycbcr\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0AStarting ccdc_config_ycbcr...\00", [33 x i8] zeroinitializer }, align 32
@ccdc_config_ycbcr.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AEnd of ccdc_config_ycbcr...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_raw_bayer_pix_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 825770306, i32 844257602], [24 x i8] zeroinitializer }, align 32
@ccdc_raw_yuv_pix_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1498831189, i32 1448695129], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 825770306, i64 844257602]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"dm355_ccdc_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 927, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 929, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"ccdc_hw_dev\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 835, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"ccdc_cfg\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 45, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 904, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 156, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 176, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 181, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 184, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 515, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 564, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 586, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 611, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 631, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 650, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 671, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 212, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 246, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 388, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 256, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 308, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"ccdc_raw_bayer_pix_formats\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 101, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [25 x i8] c"ccdc_raw_yuv_pix_formats\00", align 1
@___asan_gen_.130 = private constant [47 x i8] c"../drivers/media/platform/davinci/dm355_ccdc.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 105, i32 12 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_dm355_ccdc_driver_exit, ptr @__initcall__kmod_dm355_ccdc__197_935_dm355_ccdc_driver_init6, ptr @ccdc_write_dfc_entry._entry, ptr @ccdc_write_dfc_entry._entry_ptr, ptr @dm355_ccdc_driver_exit, ptr @dm355_ccdc_probe._entry, ptr @dm355_ccdc_probe._entry_ptr, ptr @dm355_ccdc_driver, ptr @.str, ptr @ccdc_hw_dev, ptr @ccdc_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ccdc_raw_bayer_pix_formats, ptr @ccdc_raw_yuv_pix_formats], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm355_ccdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_hw_dev to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_cfg to i32), i32 700, i32 864, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm355_ccdc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_write_dfc_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_raw_bayer_pix_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_raw_yuv_pix_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm355_ccdc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dm355_ccdc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm355_ccdc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @dm355_ccdc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm355_ccdc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vpfe_register_ccdc_device(ptr noundef nonnull @ccdc_hw_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.fail_nores_crit_edge, label %if.end3

if.end.fail_nores_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_nores

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %name = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call5 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef %add.i, ptr noundef %5, i32 noundef 0) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.fail_nores_crit_edge, label %if.end8

if.end3.fail_nores_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_nores

if.end8:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call5, align 4
  %end.i39 = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i39, align 4
  %sub.i40 = sub i32 1, %7
  %add.i41 = add i32 %sub.i40, %9
  %call11 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %add.i41) #8
  store ptr %call11, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end8.fail_nomem_crit_edge, label %if.end14

if.end8.fail_nomem_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_nomem

if.end14:                                         ; preds = %if.end8
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data, align 8
  %cmp15 = icmp eq ptr %11, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %call11) #8
  br label %fail_nomem

if.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void %11() #8
  store ptr %dev, ptr @ccdc_cfg, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @ccdc_hw_dev) #11
  br label %cleanup

fail_nomem:                                       ; preds = %if.then16, %if.end8.fail_nomem_crit_edge
  %status.0 = phi i32 [ -19, %if.then16 ], [ -12, %if.end8.fail_nomem_crit_edge ]
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call5, align 4
  %14 = ptrtoint ptr %end.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i39, align 4
  %sub.i43 = sub i32 1, %13
  %add.i44 = add i32 %sub.i43, %15
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %add.i44) #8
  br label %fail_nores

fail_nores:                                       ; preds = %fail_nomem, %if.end3.fail_nores_crit_edge, %if.end.fail_nores_crit_edge
  %status.1 = phi i32 [ %status.0, %fail_nomem ], [ -19, %if.end.fail_nores_crit_edge ], [ -16, %if.end3.fail_nores_crit_edge ]
  tail call void @vpfe_unregister_ccdc_device(ptr noundef nonnull @ccdc_hw_dev) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_nores, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %fail_nores ], [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm355_ccdc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  tail call void @iounmap(ptr noundef %0) #8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %add.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @vpfe_unregister_ccdc_device(ptr noundef nonnull @ccdc_hw_dev) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpfe_register_ccdc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpfe_unregister_ccdc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_open(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ccdc_restore_defaults()
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_close(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vpss_enable_clock(i32 noundef 0, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccdc_enable(i32 noundef %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !101
  %and = and i32 %1, -2
  %and1 = and i32 %en, 1
  %or = or i32 %and, %and1
  %2 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %or) #8, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccdc_enable_output_to_sdram(i32 noundef %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !101
  %and = and i32 %1, -3
  %shl = shl i32 %en, 1
  %and1 = and i32 %shl, 2
  %or = or i32 %and, %and1
  %2 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %or) #8, !srcloc !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_hw_if_params(ptr nocapture noundef readonly %params) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  %2 = load i32, ptr %params, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.return_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge5
    i32 3, label %entry.sw.bb_crit_edge6
  ]

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6
  %vdpol = getelementptr inbounds %struct.vpfe_hw_if_param, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %vdpol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vdpol, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 4), align 4
  %hdpol = getelementptr inbounds %struct.vpfe_hw_if_param, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %hdpol to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdpol, align 4
  store i32 %7, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 5), align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_configure() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @ccdc_config_raw()
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ccdc_config_ycbcr()
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_buftype(i32 noundef %buf_type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %. = select i1 %cmp, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 6), ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 8)
  %1 = ptrtoint ptr %. to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %buf_type, ptr %., align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_get_buftype() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %.val = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 6), align 4
  %.val1 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 8), align 4
  %retval.0 = select i1 %cmp, i32 %.val, i32 %.val1
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_frame_format(i32 noundef %frm_fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %. = select i1 %cmp, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 1)
  %1 = ptrtoint ptr %. to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %frm_fmt, ptr %., align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_get_frame_format() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %.val = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  %.val1 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 1), align 4
  %retval.0 = select i1 %cmp, i32 %.val, i32 %.val1
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_enum_pix(ptr nocapture noundef writeonly %pix, i32 noundef %i) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i)
  %cmp1 = icmp ult i32 %i, 2
  br i1 %cmp1, label %if.end7.sink.split, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %ccdc_raw_bayer_pix_formats.ccdc_raw_yuv_pix_formats = select i1 %cmp, ptr @ccdc_raw_bayer_pix_formats, ptr @ccdc_raw_yuv_pix_formats
  %arrayidx5 = getelementptr [2 x i32], ptr %ccdc_raw_bayer_pix_formats.ccdc_raw_yuv_pix_formats, i32 0, i32 %i
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx5, align 4
  %3 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pix, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %if.end7.sink.split ], [ -22, %entry.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_get_pixel_format() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 844257602, i32 825770306
  br label %if.end7

if.else2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3 = icmp eq i32 %2, 0
  %.8 = select i1 %cmp3, i32 1448695129, i32 1498831189
  br label %if.end7

if.end7:                                          ; preds = %if.else2, %if.then
  %pixfmt.0 = phi i32 [ %., %if.then ], [ %.8, %if.else2 ]
  ret i32 %pixfmt.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_pixel_format(i32 noundef %pixfmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  store i32 0, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2), align 4
  %1 = zext i32 %pixfmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %pixfmt, label %if.then.cleanup_crit_edge [
    i32 825770306, label %if.then2
    i32 844257602, label %if.then.if.end15_crit_edge
  ]

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  store i8 1, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 7), align 4
  br label %if.end15

if.else6:                                         ; preds = %entry
  %2 = zext i32 %pixfmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %pixfmt, label %if.else6.cleanup_crit_edge [
    i32 1448695129, label %if.then8
    i32 1498831189, label %if.then11
  ]

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  store i32 0, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 7), align 4
  br label %if.end15

if.then11:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 7), align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then8, %if.then2, %if.then.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.else6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_image_window(ptr nocapture noundef readonly %win) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = call ptr @memcpy(ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), ptr %win, i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memcpy(ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2), ptr %win, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ccdc_get_image_window(ptr nocapture noundef writeonly %win) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = call ptr @memcpy(ptr %win, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memcpy(ptr %win, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2), i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_get_line_length() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp1 = icmp eq i32 %2, 7
  br i1 %cmp1, label %lor.lhs.false.if.then3_crit_edge, label %if.else

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %mul = shl i32 %4, 1
  br label %if.end6

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %mul5 = shl i32 %5, 1
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.else, %if.then3
  %len.0 = phi i32 [ %3, %if.then3 ], [ %mul, %if.else ], [ %mul5, %if.else4 ]
  %add = add i32 %len.0, 31
  %and = and i32 %add, -32
  ret i32 %and
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccdc_setfbaddr(i32 noundef %addr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %addr, 21
  %and = and i32 %shr, 127
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #8, !srcloc !102
  %shr1 = lshr i32 %addr, 5
  %and2 = and i32 %shr1, 65535
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %and2) #8, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_getfid() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !101
  %shr = lshr i32 %1, 15
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccdc_restore_defaults() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_restore_defaults, %if.then)) #8
          to label %for.body [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_restore_defaults.__UNIQUE_ID_ddebug178, ptr noundef %0, ptr noundef nonnull @.str.5) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then, %entry
  %i.079 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %i.079
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !102
  %add = add nuw nsw i32 %i.079, 4
  %cmp = icmp ult i32 %i.079, 345
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %2 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i70 = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 512) #8, !srcloc !102
  %3 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i71 = getelementptr i8, ptr %3, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 65535) #8, !srcloc !102
  %4 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i72 = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 255) #8, !srcloc !102
  store i16 256, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7), align 4
  store i16 256, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 2), align 4
  store i16 256, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 1), align 2
  store i16 256, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 3), align 2
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 256) #8, !srcloc !102
  %6 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 1), align 2
  %conv1.i = zext i16 %6 to i32
  %7 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %conv1.i) #8, !srcloc !102
  %8 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 2), align 4
  %conv2.i = zext i16 %8 to i32
  %9 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i5.i = getelementptr i8, ptr %9, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %conv2.i) #8, !srcloc !102
  %10 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 3), align 2
  %conv3.i = zext i16 %10 to i32
  %11 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i6.i = getelementptr i8, ptr %11, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %conv3.i) #8, !srcloc !102
  %12 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8), align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %13, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %12) #8, !srcloc !102
  %14 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i73 = getelementptr i8, ptr %14, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 16383) #8, !srcloc !102
  %15 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i74 = getelementptr i8, ptr %15, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 14) #8, !srcloc !102
  %call3 = tail call i32 @vpss_select_ccdc_source(i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end22, label %do.body6

do.body6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_restore_defaults, %if.then18)) #8
          to label %cleanup [label %if.then18], !srcloc !103

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_restore_defaults.__UNIQUE_ID_ddebug179, ptr noundef %16, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %call23 = tail call i32 @vpss_enable_clock(i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.body26, label %do.body43

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_restore_defaults, %if.then38)) #8
          to label %cleanup [label %if.then38], !srcloc !103

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_restore_defaults.__UNIQUE_ID_ddebug180, ptr noundef %17, ptr noundef nonnull @.str.7) #8
  br label %cleanup

do.body43:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_restore_defaults, %if.then55)) #8
          to label %cleanup [label %if.then55], !srcloc !103

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_restore_defaults.__UNIQUE_ID_ddebug181, ptr noundef %18, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.body43, %if.then38, %do.body26, %if.then18, %do.body6
  %retval.0 = phi i32 [ -14, %if.then18 ], [ -14, %if.then38 ], [ 0, %if.then55 ], [ -14, %do.body6 ], [ -14, %do.body26 ], [ 0, %do.body43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpss_select_ccdc_source(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpss_enable_clock(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccdc_config_raw() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug186, ptr noundef %0, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @ccdc_restore_defaults()
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32768) #8, !srcloc !102
  %2 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 4), align 4
  %and = shl i32 %2, 2
  %shl = and i32 %and, 4
  %3 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 5), align 4
  %and4 = shl i32 %3, 3
  %shl5 = and i32 %and4, 8
  %or = or i32 %shl5, %shl
  %4 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 3), align 4
  %and6 = shl i32 %4, 4
  %shl7 = and i32 %and6, 16
  %or8 = or i32 %or, %shl7
  %5 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  %and9 = shl i32 %5, 7
  %shl10 = and i32 %and9, 128
  %or11 = or i32 %or8, %shl10
  %6 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2), align 4
  %and12 = shl i32 %6, 12
  %shl13 = and i32 %and12, 12288
  %or14 = or i32 %or11, %shl13
  %7 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp = icmp eq i32 %7, 7
  br i1 %cmp, label %do.end.if.then17_crit_edge, label %lor.lhs.false

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %do.end
  %8 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %do.end.if.then17_crit_edge
  %or18 = or i32 %or14, 2048
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %lor.lhs.false.if.end19_crit_edge
  %val.0 = phi i32 [ %or18, %if.then17 ], [ %or14, %lor.lhs.false.if.end19_crit_edge ]
  %9 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not = icmp eq i8 %9, 0
  %10 = and i8 %9, 1
  %and24 = zext i8 %10 to i32
  %shl25 = shl nuw nsw i32 %and24, 14
  %or26 = select i1 %tobool20.not, i32 0, i32 %shl25
  %11 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11), align 4
  %and28 = shl i32 %11, 8
  %shl29 = and i32 %and28, 1792
  %val.1 = or i32 %shl29, %val.0
  %or30 = or i32 %val.1, %or26
  %12 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i355 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i355, i32 %or30) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then43)) #8
          to label %do.end46 [label %if.then43], !srcloc !103

if.then43:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug187, ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %or30) #8
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %if.end19
  %14 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 5), align 4
  %and47 = and i32 %14, 16383
  %15 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i356 = getelementptr i8, ptr %15, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356, i32 %and47) #8, !srcloc !102
  %16 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool50.not = icmp eq i8 %16, 0
  br i1 %tobool50.not, label %do.end46.if.end57_crit_edge, label %if.then51

do.end46.if.end57_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then51:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 7, i32 1), align 4
  %and53 = shl i32 %17, 2
  %shl54 = and i32 %and53, 20
  %or56 = or i32 %shl54, 9
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %do.end46.if.end57_crit_edge
  %val.2 = phi i32 [ %or56, %if.then51 ], [ 8, %do.end46.if.end57_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 2), align 4
  %shl58 = shl i32 %18, 10
  %19 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 3), align 4
  %shl59 = shl i32 %19, 8
  %or60 = or i32 %shl58, %val.2
  %or61 = or i32 %or60, %shl59
  %20 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i357 = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i357, i32 %or61) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then74)) #8
          to label %do.end77 [label %if.then74], !srcloc !103

if.then74:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug188, ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef %or61) #8
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %if.end57
  %22 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  tail call fastcc void @ccdc_setwin(ptr noundef getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), i32 noundef %22, i32 noundef 1)
  %23 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 8, i32 5), align 4
  %25 = and i16 %24, 16383
  %and.i = zext i16 %25 to i32
  %26 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and.i) #8, !srcloc !102
  %27 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #8, !srcloc !102
  br label %ccdc_config_black_clamp.exit

if.end.i:                                         ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  %28 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 8, i32 3), align 4
  %29 = and i16 %28, 8191
  %30 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 8, i32 1), align 4
  %and3.i = shl i32 %30, 13
  %shl.i = and i32 %and3.i, 24576
  %31 = or i16 %29, -32768
  %or.i = zext i16 %31 to i32
  %or4.i = or i32 %shl.i, %or.i
  %32 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %32, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or4.i) #8, !srcloc !102
  %33 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 8, i32 2), align 4
  %and5.i = shl i32 %33, 14
  %shl6.i = and i32 %and5.i, 49152
  %34 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i3.i = getelementptr i8, ptr %34, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %shl6.i) #8, !srcloc !102
  br label %ccdc_config_black_clamp.exit

ccdc_config_black_clamp.exit:                     ; preds = %if.end.i, %if.then.i
  %35 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 9, i32 2), align 2
  %conv.i = zext i8 %35 to i32
  %36 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 9, i32 3), align 1
  %conv1.i = zext i8 %36 to i32
  %shl.i358 = shl nuw nsw i32 %conv1.i, 8
  %or.i359 = or i32 %shl.i358, %conv.i
  %37 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i360 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i360, i32 %or.i359) #8, !srcloc !102
  %38 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 9, i32 1), align 1
  %conv3.i = zext i8 %38 to i32
  %39 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 9), align 4
  %conv6.i = zext i8 %39 to i32
  %shl8.i = shl nuw nsw i32 %conv6.i, 8
  %or9.i = or i32 %shl8.i, %conv3.i
  %40 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i1.i361 = getelementptr i8, ptr %40, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i361, i32 %or9.i) #8, !srcloc !102
  %41 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 1), align 1
  %42 = and i8 %41, 1
  %and.i362 = zext i8 %42 to i32
  %43 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i363 = icmp eq i8 %43, 0
  br i1 %tobool.not.i363, label %if.then.i365, label %if.end.i366

if.then.i365:                                     ; preds = %ccdc_config_black_clamp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %44 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i364 = getelementptr i8, ptr %44, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i364, i32 %and.i362) #8, !srcloc !102
  br label %if.end83

if.end.i366:                                      ; preds = %ccdc_config_black_clamp.exit
  %45 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %45)
  %cmp.i = icmp sgt i32 %45, 16
  br i1 %cmp.i, label %if.end.i366.cleanup_crit_edge, label %if.end3.i

if.end.i366.cleanup_crit_edge:                    ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i366
  %46 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 3), align 4
  %and4.i = shl i32 %46, 5
  %shl.i367 = and i32 %and4.i, 96
  %or5.i = or i32 %shl.i367, %and.i362
  %47 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 3, i32 1), align 4
  %and7.i = shl i32 %47, 7
  %shl8.i368 = and i32 %and7.i, 128
  %or9.i369 = or i32 %or5.i, %shl8.i368
  %48 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 3, i32 2), align 4
  %and11.i = shl i32 %48, 8
  %shl12.i = and i32 %and11.i, 768
  %or13.i = or i32 %or9.i369, %shl12.i
  %49 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i1.i370 = getelementptr i8, ptr %49, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i370, i32 %or13.i) #8, !srcloc !102
  %50 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp158.i = icmp sgt i32 %50, 0
  br i1 %cmp158.i, label %if.end3.i.for.body.i_crit_edge, label %if.end3.i.for.end.i_crit_edge

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

for.cond.i:                                       ; preds = %while.end.i.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %51 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 5), align 4
  %cmp15.i = icmp slt i32 %inc.i, %51
  br i1 %cmp15.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end3.i.for.body.i_crit_edge ]
  %val.09.i = phi i32 [ %spec.select.i, %for.cond.i.for.body.i_crit_edge ], [ 4, %if.end3.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.010.i)
  %cmp17.not.i = icmp eq i32 %i.010.i, 0
  %spec.select.i = select i1 %cmp17.not.i, i32 %val.09.i, i32 0
  %52 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i2.i371 = getelementptr i8, ptr %52, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i371, i32 %spec.select.i) #8, !srcloc !102
  %arrayidx.i.i = getelementptr %struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 7, i32 %i.010.i
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %55 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %54) #8, !srcloc !102
  %arrayidx1.i.i = getelementptr %struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 6, i32 %i.010.i
  %56 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx1.i.i, align 4
  %58 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %58, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %57) #8, !srcloc !102
  %arrayidx2.i.i = getelementptr %struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 8, i32 %i.010.i
  %59 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx2.i.i, align 4
  %61 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %61, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %60) #8, !srcloc !102
  %arrayidx3.i.i = getelementptr %struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 9, i32 %i.010.i
  %62 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx3.i.i, align 4
  %64 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %64, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 %63) #8, !srcloc !102
  %arrayidx4.i.i = getelementptr %struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 10, i32 %i.010.i
  %65 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx4.i.i, align 4
  %67 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %67, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %66) #8, !srcloc !102
  %68 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %68, i32 288
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #8, !srcloc !101
  %or.i.i = or i32 %69, 1
  %70 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %70, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %or.i.i) #8, !srcloc !102
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body.i
  %count.0.i.i = phi i32 [ 1000, %for.body.i ], [ %dec.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %71 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %71, i32 288
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i.i) #8, !srcloc !101
  %and.i.i = and i32 %72, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %dec.i.i = add i32 %count.0.i.i, -1
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i.i)
  %tobool6.not.i.i = icmp eq i32 %count.0.i.i, 0
  br i1 %tobool6.not.i.i, label %for.cond.i, label %ccdc_write_dfc_entry.exit.thread.i

ccdc_write_dfc_entry.exit.thread.i:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.20) #11
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end3.i.for.end.i_crit_edge
  %74 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 10, i32 2), align 4
  %and25.i = and i32 %74, 16383
  %75 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i3.i372 = getelementptr i8, ptr %75, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i372, i32 %and25.i) #8, !srcloc !102
  %76 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %76, i32 280
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #8, !srcloc !101
  %or27.i = or i32 %77, 16
  %78 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i5.i = getelementptr i8, ptr %78, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %or27.i) #8, !srcloc !102
  br label %if.end83

if.end83:                                         ; preds = %for.end.i, %if.then.i365
  %79 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 11), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i374 = icmp eq i8 %79, 0
  br i1 %tobool.not.i374, label %if.end83.ccdc_config_csc.exit_crit_edge, label %if.end.i376

if.end83.ccdc_config_csc.exit_crit_edge:          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccdc_config_csc.exit

if.end.i376:                                      ; preds = %if.end83
  %80 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i375 = getelementptr i8, ptr %80, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i375, i32 1) #8, !srcloc !102
  br label %for.body.i380

for.body.i380:                                    ; preds = %for.inc.i.for.body.i380_crit_edge, %if.end.i376
  %i.06.i = phi i32 [ 0, %if.end.i376 ], [ %inc.i382, %for.inc.i.for.body.i380_crit_edge ]
  %val1.05.i = phi i32 [ 0, %if.end.i376 ], [ %val1.1.i, %for.inc.i.for.body.i380_crit_edge ]
  %81 = and i32 %i.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp1.i = icmp eq i32 %81, 0
  %arrayidx.i = getelementptr %struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 11, i32 1, i32 %i.06.i
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  %and.i377 = shl i32 %83, 5
  %shl.i378 = and i32 %and.i377, 224
  %decimal.i = getelementptr %struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 11, i32 1, i32 %i.06.i, i32 1
  %84 = ptrtoint ptr %decimal.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %decimal.i, align 4
  %.tr4.i = trunc i32 %85 to i16
  %86 = shl i16 %.tr4.i, 5
  %div.lhs.trunc.i = and i16 %86, 992
  %div2.i = udiv i16 %div.lhs.trunc.i, 100
  %div.zext.i = zext i16 %div2.i to i32
  %or.i379 = or i32 %shl.i378, %div.zext.i
  br i1 %cmp1.i, label %for.body.i380.for.inc.i_crit_edge, label %if.else.i

for.body.i380.for.inc.i_crit_edge:                ; preds = %for.body.i380
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i380
  call void @__sanitizer_cov_trace_pc() #10
  %shl18.i = shl nuw nsw i32 %or.i379, 8
  %or19.i = or i32 %shl18.i, %val1.05.i
  %sub.i = shl nuw i32 %i.06.i, 1
  %add.i = add nuw nsw i32 %sub.i, 314
  %87 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i1.i381 = getelementptr i8, ptr %87, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i381, i32 %or19.i) #8, !srcloc !102
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i380.for.inc.i_crit_edge
  %val1.1.i = phi i32 [ %val1.05.i, %if.else.i ], [ %or.i379, %for.body.i380.for.inc.i_crit_edge ]
  %inc.i382 = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i382, 16
  br i1 %exitcond.not.i, label %for.inc.i.ccdc_config_csc.exit_crit_edge, label %for.inc.i.for.body.i380_crit_edge

for.inc.i.for.body.i380_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i380

for.inc.i.ccdc_config_csc.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ccdc_config_csc.exit

ccdc_config_csc.exit:                             ; preds = %for.inc.i.ccdc_config_csc.exit_crit_edge, %if.end83.ccdc_config_csc.exit_crit_edge
  %88 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 12), align 4
  %89 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 12, i32 1), align 4
  %shl.i383 = shl i32 %89, 2
  %or.i384 = or i32 %shl.i383, %88
  %90 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 12, i32 2), align 4
  %shl1.i = shl i32 %90, 4
  %or2.i = or i32 %or.i384, %shl1.i
  %91 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 12, i32 3), align 4
  %shl3.i = shl i32 %91, 6
  %or4.i385 = or i32 %or2.i, %shl3.i
  %92 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 13), align 4
  %shl6.i386 = shl i32 %92, 8
  %or7.i = or i32 %or4.i385, %shl6.i386
  %93 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 13, i32 1), align 4
  %shl9.i = shl i32 %93, 10
  %or10.i = or i32 %or7.i, %shl9.i
  %94 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 13, i32 2), align 4
  %shl12.i387 = shl i32 %94, 12
  %or13.i388 = or i32 %or10.i, %shl12.i387
  %95 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 13, i32 3), align 4
  %shl15.i = shl i32 %95, 14
  %or16.i = or i32 %or13.i388, %shl15.i
  %96 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i389 = getelementptr i8, ptr %96, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i389, i32 %or16.i) #8, !srcloc !102
  %97 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7), align 4
  %conv.i390 = zext i16 %97 to i32
  %98 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i391 = getelementptr i8, ptr %98, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i391, i32 %conv.i390) #8, !srcloc !102
  %99 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 1), align 2
  %conv1.i392 = zext i16 %99 to i32
  %100 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i393 = getelementptr i8, ptr %100, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i393, i32 %conv1.i392) #8, !srcloc !102
  %101 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 2), align 4
  %conv2.i = zext i16 %101 to i32
  %102 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i5.i394 = getelementptr i8, ptr %102, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i394, i32 %conv2.i) #8, !srcloc !102
  %103 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7, i32 3), align 2
  %conv3.i395 = zext i16 %103 to i32
  %104 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i6.i = getelementptr i8, ptr %104, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %conv3.i395) #8, !srcloc !102
  %105 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8), align 4
  %106 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %106, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %105) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then96)) #8
          to label %do.end99 [label %if.then96], !srcloc !103

if.then96:                                        ; preds = %ccdc_config_csc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %107 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug189, ptr noundef %107, ptr noundef nonnull @.str.13, i32 noundef %or61) #8
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %ccdc_config_csc.exit
  %108 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 6), align 4
  %conv100 = zext i8 %108 to i32
  %109 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 6, i32 1), align 1
  %conv104 = zext i8 %109 to i32
  %shl106 = shl nuw nsw i32 %conv104, 8
  %or107 = or i32 %shl106, %conv100
  %110 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i396 = getelementptr i8, ptr %110, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i396, i32 %or107) #8, !srcloc !102
  %111 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 9), align 4
  %112 = and i8 %111, 1
  %and109 = zext i8 %112 to i32
  %shl110 = shl nuw nsw i32 %and109, 12
  %113 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %113)
  %cmp112 = icmp eq i32 %113, 7
  br i1 %cmp112, label %do.end99.if.then119_crit_edge, label %lor.lhs.false114

do.end99.if.then119_crit_edge:                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

lor.lhs.false114:                                 ; preds = %do.end99
  %114 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 11, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool118.not = icmp eq i8 %114, 0
  br i1 %tobool118.not, label %if.else, label %lor.lhs.false114.if.then119_crit_edge

lor.lhs.false114.if.then119_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then119

if.then119:                                       ; preds = %lor.lhs.false114.if.then119_crit_edge, %do.end99.if.then119_crit_edge
  %115 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then135)) #8
          to label %if.end172 [label %if.then135], !srcloc !103

if.then135:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %116 = load ptr, ptr @ccdc_cfg, align 4
  %117 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %add138 = add i32 %117, 31
  %shr139 = lshr i32 %add138, 5
  %and140 = and i32 %shr139, 4095
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug190, ptr noundef %116, ptr noundef nonnull @.str.14, i32 noundef %and140) #8
  br label %if.end172

if.else:                                          ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #10
  %118 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %mul = shl i32 %118, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then162)) #8
          to label %if.end172 [label %if.then162], !srcloc !103

if.then162:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %119 = load ptr, ptr @ccdc_cfg, align 4
  %120 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %mul165 = shl i32 %120, 1
  %add166 = add i32 %mul165, 31
  %shr167 = lshr i32 %add166, 5
  %and168 = and i32 %shr167, 4095
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug191, ptr noundef %119, ptr noundef nonnull @.str.14, i32 noundef %and168) #8
  br label %if.end172

if.end172:                                        ; preds = %if.then162, %if.else, %if.then135, %if.then119
  %and121.pn.in.in.in = phi i32 [ %115, %if.then135 ], [ %mul, %if.then162 ], [ %115, %if.then119 ], [ %mul, %if.else ]
  %and121.pn.in.in = add i32 %and121.pn.in.in.in, 31
  %and121.pn.in = lshr i32 %and121.pn.in.in, 5
  %and121.pn = and i32 %and121.pn.in, 4095
  %val.3 = or i32 %and121.pn, %shl110
  %121 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i397 = getelementptr i8, ptr %121, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i397, i32 %val.3) #8, !srcloc !102
  %122 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %122, label %if.end172.do.body257_crit_edge [
    i32 1, label %if.then176
    i32 0, label %if.then217
  ]

if.end172.do.body257_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body257

if.then176:                                       ; preds = %if.end172
  %124 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 10), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool177.not = icmp eq i8 %124, 0
  %125 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i399 = getelementptr i8, ptr %125, i32 56
  br i1 %tobool177.not, label %if.else195, label %if.then178

if.then178:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 19309) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then191)) #8
          to label %do.body257 [label %if.then191], !srcloc !103

if.then191:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #10
  %126 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug192, ptr noundef %126, ptr noundef nonnull @.str.15, i32 noundef 19309) #8
  br label %do.body257

if.else195:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 2925) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then208)) #8
          to label %do.body257 [label %if.then208], !srcloc !103

if.then208:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #10
  %127 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug193, ptr noundef %127, ptr noundef nonnull @.str.15, i32 noundef 2925) #8
  br label %do.body257

if.then217:                                       ; preds = %if.end172
  %128 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 10), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool219.not = icmp eq i8 %128, 0
  %129 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i401 = getelementptr i8, ptr %129, i32 56
  br i1 %tobool219.not, label %if.else237, label %if.then220

if.then220:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 16384) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then233)) #8
          to label %do.body257 [label %if.then233], !srcloc !103

if.then233:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #10
  %130 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug194, ptr noundef %130, ptr noundef nonnull @.str.15, i32 noundef 16384) #8
  br label %do.body257

if.else237:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 0) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then250)) #8
          to label %do.body257 [label %if.then250], !srcloc !103

if.then250:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #10
  %131 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug195, ptr noundef %131, ptr noundef nonnull @.str.15, i32 noundef 0) #8
  br label %do.body257

do.body257:                                       ; preds = %if.then250, %if.else237, %if.then233, %if.then220, %if.then208, %if.else195, %if.then191, %if.then178, %if.end172.do.body257_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then269)) #8
          to label %cleanup [label %if.then269], !srcloc !103

if.then269:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #10
  %132 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug196, ptr noundef %132, ptr noundef nonnull @.str.16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then269, %do.body257, %ccdc_write_dfc_entry.exit.thread.i, %if.end.i366.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then269 ], [ 0, %do.body257 ], [ -14, %if.end.i366.cleanup_crit_edge ], [ -14, %ccdc_write_dfc_entry.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_config_ycbcr() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_ycbcr, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_ycbcr.__UNIQUE_ID_ddebug184, ptr noundef %0, ptr noundef nonnull @.str.25) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @ccdc_restore_defaults()
  %1 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3), align 4
  %and = shl i32 %1, 12
  %shl = and i32 %and, 12288
  %2 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 1), align 4
  %and4 = shl i32 %2, 7
  %shl5 = and i32 %and4, 128
  %or = or i32 %shl5, %shl
  %3 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 3) #8, !srcloc !102
  %or8 = or i32 %or, 4
  br label %if.end18

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 3), align 4
  %and9 = shl i32 %5, 4
  %shl10 = and i32 %and9, 16
  %6 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 5), align 4
  %and11 = shl i32 %6, 3
  %shl12 = and i32 %and11, 8
  %7 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 4), align 4
  %and14 = shl i32 %7, 2
  %shl15 = and i32 %and14, 4
  %or13 = or i32 %shl10, %or
  %or16 = or i32 %or13, %shl12
  %or17 = or i32 %or16, %shl15
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then7
  %temp.0 = phi i32 [ %or8, %if.then7 ], [ %or17, %if.else ]
  %or19 = or i32 %temp.0, 2048
  %8 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i60 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %or19) #8, !srcloc !102
  %9 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 1), align 4
  tail call fastcc void @ccdc_setwin(ptr noundef getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2), i32 noundef %9, i32 noundef 2)
  %10 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 7), align 4
  %shl21 = shl i32 %10, 11
  %or22 = or i32 %shl21, 32832
  %11 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i61 = getelementptr i8, ptr %11, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %or22) #8, !srcloc !102
  %12 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %mul = shl i32 %12, 1
  %add = add i32 %mul, 31
  %shr = lshr i32 %add, 5
  %13 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i62 = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %shr) #8, !srcloc !102
  %14 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then24, label %if.end18.do.body26_crit_edge

if.end18.do.body26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i63 = getelementptr i8, ptr %15, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 585) #8, !srcloc !102
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %if.end18.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_ycbcr, %if.then38)) #8
          to label %do.end41 [label %if.then38], !srcloc !103

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %16 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_ycbcr.__UNIQUE_ID_ddebug185, ptr noundef %16, ptr noundef nonnull @.str.26) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_setwin(ptr nocapture noundef readonly %image_win, i32 noundef %frm_fmt, i32 noundef %ppc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_setwin.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_setwin, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_setwin.__UNIQUE_ID_ddebug182, ptr noundef %0, ptr noundef nonnull @.str.18) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = ptrtoint ptr %image_win to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %image_win, align 4
  %sub = add i32 %ppc, -1
  %shl = shl i32 %2, %sub
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %shl4 = shl i32 %4, %sub
  %sub5 = add i32 %shl4, -1
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shl) #8, !srcloc !102
  %6 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i50 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %sub5) #8, !srcloc !102
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frm_fmt)
  %cmp = icmp eq i32 %frm_fmt, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %shr = lshr i32 %10, 1
  %shr8 = ashr i32 %8, 1
  %add = add nsw i32 %shr8, 1
  %11 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i51 = getelementptr i8, ptr %11, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %add) #8, !srcloc !102
  br label %if.end14

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %add9 = add i32 %8, 1
  %height10 = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 3
  %12 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height10, align 4
  %div46 = lshr i32 %13, 1
  %add13 = add i32 %div46, %add9
  %14 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i52 = getelementptr i8, ptr %14, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %add9) #8, !srcloc !102
  %15 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i53 = getelementptr i8, ptr %15, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %add13) #8, !srcloc !102
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  %vert_nr_lines.0.in = phi i32 [ %shr, %if.then6 ], [ %13, %if.else ]
  %vert_start.0 = phi i32 [ %add, %if.then6 ], [ %add9, %if.else ]
  %vert_nr_lines.0 = add i32 %vert_nr_lines.0.in, 32767
  %and = and i32 %vert_start.0, 32767
  %16 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i54 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %and) #8, !srcloc !102
  %17 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i55 = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %and) #8, !srcloc !102
  %and16 = and i32 %vert_nr_lines.0, 32767
  %18 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i56 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %and16) #8, !srcloc !102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_setwin.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_setwin, %if.then29)) #8
          to label %do.end32 [label %if.then29], !srcloc !103

if.then29:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_setwin.__UNIQUE_ID_ddebug183, ptr noundef %19, ptr noundef nonnull @.str.19) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %if.end14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !56, !58, !60, !62, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__UNIQUE_ID_file174, !1, !"__UNIQUE_ID_file174", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_license175, !1, !"__UNIQUE_ID_license175", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description176, !4, !"__UNIQUE_ID_description176", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 32, i32 1}
!5 = !{ptr @__UNIQUE_ID_author177, !6, !"__UNIQUE_ID_author177", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 33, i32 1}
!7 = !{ptr @__initcall__kmod_dm355_ccdc__197_935_dm355_ccdc_driver_init6, !8, !"__initcall__kmod_dm355_ccdc__197_935_dm355_ccdc_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 935, i32 1}
!9 = !{ptr @__exitcall_dm355_ccdc_driver_exit, !8, !"__exitcall_dm355_ccdc_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 929, i32 11}
!12 = !{ptr @dm355_ccdc_driver, !13, !"dm355_ccdc_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 927, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 904, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dm355_ccdc_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @dm355_ccdc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ccdc_hw_dev, !21, !"ccdc_hw_dev", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 835, i32 36}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 156, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug178, !23, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 176, i32 3}
!28 = !{ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug179, !27, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 181, i32 3}
!31 = !{ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug180, !30, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 184, i32 2}
!34 = !{ptr @ccdc_restore_defaults.__UNIQUE_ID_ddebug181, !33, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 515, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug186, !36, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 564, i32 2}
!41 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug187, !40, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 586, i32 2}
!44 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug188, !43, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 611, i32 2}
!47 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug189, !46, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 631, i32 3}
!50 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug190, !49, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!51 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug191, !52, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 639, i32 3}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 650, i32 4}
!55 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug192, !54, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!56 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug193, !57, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 655, i32 4}
!58 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug194, !59, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 662, i32 4}
!60 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug195, !61, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 667, i32 4}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 671, i32 2}
!64 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug196, !63, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 212, i32 2}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ccdc_setwin.__UNIQUE_ID_ddebug182, !66, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 246, i32 2}
!71 = !{ptr @ccdc_setwin.__UNIQUE_ID_ddebug183, !70, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 388, i32 3}
!74 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ccdc_write_dfc_entry._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @ccdc_write_dfc_entry._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 256, i32 2}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug184, !80, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 308, i32 2}
!85 = !{ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug185, !84, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!86 = !{ptr @ccdc_raw_bayer_pix_formats, !87, !"ccdc_raw_bayer_pix_formats", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 101, i32 12}
!88 = !{ptr @ccdc_raw_yuv_pix_formats, !89, !"ccdc_raw_yuv_pix_formats", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 105, i32 12}
!90 = !{ptr @ccdc_cfg, !91, !"ccdc_cfg", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/davinci/dm355_ccdc.c", i32 45, i32 3}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 5084639}
!102 = !{i64 5084221}
!103 = !{i64 2148313242, i64 2148313247, i64 2148313260, i64 2148313304, i64 2148313338, i64 2148313359}
