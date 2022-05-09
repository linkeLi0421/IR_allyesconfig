; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/isif.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/isif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccdc_hw_device = type { [32 x i8], ptr, %struct.ccdc_hw_ops }
%struct.ccdc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.isif_oper_config = type { ptr, i32, %struct.isif_ycbcr_config, %struct.isif_params_raw, i32, ptr, ptr, ptr }
%struct.isif_ycbcr_config = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.isif_params_raw = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, %struct.isif_gain, i32, i32, i8, i8, %struct.isif_config_params_raw }
%struct.isif_gain = type { %struct.isif_float_16, %struct.isif_float_16, %struct.isif_float_16, %struct.isif_float_16 }
%struct.isif_float_16 = type { i16, i16 }
%struct.isif_config_params_raw = type { %struct.isif_linearize, %struct.isif_df_csc, %struct.isif_dfc, %struct.isif_black_clamp, %struct.isif_gain_offsets_adj, %struct.isif_cul, %struct.isif_compress, i16, i16, %struct.isif_col_pat, %struct.isif_col_pat, i8, i8 }
%struct.isif_linearize = type { i8, i8, %struct.isif_float_16, [192 x i16] }
%struct.isif_df_csc = type { i8, %struct.isif_color_space_conv, %struct.isif_data_formatter, i32, i32, i32, i32 }
%struct.isif_color_space_conv = type { i8, [16 x %struct.isif_float_8] }
%struct.isif_float_8 = type { i8, i8 }
%struct.isif_data_formatter = type { i8, %struct.isif_fmt_cfg, %struct.isif_fmtplen, i16, i16, [16 x %struct.isif_fmt_addr_ptr], [32 x i8], [32 x %struct.isif_fmtpgm_ap] }
%struct.isif_fmt_cfg = type { i8, i8, i8, i8 }
%struct.isif_fmtplen = type { i16, i16, i16, i16 }
%struct.isif_fmt_addr_ptr = type { i32, i8 }
%struct.isif_fmtpgm_ap = type { i8, i8 }
%struct.isif_dfc = type { i8, i8, i8, i8, i16, i16, [8 x %struct.isif_vdfc_entry] }
%struct.isif_vdfc_entry = type { i16, i16, i8, i8, i8 }
%struct.isif_black_clamp = type { i16, i8, i8, i16, %struct.isif_horz_bclamp, %struct.isif_vert_bclamp }
%struct.isif_horz_bclamp = type { i8, i8, i8, i8, i16, i16, i8, i8 }
%struct.isif_vert_bclamp = type { i8, i8, i16, i16, i16 }
%struct.isif_gain_offsets_adj = type { %struct.isif_gain, i16, i8, i8, i8, i8, i8, i8 }
%struct.isif_cul = type { i8, i8, i8, i8 }
%struct.isif_compress = type { i8, i8 }
%struct.isif_col_pat = type { i8, i8, i8, i8 }
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

@__initcall__kmod_isif__196_1126_isif_driver_init6 = internal global ptr @isif_driver_init, section ".initcall6.init", align 4
@isif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @isif_probe, ptr @isif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_isif_driver_exit = internal global ptr @isif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file197 = internal constant [46 x i8] c"isif.file=drivers/media/platform/davinci/isif\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [17 x i8] c"isif.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isif\00", [27 x i8] zeroinitializer }, align 32
@isif_hw_dev = internal constant { %struct.ccdc_hw_device, [40 x i8] } { %struct.ccdc_hw_device { [32 x i8] c"ISIF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.ccdc_hw_ops { ptr @isif_open, ptr @isif_close, ptr null, ptr @isif_enable, ptr null, ptr @isif_enable_output_to_sdram, ptr @isif_set_hw_if_params, ptr null, ptr @isif_configure, ptr @isif_set_buftype, ptr @isif_get_buftype, ptr @isif_set_frame_format, ptr @isif_get_frame_format, ptr @isif_enum_pix, ptr @isif_get_pixel_format, ptr @isif_set_pixel_format, ptr @isif_set_image_window, ptr @isif_get_image_window, ptr @isif_get_line_length, ptr @isif_setfbaddr, ptr @isif_getfid } }, [40 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@isif_cfg = internal global { %struct.isif_oper_config, [252 x i8] } { %struct.isif_oper_config { ptr null, i32 0, %struct.isif_ycbcr_config { i32 2, i32 1, %struct.v4l2_rect { i32 0, i32 0, i32 720, i32 480 }, i32 0, i32 0, i32 0, i32 1, i32 0 }, %struct.isif_params_raw { i32 0, i32 0, %struct.v4l2_rect { i32 0, i32 0, i32 640, i32 480 }, i32 0, i32 0, i32 0, i32 0, %struct.isif_gain { %struct.isif_float_16 { i16 1, i16 0 }, %struct.isif_float_16 { i16 1, i16 0 }, %struct.isif_float_16 { i16 1, i16 0 }, %struct.isif_float_16 { i16 1, i16 0 } }, i32 0, i32 4, i8 0, i8 0, %struct.isif_config_params_raw { %struct.isif_linearize zeroinitializer, %struct.isif_df_csc zeroinitializer, %struct.isif_dfc zeroinitializer, %struct.isif_black_clamp zeroinitializer, %struct.isif_gain_offsets_adj zeroinitializer, %struct.isif_cul zeroinitializer, %struct.isif_compress zeroinitializer, i16 0, i16 0, %struct.isif_col_pat { i8 2, i8 3, i8 0, i8 1 }, %struct.isif_col_pat { i8 2, i8 3, i8 0, i8 1 }, i8 0, i8 0 } }, i32 2, ptr null, ptr null, ptr null }, [252 x i8] zeroinitializer }, align 32
@isif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s is registered with vpfe.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isif_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/platform/davinci/isif.c\00", [58 x i8] zeroinitializer }, align 32
@isif_probe._entry_ptr = internal global ptr @isif_probe._entry, section ".printk_index", align 4
@isif_restore_defaults.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.5, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isif_restore_defaults\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0Astarting isif_restore_defaults...\00", [61 x i8] zeroinitializer }, align 32
@isif_config_defaults = internal constant { %struct.isif_config_params_raw, [196 x i8] } { %struct.isif_config_params_raw { %struct.isif_linearize { i8 0, i8 0, %struct.isif_float_16 { i16 1, i16 0 }, [192 x i16] zeroinitializer }, %struct.isif_df_csc zeroinitializer, %struct.isif_dfc zeroinitializer, %struct.isif_black_clamp zeroinitializer, %struct.isif_gain_offsets_adj { %struct.isif_gain { %struct.isif_float_16 { i16 1, i16 0 }, %struct.isif_float_16 { i16 1, i16 0 }, %struct.isif_float_16 { i16 1, i16 0 }, %struct.isif_float_16 { i16 1, i16 0 } }, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.isif_cul { i8 -1, i8 -1, i8 -1, i8 0 }, %struct.isif_compress zeroinitializer, i16 0, i16 0, %struct.isif_col_pat zeroinitializer, %struct.isif_col_pat zeroinitializer, i8 0, i8 0 }, [196 x i8] zeroinitializer }, align 32
@isif_restore_defaults.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.6, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0AEnd of isif_restore_defaults...\00", [63 x i8] zeroinitializer }, align 32
@isif_set_hw_if_params.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isif_set_hw_if_params\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid interface type\0A\00", [40 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isif_config_raw\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AStarting isif_config_raw..\0A\00", [35 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Writing 0x%x to ...CCDCFG \0A\00", [36 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Writing 0x%x to MODESET...\0A\00", [36 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.13, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Writing %x to CCOLP ...\0A\00", [39 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.14, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Writing 0x4B6D to SDOFST...\0A\00", [35 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.15, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Writing 0x0B6D to SDOFST...\0A\00", [35 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.16, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Writing 0x4000 to SDOFST...\0A\00", [35 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.17, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Writing 0x0000 to SDOFST...\0A\00", [35 x i8] zeroinitializer }, align 32
@isif_config_raw.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.18, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AEnd of isif_config_ycbcr...\0A\00", [34 x i8] zeroinitializer }, align 32
@isif_setwin.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isif_setwin\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0AStarting isif_setwin...\00", [39 x i8] zeroinitializer }, align 32
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@isif_config_dfc.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isif_config_dfc\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"defect table write timeout !!!\0A\00", [32 x i8] zeroinitializer }, align 32
@isif_config_dfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.21, ptr @.str.3, i32 465, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isif_config_dfc._entry_ptr = internal global ptr @isif_config_dfc._entry, section ".printk_index", align 4
@isif_config_ycbcr.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isif_config_ycbcr\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0AStarting isif_config_ycbcr...\00", [33 x i8] zeroinitializer }, align 32
@isif_config_ycbcr.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid pix_fmt(input mode)\0A\00", [35 x i8] zeroinitializer }, align 32
@isif_config_ycbcr.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isif_config_ycbcr.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isif_config_ycbcr.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isif_config_ycbcr.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.27, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isif_config_ycbcr.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.8, i8 0, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@isif_raw_bayer_pix_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 825770306, i32 844257602], [24 x i8] zeroinitializer }, align 32
@isif_raw_yuv_pix_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1498831189, i32 1448695129], [24 x i8] zeroinitializer }, align 32
@isif_set_pixel_format.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isif_set_pixel_format\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Either configure A-Law or DPCM\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 825770306, i64 844257602]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"isif_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1118, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1120, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"isif_hw_dev\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 983, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"isif_cfg\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 81, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1071, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 249, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"isif_config_defaults\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 32, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 258, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 867, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 537, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 553, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 577, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 614, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 634, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 638, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 644, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 648, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 687, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 275, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 440, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 464, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 880, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 893, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"isif_raw_bayer_pix_formats\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 128, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"isif_raw_yuv_pix_formats\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 132, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [41 x i8] c"../drivers/media/platform/davinci/isif.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 736, i32 5 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__exitcall_isif_driver_exit, ptr @__initcall__kmod_isif__196_1126_isif_driver_init6, ptr @isif_config_dfc._entry, ptr @isif_config_dfc._entry_ptr, ptr @isif_driver_exit, ptr @isif_probe._entry, ptr @isif_probe._entry_ptr, ptr @isif_driver, ptr @.str, ptr @isif_hw_dev, ptr @isif_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @isif_config_defaults, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @isif_raw_bayer_pix_formats, ptr @isif_raw_yuv_pix_formats, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_hw_dev to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_cfg to i32), i32 964, i32 1216, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_config_defaults to i32), i32 828, i32 1024, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_config_dfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_raw_bayer_pix_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isif_raw_yuv_pix_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @isif_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @isif_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @vpfe_register_ccdc_device(ptr noundef nonnull @isif_hw_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  tail call void %3() #7
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end2.fail_nobase_res_crit_edge, label %if.end9

if.end2.fail_nobase_res_crit_edge:                ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_nobase_res

if.end9:                                          ; preds = %if.end2
  %4 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %name = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call11 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef %9, i32 noundef 0) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.fail_nobase_res_crit_edge, label %if.end14

