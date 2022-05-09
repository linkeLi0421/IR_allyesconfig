; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/dm644x_ccdc.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/dm644x_ccdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccdc_hw_device = type { [32 x i8], ptr, %struct.ccdc_hw_ops }
%struct.ccdc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ccdc_oper_config = type { ptr, i32, %struct.ccdc_params_raw, %struct.ccdc_params_ycbcr, ptr }
%struct.ccdc_params_raw = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i8, %struct.ccdc_config_params_raw }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ccdc_config_params_raw = type { i32, %struct.ccdc_a_law, %struct.ccdc_black_clamp, %struct.ccdc_black_compensation }
%struct.ccdc_a_law = type { i8, i32 }
%struct.ccdc_black_clamp = type { i8, i32, i32, i16, i16, i16 }
%struct.ccdc_black_compensation = type { i8, i8, i8, i8 }
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

@__UNIQUE_ID_file174 = internal constant [60 x i8] c"dm644x_ccdc.file=drivers/media/platform/davinci/dm644x_ccdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [24 x i8] c"dm644x_ccdc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [47 x i8] c"dm644x_ccdc.description=CCDC Driver for DM6446\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [37 x i8] c"dm644x_ccdc.author=Texas Instruments\00", section ".modinfo", align 1
@__initcall__kmod_dm644x_ccdc__200_880_dm644x_ccdc_driver_init6 = internal global ptr @dm644x_ccdc_driver_init, section ".initcall6.init", align 4
@dm644x_ccdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dm644x_ccdc_probe, ptr @dm644x_ccdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm644x_ccdc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dm644x_ccdc_driver_exit = internal global ptr @dm644x_ccdc_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm644x_ccdc\00", [20 x i8] zeroinitializer }, align 32
@dm644x_ccdc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dm644x_ccdc_suspend, ptr @dm644x_ccdc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ccdc_hw_dev = internal constant { %struct.ccdc_hw_device, [40 x i8] } { %struct.ccdc_hw_device { [32 x i8] c"DM6446 CCDC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.ccdc_hw_ops { ptr @ccdc_open, ptr @ccdc_close, ptr null, ptr @ccdc_enable, ptr @ccdc_sbl_reset, ptr null, ptr @ccdc_set_hw_if_params, ptr null, ptr @ccdc_configure, ptr @ccdc_set_buftype, ptr @ccdc_get_buftype, ptr @ccdc_set_frame_format, ptr @ccdc_get_frame_format, ptr @ccdc_enum_pix, ptr @ccdc_get_pixel_format, ptr @ccdc_set_pixel_format, ptr @ccdc_set_image_window, ptr @ccdc_get_image_window, ptr @ccdc_get_line_length, ptr @ccdc_setfbaddr, ptr @ccdc_getfid } }, [40 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@ccdc_cfg = internal global { %struct.ccdc_oper_config, [52 x i8] } { %struct.ccdc_oper_config { ptr null, i32 0, %struct.ccdc_params_raw { i32 0, i32 0, %struct.v4l2_rect { i32 0, i32 0, i32 648, i32 488 }, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.ccdc_config_params_raw { i32 6, %struct.ccdc_a_law zeroinitializer, %struct.ccdc_black_clamp zeroinitializer, %struct.ccdc_black_compensation zeroinitializer } }, %struct.ccdc_params_ycbcr { i32 2, i32 1, %struct.v4l2_rect { i32 0, i32 0, i32 720, i32 576 }, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0 }, ptr null }, [52 x i8] zeroinitializer }, align 32
@dm644x_ccdc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s is registered with vpfe.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm644x_ccdc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/davinci/dm644x_ccdc.c\00", [51 x i8] zeroinitializer }, align 32
@dm644x_ccdc_probe._entry_ptr = internal global ptr @dm644x_ccdc_probe._entry, section ".printk_index", align 4
@ccdc_config_raw.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.5, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccdc_config_raw\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AStarting ccdc_config_raw...\00", [35 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.6, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0AWriting 0x%x to ALAW...\0A\00", [38 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.7, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AWriting 0x%x to FMTCFG...\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.8, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0AWriting 0xBB11BB11 to COLPTN...\0A\00", [62 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.9, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AWriting 0x%x to FMT_HORZ...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.10, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0Aparams->win.height  0x%x ...\0A\00", [33 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.11, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AWriting 0x%x to FMT_VERT...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.12, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0Abelow regw(val, FMT_VERT)...\00", [34 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.13, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AWriting 0x4B6D to SDOFST..\0A\00", [35 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.14, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AWriting 0x0249 to SDOFST..\0A\00", [35 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.15, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AWriting 0x0000 to SDOFST...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.16, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AWriting 0x%x to VP_OUT...\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.17, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AWriting 0x%x to SYN_MODE...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_config_raw.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.18, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0Aend of ccdc_config_raw...\00", [37 x i8] zeroinitializer }, align 32
@ccdc_setwin.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ccdc_setwin\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0AStarting ccdc_setwin...\00", [39 x i8] zeroinitializer }, align 32
@ccdc_setwin.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0AEnd of ccdc_setwin...\00", [41 x i8] zeroinitializer }, align 32
@ccdc_config_black_clamp.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccdc_config_black_clamp\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0AWriting 0x%x to DCSUB...\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_config_black_clamp.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AWriting 0x0000 to CLAMP...\0A\00", [35 x i8] zeroinitializer }, align 32
@ccdc_config_black_clamp.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.25, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0AWriting 0x%x to CLAMP...\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_config_black_clamp.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.26, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0AWriting 0x00000000 to DCSUB...\0A\00", [63 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 171, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0AReading 0x%x to ALAW...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccdc_readregs\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr = internal global ptr @ccdc_readregs._entry, section ".printk_index", align 4
@ccdc_readregs._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.3, i32 173, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0AReading 0x%x to CLAMP...\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.33 = internal global ptr @ccdc_readregs._entry.31, section ".printk_index", align 4
@ccdc_readregs._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.3, i32 175, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0AReading 0x%x to DCSUB...\0A\00", [37 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.36 = internal global ptr @ccdc_readregs._entry.34, section ".printk_index", align 4
@ccdc_readregs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.3, i32 177, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AReading 0x%x to BLKCMP...\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.39 = internal global ptr @ccdc_readregs._entry.37, section ".printk_index", align 4
@ccdc_readregs._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.28, ptr @.str.3, i32 179, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AReading 0x%x to FPC_ADDR...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.42 = internal global ptr @ccdc_readregs._entry.40, section ".printk_index", align 4
@ccdc_readregs._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.28, ptr @.str.3, i32 181, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0AReading 0x%x to FPC...\0A\00", [39 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.45 = internal global ptr @ccdc_readregs._entry.43, section ".printk_index", align 4
@ccdc_readregs._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.28, ptr @.str.3, i32 183, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AReading 0x%x to FMTCFG...\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.48 = internal global ptr @ccdc_readregs._entry.46, section ".printk_index", align 4
@ccdc_readregs._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.28, ptr @.str.3, i32 185, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AReading 0x%x to COLPTN...\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.51 = internal global ptr @ccdc_readregs._entry.49, section ".printk_index", align 4
@ccdc_readregs._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.28, ptr @.str.3, i32 187, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AReading 0x%x to FMT_HORZ...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.54 = internal global ptr @ccdc_readregs._entry.52, section ".printk_index", align 4
@ccdc_readregs._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.28, ptr @.str.3, i32 189, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AReading 0x%x to FMT_VERT...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.57 = internal global ptr @ccdc_readregs._entry.55, section ".printk_index", align 4
@ccdc_readregs._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.28, ptr @.str.3, i32 191, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0AReading 0x%x to HSIZE_OFF...\0A\00", [33 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.60 = internal global ptr @ccdc_readregs._entry.58, section ".printk_index", align 4
@ccdc_readregs._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.28, ptr @.str.3, i32 193, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AReading 0x%x to SDOFST...\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.63 = internal global ptr @ccdc_readregs._entry.61, section ".printk_index", align 4
@ccdc_readregs._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.28, ptr @.str.3, i32 195, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0AReading 0x%x to VP_OUT...\0A\00", [36 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.66 = internal global ptr @ccdc_readregs._entry.64, section ".printk_index", align 4
@ccdc_readregs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.28, ptr @.str.3, i32 197, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AReading 0x%x to SYN_MODE...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.69 = internal global ptr @ccdc_readregs._entry.67, section ".printk_index", align 4
@ccdc_readregs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.28, ptr @.str.3, i32 199, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0AReading 0x%x to HORZ_INFO...\0A\00", [33 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.72 = internal global ptr @ccdc_readregs._entry.70, section ".printk_index", align 4
@ccdc_readregs._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.28, ptr @.str.3, i32 201, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0AReading 0x%x to VERT_START...\0A\00", [32 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.75 = internal global ptr @ccdc_readregs._entry.73, section ".printk_index", align 4
@ccdc_readregs._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.28, ptr @.str.3, i32 203, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0AReading 0x%x to VERT_LINES...\0A\00", [32 x i8] zeroinitializer }, align 32
@ccdc_readregs._entry_ptr.78 = internal global ptr @ccdc_readregs._entry.76, section ".printk_index", align 4
@ccdc_config_ycbcr.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccdc_config_ycbcr\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0AStarting ccdc_config_ycbcr...\00", [33 x i8] zeroinitializer }, align 32
@ccdc_config_ycbcr.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.81, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0AEnd of ccdc_config_ycbcr...\0A\00", [34 x i8] zeroinitializer }, align 32
@ccdc_raw_bayer_pix_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 825770306, i32 844257602], [24 x i8] zeroinitializer }, align 32
@ccdc_raw_yuv_pix_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1498831189, i32 1448695129], [24 x i8] zeroinitializer }, align 32
@ccdc_ctx = internal global { [38 x i32], [40 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 825770306, i64 844257602]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"dm644x_ccdc_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 871, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 873, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"dm644x_ccdc_pm_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 866, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"ccdc_hw_dev\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 770, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"ccdc_cfg\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 47, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 827, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 380, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 410, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 439, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 443, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 453, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 461, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 465, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 467, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 488, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 494, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 498, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 519, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 521, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 524, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 124, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 163, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 331, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 333, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 348, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 351, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 171, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 173, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 175, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 177, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 179, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 181, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 183, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 185, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 187, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 189, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 191, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 193, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 195, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 197, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 199, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 201, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 203, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 250, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 320, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [27 x i8] c"ccdc_raw_bayer_pix_formats\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 76, i32 12 }
@___asan_gen_.304 = private unnamed_addr constant [25 x i8] c"ccdc_raw_yuv_pix_formats\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 80, i32 12 }
@___asan_gen_.307 = private unnamed_addr constant [9 x i8] c"ccdc_ctx\00", align 1
@___asan_gen_.308 = private constant [48 x i8] c"../drivers/media/platform/davinci/dm644x_ccdc.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 84, i32 12 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_dm644x_ccdc_driver_exit, ptr @__initcall__kmod_dm644x_ccdc__200_880_dm644x_ccdc_driver_init6, ptr @ccdc_readregs._entry, ptr @ccdc_readregs._entry.31, ptr @ccdc_readregs._entry.34, ptr @ccdc_readregs._entry.37, ptr @ccdc_readregs._entry.40, ptr @ccdc_readregs._entry.43, ptr @ccdc_readregs._entry.46, ptr @ccdc_readregs._entry.49, ptr @ccdc_readregs._entry.52, ptr @ccdc_readregs._entry.55, ptr @ccdc_readregs._entry.58, ptr @ccdc_readregs._entry.61, ptr @ccdc_readregs._entry.64, ptr @ccdc_readregs._entry.67, ptr @ccdc_readregs._entry.70, ptr @ccdc_readregs._entry.73, ptr @ccdc_readregs._entry.76, ptr @ccdc_readregs._entry_ptr, ptr @ccdc_readregs._entry_ptr.33, ptr @ccdc_readregs._entry_ptr.36, ptr @ccdc_readregs._entry_ptr.39, ptr @ccdc_readregs._entry_ptr.42, ptr @ccdc_readregs._entry_ptr.45, ptr @ccdc_readregs._entry_ptr.48, ptr @ccdc_readregs._entry_ptr.51, ptr @ccdc_readregs._entry_ptr.54, ptr @ccdc_readregs._entry_ptr.57, ptr @ccdc_readregs._entry_ptr.60, ptr @ccdc_readregs._entry_ptr.63, ptr @ccdc_readregs._entry_ptr.66, ptr @ccdc_readregs._entry_ptr.69, ptr @ccdc_readregs._entry_ptr.72, ptr @ccdc_readregs._entry_ptr.75, ptr @ccdc_readregs._entry_ptr.78, ptr @dm644x_ccdc_driver_exit, ptr @dm644x_ccdc_probe._entry, ptr @dm644x_ccdc_probe._entry_ptr, ptr @dm644x_ccdc_driver, ptr @.str, ptr @dm644x_ccdc_pm_ops, ptr @ccdc_hw_dev, ptr @ccdc_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @ccdc_raw_bayer_pix_formats, ptr @ccdc_raw_yuv_pix_formats, ptr @ccdc_ctx], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm644x_ccdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm644x_ccdc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_hw_dev to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_cfg to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm644x_ccdc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_readregs._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_raw_bayer_pix_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_raw_yuv_pix_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccdc_ctx to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm644x_ccdc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dm644x_ccdc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm644x_ccdc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @dm644x_ccdc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm644x_ccdc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vpfe_register_ccdc_device(ptr noundef nonnull @ccdc_hw_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.fail_nores_crit_edge, label %if.end3

if.end.fail_nores_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  %call5 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef %add.i, ptr noundef %5, i32 noundef 0) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.fail_nores_crit_edge, label %if.end8

