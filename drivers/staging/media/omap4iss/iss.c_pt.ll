; ModuleID = '/llk/IR_all_yes/drivers/staging/media/omap4iss/iss.c_pt.bc'
source_filename = "../drivers/staging/media/omap4iss/iss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.iss_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon], %struct.media_entity_enum, i32 }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.79, %union.anon.80, ptr, i32, i8 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iss_format_info = type { i32, i32, i32, i32, i32, i32 }
%struct.iss_device = type { %struct.v4l2_device, %struct.media_device, ptr, i32, ptr, i32, [11 x ptr], [11 x ptr], ptr, i64, %struct.mutex, %struct.media_entity_enum, i32, i32, ptr, ptr, %struct.iss_csi2_device, %struct.iss_csi2_device, %struct.iss_csiphy, %struct.iss_csiphy, %struct.iss_ipipeif_device, %struct.iss_ipipe_device, %struct.iss_resizer_device, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iss_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.iss_video, ptr, i8, i32, i32, i32, i32, i8, i32, ptr, [8 x %struct.iss_csi2_ctx_cfg], [2 x %struct.iss_csi2_timing_cfg], %struct.iss_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.iss_pipeline, %struct.mutex, i8, ptr, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.iss_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.iss_csi2_timing_cfg = type { i8, i8, i16 }
%struct.iss_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iss_csiphy = type { ptr, %struct.mutex, i8, ptr, i32, i32, i8, i8, %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_dphy_cfg }
%struct.iss_csiphy_lanes_cfg = type { [4 x %struct.iss_csiphy_lane], %struct.iss_csiphy_lane }
%struct.iss_csiphy_lane = type { i8, i8 }
%struct.iss_csiphy_dphy_cfg = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.iss_ipipeif_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_ipipe_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_resizer_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iss_subdev_i2c_board_info = type { ptr, i32 }
%struct.iss_v4l2_subdevs_group = type { ptr, i32, %union.anon.97 }
%union.anon.97 = type { %struct.iss_csi2_platform_data }
%struct.iss_csi2_platform_data = type { i8, %struct.iss_csiphy_lanes_cfg, i8 }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@omap4iss_get_external_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no pixel rate control in subdev %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap4iss_get_external_info\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/media/omap4iss/iss.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap4iss_get_external_info._entry_ptr = internal global ptr @omap4iss_get_external_info._entry, section ".printk_index", align 4
@__initcall__kmod_omap4_iss__309_1354_iss_driver_init6 = internal global ptr @iss_driver_init, section ".initcall6.init", align 4
@iss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iss_probe, ptr @iss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.28, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @omap4iss_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iss_driver_exit = internal global ptr @iss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [42 x i8] c"omap4_iss.description=TI OMAP4 ISS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [61 x i8] c"omap4_iss.author=Sergio Aguirre <sergio.a.aguirre@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [56 x i8] c"omap4_iss.file=drivers/staging/media/omap4iss/omap4-iss\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [22 x i8] c"omap4_iss.license=GPL\00", section ".modinfo", align 1
@iss_pipeline_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: module stop timeout.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iss_pipeline_disable\00", [43 x i8] zeroinitializer }, align 32
@iss_pipeline_disable._entry_ptr = internal global ptr @iss_pipeline_disable._entry, section ".printk_index", align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/media/media-entity.h\00", [35 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap4_iss\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iss_print_status\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"-------------ISS HL Register dump-------------\0A\00", [48 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"###ISS HL_REVISION=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"###ISS HL_SYSCONFIG=0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"###ISS HL_IRQSTATUS(5)=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"###ISS HL_IRQENABLE_SET(5)=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.15, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"###ISS HL_IRQENABLE_CLR(5)=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.16, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"###ISS CTRL=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.17, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###ISS CLKCTRL=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.18, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"###ISS CLKSTAT=0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@iss_print_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.19, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"-----------------------------------------------\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iss_enable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 808, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_enable iss_fck failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iss_enable_clocks\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@iss_enable_clocks._entry_ptr = internal global ptr @iss_enable_clocks._entry, section ".printk_index", align 4
@iss_enable_clocks._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 814, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_enable iss_ctrlclk failed\0A\00", [33 x i8] zeroinitializer }, align 32
@iss_enable_clocks._entry_ptr.25 = internal global ptr @iss_enable_clocks._entry.23, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iss_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 571, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ISS reset timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iss_reset\00", [22 x i8] zeroinitializer }, align 32
@iss_reset._entry_ptr = internal global ptr @iss_reset._entry, section ".printk_index", align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap4iss\00", [23 x i8] zeroinitializer }, align 32
@omap4iss_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"omap4iss\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@iss_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&iss->iss_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@iss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1254, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Revision %08x found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iss_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@iss_probe._entry_ptr = internal global ptr @iss_probe._entry, section ".printk_index", align 4
@iss_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.2, i32 1277, ptr @.str.33, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ISP Revision %08x found\0A\00", [39 x i8] zeroinitializer }, align 32
@iss_probe._entry_ptr.36 = internal global ptr @iss_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OMAP4 ISS\00", [22 x i8] zeroinitializer }, align 32
@iss_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.32, ptr @.str.2, i32 1289, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@iss_probe._entry_ptr.40 = internal global ptr @iss_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iss_fck\00", [24 x i8] zeroinitializer }, align 32
@iss_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 836, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to get iss_fck clock info\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iss_get_clocks\00", [17 x i8] zeroinitializer }, align 32
@iss_get_clocks._entry_ptr = internal global ptr @iss_get_clocks._entry, section ".printk_index", align 4
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iss_ctrlclk\00", [20 x i8] zeroinitializer }, align 32
@iss_get_clocks._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.2, i32 842, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to get iss_ctrlclk clock info\0A\00", [58 x i8] zeroinitializer }, align 32
@iss_get_clocks._entry_ptr.47 = internal global ptr @iss_get_clocks._entry.45, section ".printk_index", align 4
@iss_isp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 595, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ISP5 standby timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iss_isp_reset\00", [18 x i8] zeroinitializer }, align 32
@iss_isp_reset._entry_ptr = internal global ptr @iss_isp_reset._entry, section ".printk_index", align 4
@iss_isp_reset._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 607, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ISP5 reset timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@iss_isp_reset._entry_ptr.52 = internal global ptr @iss_isp_reset._entry.50, section ".printk_index", align 4
@iss_isr.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iss_isr\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ISP5 OCP Error!\0A\00", [47 x i8] zeroinitializer }, align 32
@iss_initialize_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1159, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CSI PHY initialization failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iss_initialize_modules\00", [41 x i8] zeroinitializer }, align 32
@iss_initialize_modules._entry_ptr = internal global ptr @iss_initialize_modules._entry, section ".printk_index", align 4
@iss_initialize_modules._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1165, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CSI2 initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@iss_initialize_modules._entry_ptr.59 = internal global ptr @iss_initialize_modules._entry.57, section ".printk_index", align 4
@iss_initialize_modules._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 1171, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ISP IPIPEIF initialization failed\0A\00", [61 x i8] zeroinitializer }, align 32
@iss_initialize_modules._entry_ptr.62 = internal global ptr @iss_initialize_modules._entry.60, section ".printk_index", align 4
@iss_initialize_modules._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 1177, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ISP IPIPE initialization failed\0A\00", [63 x i8] zeroinitializer }, align 32
@iss_initialize_modules._entry_ptr.65 = internal global ptr @iss_initialize_modules._entry.63, section ".printk_index", align 4
@iss_initialize_modules._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.56, ptr @.str.2, i32 1183, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ISP RESIZER initialization failed\0A\00", [61 x i8] zeroinitializer }, align 32
@iss_initialize_modules._entry_ptr.68 = internal global ptr @iss_initialize_modules._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TI OMAP4 ISS\00", [19 x i8] zeroinitializer }, align 32
@iss_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr @v4l2_pipeline_link_notify, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@iss_register_entities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 996, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Media device registration failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iss_register_entities\00", [42 x i8] zeroinitializer }, align 32
@iss_register_entities._entry_ptr = internal global ptr @iss_register_entities._entry, section ".printk_index", align 4
@iss_register_entities._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 1004, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"V4L2 device registration failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@iss_register_entities._entry_ptr.74 = internal global ptr @iss_register_entities._entry.72, section ".printk_index", align 4
@iss_register_entities._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 1063, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid interface type %u\0A\00", [37 x i8] zeroinitializer }, align 32
@iss_register_entities._entry_ptr.77 = internal global ptr @iss_register_entities._entry.75, section ".printk_index", align 4
@iss_register_subdev_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 963, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Unable to get I2C adapter %d for device %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iss_register_subdev_group\00", [38 x i8] zeroinitializer }, align 32
@iss_register_subdev_group._entry_ptr = internal global ptr @iss_register_subdev_group._entry, section ".printk_index", align 4
@iss_register_subdev_group._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 971, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to register subdev %s\0A\00", [34 x i8] zeroinitializer }, align 32
@iss_register_subdev_group._entry_ptr.82 = internal global ptr @iss_register_subdev_group._entry.80, section ".printk_index", align 4
@iss_create_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1095, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CSI2 pads links creation failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iss_create_links\00", [47 x i8] zeroinitializer }, align 32
@iss_create_links._entry_ptr = internal global ptr @iss_create_links._entry, section ".printk_index", align 4
@iss_create_links._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 1101, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ISP IPIPEIF pads links creation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@iss_create_links._entry_ptr.87 = internal global ptr @iss_create_links._entry.85, section ".printk_index", align 4
@iss_create_links._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 1107, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ISP RESIZER pads links creation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@iss_create_links._entry_ptr.90 = internal global ptr @iss_create_links._entry.88, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 151, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"iss_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1345, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 409, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [32 x i8] c"../include/media/media-entity.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 468, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 36, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 38, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 39, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 40, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 41, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 42, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 43, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 44, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 45, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 47, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 808, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 814, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 571, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1350, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"omap4iss_id_table\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1339, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1214, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1229, i32 51 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1254, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1276, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1288, i32 9 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1289, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 834, i32 40 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 836, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 840, i32 44 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 842, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 595, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 607, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 336, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1159, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1165, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1171, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1177, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1183, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 989, i32 32 }
@___asan_gen_.309 = private unnamed_addr constant [14 x i8] c"iss_media_ops\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 361, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 995, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1003, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1062, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 960, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 970, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1095, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1101, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.367 = private constant [40 x i8] c"../drivers/staging/media/omap4iss/iss.c\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 1107, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_iss_driver_exit, ptr @__initcall__kmod_omap4_iss__309_1354_iss_driver_init6, ptr @iss_create_links._entry, ptr @iss_create_links._entry.85, ptr @iss_create_links._entry.88, ptr @iss_create_links._entry_ptr, ptr @iss_create_links._entry_ptr.87, ptr @iss_create_links._entry_ptr.90, ptr @iss_driver_exit, ptr @iss_enable_clocks._entry, ptr @iss_enable_clocks._entry.23, ptr @iss_enable_clocks._entry_ptr, ptr @iss_enable_clocks._entry_ptr.25, ptr @iss_get_clocks._entry, ptr @iss_get_clocks._entry.45, ptr @iss_get_clocks._entry_ptr, ptr @iss_get_clocks._entry_ptr.47, ptr @iss_initialize_modules._entry, ptr @iss_initialize_modules._entry.57, ptr @iss_initialize_modules._entry.60, ptr @iss_initialize_modules._entry.63, ptr @iss_initialize_modules._entry.66, ptr @iss_initialize_modules._entry_ptr, ptr @iss_initialize_modules._entry_ptr.59, ptr @iss_initialize_modules._entry_ptr.62, ptr @iss_initialize_modules._entry_ptr.65, ptr @iss_initialize_modules._entry_ptr.68, ptr @iss_isp_reset._entry, ptr @iss_isp_reset._entry.50, ptr @iss_isp_reset._entry_ptr, ptr @iss_isp_reset._entry_ptr.52, ptr @iss_pipeline_disable._entry, ptr @iss_pipeline_disable._entry_ptr, ptr @iss_probe._entry, ptr @iss_probe._entry.34, ptr @iss_probe._entry.38, ptr @iss_probe._entry_ptr, ptr @iss_probe._entry_ptr.36, ptr @iss_probe._entry_ptr.40, ptr @iss_register_entities._entry, ptr @iss_register_entities._entry.72, ptr @iss_register_entities._entry.75, ptr @iss_register_entities._entry_ptr, ptr @iss_register_entities._entry_ptr.74, ptr @iss_register_entities._entry_ptr.77, ptr @iss_register_subdev_group._entry, ptr @iss_register_subdev_group._entry.80, ptr @iss_register_subdev_group._entry_ptr, ptr @iss_register_subdev_group._entry_ptr.82, ptr @iss_reset._entry, ptr @iss_reset._entry_ptr, ptr @omap4iss_get_external_info._entry, ptr @omap4iss_get_external_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @iss_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @omap4iss_id_table, ptr @iss_probe.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @iss_media_ops, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_get_external_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_pipeline_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_enable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_enable_clocks._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_get_clocks._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_isp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_isp_reset._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_initialize_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_initialize_modules._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_initialize_modules._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_initialize_modules._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_initialize_modules._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_register_entities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_register_entities._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_register_entities._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_register_subdev_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_register_subdev_group._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_create_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_create_links._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_create_links._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_get_external_info(ptr nocapture noundef %pipe, ptr nocapture noundef readonly %link) local_unnamed_addr #0 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iss1 = getelementptr i8, ptr %pipe, i32 -28
  %0 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iss1, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #8
  %external = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 11
  %2 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %external, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %external_rate = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 12
  %4 = ptrtoint ptr %external_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = getelementptr inbounds i8, ptr %fmt, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 80)
  %8 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %index = getelementptr inbounds %struct.media_pad, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 4
  %conv = zext i16 %12 to i32
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %pad, align 4
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %fmt, align 4
  %15 = getelementptr inbounds %struct.media_link, ptr %link, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %entity = getelementptr inbounds %struct.media_pad, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entity, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.else

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %pad12 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %pad12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pad12, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_fmt, align 4
  %tobool16.not = icmp eq ptr %25, null
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %if.else18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else18:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool19.not = icmp eq ptr %26, null
  br i1 %tobool19.not, label %if.else18.if.else25_crit_edge, label %land.lhs.true20