if.end9.fail_nobase_res_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_nobase_res

if.end14:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call11, align 4
  %end.i75 = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %12 = ptrtoint ptr %end.i75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i75, align 4
  %sub.i76 = sub i32 1, %11
  %add.i77 = add i32 %sub.i76, %13
  %call17 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %add.i77) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end14.if.then19_crit_edge, label %sw.epilog

if.end14.if.then19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %if.end14.2.if.then19_crit_edge, %if.end14.1.if.then19_crit_edge, %if.end14.if.then19_crit_edge
  %call11.lcssa = phi ptr [ %call11, %if.end14.if.then19_crit_edge ], [ %call11.1, %if.end14.1.if.then19_crit_edge ], [ %call11.2, %if.end14.2.if.then19_crit_edge ]
  %i.090.lcssa93 = phi i32 [ -1, %if.end14.if.then19_crit_edge ], [ 0, %if.end14.1.if.then19_crit_edge ], [ 1, %if.end14.2.if.then19_crit_edge ]
  %end.i75.le = getelementptr inbounds %struct.resource, ptr %call11.lcssa, i32 0, i32 1
  %14 = ptrtoint ptr %call11.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call11.lcssa, align 4
  %16 = ptrtoint ptr %end.i75.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i75.le, align 4
  %sub.i79 = sub i32 1, %15
  %add.i80 = add i32 %sub.i79, %17
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %15, i32 noundef %add.i80) #7
  br label %fail_nobase_res

sw.epilog:                                        ; preds = %if.end14
  store ptr %call17, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %call6.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool7.not.1 = icmp eq ptr %call6.1, null
  br i1 %tobool7.not.1, label %sw.epilog.fail_nobase_res_crit_edge, label %if.end9.1

sw.epilog.fail_nobase_res_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_nobase_res

if.end9.1:                                        ; preds = %sw.epilog
  %18 = ptrtoint ptr %call6.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call6.1, align 4
  %end.i.1 = getelementptr inbounds %struct.resource, ptr %call6.1, i32 0, i32 1
  %20 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i.1, align 4
  %sub.i.1 = sub i32 1, %19
  %add.i.1 = add i32 %sub.i.1, %21
  %name.1 = getelementptr inbounds %struct.resource, ptr %call6.1, i32 0, i32 2
  %22 = ptrtoint ptr %name.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.1, align 4
  %call11.1 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %add.i.1, ptr noundef %23, i32 noundef 0) #7
  %tobool12.not.1 = icmp eq ptr %call11.1, null
  br i1 %tobool12.not.1, label %if.end9.1.fail_nobase_res_crit_edge, label %if.end14.1

if.end9.1.fail_nobase_res_crit_edge:              ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_nobase_res

if.end14.1:                                       ; preds = %if.end9.1
  %24 = ptrtoint ptr %call11.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call11.1, align 4
  %end.i75.1 = getelementptr inbounds %struct.resource, ptr %call11.1, i32 0, i32 1
  %26 = ptrtoint ptr %end.i75.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i75.1, align 4
  %sub.i76.1 = sub i32 1, %25
  %add.i77.1 = add i32 %sub.i76.1, %27
  %call17.1 = tail call ptr @ioremap(i32 noundef %25, i32 noundef %add.i77.1) #7
  %tobool18.not.1 = icmp eq ptr %call17.1, null
  br i1 %tobool18.not.1, label %if.end14.1.if.then19_crit_edge, label %sw.epilog.1

if.end14.1.if.then19_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

sw.epilog.1:                                      ; preds = %if.end14.1
  store ptr %call17.1, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 6), align 4
  %call6.2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %tobool7.not.2 = icmp eq ptr %call6.2, null
  br i1 %tobool7.not.2, label %sw.epilog.1.fail_nobase_res_crit_edge, label %if.end9.2

sw.epilog.1.fail_nobase_res_crit_edge:            ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_nobase_res

if.end9.2:                                        ; preds = %sw.epilog.1
  %28 = ptrtoint ptr %call6.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call6.2, align 4
  %end.i.2 = getelementptr inbounds %struct.resource, ptr %call6.2, i32 0, i32 1
  %30 = ptrtoint ptr %end.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i.2, align 4
  %sub.i.2 = sub i32 1, %29
  %add.i.2 = add i32 %sub.i.2, %31
  %name.2 = getelementptr inbounds %struct.resource, ptr %call6.2, i32 0, i32 2
  %32 = ptrtoint ptr %name.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.2, align 4
  %call11.2 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %add.i.2, ptr noundef %33, i32 noundef 0) #7
  %tobool12.not.2 = icmp eq ptr %call11.2, null
  br i1 %tobool12.not.2, label %if.end9.2.fail_nobase_res_crit_edge, label %if.end14.2

if.end9.2.fail_nobase_res_crit_edge:              ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_nobase_res

if.end14.2:                                       ; preds = %if.end9.2
  %34 = ptrtoint ptr %call11.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call11.2, align 4
  %end.i75.2 = getelementptr inbounds %struct.resource, ptr %call11.2, i32 0, i32 1
  %36 = ptrtoint ptr %end.i75.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i75.2, align 4
  %sub.i76.2 = sub i32 1, %35
  %add.i77.2 = add i32 %sub.i76.2, %37
  %call17.2 = tail call ptr @ioremap(i32 noundef %35, i32 noundef %add.i77.2) #7
  %tobool18.not.2 = icmp eq ptr %call17.2, null
  br i1 %tobool18.not.2, label %if.end14.2.if.then19_crit_edge, label %sw.epilog.2

if.end14.2.if.then19_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

sw.epilog.2:                                      ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call17.2, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 7), align 4
  store ptr %dev, ptr @isif_cfg, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @isif_hw_dev) #10
  br label %cleanup

fail_nobase_res:                                  ; preds = %if.end9.2.fail_nobase_res_crit_edge, %sw.epilog.1.fail_nobase_res_crit_edge, %if.end9.1.fail_nobase_res_crit_edge, %sw.epilog.fail_nobase_res_crit_edge, %if.then19, %if.end9.fail_nobase_res_crit_edge, %if.end2.fail_nobase_res_crit_edge
  %status.0 = phi i32 [ -12, %if.then19 ], [ -19, %if.end2.fail_nobase_res_crit_edge ], [ -16, %if.end9.fail_nobase_res_crit_edge ], [ -19, %sw.epilog.fail_nobase_res_crit_edge ], [ -16, %if.end9.1.fail_nobase_res_crit_edge ], [ -19, %sw.epilog.1.fail_nobase_res_crit_edge ], [ -16, %if.end9.2.fail_nobase_res_crit_edge ]
  %i.1 = phi i32 [ %i.090.lcssa93, %if.then19 ], [ 0, %if.end2.fail_nobase_res_crit_edge ], [ 0, %if.end9.fail_nobase_res_crit_edge ], [ 1, %sw.epilog.fail_nobase_res_crit_edge ], [ 1, %if.end9.1.fail_nobase_res_crit_edge ], [ 2, %sw.epilog.1.fail_nobase_res_crit_edge ], [ 2, %if.end9.2.fail_nobase_res_crit_edge ]
  %38 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %tobool26.not = icmp eq ptr %38, null
  br i1 %tobool26.not, label %fail_nobase_res.if.end28_crit_edge, label %if.then27

fail_nobase_res.if.end28_crit_edge:               ; preds = %fail_nobase_res
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %fail_nobase_res
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %38) #7
  store ptr null, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %fail_nobase_res.if.end28_crit_edge
  %39 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 6), align 4
  %tobool29.not = icmp eq ptr %39, null
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %39) #7
  store ptr null, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 6), align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp3391 = icmp sgt i32 %i.1, -1
  br i1 %cmp3391, label %while.body34, label %if.end31.while.end42_crit_edge

if.end31.while.end42_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end42

while.body34:                                     ; preds = %if.end31
  %call35 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %i.1) #7
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %while.body34.if.end40_crit_edge, label %if.then37

while.body34.if.end40_crit_edge:                  ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then37:                                        ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call35, align 4
  %end.i81 = getelementptr inbounds %struct.resource, ptr %call35, i32 0, i32 1
  %42 = ptrtoint ptr %end.i81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end.i81, align 4
  %sub.i82 = sub i32 1, %41
  %add.i83 = add i32 %sub.i82, %43
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %41, i32 noundef %add.i83) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %while.body34.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp33 = icmp sgt i32 %i.1, 0
  br i1 %cmp33, label %while.body34.1, label %if.end40.while.end42_crit_edge