if.end3.fail_nores_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_nores

if.end8:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call5, align 4
  %end.i30 = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i30, align 4
  %sub.i31 = sub i32 1, %7
  %add.i32 = add i32 %sub.i31, %9
  %call11 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %add.i32) #9
  store ptr %call11, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call5, align 4
  %12 = ptrtoint ptr %end.i30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i30, align 4
  %sub.i34 = sub i32 1, %11
  %add.i35 = add i32 %sub.i34, %13
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %add.i35) #9
  br label %fail_nores

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr @ccdc_cfg, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @ccdc_hw_dev) #12
  br label %cleanup

fail_nores:                                       ; preds = %if.then13, %if.end3.fail_nores_crit_edge, %if.end.fail_nores_crit_edge
  %status.0 = phi i32 [ -12, %if.then13 ], [ -19, %if.end.fail_nores_crit_edge ], [ -16, %if.end3.fail_nores_crit_edge ]
  tail call void @vpfe_unregister_ccdc_device(ptr noundef nonnull @ccdc_hw_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %fail_nores, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %status.0, %fail_nores ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm644x_ccdc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  tail call void @iounmap(ptr noundef %0) #9
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %add.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @vpfe_unregister_ccdc_device(ptr noundef nonnull @ccdc_hw_dev) #9
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
declare dso_local void @vpfe_unregister_ccdc_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_open(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !182
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 4, %entry ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %i.05.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !182
  %add.i = add nuw nsw i32 %i.05.i, 4
  %cmp.i = icmp ult i32 %i.05.i, 145
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %ccdc_restore_defaults.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ccdc_restore_defaults.exit:                       ; preds = %for.body.i
  %2 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i3.i = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -65281) #9, !srcloc !182
  %3 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 4) #9, !srcloc !182
  %4 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %ccdc_restore_defaults.exit.if.end_crit_edge