if.else18.if.else25_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else25

land.lhs.true20:                                  ; preds = %if.else18
  %get_fmt21 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %get_fmt21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_fmt21, align 4
  %tobool22.not = icmp eq ptr %28, null
  br i1 %tobool22.not, label %land.lhs.true20.if.else25_crit_edge, label %land.lhs.true20.if.end32_crit_edge

land.lhs.true20.if.end32_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true20.if.else25_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else25

if.else25:                                        ; preds = %land.lhs.true20.if.else25_crit_edge, %if.else18.if.else25_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %land.lhs.true20.if.end32_crit_edge
  %.sink = phi ptr [ %25, %if.else25 ], [ %28, %land.lhs.true20.if.end32_crit_edge ]
  %call29 = call i32 %.sink(ptr noundef nonnull %19, ptr noundef null, ptr noundef nonnull %fmt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code, align 4
  %call37 = call ptr @omap4iss_video_format_info(i32 noundef %30) #8
  %bpp = getelementptr inbounds %struct.iss_format_info, ptr %call37, i32 0, i32 5
  %31 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bpp, align 4
  %external_bpp = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 13
  %33 = ptrtoint ptr %external_bpp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %external_bpp, align 4
  %34 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %external, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl_handler, align 4
  %call39 = call ptr @v4l2_ctrl_find(ptr noundef %37, i32 noundef 10422530) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end, label %if.end43

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %40 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %external, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %call39) #8
  %conv45 = trunc i64 %call44 to i32
  %42 = ptrtoint ptr %external_rate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv45, ptr %external_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end, %if.end32.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -32, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -32, %if.end32.cleanup_crit_edge ], [ -32, %if.end4.cleanup_crit_edge ], [ -32, %land.lhs.true.cleanup_crit_edge ], [ -32, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4iss_video_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_configure_bridge(ptr nocapture noundef readonly %iss, i32 noundef %input) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %3 = and i32 %2, -1006632961
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %arrayidx.i17 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 6
  %5 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i17, align 4
  %add.ptr.i18 = getelementptr i8, ptr %6, i32 108
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %8 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %input, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or4 = or i32 %4, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %issctrl_val.0 = phi i32 [ %or4, %sw.bb3 ], [ %4, %entry.sw.epilog_crit_edge ]
  %or5 = or i32 %issctrl_val.0, 3
  %9 = or i32 %7, 229376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or5) #8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %12, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %10) #8, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i17, align 4
  %add.ptr.i22 = getelementptr i8, ptr %14, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %9) #8, !srcloc !205
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_pipeline_set_stream(ptr noundef %pipe, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @iss_pipeline_disable(ptr noundef %pipe, ptr noundef null)
  br label %if.then4

if.else:                                          ; preds = %entry
  %output.i = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output.i, align 4
  %iss1.i = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %iss1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iss1.i, align 4
  %ent_enum.i = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 6
  %crashed.i = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 11
  %idx_max.i.i = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %idx_max.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx_max.i.i, align 4
  %idx_max1.i.i = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %idx_max1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx_max1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i.i = icmp eq i32 %5, %7
  br i1 %cmp.not.i.i, label %if.else.if.else.i.i.i_crit_edge, label %do.end.i.i, !prof !206

if.else.if.else.i.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i.i

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 550, i32 noundef 9, ptr noundef null) #8
  br label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %do.end.i.i, %if.else.if.else.i.i.i_crit_edge
  %8 = ptrtoint ptr %idx_max.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx_max.i.i, align 4
  %10 = ptrtoint ptr %idx_max1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx_max1.i.i, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 %11) #8
  %13 = ptrtoint ptr %crashed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crashed.i, align 4
  %15 = ptrtoint ptr %ent_enum.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ent_enum.i, align 4
  %call.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %16, ptr noundef %14, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool25.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool25.i.not.i, label %do.body2.i, label %if.else.i.i.i.if.end5_crit_edge

if.else.i.i.i.if.end5_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.body2.i:                                       ; preds = %if.else.i.i.i
  %lock.i = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %state.i = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 2
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  %and.i = and i32 %18, -49
  store i32 %and.i, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #8
  %do_propagation.i = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 8
  %19 = ptrtoint ptr %do_propagation.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %do_propagation.i, align 4
  %graph_mutex.i = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 1, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #8
  %20 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %output.i, align 4
  %pads117.i = getelementptr inbounds %struct.media_entity, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %pads117.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pads117.i, align 4
  %flags10118.i = getelementptr inbounds %struct.media_pad, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %flags10118.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags10118.i, align 4
  %and11119.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11119.i)
  %tobool.not120.i = icmp eq i32 %and11119.i, 0
  br i1 %tobool.not120.i, label %do.body2.i.while.end.i_crit_edge, label %if.end13.lr.ph.i

do.body2.i.while.end.i_crit_edge:                 ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end13.lr.ph.i:                                 ; preds = %do.body2.i
  %csi2a.i = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 16
  %csi2b.i = getelementptr inbounds %struct.iss_device, ptr %3, i32 0, i32 17
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end68.i.if.end13.i_crit_edge, %if.end13.lr.ph.i
  %26 = phi ptr [ %23, %if.end13.lr.ph.i ], [ %42, %if.end68.i.if.end13.i_crit_edge ]
  %call14.i = tail call ptr @media_entity_remote_pad(ptr noundef %26) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.while.end.i_crit_edge, label %lor.lhs.false.i

if.end13.i.while.end.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %entity16.i = getelementptr inbounds %struct.media_pad, ptr %call14.i, i32 0, i32 1
  %27 = ptrtoint ptr %entity16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entity16.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.while.end.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.while.end.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 2
  br i1 %cmp.i.i, label %if.else.i, label %is_media_entity_v4l2_subdev.exit.i.while.end.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.while.end.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.else.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %28, i32 0, i32 6
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %video26.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video26.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video26.i, align 4
  %tobool27.not.i = icmp eq ptr %34, null
  br i1 %tobool27.not.i, label %if.else.i.if.end58.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end58.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_stream.i, align 4
  %tobool30.not.i = icmp eq ptr %36, null
  br i1 %tobool30.not.i, label %land.lhs.true.i.if.end58.i_crit_edge, label %if.else32.i

land.lhs.true.i.if.end58.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else32.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool33.not.i = icmp eq ptr %37, null
  br i1 %tobool33.not.i, label %if.else32.i.if.else40.i_crit_edge, label %land.lhs.true34.i

if.else32.i.if.else40.i_crit_edge:                ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else40.i

land.lhs.true34.i:                                ; preds = %if.else32.i
  %s_stream35.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %s_stream35.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_stream35.i, align 4
  %tobool36.not.i = icmp eq ptr %39, null
  br i1 %tobool36.not.i, label %land.lhs.true34.i.if.else40.i_crit_edge, label %land.lhs.true34.i.if.end47.i_crit_edge

land.lhs.true34.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

land.lhs.true34.i.if.else40.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else40.i

if.else40.i:                                      ; preds = %land.lhs.true34.i.if.else40.i_crit_edge, %if.else32.i.if.else40.i_crit_edge
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else40.i, %land.lhs.true34.i.if.end47.i_crit_edge
  %.sink.i = phi ptr [ %36, %if.else40.i ], [ %39, %land.lhs.true34.i.if.end47.i_crit_edge ]
  %call44.i = tail call i32 %.sink.i(ptr noundef nonnull %28, i32 noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44.i)
  %cmp49.i = icmp sgt i32 %call44.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call44.i)
  %cmp52.not.i = icmp eq i32 %call44.i, -515
  %or.cond.i = or i1 %cmp49.i, %cmp52.not.i
  br i1 %or.cond.i, label %if.end47.i.if.end58.i_crit_edge, label %if.then54.i