if.end40.while.end42_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end42

while.body34.1:                                   ; preds = %if.end40
  %dec41 = add nsw i32 %i.1, -1
  %call35.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %dec41) #7
  %tobool36.not.1 = icmp eq ptr %call35.1, null
  br i1 %tobool36.not.1, label %while.body34.1.if.end40.1_crit_edge, label %if.then37.1

while.body34.1.if.end40.1_crit_edge:              ; preds = %while.body34.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.1

if.then37.1:                                      ; preds = %while.body34.1
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call35.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call35.1, align 4
  %end.i81.1 = getelementptr inbounds %struct.resource, ptr %call35.1, i32 0, i32 1
  %46 = ptrtoint ptr %end.i81.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end.i81.1, align 4
  %sub.i82.1 = sub i32 1, %45
  %add.i83.1 = add i32 %sub.i82.1, %47
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %45, i32 noundef %add.i83.1) #7
  br label %if.end40.1

if.end40.1:                                       ; preds = %if.then37.1, %while.body34.1.if.end40.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1)
  %cmp33.1 = icmp sgt i32 %i.1, 1
  br i1 %cmp33.1, label %while.body34.2, label %if.end40.1.while.end42_crit_edge

if.end40.1.while.end42_crit_edge:                 ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end42

while.body34.2:                                   ; preds = %if.end40.1
  %dec41.1 = add nsw i32 %i.1, -2
  %call35.2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %dec41.1) #7
  %tobool36.not.2 = icmp eq ptr %call35.2, null
  br i1 %tobool36.not.2, label %while.body34.2.while.end42_crit_edge, label %if.then37.2

while.body34.2.while.end42_crit_edge:             ; preds = %while.body34.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end42

if.then37.2:                                      ; preds = %while.body34.2
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %call35.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call35.2, align 4
  %end.i81.2 = getelementptr inbounds %struct.resource, ptr %call35.2, i32 0, i32 1
  %50 = ptrtoint ptr %end.i81.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end.i81.2, align 4
  %sub.i82.2 = sub i32 1, %49
  %add.i83.2 = add i32 %sub.i82.2, %51
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %49, i32 noundef %add.i83.2) #7
  br label %while.end42

while.end42:                                      ; preds = %if.then37.2, %while.body34.2.while.end42_crit_edge, %if.end40.1.while.end42_crit_edge, %if.end40.while.end42_crit_edge, %if.end31.while.end42_crit_edge
  tail call void @vpfe_unregister_ccdc_device(ptr noundef nonnull @isif_hw_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end42, %sw.epilog.2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %while.end42 ], [ 0, %sw.epilog.2 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  tail call void @iounmap(ptr noundef %0) #7
  store ptr null, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 6), align 4
  tail call void @iounmap(ptr noundef %1) #7
  store ptr null, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 6), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 7), align 4
  tail call void @iounmap(ptr noundef %2) #7
  store ptr null, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 7), align 4
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %add.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.1, align 4
  %end.i.1 = getelementptr inbounds %struct.resource, ptr %call.1, i32 0, i32 1
  %9 = ptrtoint ptr %end.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i.1, align 4
  %sub.i.1 = sub i32 1, %8
  %add.i.1 = add i32 %sub.i.1, %10
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef %add.i.1) #7
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %call.2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.2, align 4
  %end.i.2 = getelementptr inbounds %struct.resource, ptr %call.2, i32 0, i32 1
  %13 = ptrtoint ptr %end.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i.2, align 4
  %sub.i.2 = sub i32 1, %12
  %add.i.2 = add i32 %sub.i.2, %14
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %add.i.2) #7
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  tail call void @vpfe_unregister_ccdc_device(ptr noundef nonnull @isif_hw_dev) #7
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
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vpfe_unregister_ccdc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_open(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @isif_restore_defaults()
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_close(ptr nocapture noundef readnone %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12), ptr @isif_config_defaults, i32 828)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isif_enable(i32 noundef %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool.not = icmp eq i32 %en, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !108
  %1 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %1, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #7, !srcloc !108
  %2 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %2, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #7, !srcloc !108
  %3 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #7, !srcloc !108
  tail call void @msleep(i32 noundef 100) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !109
  %and.i = and i32 %5, -2
  %and1.i = and i32 %en, 1
  %or.i = or i32 %and.i, %and1.i
  %6 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %or.i) #7, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isif_enable_output_to_sdram(i32 noundef %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %en, 1
  %0 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !109
  %and.i = and i32 %1, -3
  %and1.i = and i32 %shl, 2
  %or.i = or i32 %and.i, %and1.i
  %2 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %or.i) #7, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_set_hw_if_params(ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  %2 = load i32, ptr %params, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.body [
    i32 0, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge8
    i32 3, label %entry.sw.bb_crit_edge9
    i32 1, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge10
    i32 2, label %sw.bb3
  ]

entry.sw.bb2_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  store i32 2, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 6), align 4
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge10
  store i32 1, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 6), align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3), align 4
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_set_hw_if_params.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_set_hw_if_params, %if.then)) #7
          to label %return [label %if.then], !srcloc !110

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_set_hw_if_params.__UNIQUE_ID_ddebug188, ptr noundef %4, ptr noundef nonnull @.str.8) #7
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb3, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_configure() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @isif_config_raw()
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @isif_config_ycbcr()
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_set_buftype(i32 noundef %buf_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %. = select i1 %cmp, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 6), ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 7)
  %1 = ptrtoint ptr %. to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %buf_type, ptr %., align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_get_buftype() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %.val = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 6), align 4
  %.val1 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 7), align 4
  %retval.0 = select i1 %cmp, i32 %.val, i32 %.val1
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_set_frame_format(i32 noundef %frm_fmt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %. = select i1 %cmp, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 1), ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 1)
  %1 = ptrtoint ptr %. to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %frm_fmt, ptr %., align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_get_frame_format() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %.val = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 1), align 4
  %.val1 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 1), align 4
  %retval.0 = select i1 %cmp, i32 %.val, i32 %.val1
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_enum_pix(ptr nocapture noundef writeonly %pix, i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i)
  %cmp1 = icmp ult i32 %i, 2
  br i1 %cmp1, label %if.end7.sink.split, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %isif_raw_bayer_pix_formats.isif_raw_yuv_pix_formats = select i1 %cmp, ptr @isif_raw_bayer_pix_formats, ptr @isif_raw_yuv_pix_formats
  %arrayidx5 = getelementptr [2 x i32], ptr %isif_raw_bayer_pix_formats.isif_raw_yuv_pix_formats, i32 0, i32 %i
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
define internal i32 @isif_get_pixel_format() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  %spec.select = select i1 %switch, i32 825770306, i32 844257602
  br label %if.end13

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8 = icmp eq i32 %2, 0
  %. = select i1 %cmp8, i32 1448695129, i32 1498831189
  br label %if.end13

if.end13:                                         ; preds = %if.else7, %if.then
  %pixfmt.0 = phi i32 [ %., %if.else7 ], [ %spec.select, %if.then ]
  ret i32 %pixfmt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_set_pixel_format(i32 noundef %pixfmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %1 = zext i32 %pixfmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %pixfmt, label %if.then.return_crit_edge [
    i32 825770306, label %if.then2
    i32 844257602, label %if.then15
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then2:                                         ; preds = %if.then
  %2 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %switch = icmp ult i8 %2, 2
  br i1 %switch, label %if.then2.if.end18_crit_edge, label %do.body

if.then2.if.end18_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_set_pixel_format.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_set_pixel_format, %if.then11)) #7
          to label %return [label %if.then11], !srcloc !110

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_set_pixel_format.__UNIQUE_ID_ddebug187, ptr noundef %3, ptr noundef nonnull @.str.29) #7
  br label %return

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  store i8 2, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 6), align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then2.if.end18_crit_edge
  %storemerge34 = phi i32 [ 0, %if.then15 ], [ 2, %if.then2.if.end18_crit_edge ]
  store i32 %storemerge34, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 4), align 4
  store i32 0, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3), align 4
  br label %return

if.else19:                                        ; preds = %entry
  %4 = zext i32 %pixfmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %pixfmt, label %if.else19.return_crit_edge [
    i32 1448695129, label %if.else19.if.end29_crit_edge
    i32 1498831189, label %if.then26
  ]

if.else19.if.end29_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else19.return_crit_edge:                       ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then26:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.else19.if.end29_crit_edge
  %storemerge = phi i32 [ 1, %if.then26 ], [ 0, %if.else19.if.end29_crit_edge ]
  store i32 %storemerge, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 6), align 4
  store i32 2, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 4), align 4
  br label %return

return:                                           ; preds = %if.end29, %if.else19.return_crit_edge, %if.end18, %if.then11, %do.body, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.else19.return_crit_edge ], [ 0, %if.end29 ], [ 0, %if.end18 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_set_image_window(ptr nocapture noundef readonly %win) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 1
  %1 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %top, align 4
  %. = select i1 %cmp, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 1), ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2, i32 1)
  %.15 = select i1 %cmp, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2), ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2)
  %.16 = select i1 %cmp, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2, i32 2)
  %.17 = select i1 %cmp, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 3), ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2, i32 3)
  %3 = ptrtoint ptr %. to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %., align 4
  %4 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %win, align 4
  %6 = ptrtoint ptr %.15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %.15, align 4
  %width3 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 2
  %7 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width3, align 4
  %9 = ptrtoint ptr %.16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %.16, align 4
  %height4 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 3
  %10 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height4, align 4
  %12 = ptrtoint ptr %.17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %.17, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @isif_get_image_window(ptr nocapture noundef writeonly %win) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = call ptr @memcpy(ptr %win, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2), i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = call ptr @memcpy(ptr %win, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2), i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isif_get_line_length() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 4), align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %1, label %if.else5 [
    i32 2, label %if.then2
    i32 1, label %if.then4
  ]

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  br label %if.end10

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %mul = shl i32 %4, 1
  %shr = lshr i32 %4, 2
  %add = add i32 %mul, %shr
  br label %if.end10