ccdc_restore_defaults.exit.if.end_crit_edge:      ; preds = %ccdc_restore_defaults.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %ccdc_restore_defaults.exit
  call void @__sanitizer_cov_trace_pc() #11
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %5, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1, i32 32768) #9, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %if.then, %ccdc_restore_defaults.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_close(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccdc_enable(i32 noundef %flag) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %flag) #9, !srcloc !182
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccdc_sbl_reset() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vpss_clear_wbl_overflow(i32 noundef 23) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_hw_if_params(ptr nocapture noundef readonly %params) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
    i32 5, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
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
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ccdc_config_raw()
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ccdc_config_ycbcr()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_buftype(i32 noundef %buf_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @ccdc_get_buftype() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @ccdc_set_frame_format(i32 noundef %frm_fmt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @ccdc_get_frame_format() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @ccdc_enum_pix(ptr nocapture noundef writeonly %pix, i32 noundef %i) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i)
  %cmp1 = icmp ult i32 %i, 2
  br i1 %cmp1, label %if.end7.sink.split, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @ccdc_get_pixel_format() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 844257602, i32 825770306
  br label %if.end7

if.else2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @ccdc_set_pixel_format(i32 noundef %pixfmt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  store i32 0, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2), align 4
  %1 = zext i32 %pixfmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %pixfmt, label %if.then.return_crit_edge [
    i32 825770306, label %if.then2
    i32 844257602, label %if.then.if.end15_crit_edge
  ]

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 1), align 4
  br label %if.end15

if.else6:                                         ; preds = %entry
  %2 = zext i32 %pixfmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %pixfmt, label %if.else6.return_crit_edge [
    i32 1448695129, label %if.then8
    i32 1498831189, label %if.then11
  ]

if.else6.return_crit_edge:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 7), align 4
  br label %if.end15

if.then11:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  store i32 1, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 7), align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then8, %if.then2, %if.then.if.end15_crit_edge
  br label %return

return:                                           ; preds = %if.end15, %if.else6.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.else6.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_set_image_window(ptr nocapture noundef readonly %win) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = call ptr @memcpy(ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), ptr %win, i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = call ptr @memcpy(ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2), ptr %win, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ccdc_get_image_window(ptr nocapture noundef writeonly %win) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = call ptr @memcpy(ptr %win, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), i32 16)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = call ptr @memcpy(ptr %win, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2), i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ccdc_get_line_length() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then3_crit_edge

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp1 = icmp eq i32 %2, 7
  br i1 %cmp1, label %lor.lhs.false.if.then3_crit_edge, label %if.else

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %mul = shl i32 %4, 1
  br label %if.end6

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
define internal void @ccdc_setfbaddr(i32 noundef %addr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %addr, -32
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #9, !srcloc !182
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccdc_getfid() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !183
  %shr = lshr i32 %1, 15
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpss_clear_wbl_overflow(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_config_raw() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug186, ptr noundef %0, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !182
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end
  %i.05.i = phi i32 [ 4, %do.end ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %2 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %i.05.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !182
  %add.i = add nuw nsw i32 %i.05.i, 4
  %cmp.i = icmp ult i32 %i.05.i, 145
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %ccdc_restore_defaults.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ccdc_restore_defaults.exit:                       ; preds = %for.body.i
  %3 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -65281) #9, !srcloc !182
  %4 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %4, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 4) #9, !srcloc !182
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32768) #9, !srcloc !182
  %6 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 4), align 4
  %and = shl i32 %6, 2
  %shl = and i32 %and, 4
  %7 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 5), align 4
  %and3 = shl i32 %7, 3
  %shl4 = and i32 %and3, 8
  %or = or i32 %shl4, %shl
  %8 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 3), align 4
  %and5 = shl i32 %8, 4
  %shl6 = and i32 %and5, 16
  %or7 = or i32 %or, %shl6
  %9 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  %and8 = shl i32 %9, 7
  %shl9 = and i32 %and8, 128
  %or10 = or i32 %or7, %shl9
  %10 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8), align 4
  %and11 = shl i32 %10, 8
  %shl12 = and i32 %and11, 1792
  %or13 = or i32 %or10, %shl12
  %11 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2), align 4
  %and14 = shl i32 %11, 12
  %shl15 = and i32 %and14, 12288
  %or16 = or i32 %or13, %shl15
  %or18 = or i32 %or16, 196608
  %12 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  br i1 %tobool19.not, label %ccdc_restore_defaults.exit.if.end40_crit_edge, label %if.then20

ccdc_restore_defaults.exit.if.end40_crit_edge:    ; preds = %ccdc_restore_defaults.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then20:                                        ; preds = %ccdc_restore_defaults.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 1, i32 1), align 4
  %and22 = and i32 %13, 7
  %or23 = or i32 %and22, 8
  %14 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i423 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i423, i32 %or23) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then36)) #9
          to label %if.end40 [label %if.then36], !srcloc !184