if.end47.i.if.end58.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %call55.i = tail call fastcc i32 @iss_pipeline_disable(ptr noundef %pipe, ptr noundef nonnull %28) #8
  tail call void @mutex_unlock(ptr noundef %graph_mutex.i) #8
  br label %if.end5

if.end58.i:                                       ; preds = %if.end47.i.if.end58.i_crit_edge, %land.lhs.true.i.if.end58.i_crit_edge, %if.else.i.if.end58.i_crit_edge
  %cmp60.i = icmp eq ptr %28, %csi2a.i
  %cmp64.i = icmp eq ptr %28, %csi2b.i
  %or.cond112.i = select i1 %cmp60.i, i1 true, i1 %cmp64.i
  br i1 %or.cond112.i, label %if.then66.i, label %if.end58.i.if.end68.i_crit_edge

if.end58.i.if.end68.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %do_propagation.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %do_propagation.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.end58.i.if.end68.i_crit_edge
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %28, i32 0, i32 9
  %41 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pads.i, align 4
  %flags10.i = getelementptr inbounds %struct.media_pad, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags10.i, align 4
  %and11.i = and i32 %44, 1
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %if.end68.i.while.end.i_crit_edge, label %if.end68.i.if.end13.i_crit_edge

if.end68.i.if.end13.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end68.i.while.end.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end68.i.while.end.i_crit_edge, %is_media_entity_v4l2_subdev.exit.i.while.end.i_crit_edge, %lor.lhs.false.i.while.end.i_crit_edge, %if.end13.i.while.end.i_crit_edge, %do.body2.i.while.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %graph_mutex.i) #8
  %45 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %output.i, align 4
  %iss72.i = getelementptr inbounds %struct.iss_video, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %iss72.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iss72.i, align 4
  tail call fastcc void @iss_print_status(ptr noundef %48) #8
  br label %if.then4

if.then4:                                         ; preds = %while.end.i, %if.then
  %ret.016 = phi i32 [ 0, %while.end.i ], [ %call, %if.then ]
  %stream_state = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 3
  %49 = ptrtoint ptr %stream_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %state, ptr %stream_state, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then54.i, %if.else.i.i.i.if.end5_crit_edge
  %ret.015 = phi i32 [ %ret.016, %if.then4 ], [ %call44.i, %if.then54.i ], [ -5, %if.else.i.i.i.if.end5_crit_edge ]
  ret i32 %ret.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iss_pipeline_disable(ptr nocapture noundef readonly %pipe, ptr noundef readnone %until) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %pads64 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pads64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pads64, align 4
  %flags65 = getelementptr inbounds %struct.media_pad, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags65, align 4
  %and66 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool.not67 = icmp eq i32 %and66, 0
  br i1 %tobool.not67, label %entry.while.end_crit_edge, label %if.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.lr.ph:                                     ; preds = %entry
  %iss1 = getelementptr inbounds %struct.iss_video, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %iss1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iss1, align 4
  %dev = getelementptr inbounds %struct.iss_device, ptr %7, i32 0, i32 2
  %idx_max.i = getelementptr inbounds %struct.iss_device, ptr %7, i32 0, i32 11, i32 1
  %crashed = getelementptr inbounds %struct.iss_device, ptr %7, i32 0, i32 11
  br label %if.end

if.end:                                           ; preds = %if.end42.if.end_crit_edge, %if.end.lr.ph
  %8 = phi ptr [ %3, %if.end.lr.ph ], [ %33, %if.end42.if.end_crit_edge ]
  %failure.068 = phi i32 [ 0, %if.end.lr.ph ], [ %failure.1, %if.end42.if.end_crit_edge ]
  %call = tail call ptr @media_entity_remote_pad(ptr noundef %8) #8
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.while.end_crit_edge, label %lor.lhs.false

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %entity5 = getelementptr inbounds %struct.media_pad, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %entity5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity5, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.lhs.false.while.end_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp ne i32 %12, 2
  %cmp = icmp eq ptr %10, %until
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %is_media_entity_v4l2_subdev.exit.while.end_crit_edge, label %if.else

is_media_entity_v4l2_subdev.exit.while.end_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %video16 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video16, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %if.else.do.end_crit_edge, label %land.lhs.true

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_stream, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %land.lhs.true.do.end_crit_edge, label %if.else22

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else22:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %if.else22.if.else30_crit_edge, label %land.lhs.true24

if.else22.if.else30_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30

land.lhs.true24:                                  ; preds = %if.else22
  %s_stream25 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %s_stream25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_stream25, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %land.lhs.true24.if.else30_crit_edge, label %land.lhs.true24.if.end37_crit_edge

land.lhs.true24.if.end37_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true24.if.else30_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else30

if.else30:                                        ; preds = %land.lhs.true24.if.else30_crit_edge, %if.else22.if.else30_crit_edge
  br label %if.end37

if.end37:                                         ; preds = %if.else30, %land.lhs.true24.if.end37_crit_edge
  %.sink = phi ptr [ %18, %if.else30 ], [ %21, %land.lhs.true24.if.end37_crit_edge ]
  %call34 = tail call i32 %.sink(ptr noundef nonnull %10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp39 = icmp slt i32 %call34, 0
  br i1 %cmp39, label %if.end37.do.end_crit_edge, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end37.do.end_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end37.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.else.do.end_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.5, ptr noundef %name) #11
  %internal_idx.i = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 8
  %24 = ptrtoint ptr %internal_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %internal_idx.i, align 4
  %26 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i = icmp slt i32 %25, %27
  br i1 %cmp.not.i, label %if.end21.critedge.i, label %do.end.i, !prof !206

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 468, i32 noundef 9, ptr noundef null) #8
  br label %if.end42

if.end21.critedge.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crashed, align 4
  %rem.i.i = and i32 %25, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %25, 5
  %add.ptr.i.i = getelementptr i32, ptr %29, i32 %div2.i.i
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %31, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end21.critedge.i, %do.end.i, %if.end37.if.end42_crit_edge
  %failure.1 = phi i32 [ %failure.068, %if.end37.if.end42_crit_edge ], [ -110, %do.end.i ], [ -110, %if.end21.critedge.i ]
  %pads = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 9
  %32 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pads, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end42.while.end_crit_edge, label %if.end42.if.end_crit_edge

if.end42.if.end_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %is_media_entity_v4l2_subdev.exit.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %failure.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %failure.068, %lor.lhs.false.while.end_crit_edge ], [ %failure.068, %if.end.while.end_crit_edge ], [ %failure.068, %is_media_entity_v4l2_subdev.exit.while.end_crit_edge ], [ %failure.1, %if.end42.while.end_crit_edge ]
  ret i32 %failure.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_pipeline_cancel_stream(ptr nocapture noundef readonly %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 4
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @omap4iss_video_cancel_stream(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %output = getelementptr inbounds %struct.iss_pipeline, ptr %pipe, i32 0, i32 5
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @omap4iss_video_cancel_stream(ptr noundef nonnull %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_video_cancel_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_module_sync_idle(ptr noundef readonly %me, ptr noundef %wait, ptr noundef %stopping) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %me, i32 0, i32 14
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %output = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 4
  %stream_state = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %stream_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream_state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %5, label %entry.if.end_crit_edge [
    i32 0, label %entry.cleanup92_crit_edge
    i32 2, label %land.lhs.true
  ]

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.iss_pipeline, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 63
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup92_crit_edge

land.lhs.true.cleanup92_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #8
  %9 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %stopping, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !207
  %10 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe1, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.cleanup92_crit_edge, label %if.end.i

if.end.cleanup92_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.end.i:                                         ; preds = %if.end
  %stream_state.i = getelementptr inbounds %struct.iss_pipeline, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %stream_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i120 = icmp eq i32 %13, 0
  br i1 %cmp.i120, label %if.end.i.cleanup92_crit_edge, label %iss_pipeline_is_last.exit

if.end.i.cleanup92_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

iss_pipeline_is_last.exit:                        ; preds = %if.end.i
  %output.i = getelementptr inbounds %struct.iss_pipeline, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output.i, align 4
  %pad5.i = getelementptr inbounds %struct.iss_video, ptr %15, i32 0, i32 2
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad5.i) #8
  %entity.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %entity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity.i, align 4
  %cmp6.i.not = icmp eq ptr %17, %me
  br i1 %cmp6.i.not, label %do.body12, label %iss_pipeline_is_last.exit.cleanup92_crit_edge

iss_pipeline_is_last.exit.cleanup92_crit_edge:    ; preds = %iss_pipeline_is_last.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

do.body12:                                        ; preds = %iss_pipeline_is_last.exit
  %qlock = getelementptr inbounds %struct.iss_video, ptr %3, i32 0, i32 16
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #8
  %dmaqueue_flags = getelementptr inbounds %struct.iss_video, ptr %3, i32 0, i32 18
  %18 = ptrtoint ptr %dmaqueue_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmaqueue_flags, align 8
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call16) #8
  br i1 %tobool21.not, label %if.end30, label %if.then22

if.then22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #8
  %20 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %stopping, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !208
  br label %cleanup92

if.end30:                                         ; preds = %do.body12
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 663) #8
  %call.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stopping, i32 noundef 4) #8
  %21 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool40.not = icmp eq i32 %22, 0
  br i1 %tobool40.not, label %if.end30.cleanup92_crit_edge, label %if.then53

if.end30.cleanup92_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.then53:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call56130 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %call.i.i118131 = call zeroext i1 @__kasan_check_read(ptr noundef %stopping, i32 noundef 4) #8
  %24 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool59.not132 = icmp eq i32 %25, 0
  br i1 %tobool59.not132, label %if.end81.thread, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  br label %cleanup

if.end81.thread:                                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup92

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then53.cleanup_crit_edge
  %__ret54.1133 = phi i32 [ %__ret54.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then53.cleanup_crit_edge ]
  %call79 = call i32 @schedule_timeout(i32 noundef %__ret54.1133) #8
  %call56 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %call.i.i118 = call zeroext i1 @__kasan_check_read(ptr noundef %stopping, i32 noundef 4) #8
  %26 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool59.not = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool65.not = icmp eq i32 %call79, 0
  %28 = select i1 %tobool59.not, i1 %tobool65.not, i1 false
  %__ret54.1 = select i1 %28, i32 1, i32 %call79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret54.1)
  %tobool72.not = icmp eq i32 %__ret54.1, 0
  %29 = select i1 %tobool59.not, i1 true, i1 %tobool72.not
  br i1 %29, label %if.end81, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret54.1)
  %phi.cmp = icmp eq i32 %__ret54.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp, label %if.then84, label %if.end81.cleanup92_crit_edge

if.end81.cleanup92_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #8
  %30 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %stopping, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !209
  br label %cleanup92