if.else5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %mul6 = shl i32 %5, 1
  br label %if.end10

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %mul9 = shl i32 %6, 1
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.else5, %if.then4, %if.then2
  %len.0 = phi i32 [ %3, %if.then2 ], [ %add, %if.then4 ], [ %mul6, %if.else5 ], [ %mul9, %if.else8 ]
  %add11 = add i32 %len.0, 31
  %and = and i32 %add11, -32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isif_setfbaddr(i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %addr, 21
  %0 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %shr) #7, !srcloc !108
  %shr1 = lshr i32 %addr, 5
  %and2 = and i32 %shr1, 65535
  %1 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %and2) #7, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isif_getfid() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !109
  %shr = lshr i32 %1, 15
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isif_restore_defaults() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_restore_defaults.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_restore_defaults, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_restore_defaults.__UNIQUE_ID_ddebug174, ptr noundef %0, ptr noundef nonnull @.str.5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = call ptr @memcpy(ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12), ptr @isif_config_defaults, i32 828)
  %call3 = tail call i32 @vpss_enable_clock(i32 noundef 0, i32 noundef 1) #7
  %call4 = tail call i32 @vpss_enable_clock(i32 noundef 6, i32 noundef 1) #7
  %call5 = tail call i32 @vpss_enable_clock(i32 noundef 8, i32 noundef 1) #7
  %2 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %shl.i = select i1 %tobool.not.i, i32 0, i32 4096
  %3 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  %shl7.i = select i1 %tobool2.not.i, i32 0, i32 8192
  %or.i = or i32 %shl7.i, %shl.i
  %4 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not.i = icmp eq i8 %4, 0
  %shl13.i = select i1 %tobool8.not.i, i32 0, i32 16384
  %or14.i = or i32 %or.i, %shl13.i
  %5 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not.i = icmp eq i8 %5, 0
  %shl20.i = select i1 %tobool15.not.i, i32 0, i32 256
  %or21.i = or i32 %or14.i, %shl20.i
  %6 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 6), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool22.not.i = icmp eq i8 %6, 0
  %shl27.i = select i1 %tobool22.not.i, i32 0, i32 512
  %or28.i = or i32 %or21.i, %shl27.i
  %7 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 7), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool29.not.i = icmp eq i8 %7, 0
  %shl34.i = select i1 %tobool29.not.i, i32 0, i32 1024
  %8 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !109
  %and.i.i = and i32 %9, -30465
  %and1.i.i = or i32 %or28.i, %shl34.i
  %or.i.i = or i32 %and1.i.i, %and.i.i
  %10 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %or.i.i) #7, !srcloc !108
  %11 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4), align 4
  %conv.i = zext i16 %11 to i32
  %shl36.i = shl nuw nsw i32 %conv.i, 9
  %12 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 0, i32 1), align 2
  %conv39.i = zext i16 %12 to i32
  %or40.i = or i32 %shl36.i, %conv39.i
  %13 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or40.i) #7, !srcloc !108
  %14 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 1), align 4
  %conv43.i = zext i16 %14 to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 9
  %15 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 1, i32 1), align 2
  %conv48.i = zext i16 %15 to i32
  %or49.i = or i32 %shl44.i, %conv48.i
  %16 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i87.i = getelementptr i8, ptr %16, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 %or49.i) #7, !srcloc !108
  %17 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 2), align 4
  %conv52.i = zext i16 %17 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 9
  %18 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 2, i32 1), align 2
  %conv57.i = zext i16 %18 to i32
  %or58.i = or i32 %shl53.i, %conv57.i
  %19 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i88.i = getelementptr i8, ptr %19, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %or58.i) #7, !srcloc !108
  %20 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 3), align 4
  %conv61.i = zext i16 %20 to i32
  %shl62.i = shl nuw nsw i32 %conv61.i, 9
  %21 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 3, i32 1), align 2
  %conv66.i = zext i16 %21 to i32
  %or67.i = or i32 %shl62.i, %conv66.i
  %22 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i89.i = getelementptr i8, ptr %22, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %or67.i) #7, !srcloc !108
  %23 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 1), align 4
  %conv68.i = zext i16 %23 to i32
  %24 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i90.i = getelementptr i8, ptr %24, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %conv68.i) #7, !srcloc !108
  %call6 = tail call i32 @vpss_select_ccdc_source(i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_restore_defaults.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_restore_defaults, %if.then19)) #7
          to label %do.end22 [label %if.then19], !srcloc !110

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_restore_defaults.__UNIQUE_ID_ddebug175, ptr noundef %25, ptr noundef nonnull @.str.6) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpss_enable_clock(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpss_select_ccdc_source(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isif_config_raw() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug178, ptr noundef %0, ptr noundef nonnull @.str.10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 4), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then15)) #7
          to label %do.end18 [label %if.then15], !srcloc !110

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug179, ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %1) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.end
  %3 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !108
  %4 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 4), align 4
  %shl = shl i32 %4, 2
  %5 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 5), align 4
  %shl20 = shl i32 %5, 3
  %or21 = or i32 %shl20, %shl
  %6 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 3), align 4
  %shl22 = shl i32 %6, 4
  %or23 = or i32 %or21, %shl22
  %7 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 1), align 4
  %shl26 = shl i32 %7, 7
  %or27 = or i32 %or23, %shl26
  %8 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3), align 4
  %shl28 = shl i32 %8, 12
  %or29 = or i32 %or27, %shl28
  %9 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 11), align 2
  %conv = zext i8 %9 to i32
  %shl30 = shl nuw nsw i32 %conv, 8
  %or31 = or i32 %or29, %shl30
  %10 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i363 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i363, i32 %or31) #7, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then44)) #7
          to label %do.end47 [label %if.then44], !srcloc !110

if.then44:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug180, ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef %or31) #7
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %do.end18
  %12 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 8), align 4
  %shl48 = shl i32 %12, 5
  %13 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  %or52 = zext i1 %cmp to i32
  %spec.select = or i32 %shl48, %or52
  %14 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 9), align 4
  %shl54 = shl i32 %14, 1
  %or55 = or i32 %spec.select, %shl54
  %15 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i364 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364, i32 %or55) #7, !srcloc !108
  %16 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp59 = icmp eq i8 %16, 1
  br i1 %cmp59, label %if.then61, label %do.end47.if.end66_crit_edge

do.end47.if.end66_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then61:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  %17 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 6, i32 1), align 1
  %conv63 = zext i8 %17 to i32
  %shl64 = shl nuw nsw i32 %conv63, 13
  %or65 = or i32 %shl64, 4096
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %do.end47.if.end66_crit_edge
  %val.1 = phi i32 [ %or65, %if.then61 ], [ %or55, %do.end47.if.end66_crit_edge ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i365 = getelementptr i8, ptr %18, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365, i32 %val.1) #7, !srcloc !108
  %19 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %shl.i = select i1 %tobool.not.i, i32 0, i32 4096
  %20 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 3), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.not.i = icmp eq i8 %20, 0
  %shl7.i = select i1 %tobool2.not.i, i32 0, i32 8192
  %or.i = or i32 %shl7.i, %shl.i
  %21 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not.i = icmp eq i8 %21, 0
  %shl13.i = select i1 %tobool8.not.i, i32 0, i32 16384
  %or14.i = or i32 %or.i, %shl13.i
  %22 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 5), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not.i = icmp eq i8 %22, 0
  %shl20.i = select i1 %tobool15.not.i, i32 0, i32 256
  %or21.i = or i32 %or14.i, %shl20.i
  %23 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 6), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not.i = icmp eq i8 %23, 0
  %shl27.i = select i1 %tobool22.not.i, i32 0, i32 512
  %or28.i = or i32 %or21.i, %shl27.i
  %24 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 7), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not.i = icmp eq i8 %24, 0
  %shl34.i = select i1 %tobool29.not.i, i32 0, i32 1024
  %25 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 128
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !109
  %and.i.i = and i32 %26, -30465
  %and1.i.i = or i32 %or28.i, %shl34.i
  %or.i.i = or i32 %and1.i.i, %and.i.i
  %27 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %27, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %or.i.i) #7, !srcloc !108
  %28 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4), align 4
  %conv.i = zext i16 %28 to i32
  %shl36.i = shl nuw nsw i32 %conv.i, 9
  %29 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 0, i32 1), align 2
  %conv39.i = zext i16 %29 to i32
  %or40.i = or i32 %shl36.i, %conv39.i
  %30 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or40.i) #7, !srcloc !108
  %31 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 1), align 4
  %conv43.i = zext i16 %31 to i32
  %shl44.i = shl nuw nsw i32 %conv43.i, 9
  %32 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 1, i32 1), align 2
  %conv48.i = zext i16 %32 to i32
  %or49.i = or i32 %shl44.i, %conv48.i
  %33 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i87.i = getelementptr i8, ptr %33, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 %or49.i) #7, !srcloc !108
  %34 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 2), align 4
  %conv52.i = zext i16 %34 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 9
  %35 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 2, i32 1), align 2
  %conv57.i = zext i16 %35 to i32
  %or58.i = or i32 %shl53.i, %conv57.i
  %36 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i88.i = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 %or58.i) #7, !srcloc !108
  %37 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 3), align 4
  %conv61.i = zext i16 %37 to i32
  %shl62.i = shl nuw nsw i32 %conv61.i, 9
  %38 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 0, i32 3, i32 1), align 2
  %conv66.i = zext i16 %38 to i32
  %or67.i = or i32 %shl62.i, %conv66.i
  %39 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i89.i = getelementptr i8, ptr %39, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %or67.i) #7, !srcloc !108
  %40 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 4, i32 1), align 4
  %conv68.i = zext i16 %40 to i32
  %41 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i90.i = getelementptr i8, ptr %41, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %conv68.i) #7, !srcloc !108
  %42 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 9), align 2
  %conv68 = zext i8 %42 to i32
  %43 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 9, i32 1), align 1
  %conv71 = zext i8 %43 to i32
  %shl72 = shl nuw nsw i32 %conv71, 2
  %or73 = or i32 %shl72, %conv68
  %44 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 9, i32 2), align 4
  %conv76 = zext i8 %44 to i32
  %shl77 = shl nuw nsw i32 %conv76, 4
  %or78 = or i32 %or73, %shl77
  %45 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 9, i32 3), align 1
  %conv81 = zext i8 %45 to i32
  %shl82 = shl nuw nsw i32 %conv81, 6
  %or83 = or i32 %or78, %shl82
  %46 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 10), align 2
  %conv86 = zext i8 %46 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %or88 = or i32 %or83, %shl87
  %47 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 10, i32 1), align 1
  %conv92 = zext i8 %47 to i32
  %shl93 = shl nuw nsw i32 %conv92, 10
  %or94 = or i32 %or88, %shl93
  %48 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 10, i32 2), align 4
  %conv98 = zext i8 %48 to i32
  %shl99 = shl nuw nsw i32 %conv98, 12
  %or100 = or i32 %or94, %shl99
  %49 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 10, i32 3), align 1
  %conv104 = zext i8 %49 to i32
  %shl105 = shl nuw nsw i32 %conv104, 14
  %or106 = or i32 %or100, %shl105
  %50 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i366 = getelementptr i8, ptr %50, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i366, i32 %or106) #7, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then119)) #7
          to label %do.end122 [label %if.then119], !srcloc !110