if.then36:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %15 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug187, ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %or23) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then20, %ccdc_restore_defaults.exit.if.end40_crit_edge
  %16 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  tail call fastcc void @ccdc_setwin(ptr noundef getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), i32 noundef %16, i32 noundef 1)
  tail call fastcc void @ccdc_config_black_clamp()
  %17 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 3, i32 2), align 2
  %conv.i = zext i8 %17 to i32
  %18 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 3, i32 3), align 1
  %conv1.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %19 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 3, i32 1), align 1
  %conv3.i = zext i8 %19 to i32
  %shl5.i = shl nuw nsw i32 %conv3.i, 16
  %or6.i = or i32 %or.i, %shl5.i
  %20 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 3), align 4
  %conv7.i = zext i8 %20 to i32
  %shl9.i = shl nuw i32 %conv7.i, 24
  %or10.i = or i32 %or6.i, %shl9.i
  %21 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i424 = getelementptr i8, ptr %21, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i424, i32 %or10.i) #9, !srcloc !182
  %22 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp = icmp eq i32 %22, 7
  br i1 %cmp, label %if.end40.if.then46_crit_edge, label %lor.lhs.false

if.end40.if.then46_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.end40
  %23 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool45.not = icmp eq i8 %23, 0
  br i1 %tobool45.not, label %lor.lhs.false.if.end48_crit_edge, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.end40.if.then46_crit_edge
  %or47 = or i32 %or16, 198656
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %lor.lhs.false.if.end48_crit_edge
  %syn_mode.0 = phi i32 [ %or47, %if.then46 ], [ %or18, %lor.lhs.false.if.end48_crit_edge ]
  %and55 = shl i32 %22, 12
  %shl56 = and i32 %and55, 28672
  %val.0 = select i1 %cmp, i32 24576, i32 %shl56
  %24 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i425 = getelementptr i8, ptr %24, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 %val.0) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then71)) #9
          to label %do.end74 [label %if.then71], !srcloc !184

if.then71:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %25 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug188, ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef %val.0) #9
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %if.end48
  %26 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i426 = getelementptr i8, ptr %26, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i426, i32 -1156465903) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then87)) #9
          to label %do.end90 [label %if.then87], !srcloc !184

if.then87:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  %27 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug189, ptr noundef %27, ptr noundef nonnull @.str.8) #9
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.end74
  %28 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), align 4
  %and92 = shl i32 %28, 16
  %shl93 = and i32 %and92, 536805376
  %29 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %and95 = and i32 %29, 8191
  %or96 = or i32 %shl93, %and95
  %30 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i427 = getelementptr i8, ptr %30, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427, i32 %or96) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then109)) #9
          to label %do.end112 [label %if.then109], !srcloc !184

if.then109:                                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  %31 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug190, ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef %or96) #9
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.end90
  %32 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 1), align 4
  %and114 = shl i32 %32, 16
  %shl115 = and i32 %and114, 536805376
  %33 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp117 = icmp ne i32 %33, 0
  %34 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 3), align 4
  %shr = zext i1 %cmp117 to i32
  %and121.pn.in = lshr i32 %34, %shr
  %and121.pn = and i32 %and121.pn.in, 8191
  %val.1 = or i32 %and121.pn, %shl115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then141)) #9
          to label %do.end146 [label %if.then141], !srcloc !184

if.then141:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  %35 = load ptr, ptr @ccdc_cfg, align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 3), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug191, ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %36) #9
  br label %do.end146

do.end146:                                        ; preds = %if.then141, %do.end112
  %37 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i428 = getelementptr i8, ptr %37, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428, i32 %val.1) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then159)) #9
          to label %do.body163 [label %if.then159], !srcloc !184

if.then159:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  %38 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug192, ptr noundef %38, ptr noundef nonnull @.str.11, i32 noundef %val.1) #9
  br label %do.body163

do.body163:                                       ; preds = %if.then159, %do.end146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then175)) #9
          to label %do.end178 [label %if.then175], !srcloc !184

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #11
  %39 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug193, ptr noundef %39, ptr noundef nonnull @.str.12) #9
  br label %do.end178

do.end178:                                        ; preds = %if.then175, %do.body163
  %40 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %cmp180 = icmp eq i32 %40, 7
  br i1 %cmp180, label %do.end178.if.then187_crit_edge, label %lor.lhs.false182

do.end178.if.then187_crit_edge:                   ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then187

lor.lhs.false182:                                 ; preds = %do.end178
  %41 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool186.not = icmp eq i8 %41, 0
  br i1 %tobool186.not, label %if.else191, label %lor.lhs.false182.if.then187_crit_edge

lor.lhs.false182.if.then187_crit_edge:            ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then187

if.then187:                                       ; preds = %lor.lhs.false182.if.then187_crit_edge, %do.end178.if.then187_crit_edge
  %42 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %add = add i32 %42, 31
  %and190 = and i32 %add, -32
  %43 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i429 = getelementptr i8, ptr %43, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i429, i32 %and190) #9, !srcloc !182
  br label %if.end196

if.else191:                                       ; preds = %lor.lhs.false182
  call void @__sanitizer_cov_trace_pc() #11
  %44 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %mul = shl i32 %44, 1
  %add194 = add i32 %mul, 31
  %and195 = and i32 %add194, -32
  %45 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i430 = getelementptr i8, ptr %45, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430, i32 %and195) #9, !srcloc !182
  br label %if.end196

if.end196:                                        ; preds = %if.else191, %if.then187
  %46 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %46, label %if.end196.if.end259_crit_edge [
    i32 1, label %if.then200
    i32 0, label %if.then241
  ]

if.end196.if.end259_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end259

if.then200:                                       ; preds = %if.end196
  %48 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool201.not = icmp eq i8 %48, 0
  %49 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i432 = getelementptr i8, ptr %49, i32 40
  br i1 %tobool201.not, label %if.else219, label %if.then202

if.then202:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i432, i32 19309) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then215)) #9
          to label %if.end259 [label %if.then215], !srcloc !184

if.then215:                                       ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #11
  %50 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug194, ptr noundef %50, ptr noundef nonnull @.str.13) #9
  br label %if.end259

if.else219:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i432, i32 585) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then232)) #9
          to label %if.end259 [label %if.then232], !srcloc !184

if.then232:                                       ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #11
  %51 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug195, ptr noundef %51, ptr noundef nonnull @.str.14) #9
  br label %if.end259

if.then241:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %52 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i433 = getelementptr i8, ptr %52, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i433, i32 0) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then254)) #9
          to label %if.end259 [label %if.then254], !srcloc !184

if.then254:                                       ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #11
  %53 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug196, ptr noundef %53, ptr noundef nonnull @.str.15) #9
  br label %if.end259