cleanup92:                                        ; preds = %if.then84, %if.end81.cleanup92_crit_edge, %if.end81.thread, %if.end30.cleanup92_crit_edge, %if.then22, %iss_pipeline_is_last.exit.cleanup92_crit_edge, %if.end.i.cleanup92_crit_edge, %if.end.cleanup92_crit_edge, %land.lhs.true.cleanup92_crit_edge, %entry.cleanup92_crit_edge
  %retval.0 = phi i32 [ 0, %if.then22 ], [ -110, %if.then84 ], [ %5, %entry.cleanup92_crit_edge ], [ 0, %land.lhs.true.cleanup92_crit_edge ], [ 0, %iss_pipeline_is_last.exit.cleanup92_crit_edge ], [ 0, %if.end81.cleanup92_crit_edge ], [ 0, %if.end.cleanup92_crit_edge ], [ 0, %if.end.i.cleanup92_crit_edge ], [ 0, %if.end30.cleanup92_crit_edge ], [ 0, %if.end81.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_module_sync_is_stopping(ptr noundef %wait, ptr noundef %stopping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @llvm.prefetch.p0(ptr %stopping, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %stopping, ptr %stopping, i32 1, i32 0, ptr elementtype(i32) %stopping) #8, !srcloc !211
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %atomic_cmpxchg.exit.return_crit_edge, label %if.then

atomic_cmpxchg.exit.return_crit_edge:             ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.then, %atomic_cmpxchg.exit.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %atomic_cmpxchg.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_subclk_enable(ptr nocapture noundef %iss, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subclk_resources = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 23
  %0 = ptrtoint ptr %subclk_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subclk_resources, align 8
  %or = or i32 %1, %res
  store i32 %or, ptr %subclk_resources, align 8
  %2 = and i32 %or, 14
  %arrayidx.i.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 132
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %6 = and i32 %5, -234881025
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %or.i.i = or i32 %7, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %10, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %8) #8, !srcloc !205
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.cond.i.__iss_subclk_update.exit_crit_edge, label %while.body.i

while.cond.i.__iss_subclk_update.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__iss_subclk_update.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 136
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !202
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %and13.i = and i32 %15, 14
  %cmp14.i = icmp eq i32 %and13.i, %2
  br i1 %cmp14.i, label %while.body.i.__iss_subclk_update.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.__iss_subclk_update.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__iss_subclk_update.exit

__iss_subclk_update.exit:                         ; preds = %while.body.i.__iss_subclk_update.exit_crit_edge, %while.cond.i.__iss_subclk_update.exit_crit_edge
  %spec.select29.i = phi i32 [ 0, %while.body.i.__iss_subclk_update.exit_crit_edge ], [ -16, %while.cond.i.__iss_subclk_update.exit_crit_edge ]
  ret i32 %spec.select29.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_subclk_disable(ptr nocapture noundef %iss, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i32 %res, -1
  %subclk_resources = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 23
  %0 = ptrtoint ptr %subclk_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subclk_resources, align 8
  %and = and i32 %1, %neg
  store i32 %and, ptr %subclk_resources, align 8
  %2 = and i32 %and, 14
  %arrayidx.i.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 132
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %6 = and i32 %5, -234881025
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %or.i.i = or i32 %7, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %10, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %8) #8, !srcloc !205
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.cond.i.__iss_subclk_update.exit_crit_edge, label %while.body.i

while.cond.i.__iss_subclk_update.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__iss_subclk_update.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 136
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !202
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %and13.i = and i32 %15, 14
  %cmp14.i = icmp eq i32 %and13.i, %2
  br i1 %cmp14.i, label %while.body.i.__iss_subclk_update.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.__iss_subclk_update.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__iss_subclk_update.exit

__iss_subclk_update.exit:                         ; preds = %while.body.i.__iss_subclk_update.exit_crit_edge, %while.cond.i.__iss_subclk_update.exit_crit_edge
  %spec.select29.i = phi i32 [ 0, %while.body.i.__iss_subclk_update.exit_crit_edge ], [ -16, %while.cond.i.__iss_subclk_update.exit_crit_edge ]
  ret i32 %spec.select29.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_isp_subclk_enable(ptr nocapture noundef %iss, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %isp_subclk_resources = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 24
  %0 = ptrtoint ptr %isp_subclk_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isp_subclk_resources, align 4
  %or = or i32 %1, %res
  store i32 %or, ptr %isp_subclk_resources, align 4
  %and.i = shl i32 %or, 13
  %2 = and i32 %and.i, 16384
  %and2.i = shl i32 %or, 11
  %3 = and i32 %and2.i, 8192
  %4 = or i32 %3, %2
  %and8.i = shl i32 %or, 9
  %5 = and i32 %and8.i, 4096
  %6 = or i32 %4, %5
  %and14.i = shl i32 %or, 7
  %7 = and i32 %and14.i, 2048
  %8 = or i32 %6, %7
  %and20.i = shl i32 %or, 5
  %9 = and i32 %and20.i, 1024
  %10 = or i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not.i = icmp eq i32 %10, 0
  %or27.i = or i32 %10, 32768
  %clk.5.i = select i1 %tobool25.not.i, i32 0, i32 %or27.i
  %arrayidx.i.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %14 = and i32 %13, -16515073
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %or.i.i = or i32 %clk.5.i, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %18, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %16) #8, !srcloc !205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_isp_subclk_disable(ptr nocapture noundef %iss, i32 noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i32 %res, -1
  %isp_subclk_resources = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 24
  %0 = ptrtoint ptr %isp_subclk_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isp_subclk_resources, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %isp_subclk_resources, align 4
  %and.i = shl i32 %and, 13
  %2 = and i32 %and.i, 16384
  %and2.i = shl i32 %and, 11
  %3 = and i32 %and2.i, 8192
  %4 = or i32 %3, %2
  %and8.i = shl i32 %and, 9
  %5 = and i32 %and8.i, 4096
  %6 = or i32 %4, %5
  %and14.i = shl i32 %and, 7
  %7 = and i32 %and14.i, 2048
  %8 = or i32 %6, %7
  %and20.i = shl i32 %and, 5
  %9 = and i32 %and20.i, 1024
  %10 = or i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not.i = icmp eq i32 %10, 0
  %or27.i = or i32 %10, 32768
  %clk.5.i = select i1 %tobool25.not.i, i32 0, i32 %or27.i
  %arrayidx.i.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 108
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %14 = and i32 %13, -16515073
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %or.i.i = or i32 %clk.5.i, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %18, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %16) #8, !srcloc !205
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap4iss_get(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iss, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %iss_mutex = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %iss_mutex, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 13
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.end.if.then7_crit_edge, label %if.end2

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end2:                                          ; preds = %if.end
  %iss_fck.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 14
  %2 = ptrtoint ptr %iss_fck.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iss_fck.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20) #11
  br label %iss_enable_clocks.exit

if.end.i:                                         ; preds = %if.end2
  %iss_ctrlclk.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 15
  %6 = ptrtoint ptr %iss_ctrlclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iss_ctrlclk.i, align 8
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %do.end6.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %8 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24) #11
  %10 = ptrtoint ptr %iss_fck.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iss_fck.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  br label %iss_enable_clocks.exit

iss_enable_clocks.exit:                           ; preds = %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call1.i, %do.end6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp3, label %iss_enable_clocks.exit.if.end9_crit_edge, label %iss_enable_clocks.exit.if.end5_crit_edge

iss_enable_clocks.exit.if.end5_crit_edge:         ; preds = %iss_enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

iss_enable_clocks.exit.if.end9_crit_edge:         ; preds = %iss_enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end5:                                          ; preds = %iss_enable_clocks.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 822083584) #8, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %15, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 822083584) #8, !srcloc !205
  %arrayidx.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 6
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i19 = icmp eq ptr %17, null
  br i1 %tobool.not.i19, label %if.end5.if.then7_crit_edge, label %if.then.i

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 25169024) #8, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 25169024) #8, !srcloc !205
  br label %if.then7

if.then7:                                         ; preds = %if.then.i, %if.end5.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %22 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ref_count, align 8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %ref_count, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %iss_enable_clocks.exit.if.end9_crit_edge
  %__iss.026 = phi ptr [ %iss, %if.then7 ], [ null, %iss_enable_clocks.exit.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %iss_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %__iss.026, %if.end9 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_put(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iss, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %iss_mutex = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %iss_mutex, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 13
  %0 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end15_crit_edge, !prof !213

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 897, i32 noundef 9, ptr noundef null) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_count, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ref_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end15.if.end28_crit_edge

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then24:                                        ; preds = %if.end15
  %arrayidx.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then24.iss_disable_interrupts.exit_crit_edge, label %if.then.i

if.then24.iss_disable_interrupts.exit_crit_edge:  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %iss_disable_interrupts.exit

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1) #8, !srcloc !205
  br label %iss_disable_interrupts.exit

iss_disable_interrupts.exit:                      ; preds = %if.then.i, %if.then24.iss_disable_interrupts.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #8, !srcloc !205
  %idx_max.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx_max.i, align 4
  %crashed = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 11
  %12 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crashed, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %13, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %11)
  %cmp4.i.i = icmp eq i32 %call.i.i, %11
  br i1 %cmp4.i.i, label %iss_disable_interrupts.exit.if.end27_crit_edge, label %if.then25

iss_disable_interrupts.exit.if.end27_crit_edge:   ; preds = %iss_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %iss_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call fastcc i32 @iss_reset(ptr noundef nonnull %iss)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %iss_disable_interrupts.exit.if.end27_crit_edge
  %iss_ctrlclk.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 15
  %14 = ptrtoint ptr %iss_ctrlclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iss_ctrlclk.i, align 8
  tail call void @clk_disable(ptr noundef %15) #8
  %iss_fck.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 14
  %16 = ptrtoint ptr %iss_fck.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iss_fck.i, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end15.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %iss_mutex) #8
  br label %return

return:                                           ; preds = %if.end28, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iss_reset(ptr nocapture noundef readonly %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %3) #8, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000
  %spec.select = select i1 %cmp.i, i32 1073741822, i32 1
  %add = add i32 %spec.select, %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not12 = icmp eq i32 %10, 0
  br i1 %tobool.not12, label %entry.if.end7_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end.critedge, label %if.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #8
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %15 = and i32 %14, 16777216
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end.critedge:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %crashed = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 11
  %18 = ptrtoint ptr %crashed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crashed, align 4
  %idx_max.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %idx_max.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx_max.i, align 4
  %sub.i.i = add i32 %21, 31
  %22 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %22, 536870908
  %23 = call ptr @memset(ptr %19, i32 0, i32 %mul.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.critedge
  %retval.0 = phi i32 [ -110, %do.end.critedge ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iss_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iss_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @iss_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iss_print_status(ptr nocapture noundef readonly %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.10) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then15)) #8
          to label %do.body20 [label %if.then15], !srcloc !214

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %2 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev16, align 8
  %arrayidx.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !202
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %7) #8
  br label %do.body20

do.body20:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then32)) #8
          to label %do.body37 [label %if.then32], !srcloc !214

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %8 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev33, align 8
  %arrayidx.i199 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i199, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !202
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug300, ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %13) #8
  br label %do.body37

do.body37:                                        ; preds = %if.then32, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then49)) #8
          to label %do.body54 [label %if.then49], !srcloc !214

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %14 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev50, align 8
  %arrayidx.i200 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %16 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i200, align 4
  %add.ptr.i201 = getelementptr i8, ptr %17, i32 116
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #8, !srcloc !202
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug301, ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %19) #8
  br label %do.body54