if.then119:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %51 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug181, ptr noundef %51, ptr noundef nonnull @.str.13, i32 noundef %or106) #7
  br label %do.end122

do.end122:                                        ; preds = %if.then119, %if.end66
  %52 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 10), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool123.not = icmp eq i8 %52, 0
  %shl128 = select i1 %tobool123.not, i32 0, i32 4096
  %53 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 4), align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %53, label %if.else145 [
    i32 2, label %if.then131
    i32 1, label %if.then135
  ]

if.then131:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #9
  %55 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  br label %if.end152

if.then135:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #9
  %56 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %shr140 = lshr i32 %56, 2
  %add141 = add i32 %shr140, %56
  br label %if.end152

if.else145:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #9
  %57 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %mul = shl i32 %57, 1
  br label %if.end152

if.end152:                                        ; preds = %if.else145, %if.then135, %if.then131
  %shr.pn.in.in = phi i32 [ %55, %if.then131 ], [ %add141, %if.then135 ], [ %mul, %if.else145 ]
  %shr.pn.in = add i32 %shr.pn.in.in, 31
  %shr.pn = lshr i32 %shr.pn.in, 5
  %val.2 = or i32 %shr.pn, %shl128
  %58 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i367 = getelementptr i8, ptr %58, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i367, i32 %val.2) #7, !srcloc !108
  %59 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 1), align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %59, label %if.end152.if.end236_crit_edge [
    i32 1, label %if.then156
    i32 0, label %if.then197
  ]

if.end152.if.end236_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236

if.then156:                                       ; preds = %if.end152
  %61 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 11), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool157.not = icmp eq i8 %61, 0
  %62 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i369 = getelementptr i8, ptr %62, i32 56
  br i1 %tobool157.not, label %if.else175, label %if.then158

if.then158:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i369, i32 19309) #7, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then171)) #7
          to label %if.end236 [label %if.then171], !srcloc !110

if.then171:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %63 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug182, ptr noundef %63, ptr noundef nonnull @.str.14) #7
  br label %if.end236

if.else175:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i369, i32 2925) #7, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then188)) #7
          to label %if.end236 [label %if.then188], !srcloc !110

if.then188:                                       ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #9
  %64 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug183, ptr noundef %64, ptr noundef nonnull @.str.15) #7
  br label %if.end236

if.then197:                                       ; preds = %if.end152
  %65 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 11), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool199.not = icmp eq i8 %65, 0
  %66 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i371 = getelementptr i8, ptr %66, i32 56
  br i1 %tobool199.not, label %if.else217, label %if.then200

if.then200:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i371, i32 16384) #7, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then213)) #7
          to label %if.end236 [label %if.then213], !srcloc !110

if.then213:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  %67 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug184, ptr noundef %67, ptr noundef nonnull @.str.16) #7
  br label %if.end236

if.else217:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i371, i32 0) #7, !srcloc !108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then230)) #7
          to label %if.end236 [label %if.then230], !srcloc !110

if.then230:                                       ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #9
  %68 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug185, ptr noundef %68, ptr noundef nonnull @.str.17) #7
  br label %if.end236

if.end236:                                        ; preds = %if.then230, %if.else217, %if.then213, %if.then200, %if.then188, %if.else175, %if.then171, %if.then158, %if.end152.if.end236_crit_edge
  %69 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 1), align 4
  tail call fastcc void @isif_setwin(ptr noundef getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2), i32 noundef %69, i32 noundef 1)
  %70 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3), align 4
  %conv.i372 = zext i16 %70 to i32
  %71 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i373 = getelementptr i8, ptr %71, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i373, i32 %conv.i372) #7, !srcloc !108
  %72 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i374 = icmp eq i8 %72, 0
  br i1 %tobool.not.i374, label %if.end236.isif_config_bclamp.exit_crit_edge, label %if.then.i

if.end236.isif_config_bclamp.exit_crit_edge:      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #9
  br label %isif_config_bclamp.exit

if.then.i:                                        ; preds = %if.end236
  %73 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 2), align 1
  %conv1.i = zext i8 %73 to i32
  %shl.i375 = shl nuw nsw i32 %conv1.i, 4
  %74 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4), align 2
  %conv2.i = zext i8 %74 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 1
  %or.i376 = or i32 %shl.i375, %shl3.i
  %or4.i = or i32 %or.i376, 1
  %75 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %75, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %or4.i) #7, !srcloc !108
  %76 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp.not.i = icmp eq i8 %76, 0
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then9.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4, i32 3), align 1
  %conv11.i = zext i8 %77 to i32
  %78 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool13.not.i = icmp eq i8 %78, 0
  %shl15.i = select i1 %tobool13.not.i, i32 0, i32 32
  %or16.i = or i32 %shl15.i, %conv11.i
  %79 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool18.not.i = icmp eq i8 %79, 0
  %shl23.i = select i1 %tobool18.not.i, i32 0, i32 64
  %or24.i = or i32 %or16.i, %shl23.i
  %80 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4, i32 6), align 2
  %conv26.i = zext i8 %80 to i32
  %shl27.i377 = shl nuw nsw i32 %conv26.i, 8
  %or28.i378 = or i32 %or24.i, %shl27.i377
  %81 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4, i32 7), align 1
  %conv30.i = zext i8 %81 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 12
  %or32.i = or i32 %or28.i378, %shl31.i
  %82 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %82, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or32.i) #7, !srcloc !108
  %83 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4, i32 4), align 2
  %conv34.i = zext i16 %83 to i32
  %84 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i3.i = getelementptr i8, ptr %84, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %conv34.i) #7, !srcloc !108
  %85 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 4, i32 5), align 4
  %conv36.i = zext i16 %85 to i32
  %86 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %86, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %conv36.i) #7, !srcloc !108
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i.if.end.i_crit_edge
  %val.0.i = phi i32 [ %or32.i, %if.then9.i ], [ %or4.i, %if.then.i.if.end.i_crit_edge ]
  %87 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 5), align 4
  %conv37.i = zext i8 %87 to i32
  %shl38.i = shl nuw nsw i32 %conv37.i, 4
  %88 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 5, i32 1), align 1
  %conv40.i = zext i8 %88 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %or42.i = or i32 %shl38.i, %val.0.i
  %or43.i = or i32 %or42.i, %shl41.i
  %89 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i5.i = getelementptr i8, ptr %89, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %or43.i) #7, !srcloc !108
  %90 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 5, i32 3), align 4
  %conv45.i = zext i16 %90 to i32
  %91 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i6.i = getelementptr i8, ptr %91, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %conv45.i) #7, !srcloc !108
  %92 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 5, i32 4), align 2
  %conv47.i = zext i16 %92 to i32
  %93 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %93, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %conv47.i) #7, !srcloc !108
  %94 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 5, i32 2), align 2
  %conv49.i = zext i16 %94 to i32
  %95 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i8.i = getelementptr i8, ptr %95, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %conv49.i) #7, !srcloc !108
  %96 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 3, i32 3), align 4
  %conv50.i = zext i16 %96 to i32
  %97 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i9.i = getelementptr i8, ptr %97, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %conv50.i) #7, !srcloc !108
  br label %isif_config_bclamp.exit

isif_config_bclamp.exit:                          ; preds = %if.end.i, %if.end236.isif_config_bclamp.exit_crit_edge
  %call239 = tail call fastcc i32 @isif_config_dfc()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %isif_config_bclamp.exit.cleanup_crit_edge, label %if.end243

isif_config_bclamp.exit.cleanup_crit_edge:        ; preds = %isif_config_bclamp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end243:                                        ; preds = %isif_config_bclamp.exit
  %98 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool244.not = icmp eq i8 %98, 0
  br i1 %tobool244.not, label %if.then245, label %if.end243.if.end247_crit_edge