if.end259:                                        ; preds = %if.then254, %if.then241, %if.then232, %if.else219, %if.then215, %if.then202, %if.end196.if.end259_crit_edge
  %54 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp261 = icmp eq i32 %54, 0
  %55 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 3), align 4
  %. = select i1 %cmp261, i32 17, i32 16
  %56 = shl i32 %55, %.
  %val.2.in = add i32 %56, 2147352576
  %val.2 = and i32 %val.2.in, 2147352576
  %57 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2, i32 2), align 4
  %and278 = shl i32 %57, 4
  %shl279 = and i32 %and278, 131056
  %or280 = or i32 %shl279, %val.2
  %58 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 2), align 4
  %and283 = and i32 %58, 15
  %or284 = or i32 %or280, %and283
  %59 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i434 = getelementptr i8, ptr %59, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i434, i32 %or284) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then297)) #9
          to label %do.end300 [label %if.then297], !srcloc !184

if.then297:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #11
  %60 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug197, ptr noundef %60, ptr noundef nonnull @.str.16, i32 noundef %or284) #9
  br label %do.end300

do.end300:                                        ; preds = %if.then297, %if.end259
  %61 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i435 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i435, i32 %syn_mode.0) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then313)) #9
          to label %do.end316 [label %if.then313], !srcloc !184

if.then313:                                       ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #11
  %62 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug198, ptr noundef %62, ptr noundef nonnull @.str.17, i32 noundef %syn_mode.0) #9
  br label %do.end316

do.end316:                                        ; preds = %if.then313, %do.end300
  %call.i = tail call i32 @vpss_clear_wbl_overflow(i32 noundef 23) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_raw.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_raw, %if.then329)) #9
          to label %do.end332 [label %if.then329], !srcloc !184

if.then329:                                       ; preds = %do.end316
  call void @__sanitizer_cov_trace_pc() #11
  %63 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_raw.__UNIQUE_ID_ddebug199, ptr noundef %63, ptr noundef nonnull @.str.18) #9
  br label %do.end332

do.end332:                                        ; preds = %if.then329, %do.end316
  %64 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i436 = getelementptr i8, ptr %64, i32 76
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i436) #9, !srcloc !183
  %66 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %66, ptr noundef nonnull @.str.27, i32 noundef %65) #12
  %67 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i81.i = getelementptr i8, ptr %67, i32 48
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i) #9, !srcloc !183
  %69 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %69, ptr noundef nonnull @.str.32, i32 noundef %68) #12
  %70 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i82.i = getelementptr i8, ptr %70, i32 52
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #9, !srcloc !183
  %72 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %72, ptr noundef nonnull @.str.35, i32 noundef %71) #12
  %73 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i83.i = getelementptr i8, ptr %73, i32 60
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #9, !srcloc !183
  %75 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %75, ptr noundef nonnull @.str.38, i32 noundef %74) #12
  %76 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i84.i = getelementptr i8, ptr %76, i32 68
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #9, !srcloc !183
  %78 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %78, ptr noundef nonnull @.str.41, i32 noundef %77) #12
  %79 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i85.i = getelementptr i8, ptr %79, i32 64
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #9, !srcloc !183
  %81 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %81, ptr noundef nonnull @.str.44, i32 noundef %80) #12
  %82 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i86.i = getelementptr i8, ptr %82, i32 88
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i) #9, !srcloc !183
  %84 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %84, ptr noundef nonnull @.str.47, i32 noundef %83) #12
  %85 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i87.i = getelementptr i8, ptr %85, i32 56
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #9, !srcloc !183
  %87 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %87, ptr noundef nonnull @.str.50, i32 noundef %86) #12
  %88 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i88.i = getelementptr i8, ptr %88, i32 92
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i) #9, !srcloc !183
  %90 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %90, ptr noundef nonnull @.str.53, i32 noundef %89) #12
  %91 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i89.i = getelementptr i8, ptr %91, i32 96
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i) #9, !srcloc !183
  %93 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %93, ptr noundef nonnull @.str.56, i32 noundef %92) #12
  %94 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i90.i = getelementptr i8, ptr %94, i32 36
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #9, !srcloc !183
  %96 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %96, ptr noundef nonnull @.str.59, i32 noundef %95) #12
  %97 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i91.i = getelementptr i8, ptr %97, i32 40
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91.i) #9, !srcloc !183
  %99 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %99, ptr noundef nonnull @.str.62, i32 noundef %98) #12
  %100 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i92.i = getelementptr i8, ptr %100, i32 148
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #9, !srcloc !183
  %102 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %102, ptr noundef nonnull @.str.65, i32 noundef %101) #12
  %103 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i93.i = getelementptr i8, ptr %103, i32 8
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i) #9, !srcloc !183
  %105 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %105, ptr noundef nonnull @.str.68, i32 noundef %104) #12
  %106 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i94.i = getelementptr i8, ptr %106, i32 20
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #9, !srcloc !183
  %108 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %108, ptr noundef nonnull @.str.71, i32 noundef %107) #12
  %109 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i95.i = getelementptr i8, ptr %109, i32 24
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95.i) #9, !srcloc !183
  %111 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %111, ptr noundef nonnull @.str.74, i32 noundef %110) #12
  %112 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i96.i = getelementptr i8, ptr %112, i32 28
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96.i) #9, !srcloc !183
  %114 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %114, ptr noundef nonnull @.str.77, i32 noundef %113) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_config_ycbcr() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_ycbcr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_ycbcr.__UNIQUE_ID_ddebug180, ptr noundef %0, ptr noundef nonnull @.str.80) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !182
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end
  %i.05.i = phi i32 [ 4, %do.end ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %2 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %i.05.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !182
  %add.i = add nuw nsw i32 %i.05.i, 4
  %cmp.i = icmp ult i32 %i.05.i, 145
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %ccdc_restore_defaults.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ccdc_restore_defaults.exit:                       ; preds = %for.body.i
  %3 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 -65281) #9, !srcloc !182
  %4 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %4, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 4) #9, !srcloc !182
  %5 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3), align 4
  %and = shl i32 %5, 12
  %shl = and i32 %and, 12288
  %6 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 1), align 4
  %and3 = shl i32 %6, 7
  %shl4 = and i32 %and3, 128
  %or = or i32 %shl4, %shl
  %7 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.else15, label %if.then9

if.then9:                                         ; preds = %ccdc_restore_defaults.exit
  %8 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 3) #9, !srcloc !182
  %9 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp eq i32 %9, 5
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %or12 = or i32 %or, 200196
  br label %if.end25

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %or, 200452
  br label %if.end25