do.body54:                                        ; preds = %if.then49, %do.body37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then66)) #8
          to label %do.body71 [label %if.then66], !srcloc !214

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %dev67 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %20 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev67, align 8
  %arrayidx.i202 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %22 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i202, align 4
  %add.ptr.i203 = getelementptr i8, ptr %23, i32 120
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203) #8, !srcloc !202
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug302, ptr noundef %21, ptr noundef nonnull @.str.14, i32 noundef %25) #8
  br label %do.body71

do.body71:                                        ; preds = %if.then66, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then83)) #8
          to label %do.body88 [label %if.then83], !srcloc !214

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %dev84 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %26 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev84, align 8
  %arrayidx.i204 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %28 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i204, align 4
  %add.ptr.i205 = getelementptr i8, ptr %29, i32 124
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #8, !srcloc !202
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug303, ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %31) #8
  br label %do.body88

do.body88:                                        ; preds = %if.then83, %do.body71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then100)) #8
          to label %do.body105 [label %if.then100], !srcloc !214

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #10
  %dev101 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %32 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev101, align 8
  %arrayidx.i206 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %34 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i206, align 4
  %add.ptr.i207 = getelementptr i8, ptr %35, i32 128
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #8, !srcloc !202
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug304, ptr noundef %33, ptr noundef nonnull @.str.16, i32 noundef %37) #8
  br label %do.body105

do.body105:                                       ; preds = %if.then100, %do.body88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then117)) #8
          to label %do.body122 [label %if.then117], !srcloc !214

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  %dev118 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %38 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev118, align 8
  %arrayidx.i208 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %40 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i208, align 4
  %add.ptr.i209 = getelementptr i8, ptr %41, i32 132
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #8, !srcloc !202
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug305, ptr noundef %39, ptr noundef nonnull @.str.17, i32 noundef %43) #8
  br label %do.body122

do.body122:                                       ; preds = %if.then117, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then134)) #8
          to label %do.body139 [label %if.then134], !srcloc !214

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #10
  %dev135 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %44 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev135, align 8
  %arrayidx.i210 = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 0
  %46 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i210, align 4
  %add.ptr.i211 = getelementptr i8, ptr %47, i32 136
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #8, !srcloc !202
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug306, ptr noundef %45, ptr noundef nonnull @.str.18, i32 noundef %49) #8
  br label %do.body139

do.body139:                                       ; preds = %if.then134, %do.body122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_print_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_print_status, %if.then151)) #8
          to label %do.end154 [label %if.then151], !srcloc !214

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #10
  %dev152 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %50 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev152, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_print_status.__UNIQUE_ID_ddebug307, ptr noundef %51, ptr noundef nonnull @.str.19) #8
  br label %do.end154

do.end154:                                        ; preds = %if.then151, %do.body139
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iss_reg_update(ptr nocapture noundef readonly %iss, i32 noundef %res, i32 noundef %offset, i32 noundef %clr, i32 noundef %set) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 %res
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !202
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %neg = xor i32 %clr, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %set
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %4) #8, !srcloc !205
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 11680, i32 noundef 3520) #8
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %iss_mutex = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %iss_mutex, ptr noundef nonnull @.str.29, ptr noundef nonnull @iss_probe.__key) #8
  %dev6 = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev6, align 8
  %pdata7 = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %pdata7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %pdata7, align 8
  %raw_dmamask = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %raw_dmamask to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4294967295, ptr %raw_dmamask, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %5 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %raw_dmamask, ptr %dma_mask, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %6 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.30) #8
  %syscon = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %syscon, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call11 to i32
  br label %error

if.end17:                                         ; preds = %do.body
  %call.i154 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %arrayidx.i = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i154, ptr %arrayidx.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i154, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %call.i154 to i32
  %cmp166 = icmp slt ptr %call.i154, null
  %cmp = and i1 %cmp.i.i.i, %cmp166
  br i1 %cmp, label %if.end17.error_crit_edge, label %if.end20

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end20:                                         ; preds = %if.end17
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 8
  %call.i155 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.41) #8
  %iss_fck.i = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %iss_fck.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i155, ptr %iss_fck.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i155, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6, align 8
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.42) #11
  br label %iss_get_clocks.exit

if.end.i:                                         ; preds = %if.end20
  %call7.i = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.44) #8
  %iss_ctrlclk.i = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 15
  %17 = ptrtoint ptr %iss_ctrlclk.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %iss_ctrlclk.i, align 8
  %cmp.i26.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %do.end12.i, label %if.end.i.if.end24_crit_edge

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.46) #11
  br label %iss_get_clocks.exit

iss_get_clocks.exit:                              ; preds = %do.end12.i, %do.end.i
  %retval.0.i.in.in = phi ptr [ %iss_fck.i, %do.end.i ], [ %iss_ctrlclk.i, %do.end12.i ]
  %20 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %cmp22 = icmp slt ptr %retval.0.i.in, null
  br i1 %cmp22, label %iss_get_clocks.exit.error_crit_edge, label %iss_get_clocks.exit.if.end24_crit_edge

iss_get_clocks.exit.if.end24_crit_edge:           ; preds = %iss_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

iss_get_clocks.exit.error_crit_edge:              ; preds = %iss_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end24:                                         ; preds = %iss_get_clocks.exit.if.end24_crit_edge, %if.end.i.if.end24_crit_edge
  %call25 = tail call ptr @omap4iss_get(ptr noundef nonnull %call.i)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.error_crit_edge, label %if.end28

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end28:                                         ; preds = %if.end24
  %call29 = tail call fastcc i32 @iss_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.error_iss_crit_edge, label %if.end32

if.end28.error_iss_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss

if.end32:                                         ; preds = %if.end28
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !202
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %revision = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %revision, align 4
  %26 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.31, i32 noundef %24) #11
  %call.i157 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %arrayidx.i158 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i157, ptr %arrayidx.i158, align 4
  %cmp.i.i.i159.not = icmp ugt ptr %call.i157, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not, label %if.end32.error_iss.loopexit_crit_edge, label %for.cond

if.end32.error_iss.loopexit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond:                                         ; preds = %if.end32
  %call.i157.1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #8
  %arrayidx.i158.1 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %arrayidx.i158.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i157.1, ptr %arrayidx.i158.1, align 4
  %cmp.i.i.i159.not.1 = icmp ugt ptr %call.i157.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.1, label %for.cond.error_iss.loopexit_crit_edge, label %for.cond.1

for.cond.error_iss.loopexit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.1:                                       ; preds = %for.cond
  %call.i157.2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 3) #8
  %arrayidx.i158.2 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %arrayidx.i158.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i157.2, ptr %arrayidx.i158.2, align 4
  %cmp.i.i.i159.not.2 = icmp ugt ptr %call.i157.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.2, label %for.cond.1.error_iss.loopexit_crit_edge, label %for.cond.2

for.cond.1.error_iss.loopexit_crit_edge:          ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.2:                                       ; preds = %for.cond.1
  %call.i157.3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 4) #8
  %arrayidx.i158.3 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 4
  %31 = ptrtoint ptr %arrayidx.i158.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i157.3, ptr %arrayidx.i158.3, align 4
  %cmp.i.i.i159.not.3 = icmp ugt ptr %call.i157.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.3, label %for.cond.2.error_iss.loopexit_crit_edge, label %for.cond.3

for.cond.2.error_iss.loopexit_crit_edge:          ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.3:                                       ; preds = %for.cond.2
  %call.i157.4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 5) #8
  %arrayidx.i158.4 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %arrayidx.i158.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i157.4, ptr %arrayidx.i158.4, align 4
  %cmp.i.i.i159.not.4 = icmp ugt ptr %call.i157.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.4, label %for.cond.3.error_iss.loopexit_crit_edge, label %for.cond.4

for.cond.3.error_iss.loopexit_crit_edge:          ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.4:                                       ; preds = %for.cond.3
  %call.i157.5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 6) #8
  %arrayidx.i158.5 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 6
  %33 = ptrtoint ptr %arrayidx.i158.5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i157.5, ptr %arrayidx.i158.5, align 4
  %cmp.i.i.i159.not.5 = icmp ugt ptr %call.i157.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.5, label %for.cond.4.error_iss.loopexit_crit_edge, label %for.cond.5

for.cond.4.error_iss.loopexit_crit_edge:          ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.5:                                       ; preds = %for.cond.4
  %call.i157.6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 7) #8
  %arrayidx.i158.6 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 7
  %34 = ptrtoint ptr %arrayidx.i158.6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i157.6, ptr %arrayidx.i158.6, align 4
  %cmp.i.i.i159.not.6 = icmp ugt ptr %call.i157.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.6, label %for.cond.5.error_iss.loopexit_crit_edge, label %for.cond.6

for.cond.5.error_iss.loopexit_crit_edge:          ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.6:                                       ; preds = %for.cond.5
  %call.i157.7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 8) #8
  %arrayidx.i158.7 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 8
  %35 = ptrtoint ptr %arrayidx.i158.7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i157.7, ptr %arrayidx.i158.7, align 4
  %cmp.i.i.i159.not.7 = icmp ugt ptr %call.i157.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.7, label %for.cond.6.error_iss.loopexit_crit_edge, label %for.cond.7

for.cond.6.error_iss.loopexit_crit_edge:          ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.7:                                       ; preds = %for.cond.6
  %call.i157.8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 9) #8
  %arrayidx.i158.8 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 9
  %36 = ptrtoint ptr %arrayidx.i158.8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i157.8, ptr %arrayidx.i158.8, align 4
  %cmp.i.i.i159.not.8 = icmp ugt ptr %call.i157.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.8, label %for.cond.7.error_iss.loopexit_crit_edge, label %for.cond.8

for.cond.7.error_iss.loopexit_crit_edge:          ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.8:                                       ; preds = %for.cond.7
  %call.i157.9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 10) #8
  %arrayidx.i158.9 = getelementptr %struct.iss_device, ptr %call.i, i32 0, i32 7, i32 10
  %37 = ptrtoint ptr %arrayidx.i158.9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i157.9, ptr %arrayidx.i158.9, align 4
  %cmp.i.i.i159.not.9 = icmp ugt ptr %call.i157.9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i159.not.9, label %for.cond.8.error_iss.loopexit_crit_edge, label %for.cond.9

for.cond.8.error_iss.loopexit_crit_edge:          ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss.loopexit

for.cond.9:                                       ; preds = %for.cond.8
  tail call fastcc void @iss_reg_update(ptr noundef nonnull %call.i, i32 noundef 5, i32 noundef 48, i32 noundef -4194304, i32 noundef 75497472)
  %call44 = tail call i32 @omap4iss_subclk_enable(ptr noundef nonnull %call.i, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %for.cond.9.error_iss_crit_edge, label %if.end47

for.cond.9.error_iss_crit_edge:                   ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss

if.end47:                                         ; preds = %for.cond.9
  %call48 = tail call fastcc i32 @iss_isp_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.error_iss_crit_edge, label %do.end54

if.end47.error_iss_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss

do.end54:                                         ; preds = %if.end47
  %38 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev6, align 8
  %40 = ptrtoint ptr %arrayidx.i158.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i158.5, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !202
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.35, i32 noundef %43) #11
  %call57 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 1
  br i1 %cmp58, label %do.end54.error_iss_crit_edge, label %if.end60