if.end243.if.end247_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end247

if.then245:                                       ; preds = %if.end243
  %99 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i379 = icmp eq i8 %99, 0
  br i1 %tobool.not.i379, label %if.then.i381, label %if.then245.for.body.i_crit_edge

if.then245.for.body.i_crit_edge:                  ; preds = %if.then245
  br label %for.body.i

if.then.i381:                                     ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #9
  %100 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i380 = getelementptr i8, ptr %100, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i380, i32 0) #7, !srcloc !108
  br label %if.end247

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then245.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then245.for.body.i_crit_edge ]
  %val1.07.i = phi i32 [ %val1.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then245.for.body.i_crit_edge ]
  %rem.i = and i32 %i.08.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  %arrayidx.i = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 1, i32 1, i32 %i.08.i
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i, align 2
  %conv.i382 = zext i8 %102 to i32
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i383 = shl nuw nsw i32 %conv.i382, 5
  %decimal.i = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 1, i32 1, i32 %i.08.i, i32 1
  %103 = ptrtoint ptr %decimal.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %decimal.i, align 1
  %conv7.i = zext i8 %104 to i32
  %or.i384 = or i32 %shl.i383, %conv7.i
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %decimal17.i = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 1, i32 1, i32 %i.08.i, i32 1
  %105 = ptrtoint ptr %decimal17.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %decimal17.i, align 1
  %conv18.i = zext i8 %106 to i32
  %107 = shl nuw nsw i32 %conv.i382, 13
  %108 = shl nuw nsw i32 %conv18.i, 8
  %shl20.i385 = or i32 %107, %val1.07.i
  %or21.i386 = or i32 %shl20.i385, %108
  %sub.i = shl nuw nsw i32 %i.08.i, 1
  %add.i = add nuw nsw i32 %sub.i, 422
  %109 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i387 = getelementptr i8, ptr %109, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i387, i32 %or21.i386) #7, !srcloc !108
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then2.i
  %val1.1.i = phi i32 [ %or.i384, %if.then2.i ], [ %val1.07.i, %if.else.i ]
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 3), align 4
  %111 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i2.i388 = getelementptr i8, ptr %111, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i388, i32 %110) #7, !srcloc !108
  %112 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 4), align 4
  %113 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i3.i389 = getelementptr i8, ptr %113, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i389, i32 %112) #7, !srcloc !108
  %114 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 5), align 4
  %115 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i4.i390 = getelementptr i8, ptr %115, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i390, i32 %114) #7, !srcloc !108
  %116 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 1, i32 6), align 4
  %117 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i5.i391 = getelementptr i8, ptr %117, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i391, i32 %116) #7, !srcloc !108
  %118 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i6.i392 = getelementptr i8, ptr %118, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i392, i32 1) #7, !srcloc !108
  br label %if.end247

if.end247:                                        ; preds = %for.end.i, %if.then.i381, %if.end243.if.end247_crit_edge
  %119 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i393 = icmp eq i8 %119, 0
  br i1 %tobool.not.i393, label %if.then.i395, label %if.end.i402

if.then.i395:                                     ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  %120 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i394 = getelementptr i8, ptr %120, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i394, i32 0) #7, !srcloc !108
  br label %isif_config_linearization.exit

if.end.i402:                                      ; preds = %if.end247
  %121 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 0, i32 1), align 1
  %conv.i396 = zext i8 %121 to i32
  %shl.i397 = shl nuw nsw i32 %conv.i396, 4
  %or.i398 = or i32 %shl.i397, 1
  %122 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i399 = getelementptr i8, ptr %122, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i399, i32 %or.i398) #7, !srcloc !108
  %123 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool1.not.i = icmp eq i16 %123, 0
  %shl3.i400 = select i1 %tobool1.not.i, i32 0, i32 1024
  %124 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 0, i32 2, i32 1), align 4
  %conv5.i = zext i16 %124 to i32
  %or6.i = or i32 %shl3.i400, %conv5.i
  %125 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i2.i401 = getelementptr i8, ptr %125, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i401, i32 %or6.i) #7, !srcloc !108
  br label %for.body.i405

for.body.i405:                                    ; preds = %for.inc.i411.for.body.i405_crit_edge, %if.end.i402
  %i.04.i = phi i32 [ 0, %if.end.i402 ], [ %inc.i409, %for.inc.i411.for.body.i405_crit_edge ]
  %rem.i403 = and i32 %i.04.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i403)
  %tobool8.not.i404 = icmp eq i32 %rem.i403, 0
  %arrayidx13.i = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 0, i32 3, i32 %i.04.i
  %126 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = zext i16 %127 to i32
  %128 = shl nuw nsw i32 %i.04.i, 1
  %shl16.i = and i32 %128, 2147483644
  br i1 %tobool8.not.i404, label %if.else.i408, label %if.then9.i406

if.then9.i406:                                    ; preds = %for.body.i405
  call void @__sanitizer_cov_trace_pc() #9
  %129 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 7), align 4
  %add.ptr1.i.i = getelementptr i8, ptr %129, i32 %shl16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %conv14.i) #7, !srcloc !108
  br label %for.inc.i411

if.else.i408:                                     ; preds = %for.body.i405
  call void @__sanitizer_cov_trace_pc() #9
  %130 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 6), align 4
  %add.ptr.i3.i407 = getelementptr i8, ptr %130, i32 %shl16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i407, i32 %conv14.i) #7, !srcloc !108
  br label %for.inc.i411

for.inc.i411:                                     ; preds = %if.else.i408, %if.then9.i406
  %inc.i409 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i410 = icmp eq i32 %inc.i409, 192
  br i1 %exitcond.not.i410, label %for.inc.i411.isif_config_linearization.exit_crit_edge, label %for.inc.i411.for.body.i405_crit_edge

for.inc.i411.for.body.i405_crit_edge:             ; preds = %for.inc.i411
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i405

for.inc.i411.isif_config_linearization.exit_crit_edge: ; preds = %for.inc.i411
  call void @__sanitizer_cov_trace_pc() #9
  br label %isif_config_linearization.exit

isif_config_linearization.exit:                   ; preds = %for.inc.i411.isif_config_linearization.exit_crit_edge, %if.then.i395
  %131 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 5, i32 1), align 1
  %conv.i412 = zext i8 %131 to i32
  %shl.i413 = shl nuw nsw i32 %conv.i412, 8
  %132 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 5), align 4
  %conv1.i414 = zext i8 %132 to i32
  %or.i415 = or i32 %shl.i413, %conv1.i414
  %133 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i416 = getelementptr i8, ptr %133, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i416, i32 %or.i415) #7, !srcloc !108
  %134 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 5, i32 2), align 2
  %conv2.i417 = zext i8 %134 to i32
  %135 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i418 = getelementptr i8, ptr %135, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i418, i32 %conv2.i417) #7, !srcloc !108
  %136 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 5, i32 3), align 1
  %conv3.i = zext i8 %136 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 14
  %137 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i.i419 = getelementptr i8, ptr %137, i32 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i419) #7, !srcloc !109
  %and.i.i420 = and i32 %138, -16385
  %and1.i.i421 = and i32 %shl4.i, 16384
  %or.i.i422 = or i32 %and.i.i420, %and1.i.i421
  %139 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i.i423 = getelementptr i8, ptr %139, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i423, i32 %or.i.i422) #7, !srcloc !108
  %140 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 7), align 2
  %conv248 = zext i16 %140 to i32
  %141 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i424 = getelementptr i8, ptr %141, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i424, i32 %conv248) #7, !srcloc !108
  %142 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 8), align 4
  %conv249 = zext i16 %142 to i32
  %143 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i425 = getelementptr i8, ptr %143, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 %conv249) #7, !srcloc !108
  %144 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 12), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool251.not = icmp eq i8 %144, 0
  br i1 %tobool251.not, label %isif_config_linearization.exit.do.body265_crit_edge, label %if.then252

isif_config_linearization.exit.do.body265_crit_edge: ; preds = %isif_config_linearization.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body265

if.then252:                                       ; preds = %isif_config_linearization.exit
  call void @__sanitizer_cov_trace_pc() #9
  %145 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 5), align 4
  %bf.shl = shl i32 %145, 31
  %146 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 4), align 4
  %bf.value256 = shl i32 %146, 30
  %bf.shl257 = and i32 %bf.value256, 1073741824
  %bf.set259 = or i32 %bf.shl257, %bf.shl
  %sync.sroa.0.0.insert.insert = or i32 %bf.set259, 1073741823
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %sync.sroa.0.0.insert.insert, 0
  tail call void @dm365_vpss_set_sync_pol([1 x i32] %.fca.0.insert) #7
  %147 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %148 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 2, i32 3), align 4
  %frame_size.sroa.5.0.insert.ext = and i32 %148, 65535
  %frame_size.sroa.0.0.insert.shift = shl i32 %147, 16
  %frame_size.sroa.0.0.insert.insert = or i32 %frame_size.sroa.5.0.insert.ext, %frame_size.sroa.0.0.insert.shift
  %.fca.0.insert298 = insertvalue [1 x i32] poison, i32 %frame_size.sroa.0.0.insert.insert, 0
  tail call void @dm365_vpss_set_pg_frame_size([1 x i32] %.fca.0.insert298) #7
  %call263 = tail call i32 @vpss_select_ccdc_source(i32 noundef 2) #7
  br label %do.body265

do.body265:                                       ; preds = %if.then252, %isif_config_linearization.exit.do.body265_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_raw.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_raw, %if.then277)) #7
          to label %cleanup [label %if.then277], !srcloc !110