if.else15:                                        ; preds = %ccdc_restore_defaults.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 3), align 4
  %and16 = shl i32 %10, 4
  %shl17 = and i32 %and16, 16
  %11 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 5), align 4
  %and18 = shl i32 %11, 3
  %shl19 = and i32 %and18, 8
  %12 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 4), align 4
  %and21 = shl i32 %12, 2
  %shl22 = and i32 %and21, 4
  %or20 = or i32 %or, %shl17
  %or23 = or i32 %or20, %shl19
  %or7 = or i32 %or23, %shl22
  %or24 = or i32 %or7, 198656
  br label %if.end25

if.end25:                                         ; preds = %if.else15, %if.else, %if.then11
  %syn_mode.0 = phi i32 [ %or12, %if.then11 ], [ %or13, %if.else ], [ %or24, %if.else15 ]
  %13 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i76 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %syn_mode.0) #9, !srcloc !182
  %14 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 1), align 4
  tail call fastcc void @ccdc_setwin(ptr noundef getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2), i32 noundef %14, i32 noundef 2)
  %15 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp27 = icmp eq i32 %15, 5
  %16 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 7), align 4
  %shl29 = shl i32 %16, 11
  br i1 %cmp27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %or31 = or i32 %shl29, 32800
  %17 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i77 = getelementptr i8, ptr %17, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %or31) #9, !srcloc !182
  br label %if.end36

if.else32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %or35 = or i32 %shl29, 32768
  %18 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i78 = getelementptr i8, ptr %18, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %or35) #9, !srcloc !182
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then28
  %19 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 2, i32 2), align 4
  %mul = shl i32 %19, 1
  %add = add i32 %mul, 31
  %and38 = and i32 %add, -32
  %20 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i79 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %and38) #9, !srcloc !182
  %21 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 3, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp39 = icmp eq i32 %21, 0
  br i1 %cmp39, label %if.then40, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %22 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i80 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 585) #9, !srcloc !182
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36.if.end41_crit_edge
  %call.i = tail call i32 @vpss_clear_wbl_overflow(i32 noundef 23) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_ycbcr, %if.then54)) #9
          to label %do.end57 [label %if.then54], !srcloc !184

if.then54:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %23 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_ycbcr.__UNIQUE_ID_ddebug181, ptr noundef %23, ptr noundef nonnull @.str.81) #9
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %if.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_setwin(ptr nocapture noundef readonly %image_win, i32 noundef %frm_fmt, i32 noundef %ppc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_setwin.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_setwin, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_setwin.__UNIQUE_ID_ddebug178, ptr noundef %0, ptr noundef nonnull @.str.20) #9
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
  %shl6 = shl i32 %shl, 16
  %or = or i32 %sub5, %shl6
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #9, !srcloc !182
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frm_fmt)
  %cmp = icmp eq i32 %frm_fmt, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %shr = lshr i32 %9, 1
  %shr9 = ashr i32 %7, 1
  %add = add nsw i32 %shr9, 1
  %shl10 = shl i32 %add, 16
  %10 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i55 = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %shl10) #9, !srcloc !182
  br label %if.end18

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %add11 = add i32 %7, 1
  %height12 = getelementptr inbounds %struct.v4l2_rect, ptr %image_win, i32 0, i32 3
  %11 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height12, align 4
  %div51 = lshr i32 %12, 1
  %add15 = add i32 %div51, %add11
  %shl16 = shl i32 %add11, 16
  %and = and i32 %add15, 65535
  %or17 = or i32 %and, %shl16
  %13 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %or17) #9, !srcloc !182
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then7
  %shl19.pre-phi = phi i32 [ %shl16, %if.else ], [ %shl10, %if.then7 ]
  %vert_nr_lines.0.in = phi i32 [ %12, %if.else ], [ %shr, %if.then7 ]
  %vert_start.0 = phi i32 [ %add11, %if.else ], [ %add, %if.then7 ]
  %vert_nr_lines.0 = add i32 %vert_nr_lines.0.in, -1
  %or20 = or i32 %shl19.pre-phi, %vert_start.0
  %14 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i57 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %or20) #9, !srcloc !182
  %15 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %vert_nr_lines.0) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_setwin.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_setwin, %if.then33)) #9
          to label %do.end36 [label %if.then33], !srcloc !184

if.then33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %16 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_setwin.__UNIQUE_ID_ddebug179, ptr noundef %16, ptr noundef nonnull @.str.21) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %if.end18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccdc_config_black_clamp() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %1 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 2, i32 5), align 4
  %2 = and i16 %1, 16383
  %and = zext i16 %2 to i32
  %3 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_black_clamp, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !184

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_black_clamp.__UNIQUE_ID_ddebug182, ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %and) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.then
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_black_clamp, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !184

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_black_clamp.__UNIQUE_ID_ddebug183, ptr noundef %6, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end21:                                         ; preds = %entry
  %7 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 2, i32 4), align 2
  %8 = and i16 %7, 31
  %and23 = zext i16 %8 to i32
  %9 = load i16, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 2, i32 3), align 4
  %10 = and i16 %9, 32767
  %and25 = zext i16 %10 to i32
  %shl = shl nuw nsw i32 %and25, 10
  %or = or i32 %shl, %and23
  %11 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 2, i32 2), align 4
  %and26 = shl i32 %11, 25
  %shl27 = and i32 %and26, 234881024
  %or28 = or i32 %or, %shl27
  %12 = load i32, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 2, i32 8, i32 2, i32 1), align 4
  %and29 = shl i32 %12, 28
  %or31 = or i32 %or28, %and29
  %or32 = or i32 %or31, -2147483648
  %13 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i11 = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %or32) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_black_clamp, %if.then45)) #9
          to label %do.end48 [label %if.then45], !srcloc !184

if.then45:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %14 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_black_clamp.__UNIQUE_ID_ddebug184, ptr noundef %14, ptr noundef nonnull @.str.25, i32 noundef %or32) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %if.end21
  %15 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i12 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #9, !srcloc !182
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccdc_config_black_clamp, %if.then61)) #9
          to label %cleanup [label %if.then61], !srcloc !184