do.end54.error_iss_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss

if.end60:                                         ; preds = %do.end54
  %irq_num = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %irq_num to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call57, ptr %irq_num, align 4
  %45 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev6, align 8
  %call.i162 = tail call i32 @devm_request_threaded_irq(ptr noundef %46, i32 noundef %call57, ptr noundef nonnull @iss_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.37, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool64.not = icmp eq i32 %call.i162, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.39) #11
  br label %error_iss

if.end70:                                         ; preds = %if.end60
  %call71 = tail call fastcc i32 @iss_initialize_modules(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.error_iss_crit_edge, label %if.end74

if.end70.error_iss_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_iss

if.end74:                                         ; preds = %if.end70
  %call75 = tail call fastcc i32 @iss_register_entities(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.error_modules_crit_edge, label %if.end78

if.end74.error_modules_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_modules

if.end78:                                         ; preds = %if.end74
  %crashed = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 11
  %entity_internal_idx_max.i = getelementptr inbounds %struct.iss_device, ptr %call.i, i32 0, i32 1, i32 10
  %49 = ptrtoint ptr %entity_internal_idx_max.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %entity_internal_idx_max.i, align 8
  %add.i = add i32 %50, 1
  %call.i163 = tail call i32 @__media_entity_enum_init(ptr noundef %crashed, i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool80.not = icmp eq i32 %call.i163, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.error_entities_crit_edge

if.end78.error_entities_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_entities

if.end82:                                         ; preds = %if.end78
  %call83 = tail call fastcc i32 @iss_create_links(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end82.error_entities_crit_edge, label %if.end86

if.end82.error_entities_crit_edge:                ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_entities

if.end86:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @omap4iss_put(ptr noundef nonnull %call.i)
  br label %cleanup

error_entities:                                   ; preds = %if.end82.error_entities_crit_edge, %if.end78.error_entities_crit_edge
  %ret.0 = phi i32 [ %call.i163, %if.end78.error_entities_crit_edge ], [ %call83, %if.end82.error_entities_crit_edge ]
  tail call fastcc void @iss_unregister_entities(ptr noundef nonnull %call.i)
  tail call void @media_entity_enum_cleanup(ptr noundef %crashed) #8
  br label %error_modules

error_modules:                                    ; preds = %error_entities, %if.end74.error_modules_crit_edge
  %ret.1 = phi i32 [ %call75, %if.end74.error_modules_crit_edge ], [ %ret.0, %error_entities ]
  tail call fastcc void @iss_cleanup_modules(ptr noundef nonnull %call.i)
  br label %error_iss

error_iss.loopexit:                               ; preds = %for.cond.8.error_iss.loopexit_crit_edge, %for.cond.7.error_iss.loopexit_crit_edge, %for.cond.6.error_iss.loopexit_crit_edge, %for.cond.5.error_iss.loopexit_crit_edge, %for.cond.4.error_iss.loopexit_crit_edge, %for.cond.3.error_iss.loopexit_crit_edge, %for.cond.2.error_iss.loopexit_crit_edge, %for.cond.1.error_iss.loopexit_crit_edge, %for.cond.error_iss.loopexit_crit_edge, %if.end32.error_iss.loopexit_crit_edge
  %call.i157.lcssa = phi ptr [ %call.i157, %if.end32.error_iss.loopexit_crit_edge ], [ %call.i157.1, %for.cond.error_iss.loopexit_crit_edge ], [ %call.i157.2, %for.cond.1.error_iss.loopexit_crit_edge ], [ %call.i157.3, %for.cond.2.error_iss.loopexit_crit_edge ], [ %call.i157.4, %for.cond.3.error_iss.loopexit_crit_edge ], [ %call.i157.5, %for.cond.4.error_iss.loopexit_crit_edge ], [ %call.i157.6, %for.cond.5.error_iss.loopexit_crit_edge ], [ %call.i157.7, %for.cond.6.error_iss.loopexit_crit_edge ], [ %call.i157.8, %for.cond.7.error_iss.loopexit_crit_edge ], [ %call.i157.9, %for.cond.8.error_iss.loopexit_crit_edge ]
  %51 = ptrtoint ptr %call.i157.lcssa to i32
  br label %error_iss

error_iss:                                        ; preds = %error_iss.loopexit, %error_modules, %if.end70.error_iss_crit_edge, %do.end68, %do.end54.error_iss_crit_edge, %if.end47.error_iss_crit_edge, %for.cond.9.error_iss_crit_edge, %if.end28.error_iss_crit_edge
  %ret.2 = phi i32 [ %call29, %if.end28.error_iss_crit_edge ], [ %call44, %for.cond.9.error_iss_crit_edge ], [ %call48, %if.end47.error_iss_crit_edge ], [ -22, %do.end68 ], [ %call71, %if.end70.error_iss_crit_edge ], [ %ret.1, %error_modules ], [ -19, %do.end54.error_iss_crit_edge ], [ %51, %error_iss.loopexit ]
  tail call void @omap4iss_put(ptr noundef nonnull %call.i)
  br label %error

error:                                            ; preds = %error_iss, %if.end24.error_crit_edge, %iss_get_clocks.exit.error_crit_edge, %if.end17.error_crit_edge, %if.then14
  %ret.3 = phi i32 [ %9, %if.then14 ], [ %11, %if.end17.error_crit_edge ], [ %retval.0.i, %iss_get_clocks.exit.error_crit_edge ], [ %ret.2, %error_iss ], [ -22, %if.end24.error_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %iss_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end86, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %error ], [ 0, %if.end86 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %resizer.i = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 22
  tail call void @omap4iss_resizer_unregister_entities(ptr noundef %resizer.i) #8
  %ipipe.i = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 21
  tail call void @omap4iss_ipipe_unregister_entities(ptr noundef %ipipe.i) #8
  %ipipeif.i = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 20
  tail call void @omap4iss_ipipeif_unregister_entities(ptr noundef %ipipeif.i) #8
  %csi2a.i = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 16
  tail call void @omap4iss_csi2_unregister_entities(ptr noundef %csi2a.i) #8
  %csi2b.i = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 17
  tail call void @omap4iss_csi2_unregister_entities(ptr noundef %csi2b.i) #8
  tail call void @v4l2_device_unregister(ptr noundef %1) #8
  %media_dev.i = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 1
  tail call void @media_device_unregister(ptr noundef %media_dev.i) #8
  %crashed = getelementptr inbounds %struct.iss_device, ptr %1, i32 0, i32 11
  tail call void @media_entity_enum_cleanup(ptr noundef %crashed) #8
  tail call void @omap4iss_csi2_cleanup(ptr noundef %1) #8
  tail call void @omap4iss_ipipeif_cleanup(ptr noundef %1) #8
  tail call void @omap4iss_ipipe_cleanup(ptr noundef %1) #8
  tail call void @omap4iss_resizer_cleanup(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iss_isp_reset(ptr nocapture noundef readonly %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %iss, i32 0, i32 7, i32 6
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %3 = and i32 %2, -805306369
  %4 = or i32 %3, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %4) #8, !srcloc !205
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %8, i32 108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %10 = or i32 %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i54 = getelementptr i8, ptr %12, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i54, i32 %10) #8, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000000
  %spec.select = select i1 %cmp.i, i32 1073741822, i32 100
  %add = add i32 %spec.select, %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %15, i32 108
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %17 = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not64 = icmp eq i32 %17, 0
  br i1 %tobool.not64, label %entry.while.body_crit_edge, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.cleanup.sink.split_crit_edge, label %if.end

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 108
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %22 = and i32 %21, 4096
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %26 = or i32 %25, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i5.i58 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i58, i32 %26) #8, !srcloc !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %call.i46 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i46)
  %cmp.i47 = icmp ult i32 %call.i46, 1000000
  %spec.select61 = select i1 %cmp.i47, i32 1073741822, i32 100
  %add9 = add i32 %spec.select61, %29
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i6065 = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6065) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %33 = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool16.not66 = icmp eq i32 %33, 0
  br i1 %tobool16.not66, label %if.end6.cleanup_crit_edge, label %if.end6.while.body22_crit_edge

if.end6.while.body22_crit_edge:                   ; preds = %if.end6
  br label %while.body22

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body22:                                     ; preds = %if.end26.while.body22_crit_edge, %if.end6.while.body22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub23 = sub i32 %add9, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23)
  %cmp24 = icmp slt i32 %sub23, 0
  br i1 %cmp24, label %while.body22.cleanup.sink.split_crit_edge, label %if.end26

while.body22.cleanup.sink.split_crit_edge:        ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end26:                                         ; preds = %while.body22
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %38 = and i32 %37, 33554432
  %tobool16.not = icmp eq i32 %38, 0
  br i1 %tobool16.not, label %if.end26.cleanup_crit_edge, label %if.end26.while.body22_crit_edge

if.end26.while.body22_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body22

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.body22.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %.str.51.sink = phi ptr [ @.str.51, %while.body22.cleanup.sink.split_crit_edge ], [ @.str.48, %while.body.cleanup.sink.split_crit_edge ]
  %dev37 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %39 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev37, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull %.str.51.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end26.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iss_isr(i32 noundef %irq, ptr noundef %_iss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.iss_device, ptr %_iss, i32 0, i32 7, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 116
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !202
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %5, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %2) #8, !srcloc !205
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %csi2a = getelementptr inbounds %struct.iss_device, ptr %_iss, i32 0, i32 16
  tail call void @omap4iss_csi2_isr(ptr noundef %csi2a) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %csi2b = getelementptr inbounds %struct.iss_device, ptr %_iss, i32 0, i32 17
  tail call void @omap4iss_csi2_isr(ptr noundef %csi2b) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end29_crit_edge, label %if.then7

if.end4.if.end29_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then7:                                         ; preds = %if.end4
  %arrayidx.i49 = getelementptr %struct.iss_device, ptr %_iss, i32 0, i32 7, i32 6
  %6 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #8, !srcloc !202
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i49, align 4
  %add.ptr.i52 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %8) #8, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool10.not = icmp sgt i32 %9, -1
  br i1 %tobool10.not, label %if.then7.if.end18_crit_edge, label %do.body

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.body:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iss_isr.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iss_isr, %if.then16)) #8
          to label %if.end18 [label %if.then16], !srcloc !214

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iss_device, ptr %_iss, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iss_isr.__UNIQUE_ID_ddebug308, ptr noundef %13, ptr noundef nonnull @.str.54) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body, %if.then7.if.end18_crit_edge
  %and19 = and i32 %9, 513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %ipipeif = getelementptr inbounds %struct.iss_device, ptr %_iss, i32 0, i32 20
  tail call void @omap4iss_ipipeif_isr(ptr noundef %ipipeif, i32 noundef %and19) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %and24 = and i32 %9, 819200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %resizer = getelementptr inbounds %struct.iss_device, ptr %_iss, i32 0, i32 22
  tail call void @omap4iss_resizer_isr(ptr noundef %resizer, i32 noundef %and24) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge, %if.end4.if.end29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #8, !srcloc !205
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iss_initialize_modules(ptr noundef %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4iss_csiphy_init(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @omap4iss_csi2_init(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @omap4iss_ipipeif_init(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %4 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.61) #11
  br label %error_ipipeif

if.end16:                                         ; preds = %if.end8
  %call17 = tail call i32 @omap4iss_ipipe_init(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %6 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.64) #11
  br label %error_ipipe

if.end24:                                         ; preds = %if.end16
  %call25 = tail call i32 @omap4iss_resizer_init(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %8 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.67) #11
  tail call void @omap4iss_ipipe_cleanup(ptr noundef %iss) #8
  br label %error_ipipe

error_ipipe:                                      ; preds = %do.end30, %do.end22
  %ret.0 = phi i32 [ %call17, %do.end22 ], [ %call25, %do.end30 ]
  tail call void @omap4iss_ipipeif_cleanup(ptr noundef %iss) #8
  br label %error_ipipeif

error_ipipeif:                                    ; preds = %error_ipipe, %do.end14
  %ret.1 = phi i32 [ %call9, %do.end14 ], [ %ret.0, %error_ipipe ]
  tail call void @omap4iss_csi2_cleanup(ptr noundef %iss) #8
  br label %cleanup

cleanup:                                          ; preds = %error_ipipeif, %if.end24.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %call, %do.end ], [ %call1, %do.end6 ], [ %ret.1, %error_ipipeif ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iss_register_entities(ptr noundef %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 4
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 8
  %dev = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %media_dev = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 1
  %4 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %media_dev, align 8
  %model = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 1, i32 2
  %call = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.69, i32 noundef 32) #8
  %revision = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 3
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %revision, align 4
  %hw_revision = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %hw_revision to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hw_revision, align 8
  %ops = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 1, i32 21
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iss_media_ops, ptr %ops, align 8
  %call7 = tail call i32 @__media_device_register(ptr noundef %media_dev, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.70, i32 noundef %call7) #11
  br label %cleanup78

if.end:                                           ; preds = %entry
  %mdev = getelementptr inbounds %struct.v4l2_device, ptr %iss, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %media_dev, ptr %mdev, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call12 = tail call i32 @v4l2_device_register(ptr noundef %13, ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.73, i32 noundef %call12) #11
  br label %if.then76

if.end19:                                         ; preds = %if.end
  %csi2a = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16
  %call21 = tail call i32 @omap4iss_csi2_register_entities(ptr noundef %csi2a, ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.if.then76_crit_edge, label %if.end24

if.end19.if.then76_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end24:                                         ; preds = %if.end19
  %csi2b = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17
  %call26 = tail call i32 @omap4iss_csi2_register_entities(ptr noundef %csi2b, ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end24.if.then76_crit_edge, label %if.end29

if.end24.if.then76_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end29:                                         ; preds = %if.end24
  %ipipeif = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20
  %call31 = tail call i32 @omap4iss_ipipeif_register_entities(ptr noundef %ipipeif, ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end29.if.then76_crit_edge, label %if.end34

if.end29.if.then76_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end34:                                         ; preds = %if.end29
  %ipipe = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21
  %call36 = tail call i32 @omap4iss_ipipe_register_entities(ptr noundef %ipipe, ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end34.if.then76_crit_edge, label %if.end39

if.end34.if.then76_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end39:                                         ; preds = %if.end34
  %resizer = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22
  %call41 = tail call i32 @omap4iss_resizer_register_entities(ptr noundef %resizer, ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end39.if.then76_crit_edge, label %if.end44

if.end39.if.then76_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end44:                                         ; preds = %if.end39
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %tobool.not140 = icmp eq ptr %17, null
  br i1 %tobool.not140, label %if.end44.done_crit_edge, label %if.end44.land.rhs_crit_edge

if.end44.land.rhs_crit_edge:                      ; preds = %if.end44
  br label %land.rhs

if.end44.done_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end44.land.rhs_crit_edge
  %subdevs.0141 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %17, %if.end44.land.rhs_crit_edge ]
  %18 = ptrtoint ptr %subdevs.0141 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subdevs.0141, align 4
  %tobool47.not = icmp eq ptr %19, null
  br i1 %tobool47.not, label %land.rhs.done_crit_edge, label %for.body

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body:                                         ; preds = %land.rhs
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %for.body.lr.ph.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %for.body
  %i2c_adapter_id.peel.i = getelementptr inbounds %struct.iss_subdev_i2c_board_info, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %i2c_adapter_id.peel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2c_adapter_id.peel.i, align 4
  %call.peel.i = tail call ptr @i2c_get_adapter(i32 noundef %23) #8
  %tobool4.not.peel.i = icmp eq ptr %call.peel.i, null
  br i1 %tobool4.not.peel.i, label %do.end.peel.i, label %if.end8.peel.i

if.end8.peel.i:                                   ; preds = %for.body.lr.ph.i
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %call10.peel.i = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %iss, ptr noundef nonnull %call.peel.i, ptr noundef %25, ptr noundef null) #8
  %tobool11.not.peel.i = icmp eq ptr %call10.peel.i, null
  br i1 %tobool11.not.peel.i, label %do.end15.peel.i, label %if.end8.peel.i.cleanup.peel.i_crit_edge

if.end8.peel.i.cleanup.peel.i_crit_edge:          ; preds = %if.end8.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.peel.i

do.end15.peel.i:                                  ; preds = %if.end8.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.81, ptr noundef %29) #11
  br label %cleanup.peel.i

do.end.peel.i:                                    ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %32 = ptrtoint ptr %i2c_adapter_id.peel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i2c_adapter_id.peel.i, align 4
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %33, ptr noundef %35) #11
  br label %cleanup.peel.i

cleanup.peel.i:                                   ; preds = %do.end.peel.i, %do.end15.peel.i, %if.end8.peel.i.cleanup.peel.i_crit_edge
  %sensor.2.peel.i = phi ptr [ null, %do.end15.peel.i ], [ null, %do.end.peel.i ], [ %call10.peel.i, %if.end8.peel.i.cleanup.peel.i_crit_edge ]
  %incdec.ptr.peel.i = getelementptr %struct.iss_subdev_i2c_board_info, ptr %19, i32 1
  %36 = ptrtoint ptr %incdec.ptr.peel.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.peel.i = load ptr, ptr %incdec.ptr.peel.i, align 4
  %tobool3.not.peel.i = icmp eq ptr %.pr.peel.i, null
  br i1 %tobool3.not.peel.i, label %cleanup.peel.i.iss_register_subdev_group.exit_crit_edge, label %cleanup.peel.i.for.body.i_crit_edge

cleanup.peel.i.for.body.i_crit_edge:              ; preds = %cleanup.peel.i
  br label %for.body.i

cleanup.peel.i.iss_register_subdev_group.exit_crit_edge: ; preds = %cleanup.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iss_register_subdev_group.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %cleanup.peel.i.for.body.i_crit_edge
  %board_info.addr.039.i = phi ptr [ %incdec.ptr.i, %cleanup.i.for.body.i_crit_edge ], [ %incdec.ptr.peel.i, %cleanup.peel.i.for.body.i_crit_edge ]
  %i2c_adapter_id.i = getelementptr inbounds %struct.iss_subdev_i2c_board_info, ptr %board_info.addr.039.i, i32 0, i32 1
  %37 = ptrtoint ptr %i2c_adapter_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i2c_adapter_id.i, align 4
  %call.i = tail call ptr @i2c_get_adapter(i32 noundef %38) #8
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = ptrtoint ptr %i2c_adapter_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i2c_adapter_id.i, align 4
  %43 = ptrtoint ptr %board_info.addr.039.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %board_info.addr.039.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %42, ptr noundef %44) #11
  br label %cleanup.i

if.end8.i:                                        ; preds = %for.body.i
  %45 = ptrtoint ptr %board_info.addr.039.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %board_info.addr.039.i, align 4
  %call10.i = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %iss, ptr noundef nonnull %call.i, ptr noundef %46, ptr noundef null) #8
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end8.i.cleanup.i_crit_edge

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %49 = ptrtoint ptr %board_info.addr.039.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %board_info.addr.039.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.81, ptr noundef %50) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end15.i, %if.end8.i.cleanup.i_crit_edge, %do.end.i
  %incdec.ptr.i = getelementptr %struct.iss_subdev_i2c_board_info, ptr %board_info.addr.039.i, i32 1
  %51 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr.i = load ptr, ptr %incdec.ptr.i, align 4
  %tobool3.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool3.not.i, label %cleanup.i.iss_register_subdev_group.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge, !llvm.loop !215

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.iss_register_subdev_group.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iss_register_subdev_group.exit

iss_register_subdev_group.exit:                   ; preds = %cleanup.i.iss_register_subdev_group.exit_crit_edge, %cleanup.peel.i.iss_register_subdev_group.exit_crit_edge
  %tobool50.not = icmp eq ptr %sensor.2.peel.i, null
  br i1 %tobool50.not, label %iss_register_subdev_group.exit.for.inc_crit_edge, label %if.end52

iss_register_subdev_group.exit.for.inc_crit_edge: ; preds = %iss_register_subdev_group.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end52:                                         ; preds = %iss_register_subdev_group.exit
  %host_priv = getelementptr inbounds %struct.v4l2_subdev, ptr %sensor.2.peel.i, i32 0, i32 12
  %52 = ptrtoint ptr %host_priv to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %subdevs.0141, ptr %host_priv, align 4
  %interface = getelementptr inbounds %struct.iss_v4l2_subdevs_group, ptr %subdevs.0141, i32 0, i32 1
  %53 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interface, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %54, label %do.end60 [
    i32 0, label %if.end52.sw.epilog_crit_edge
    i32 1, label %sw.bb54
  ]

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.76, i32 noundef %54) #11
  br label %if.then76