if.then277:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #9
  %149 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_raw.__UNIQUE_ID_ddebug186, ptr noundef %149, ptr noundef nonnull @.str.18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then277, %do.body265, %isif_config_bclamp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %isif_config_bclamp.exit.cleanup_crit_edge ], [ 0, %if.then277 ], [ 0, %do.body265 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isif_config_ycbcr() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_ycbcr, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_ycbcr.__UNIQUE_ID_ddebug189, ptr noundef %0, ptr noundef nonnull @.str.26) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2), align 4
  %shl = shl i32 %1, 12
  %2 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 1), align 4
  %shl3 = shl i32 %2, 7
  %or4 = or i32 %shl3, %shl
  %3 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 3), align 4
  %shl5 = shl i32 %3, 4
  %or6 = or i32 %or4, %shl5
  %4 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 5), align 4
  %shl7 = shl i32 %4, 3
  %or8 = or i32 %or6, %shl7
  %5 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 4), align 4
  %shl9 = shl i32 %5, 2
  %or10 = or i32 %or8, %shl9
  %6 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %6, label %do.body122 [
    i32 0, label %sw.bb
    i32 5, label %sw.bb33
    i32 1, label %sw.bb57
    i32 3, label %sw.bb78
    i32 4, label %sw.bb101
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end29, label %do.body13

do.body13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_ycbcr, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !110

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_ycbcr.__UNIQUE_ID_ddebug190, ptr noundef %8, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end29:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %or30 = or i32 %or10, 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 3) #7, !srcloc !108
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp35.not = icmp eq i32 %1, 2
  br i1 %cmp35.not, label %if.end53, label %do.body37

do.body37:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_ycbcr, %if.then49)) #7
          to label %cleanup [label %if.then49], !srcloc !110

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %10 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_ycbcr.__UNIQUE_ID_ddebug191, ptr noundef %10, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end53:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i197 = getelementptr i8, ptr %11, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 3) #7, !srcloc !108
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp59.not = icmp eq i32 %1, 1
  br i1 %cmp59.not, label %if.end77, label %do.body61

do.body61:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_ycbcr, %if.then73)) #7
          to label %cleanup [label %if.then73], !srcloc !110

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_ycbcr.__UNIQUE_ID_ddebug192, ptr noundef %12, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end77:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i198 = getelementptr i8, ptr %13, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 3) #7, !srcloc !108
  br label %sw.epilog

sw.bb78:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp82.not = icmp eq i32 %1, 2
  br i1 %cmp82.not, label %sw.bb78.sw.epilog_crit_edge, label %do.body84

sw.bb78.sw.epilog_crit_edge:                      ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body84:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_ycbcr, %if.then96)) #7
          to label %cleanup [label %if.then96], !srcloc !110

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_ycbcr.__UNIQUE_ID_ddebug193, ptr noundef %14, ptr noundef nonnull @.str.27) #7
  br label %cleanup

sw.bb101:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp103.not = icmp eq i32 %1, 1
  br i1 %cmp103.not, label %sw.bb101.sw.epilog_crit_edge, label %do.body105

sw.bb101.sw.epilog_crit_edge:                     ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body105:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_ycbcr, %if.then117)) #7
          to label %cleanup [label %if.then117], !srcloc !110

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_ycbcr.__UNIQUE_ID_ddebug194, ptr noundef %15, ptr noundef nonnull @.str.27) #7
  br label %cleanup

do.body122:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_ycbcr, %if.then134)) #7
          to label %cleanup [label %if.then134], !srcloc !110

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_ycbcr.__UNIQUE_ID_ddebug195, ptr noundef %16, ptr noundef nonnull @.str.8) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb101.sw.epilog_crit_edge, %sw.bb78.sw.epilog_crit_edge, %if.end77, %if.end53, %if.end29
  %ccdcfg.0 = phi i32 [ 0, %sw.bb101.sw.epilog_crit_edge ], [ 18, %sw.bb78.sw.epilog_crit_edge ], [ 0, %if.end77 ], [ 50, %if.end53 ], [ 18, %if.end29 ]
  %modeset.0 = phi i32 [ %or10, %sw.bb101.sw.epilog_crit_edge ], [ %or10, %sw.bb78.sw.epilog_crit_edge ], [ %or10, %if.end77 ], [ %or10, %if.end53 ], [ %or30, %if.end29 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i199 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199, i32 %modeset.0) #7, !srcloc !108
  %18 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 6), align 4
  %shl138 = shl i32 %18, 11
  %or139 = or i32 %shl138, %ccdcfg.0
  %19 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i200 = getelementptr i8, ptr %19, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %or139) #7, !srcloc !108
  %20 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %switch.selectcmp.case1 = icmp eq i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %switch.selectcmp.case2 = icmp eq i32 %20, 4
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %21 = select i1 %switch.selectcmp, i32 1, i32 2
  %22 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 1), align 4
  tail call fastcc void @isif_setwin(ptr noundef getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2), i32 noundef %22, i32 noundef %21)
  %23 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %mul = shl i32 %23, 1
  %add = add i32 %mul, 31
  %shr = lshr i32 %add, 5
  %24 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i201 = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %shr) #7, !srcloc !108
  %25 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp149 = icmp eq i32 %25, 1
  br i1 %cmp149, label %land.lhs.true, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %26 = load i32, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 2, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp150 = icmp eq i32 %26, 0
  br i1 %cmp150, label %if.then151, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then151:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %27 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i202 = getelementptr i8, ptr %27, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 585) #7, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then134, %do.body122, %if.then117, %do.body105, %if.then96, %do.body84, %if.then73, %do.body61, %if.then49, %do.body37, %if.then25, %do.body13
  %retval.0 = phi i32 [ -22, %if.then25 ], [ -22, %if.then49 ], [ -22, %if.then73 ], [ -22, %if.then96 ], [ -22, %if.then117 ], [ -22, %if.then134 ], [ 0, %if.then151 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body13 ], [ -22, %do.body37 ], [ -22, %do.body61 ], [ -22, %do.body84 ], [ -22, %do.body105 ], [ -22, %do.body122 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isif_setwin(ptr nocapture noundef readonly %image_win, i32 noundef %frm_fmt, i32 noundef %ppc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_setwin.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_setwin, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_setwin.__UNIQUE_ID_ddebug176, ptr noundef %0, ptr noundef nonnull @.str.20) #7
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
  %sub5 = add i32 %shl4, 32767
  %and = and i32 %shl, 32767
  %5 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #7, !srcloc !108
  %and6 = and i32 %sub5, 32767
  %6 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i31 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %and6) #7, !srcloc !108
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frm_fmt)
  %cmp = icmp eq i32 %frm_fmt, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %shr = lshr i32 %10, 1
  %shr9 = ashr i32 %8, 1
  %add = add nsw i32 %shr9, 1
  br label %if.end15

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %add10 = add i32 %8, 1
  %height11 = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 3
  %11 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height11, align 4
  %div30 = lshr i32 %12, 1
  %add14 = add i32 %div30, %add10
  %13 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i32 = getelementptr i8, ptr %13, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %add14) #7, !srcloc !108
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %vert_start.0 = phi i32 [ %add, %if.then7 ], [ %add10, %if.else ]
  %vert_nr_lines.0.in = phi i32 [ %shr, %if.then7 ], [ %12, %if.else ]
  %vert_nr_lines.0 = add i32 %vert_nr_lines.0.in, 32767
  %14 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i33 = getelementptr i8, ptr %14, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #7, !srcloc !108
  %and16 = and i32 %vert_start.0, 32767
  %15 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i34 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %and16) #7, !srcloc !108
  %16 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i35 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %and16) #7, !srcloc !108
  %and18 = and i32 %vert_nr_lines.0, 32767
  %17 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i36 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %and18) #7, !srcloc !108
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isif_config_dfc() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %0 = load i32, ptr @loops_per_jiffy, align 4
  %div = udiv i32 %0, 40
  %1 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 1), align 1
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 5
  %3 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 2), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %or = or i32 %shl, 128
  %spec.select = select i1 %tobool1.not, i32 %shl, i32 %or
  %4 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 3), align 1
  %conv4 = zext i8 %4 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or6 = or i32 %spec.select, %shl5
  %5 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or6) #7, !srcloc !108
  %6 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 4), align 4
  %conv7 = zext i16 %6 to i32
  %7 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %conv7) #7, !srcloc !108
  %8 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6), align 4
  %conv8 = zext i16 %8 to i32
  %9 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i3 = getelementptr i8, ptr %9, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %conv8) #7, !srcloc !108
  %10 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 0, i32 1), align 2
  %conv11 = zext i16 %10 to i32
  %11 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i4 = getelementptr i8, ptr %11, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %conv11) #7, !srcloc !108
  %12 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch = icmp ult i8 %12, 2
  br i1 %switch, label %if.then19, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 0, i32 2), align 4
  %conv22 = zext i8 %13 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i5 = getelementptr i8, ptr %14, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %conv22) #7, !srcloc !108
  %15 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 0, i32 3), align 1
  %conv25 = zext i8 %15 to i32
  %16 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i6 = getelementptr i8, ptr %16, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %conv25) #7, !srcloc !108
  %17 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 0, i32 4), align 2
  %conv28 = zext i8 %17 to i32
  %18 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i7 = getelementptr i8, ptr %18, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %conv28) #7, !srcloc !108
  br label %if.end29

if.end29:                                         ; preds = %if.then19, %if.end.if.end29_crit_edge
  %19 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i8 = getelementptr i8, ptr %19, i32 148
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #7, !srcloc !109
  %or31 = or i32 %20, 5
  %21 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i9 = getelementptr i8, ptr %21, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %or31) #7, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %0)
  %22 = icmp ult i32 %0, 40
  br i1 %22, label %if.end29.do.body.critedge_crit_edge, label %if.end29.land.rhs_crit_edge