if.then61:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %16 = load ptr, ptr @ccdc_cfg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccdc_config_black_clamp.__UNIQUE_ID_ddebug185, ptr noundef %16, ptr noundef nonnull @.str.26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.end48, %if.then17, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm644x_ccdc_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !183
  store i32 %1, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 1), align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i37.i = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #9, !srcloc !183
  store i32 %3, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 2), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i38.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #9, !srcloc !183
  store i32 %5, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 3), align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i39.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #9, !srcloc !183
  store i32 %7, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 4), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i40.i = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #9, !srcloc !183
  store i32 %9, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 5), align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i41.i = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #9, !srcloc !183
  store i32 %11, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 6), align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i42.i = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #9, !srcloc !183
  store i32 %13, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 7), align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i43.i = getelementptr i8, ptr %14, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #9, !srcloc !183
  store i32 %15, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 8), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i44.i = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #9, !srcloc !183
  store i32 %17, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 9), align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i45.i = getelementptr i8, ptr %18, i32 40
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #9, !srcloc !183
  store i32 %19, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 10), align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i46.i = getelementptr i8, ptr %20, i32 44
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #9, !srcloc !183
  store i32 %21, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 11), align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i47.i = getelementptr i8, ptr %22, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #9, !srcloc !183
  store i32 %23, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 12), align 4
  %24 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i48.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #9, !srcloc !183
  store i32 %25, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 13), align 4
  %26 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i49.i = getelementptr i8, ptr %26, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #9, !srcloc !183
  store i32 %27, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 14), align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i50.i = getelementptr i8, ptr %28, i32 60
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #9, !srcloc !183
  store i32 %29, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 15), align 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i51.i = getelementptr i8, ptr %30, i32 64
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #9, !srcloc !183
  store i32 %31, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 16), align 4
  %32 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i52.i = getelementptr i8, ptr %32, i32 68
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #9, !srcloc !183
  store i32 %33, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 17), align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i53.i = getelementptr i8, ptr %34, i32 72
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #9, !srcloc !183
  store i32 %35, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 18), align 4
  %36 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i54.i = getelementptr i8, ptr %36, i32 76
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #9, !srcloc !183
  store i32 %37, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 19), align 4
  %38 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i55.i = getelementptr i8, ptr %38, i32 80
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #9, !srcloc !183
  store i32 %39, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 20), align 4
  %40 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i56.i = getelementptr i8, ptr %40, i32 84
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56.i) #9, !srcloc !183
  store i32 %41, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 21), align 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i57.i = getelementptr i8, ptr %42, i32 88
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #9, !srcloc !183
  store i32 %43, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 22), align 4
  %44 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i58.i = getelementptr i8, ptr %44, i32 92
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.i) #9, !srcloc !183
  store i32 %45, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 23), align 4
  %46 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i59.i = getelementptr i8, ptr %46, i32 96
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #9, !srcloc !183
  store i32 %47, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 24), align 4
  %48 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i60.i = getelementptr i8, ptr %48, i32 100
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i) #9, !srcloc !183
  store i32 %49, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 25), align 4
  %50 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i61.i = getelementptr i8, ptr %50, i32 104
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #9, !srcloc !183
  store i32 %51, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 26), align 4
  %52 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i62.i = getelementptr i8, ptr %52, i32 108
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i) #9, !srcloc !183
  store i32 %53, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 27), align 4
  %54 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i63.i = getelementptr i8, ptr %54, i32 112
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #9, !srcloc !183
  store i32 %55, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 28), align 4
  %56 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i64.i = getelementptr i8, ptr %56, i32 116
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i) #9, !srcloc !183
  store i32 %57, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 29), align 4
  %58 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i65.i = getelementptr i8, ptr %58, i32 120
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #9, !srcloc !183
  store i32 %59, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 30), align 4
  %60 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i66.i = getelementptr i8, ptr %60, i32 124
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i) #9, !srcloc !183
  store i32 %61, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 31), align 4
  %62 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i67.i = getelementptr i8, ptr %62, i32 128
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #9, !srcloc !183
  store i32 %63, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 32), align 4
  %64 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i68.i = getelementptr i8, ptr %64, i32 132
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68.i) #9, !srcloc !183
  store i32 %65, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 33), align 4
  %66 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i69.i = getelementptr i8, ptr %66, i32 136
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #9, !srcloc !183
  store i32 %67, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 34), align 4
  %68 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i70.i = getelementptr i8, ptr %68, i32 140
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i) #9, !srcloc !183
  store i32 %69, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 35), align 4
  %70 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i71.i = getelementptr i8, ptr %70, i32 144
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #9, !srcloc !183
  store i32 %71, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 36), align 4
  %72 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i72.i = getelementptr i8, ptr %72, i32 148
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #9, !srcloc !183
  store i32 %73, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 37), align 4
  %74 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i1, i32 0) #9, !srcloc !182
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm644x_ccdc_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 2), align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #9, !srcloc !182
  %2 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 3), align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i1.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %2) #9, !srcloc !182
  %4 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 4), align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %4) #9, !srcloc !182
  %6 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 5), align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %6) #9, !srcloc !182
  %8 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 6), align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %8) #9, !srcloc !182
  %10 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 7), align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i5.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %10) #9, !srcloc !182
  %12 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 8), align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i6.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %12) #9, !srcloc !182
  %14 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 9), align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %14) #9, !srcloc !182
  %16 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 10), align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %16) #9, !srcloc !182
  %18 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 11), align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i9.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %18) #9, !srcloc !182
  %20 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 12), align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i10.i = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %20) #9, !srcloc !182
  %22 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 13), align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i11.i = getelementptr i8, ptr %23, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %22) #9, !srcloc !182
  %24 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 14), align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i12.i = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %24) #9, !srcloc !182
  %26 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 15), align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i13.i = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %26) #9, !srcloc !182
  %28 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 16), align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i14.i = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %28) #9, !srcloc !182
  %30 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 17), align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i15.i = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %30) #9, !srcloc !182
  %32 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 18), align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i16.i = getelementptr i8, ptr %33, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %32) #9, !srcloc !182
  %34 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 19), align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i17.i = getelementptr i8, ptr %35, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %34) #9, !srcloc !182
  %36 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 20), align 4
  %37 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i18.i = getelementptr i8, ptr %37, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %36) #9, !srcloc !182
  %38 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 21), align 4
  %39 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i19.i = getelementptr i8, ptr %39, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %38) #9, !srcloc !182
  %40 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 22), align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i20.i = getelementptr i8, ptr %41, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %40) #9, !srcloc !182
  %42 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 23), align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i21.i = getelementptr i8, ptr %43, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %42) #9, !srcloc !182
  %44 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 24), align 4
  %45 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i22.i = getelementptr i8, ptr %45, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %44) #9, !srcloc !182
  %46 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 25), align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i23.i = getelementptr i8, ptr %47, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %46) #9, !srcloc !182
  %48 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 26), align 4
  %49 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i24.i = getelementptr i8, ptr %49, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %48) #9, !srcloc !182
  %50 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 27), align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i25.i = getelementptr i8, ptr %51, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %50) #9, !srcloc !182
  %52 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 28), align 4
  %53 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i26.i = getelementptr i8, ptr %53, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %52) #9, !srcloc !182
  %54 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 29), align 4
  %55 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i27.i = getelementptr i8, ptr %55, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %54) #9, !srcloc !182
  %56 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 30), align 4
  %57 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i28.i = getelementptr i8, ptr %57, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %56) #9, !srcloc !182
  %58 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 31), align 4
  %59 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i29.i = getelementptr i8, ptr %59, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %58) #9, !srcloc !182
  %60 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 32), align 4
  %61 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i30.i = getelementptr i8, ptr %61, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %60) #9, !srcloc !182
  %62 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 33), align 4
  %63 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i31.i = getelementptr i8, ptr %63, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %62) #9, !srcloc !182
  %64 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 34), align 4
  %65 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i32.i = getelementptr i8, ptr %65, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %64) #9, !srcloc !182
  %66 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 35), align 4
  %67 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i33.i = getelementptr i8, ptr %67, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %66) #9, !srcloc !182
  %68 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 36), align 4
  %69 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i34.i = getelementptr i8, ptr %69, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %68) #9, !srcloc !182
  %70 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 37), align 4
  %71 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i35.i = getelementptr i8, ptr %71, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %70) #9, !srcloc !182
  %72 = load i32, ptr getelementptr inbounds ([38 x i32], ptr @ccdc_ctx, i32 0, i32 1), align 4
  %73 = load ptr, ptr getelementptr inbounds (%struct.ccdc_oper_config, ptr @ccdc_cfg, i32 0, i32 4), align 4
  %add.ptr.i36.i = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %72) #9, !srcloc !182
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !167, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__UNIQUE_ID_file174, !1, !"__UNIQUE_ID_file174", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_license175, !1, !"__UNIQUE_ID_license175", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description176, !4, !"__UNIQUE_ID_description176", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 34, i32 1}
!5 = !{ptr @__UNIQUE_ID_author177, !6, !"__UNIQUE_ID_author177", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 35, i32 1}
!7 = !{ptr @__initcall__kmod_dm644x_ccdc__200_880_dm644x_ccdc_driver_init6, !8, !"__initcall__kmod_dm644x_ccdc__200_880_dm644x_ccdc_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 880, i32 1}
!9 = !{ptr @__exitcall_dm644x_ccdc_driver_exit, !8, !"__exitcall_dm644x_ccdc_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 873, i32 11}
!12 = !{ptr @dm644x_ccdc_driver, !13, !"dm644x_ccdc_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 871, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 827, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dm644x_ccdc_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @dm644x_ccdc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ccdc_hw_dev, !21, !"ccdc_hw_dev", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 770, i32 36}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 380, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug186, !23, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 410, i32 3}
!28 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug187, !27, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 439, i32 2}
!31 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug188, !30, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 443, i32 2}
!34 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug189, !33, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 453, i32 2}
!37 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug190, !36, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 461, i32 2}
!40 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug191, !39, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 465, i32 2}
!43 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug192, !42, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 467, i32 2}
!46 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug193, !45, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 488, i32 4}
!49 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug194, !48, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 494, i32 4}
!52 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug195, !51, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 498, i32 3}
!55 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug196, !54, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 519, i32 2}
!58 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug197, !57, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 521, i32 2}
!61 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug198, !60, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 524, i32 2}
!64 = !{ptr @ccdc_config_raw.__UNIQUE_ID_ddebug199, !63, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 124, i32 2}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ccdc_setwin.__UNIQUE_ID_ddebug178, !66, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 163, i32 2}
!71 = !{ptr @ccdc_setwin.__UNIQUE_ID_ddebug179, !70, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 331, i32 3}
!74 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug182, !73, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 333, i32 3}
!78 = !{ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug183, !77, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 348, i32 2}
!81 = !{ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug184, !80, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 351, i32 2}
!84 = !{ptr @ccdc_config_black_clamp.__UNIQUE_ID_ddebug185, !83, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 171, i32 2}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ccdc_readregs._entry, !86, !"_entry", i1 false, i1 false}
!91 = !{ptr @ccdc_readregs._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 173, i32 2}
!94 = !{ptr @ccdc_readregs._entry.31, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ccdc_readregs._entry_ptr.33, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 175, i32 2}
!98 = !{ptr @ccdc_readregs._entry.34, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ccdc_readregs._entry_ptr.36, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 177, i32 2}
!102 = !{ptr @ccdc_readregs._entry.37, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ccdc_readregs._entry_ptr.39, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 179, i32 2}
!106 = !{ptr @ccdc_readregs._entry.40, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ccdc_readregs._entry_ptr.42, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 181, i32 2}
!110 = !{ptr @ccdc_readregs._entry.43, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ccdc_readregs._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 183, i32 2}
!114 = !{ptr @ccdc_readregs._entry.46, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ccdc_readregs._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 185, i32 2}
!118 = !{ptr @ccdc_readregs._entry.49, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ccdc_readregs._entry_ptr.51, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 187, i32 2}
!122 = !{ptr @ccdc_readregs._entry.52, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ccdc_readregs._entry_ptr.54, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 189, i32 2}
!126 = !{ptr @ccdc_readregs._entry.55, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ccdc_readregs._entry_ptr.57, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 191, i32 2}
!130 = !{ptr @ccdc_readregs._entry.58, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ccdc_readregs._entry_ptr.60, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 193, i32 2}
!134 = !{ptr @ccdc_readregs._entry.61, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ccdc_readregs._entry_ptr.63, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 195, i32 2}
!138 = !{ptr @ccdc_readregs._entry.64, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @ccdc_readregs._entry_ptr.66, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 197, i32 2}
!142 = !{ptr @ccdc_readregs._entry.67, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ccdc_readregs._entry_ptr.69, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 199, i32 2}
!146 = !{ptr @ccdc_readregs._entry.70, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ccdc_readregs._entry_ptr.72, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 201, i32 2}
!150 = !{ptr @ccdc_readregs._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ccdc_readregs._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 203, i32 2}
!154 = !{ptr @ccdc_readregs._entry.76, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @ccdc_readregs._entry_ptr.78, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 250, i32 2}
!158 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug180, !157, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 320, i32 2}
!162 = !{ptr @ccdc_config_ycbcr.__UNIQUE_ID_ddebug181, !161, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!163 = !{ptr @ccdc_raw_bayer_pix_formats, !164, !"ccdc_raw_bayer_pix_formats", i1 false, i1 false}
!164 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 76, i32 12}
!165 = !{ptr @ccdc_raw_yuv_pix_formats, !166, !"ccdc_raw_yuv_pix_formats", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 80, i32 12}
!167 = !{ptr @ccdc_cfg, !168, !"ccdc_cfg", i1 false, i1 false}
!168 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 47, i32 3}
!169 = !{ptr @dm644x_ccdc_pm_ops, !170, !"dm644x_ccdc_pm_ops", i1 false, i1 false}
!170 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 866, i32 32}
!171 = !{ptr @ccdc_ctx, !172, !"ccdc_ctx", i1 false, i1 false}
!172 = !{!"../drivers/media/platform/davinci/dm644x_ccdc.c", i32 84, i32 12}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 5082541}
!183 = !{i64 5082959}
!184 = !{i64 2148314134, i64 2148314139, i64 2148314152, i64 2148314196, i64 2148314230, i64 2148314251}