sw.epilog:                                        ; preds = %sw.bb54, %if.end52.sw.epilog_crit_edge
  %input.0 = phi ptr [ %csi2b, %sw.bb54 ], [ %csi2a, %if.end52.sw.epilog_crit_edge ]
  %call64 = tail call i32 @media_create_pad_link(ptr noundef nonnull %sensor.2.peel.i, i16 noundef zeroext 0, ptr noundef %input.0, i16 noundef zeroext 0, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %sw.epilog.if.then76_crit_edge, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.epilog.if.then76_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %iss_register_subdev_group.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iss_v4l2_subdevs_group, ptr %subdevs.0141, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %for.inc.done_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done:                                             ; preds = %for.inc.done_crit_edge, %land.rhs.done_crit_edge, %if.end44.done_crit_edge
  %call.i130 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %iss, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp74 = icmp slt i32 %call.i130, 0
  br i1 %cmp74, label %done.if.then76_crit_edge, label %done.cleanup78_crit_edge

done.cleanup78_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

done.if.then76_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then76:                                        ; preds = %done.if.then76_crit_edge, %sw.epilog.if.then76_crit_edge, %do.end60, %if.end39.if.then76_crit_edge, %if.end34.if.then76_crit_edge, %if.end29.if.then76_crit_edge, %if.end24.if.then76_crit_edge, %if.end19.if.then76_crit_edge, %do.end17
  %ret.2138 = phi i32 [ %call.i130, %done.if.then76_crit_edge ], [ -22, %do.end60 ], [ %call41, %if.end39.if.then76_crit_edge ], [ %call36, %if.end34.if.then76_crit_edge ], [ %call31, %if.end29.if.then76_crit_edge ], [ %call26, %if.end24.if.then76_crit_edge ], [ %call21, %if.end19.if.then76_crit_edge ], [ %call12, %do.end17 ], [ %call64, %sw.epilog.if.then76_crit_edge ]
  %resizer.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22
  tail call void @omap4iss_resizer_unregister_entities(ptr noundef %resizer.i) #8
  %ipipe.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21
  tail call void @omap4iss_ipipe_unregister_entities(ptr noundef %ipipe.i) #8
  %ipipeif.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20
  tail call void @omap4iss_ipipeif_unregister_entities(ptr noundef %ipipeif.i) #8
  %csi2a.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16
  tail call void @omap4iss_csi2_unregister_entities(ptr noundef %csi2a.i) #8
  %csi2b.i = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17
  tail call void @omap4iss_csi2_unregister_entities(ptr noundef %csi2b.i) #8
  tail call void @v4l2_device_unregister(ptr noundef %iss) #8
  tail call void @media_device_unregister(ptr noundef %media_dev) #8
  br label %cleanup78

cleanup78:                                        ; preds = %if.then76, %done.cleanup78_crit_edge, %do.end
  %retval.0 = phi i32 [ %call7, %do.end ], [ %ret.2138, %if.then76 ], [ %call.i130, %done.cleanup78_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iss_create_links(ptr noundef %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4iss_csi2_create_links(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.83) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @omap4iss_ipipeif_create_links(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.86) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @omap4iss_resizer_create_links(ptr noundef %iss) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 2
  %4 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.89) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %csi2a = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16
  %ipipeif = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20
  %call19 = tail call i32 @media_create_pad_link(ptr noundef %csi2a, i16 noundef zeroext 1, ptr noundef %ipipeif, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %csi2b = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17
  %call28 = tail call i32 @media_create_pad_link(ptr noundef %csi2b, i16 noundef zeroext 1, ptr noundef %ipipeif, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end22.cleanup_crit_edge, label %if.end31

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %resizer = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22
  %call37 = tail call i32 @media_create_pad_link(ptr noundef %ipipeif, i16 noundef zeroext 2, ptr noundef %resizer, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end31.cleanup_crit_edge, label %if.end40

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %ipipe = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21
  %call46 = tail call i32 @media_create_pad_link(ptr noundef %ipipeif, i16 noundef zeroext 2, ptr noundef %ipipe, i16 noundef zeroext 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end40.cleanup_crit_edge, label %if.end49

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = tail call i32 @media_create_pad_link(ptr noundef %ipipe, i16 noundef zeroext 1, ptr noundef %resizer, i16 noundef zeroext 0, i32 noundef 0) #8
  %6 = tail call i32 @llvm.smin.i32(i32 %call56, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end40.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ %call9, %do.end14 ], [ %call19, %if.end16.cleanup_crit_edge ], [ %call28, %if.end22.cleanup_crit_edge ], [ %call37, %if.end31.cleanup_crit_edge ], [ %call46, %if.end40.cleanup_crit_edge ], [ %6, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iss_unregister_entities(ptr noundef %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %resizer = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 22
  tail call void @omap4iss_resizer_unregister_entities(ptr noundef %resizer) #8
  %ipipe = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 21
  tail call void @omap4iss_ipipe_unregister_entities(ptr noundef %ipipe) #8
  %ipipeif = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 20
  tail call void @omap4iss_ipipeif_unregister_entities(ptr noundef %ipipeif) #8
  %csi2a = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16
  tail call void @omap4iss_csi2_unregister_entities(ptr noundef %csi2a) #8
  %csi2b = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17
  tail call void @omap4iss_csi2_unregister_entities(ptr noundef %csi2b) #8
  tail call void @v4l2_device_unregister(ptr noundef %iss) #8
  %media_dev = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 1
  tail call void @media_device_unregister(ptr noundef %media_dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_enum_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iss_cleanup_modules(ptr noundef %iss) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap4iss_csi2_cleanup(ptr noundef %iss) #8
  tail call void @omap4iss_ipipeif_cleanup(ptr noundef %iss) #8
  tail call void @omap4iss_ipipe_cleanup(ptr noundef %iss) #8
  tail call void @omap4iss_resizer_cleanup(ptr noundef %iss) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_csi2_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_ipipeif_isr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_resizer_isr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_csiphy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_csi2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_ipipeif_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_ipipe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_resizer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_ipipe_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_ipipeif_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_csi2_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_csi2_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_ipipeif_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_ipipe_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_resizer_register_entities(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_link_notify(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_enum_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_csi2_create_links(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_ipipeif_create_links(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_resizer_create_links(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_resizer_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_ipipe_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_ipipeif_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_csi2_unregister_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4iss_resizer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83, !85, !87, !88, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !105, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199, !200}
!llvm.ident = !{!201}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 151, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap4iss_get_external_info._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap4iss_get_external_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_omap4_iss__309_1354_iss_driver_init6, !9, !"__initcall__kmod_omap4_iss__309_1354_iss_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1354, i32 1}
!10 = !{ptr @__exitcall_iss_driver_exit, !9, !"__exitcall_iss_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description310, !12, !"__UNIQUE_ID_description310", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1356, i32 1}
!13 = !{ptr @__UNIQUE_ID_author311, !14, !"__UNIQUE_ID_author311", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1357, i32 1}
!15 = !{ptr @__UNIQUE_ID_file312, !16, !"__UNIQUE_ID_file312", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1358, i32 1}
!17 = !{ptr @__UNIQUE_ID_license313, !16, !"__UNIQUE_ID_license313", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 409, i32 4}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iss_pipeline_disable._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @iss_pipeline_disable._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/media/media-entity.h", i32 468, i32 6}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 36, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug298, !26, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 38, i32 2}
!32 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug299, !31, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 39, i32 2}
!35 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug300, !34, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 40, i32 2}
!38 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug301, !37, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 41, i32 2}
!41 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug302, !40, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 42, i32 2}
!44 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug303, !43, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 43, i32 2}
!47 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug304, !46, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 44, i32 2}
!50 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug305, !49, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 45, i32 2}
!53 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug306, !52, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 47, i32 2}
!56 = !{ptr @iss_print_status.__UNIQUE_ID_ddebug307, !55, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 808, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iss_enable_clocks._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @iss_enable_clocks._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 814, i32 3}
!65 = !{ptr @iss_enable_clocks._entry.23, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @iss_enable_clocks._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"hl_irq", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 99, i32 19}
!69 = distinct !{null, !70, !"isp_irq", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 72, i32 19}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 571, i32 3}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @iss_reset._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @iss_reset._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1350, i32 11}
!78 = !{ptr @iss_driver, !79, !"iss_driver", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1345, i32 31}
!80 = !{ptr @iss_probe.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1214, i32 2}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1229, i32 51}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1254, i32 2}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @iss_probe._entry, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @iss_probe._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1276, i32 2}
!93 = !{ptr @iss_probe._entry.34, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @iss_probe._entry_ptr.36, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1288, i32 9}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1289, i32 3}
!99 = !{ptr @iss_probe._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @iss_probe._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 834, i32 40}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 836, i32 3}
!105 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @iss_get_clocks._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @iss_get_clocks._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 840, i32 44}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 842, i32 3}
!112 = !{ptr @iss_get_clocks._entry.45, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @iss_get_clocks._entry_ptr.47, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 595, i32 3}
!116 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @iss_isp_reset._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @iss_isp_reset._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 607, i32 3}
!121 = !{ptr @iss_isp_reset._entry.50, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @iss_isp_reset._entry_ptr.52, !120, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !124, !"ipipeif_events", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 312, i32 19}
!125 = distinct !{null, !126, !"resizer_events", i1 false, i1 false}
!126 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 314, i32 19}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 336, i32 4}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @iss_isr.__UNIQUE_ID_ddebug308, !128, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1159, i32 3}
!133 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @iss_initialize_modules._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @iss_initialize_modules._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1165, i32 3}
!138 = !{ptr @iss_initialize_modules._entry.57, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @iss_initialize_modules._entry_ptr.59, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1171, i32 3}
!142 = !{ptr @iss_initialize_modules._entry.60, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @iss_initialize_modules._entry_ptr.62, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1177, i32 3}
!146 = !{ptr @iss_initialize_modules._entry.63, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @iss_initialize_modules._entry_ptr.65, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1183, i32 3}
!150 = !{ptr @iss_initialize_modules._entry.66, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @iss_initialize_modules._entry_ptr.68, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 989, i32 32}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 995, i32 3}
!156 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @iss_register_entities._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @iss_register_entities._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1003, i32 3}
!161 = !{ptr @iss_register_entities._entry.72, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @iss_register_entities._entry_ptr.74, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1062, i32 4}
!165 = !{ptr @iss_register_entities._entry.75, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @iss_register_entities._entry_ptr.77, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @iss_media_ops, !168, !"iss_media_ops", i1 false, i1 false}
!168 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 361, i32 38}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 960, i32 4}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @iss_register_subdev_group._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @iss_register_subdev_group._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 970, i32 4}
!176 = !{ptr @iss_register_subdev_group._entry.80, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @iss_register_subdev_group._entry_ptr.82, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1095, i32 3}
!180 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @iss_create_links._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @iss_create_links._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1101, i32 3}
!185 = !{ptr @iss_create_links._entry.85, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @iss_create_links._entry_ptr.87, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1107, i32 3}
!189 = !{ptr @iss_create_links._entry.88, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @iss_create_links._entry_ptr.90, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @omap4iss_id_table, !192, !"omap4iss_id_table", i1 false, i1 false}
!192 = !{!"../drivers/staging/media/omap4iss/iss.c", i32 1339, i32 40}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!202 = !{i64 6287708}
!203 = !{i64 2156494756}
!204 = !{i64 2156495147}
!205 = !{i64 6287290}
!206 = !{!"branch_weights", i32 2000, i32 1}
!207 = !{i64 2156548952}
!208 = !{i64 2156549466}
!209 = !{i64 2156551575}
!210 = !{i64 2148373150}
!211 = !{i64 755063, i64 755087, i64 755108, i64 755125, i64 755142}
!212 = !{i64 2148373376}
!213 = !{!"branch_weights", i32 1, i32 2000}
!214 = !{i64 2148753142, i64 2148753147, i64 2148753160, i64 2148753204, i64 2148753238, i64 2148753259}
!215 = distinct !{!215, !216}
!216 = !{!"llvm.loop.peeled.count", i32 1}