if.end29.land.rhs_crit_edge:                      ; preds = %if.end29
  br label %land.rhs

if.end29.do.body.critedge_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.critedge

while.cond:                                       ; preds = %land.rhs
  %dec = add nsw i32 %count.025, -1
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %while.cond.do.body.critedge_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.cond.do.body.critedge_crit_edge:            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.critedge

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %if.end29.land.rhs_crit_edge
  %count.025 = phi i32 [ %dec, %while.cond.land.rhs_crit_edge ], [ %div, %if.end29.land.rhs_crit_edge ]
  %23 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i10 = getelementptr i8, ptr %23, i32 148
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !109
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %for.cond.preheader, label %while.cond

for.cond.preheader:                               ; preds = %land.rhs
  %25 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 5), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp4529 = icmp ugt i16 %25, 1
  br i1 %cmp4529, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.then101_crit_edge

for.cond.preheader.if.then101_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body.critedge:                                 ; preds = %while.cond.do.body.critedge_crit_edge, %if.end29.do.body.critedge_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isif_config_dfc.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isif_config_dfc, %if.then41)) #7
          to label %cleanup [label %if.then41], !srcloc !110

if.then41:                                        ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isif_config_dfc.__UNIQUE_ID_ddebug177, ptr noundef %26, ptr noundef nonnull @.str.22) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx48 = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 %i.030
  %27 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx48, align 4
  %conv50 = zext i16 %28 to i32
  %29 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i11 = getelementptr i8, ptr %29, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %conv50) #7, !srcloc !108
  %pos_horz53 = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 %i.030, i32 1
  %30 = ptrtoint ptr %pos_horz53 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pos_horz53, align 2
  %conv54 = zext i16 %31 to i32
  %32 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i12 = getelementptr i8, ptr %32, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %conv54) #7, !srcloc !108
  %33 = load i8, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 1), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %switch1 = icmp ult i8 %33, 2
  br i1 %switch1, label %if.then64, label %for.body.if.end77_crit_edge

for.body.if.end77_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %level_at_pos67 = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 %i.030, i32 2
  %34 = ptrtoint ptr %level_at_pos67 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %level_at_pos67, align 4
  %conv68 = zext i8 %35 to i32
  %36 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i13 = getelementptr i8, ptr %36, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %conv68) #7, !srcloc !108
  %level_up_pixels71 = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 %i.030, i32 3
  %37 = ptrtoint ptr %level_up_pixels71 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %level_up_pixels71, align 1
  %conv72 = zext i8 %38 to i32
  %39 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i14 = getelementptr i8, ptr %39, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %conv72) #7, !srcloc !108
  %level_low_pixels75 = getelementptr %struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 6, i32 %i.030, i32 4
  %40 = ptrtoint ptr %level_low_pixels75 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %level_low_pixels75, align 2
  %conv76 = zext i8 %41 to i32
  %42 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i15 = getelementptr i8, ptr %42, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %conv76) #7, !srcloc !108
  br label %if.end77

if.end77:                                         ; preds = %if.then64, %for.body.if.end77_crit_edge
  %43 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i16 = getelementptr i8, ptr %43, i32 148
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #7, !srcloc !109
  %and79 = and i32 %44, -6
  %or80 = or i32 %and79, 1
  %45 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i17 = getelementptr i8, ptr %45, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %or80) #7, !srcloc !108
  br label %land.rhs83

while.cond81:                                     ; preds = %land.rhs83
  %dec89 = add nsw i32 %count.127, -1
  %tobool82.not = icmp eq i32 %dec89, 0
  br i1 %tobool82.not, label %do.end95.critedge, label %while.cond81.land.rhs83_crit_edge

while.cond81.land.rhs83_crit_edge:                ; preds = %while.cond81
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs83

land.rhs83:                                       ; preds = %while.cond81.land.rhs83_crit_edge, %if.end77
  %count.127 = phi i32 [ %div, %if.end77 ], [ %dec89, %while.cond81.land.rhs83_crit_edge ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i18 = getelementptr i8, ptr %46, i32 148
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #7, !srcloc !109
  %and85 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %for.inc, label %while.cond81

do.end95.critedge:                                ; preds = %while.cond81
  call void @__sanitizer_cov_trace_pc() #9
  %48 = load ptr, ptr @isif_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.22) #10
  br label %cleanup

for.inc:                                          ; preds = %land.rhs83
  %inc = add nuw nsw i32 %i.030, 1
  %49 = load i16, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 3, i32 12, i32 2, i32 5), align 2
  %conv44 = zext i16 %49 to i32
  %cmp45 = icmp ult i32 %inc, %conv44
  br i1 %cmp45, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %49)
  %cmp99 = icmp ult i16 %49, 8
  br i1 %cmp99, label %for.end.if.then101_crit_edge, label %for.end.if.end102_crit_edge

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

for.end.if.then101_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

if.then101:                                       ; preds = %for.end.if.then101_crit_edge, %for.cond.preheader.if.then101_crit_edge
  %50 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i19 = getelementptr i8, ptr %50, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #7, !srcloc !108
  %51 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i20 = getelementptr i8, ptr %51, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 8191) #7, !srcloc !108
  %52 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i21 = getelementptr i8, ptr %52, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 1) #7, !srcloc !108
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %for.end.if.end102_crit_edge
  %53 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 140
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !109
  %or.i = or i32 %54, 16
  %55 = load ptr, ptr getelementptr inbounds (%struct.isif_oper_config, ptr @isif_cfg, i32 0, i32 5), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %55, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %or.i) #7, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %do.end95.critedge, %if.then41, %do.body.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end95.critedge ], [ 0, %if.end102 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then41 ], [ -1, %do.body.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm365_vpss_set_sync_pol([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm365_vpss_set_pg_frame_size([1 x i32]) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_isif__196_1126_isif_driver_init6, !1, !"__initcall__kmod_isif__196_1126_isif_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/isif.c", i32 1126, i32 1}
!2 = !{ptr @__exitcall_isif_driver_exit, !1, !"__exitcall_isif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file197, !4, !"__UNIQUE_ID_file197", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/isif.c", i32 1128, i32 1}
!5 = !{ptr @__UNIQUE_ID_license198, !4, !"__UNIQUE_ID_license198", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/davinci/isif.c", i32 1120, i32 11}
!8 = !{ptr @isif_driver, !9, !"isif_driver", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/davinci/isif.c", i32 1118, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/davinci/isif.c", i32 1071, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @isif_probe._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @isif_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @isif_hw_dev, !17, !"isif_hw_dev", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/davinci/isif.c", i32 983, i32 36}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/davinci/isif.c", i32 249, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @isif_restore_defaults.__UNIQUE_ID_ddebug174, !19, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/davinci/isif.c", i32 258, i32 2}
!24 = !{ptr @isif_restore_defaults.__UNIQUE_ID_ddebug175, !23, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!25 = !{ptr @isif_config_defaults, !26, !"isif_config_defaults", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/davinci/isif.c", i32 32, i32 44}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/davinci/isif.c", i32 867, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @isif_set_hw_if_params.__UNIQUE_ID_ddebug188, !28, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/davinci/isif.c", i32 537, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug178, !32, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/davinci/isif.c", i32 553, i32 2}
!37 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug179, !36, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/davinci/isif.c", i32 577, i32 2}
!40 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug180, !39, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/davinci/isif.c", i32 614, i32 2}
!43 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug181, !42, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/davinci/isif.c", i32 634, i32 4}
!46 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug182, !45, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/davinci/isif.c", i32 638, i32 4}
!49 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug183, !48, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/davinci/isif.c", i32 644, i32 4}
!52 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug184, !51, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/davinci/isif.c", i32 648, i32 4}
!55 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug185, !54, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/davinci/isif.c", i32 687, i32 2}
!58 = !{ptr @isif_config_raw.__UNIQUE_ID_ddebug186, !57, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/davinci/isif.c", i32 275, i32 2}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @isif_setwin.__UNIQUE_ID_ddebug176, !60, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/davinci/isif.c", i32 440, i32 3}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @isif_config_dfc.__UNIQUE_ID_ddebug177, !64, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/davinci/isif.c", i32 464, i32 4}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @isif_config_dfc._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @isif_config_dfc._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/davinci/isif.c", i32 880, i32 2}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug189, !73, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/davinci/isif.c", i32 893, i32 4}
!78 = !{ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug190, !77, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!79 = !{ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug191, !80, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/davinci/isif.c", i32 902, i32 4}
!81 = !{ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug192, !82, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/davinci/isif.c", i32 913, i32 4}
!83 = !{ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug193, !84, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/davinci/isif.c", i32 923, i32 4}
!85 = !{ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug194, !86, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/davinci/isif.c", i32 929, i32 4}
!87 = !{ptr @isif_config_ycbcr.__UNIQUE_ID_ddebug195, !88, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/davinci/isif.c", i32 935, i32 3}
!89 = !{ptr @isif_raw_bayer_pix_formats, !90, !"isif_raw_bayer_pix_formats", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/davinci/isif.c", i32 128, i32 18}
!91 = !{ptr @isif_raw_yuv_pix_formats, !92, !"isif_raw_yuv_pix_formats", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/davinci/isif.c", i32 132, i32 18}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/davinci/isif.c", i32 736, i32 5}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @isif_set_pixel_format.__UNIQUE_ID_ddebug187, !94, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!97 = !{ptr @isif_cfg, !98, !"isif_cfg", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/davinci/isif.c", i32 81, i32 3}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 4881196}
!109 = !{i64 4881614}
!110 = !{i64 2148784330, i64 2148784335, i64 2148784348, i64 2148784392, i64 2148784426, i64 2148784447}
