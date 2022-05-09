; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/hdmi_wp.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hdmi_video_format = type { i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_wp_data = type { ptr, i32, i32 }
%struct.hdmi_audio_format = type { i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_audio_dma = type { i8, i8, i32, i16 }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_WP_REVISION\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_WP_SYSCONFIG\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_WP_IRQSTATUS_RAW\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_WP_IRQSTATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_WP_IRQENABLE_SET\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_WP_IRQENABLE_CLR\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_WP_IRQWAKEEN\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_WP_PWR_CTRL\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_WP_DEBOUNCE\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_WP_VIDEO_CFG\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_WP_VIDEO_SIZE\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_WP_VIDEO_TIMING_H\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_WP_VIDEO_TIMING_V\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_WP_CLK\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_WP_AUDIO_CFG\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_WP_AUDIO_CFG2\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_WP_AUDIO_CTRL\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_WP_AUDIO_DATA\00", [45 x i8] zeroinitializer }, align 32
@hdmi_wp_set_phy_pwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013HDMIWP: omapdss HDMIWP error: Failed to set PHY power mode to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi_wp_set_phy_pwr\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/omapdrm/dss/hdmi_wp.c\00", [58 x i8] zeroinitializer }, align 32
@hdmi_wp_set_phy_pwr._entry_ptr = internal global ptr @hdmi_wp_set_phy_pwr._entry, section ".printk_index", align 4
@hdmi_wp_set_pll_pwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.21, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013HDMIWP: omapdss HDMIWP error: Failed to set PLL_PWR_STATUS\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi_wp_set_pll_pwr\00", [44 x i8] zeroinitializer }, align 32
@hdmi_wp_set_pll_pwr._entry_ptr = internal global ptr @hdmi_wp_set_pll_pwr._entry, section ".printk_index", align 4
@hdmi_wp_video_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.21, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013HDMIWP: omapdss HDMIWP error: no HDMI FRAMEDONE when disabling output\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi_wp_video_stop\00", [45 x i8] zeroinitializer }, align 32
@hdmi_wp_video_stop._entry_ptr = internal global ptr @hdmi_wp_video_stop._entry, section ".printk_index", align 4
@hdmi_wp_video_config_interface.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.21, ptr @.str.28, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hdmi_wp_video_config_interface\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Enter hdmi_wp_video_config_interface\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HDMIWP: Enter hdmi_wp_video_config_interface\0A\00", [50 x i8] zeroinitializer }, align 32
@hdmi_wp_video_config_timing.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.30, ptr @.str.21, ptr @.str.31, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hdmi_wp_video_config_timing\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enter hdmi_wp_video_config_timing\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"HDMIWP: Enter hdmi_wp_video_config_timing\0A\00", [53 x i8] zeroinitializer }, align 32
@hdmi_wp_init_vid_fmt_timings.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.33, ptr @.str.21, ptr @.str.34, i8 0, i8 48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hdmi_wp_init_vid_fmt_timings\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enter hdmi_wp_video_init_format\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDMIWP: Enter hdmi_wp_video_init_format\0A\00", [55 x i8] zeroinitializer }, align 32
@hdmi_wp_audio_config_format.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.36, ptr @.str.21, ptr @.str.37, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hdmi_wp_audio_config_format\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enter hdmi_wp_audio_config_format\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"HDMIWP: Enter hdmi_wp_audio_config_format\0A\00", [53 x i8] zeroinitializer }, align 32
@hdmi_wp_audio_config_dma.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.39, ptr @.str.21, ptr @.str.40, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi_wp_audio_config_dma\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enter hdmi_wp_audio_config_dma\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMIWP: Enter hdmi_wp_audio_config_dma\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wp\00", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 24, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 25, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 26, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 27, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 28, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 29, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 30, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 31, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 32, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 33, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 34, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 35, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 36, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 37, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 38, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 39, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 40, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 41, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 79, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 95, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 127, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 148, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 170, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 195, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 230, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 251, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [41 x i8] c"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 283, i32 59 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @hdmi_wp_set_phy_pwr._entry, ptr @hdmi_wp_set_phy_pwr._entry_ptr, ptr @hdmi_wp_set_pll_pwr._entry, ptr @hdmi_wp_set_pll_pwr._entry_ptr, ptr @hdmi_wp_video_stop._entry, ptr @hdmi_wp_video_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_wp_set_phy_pwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_wp_set_pll_pwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_wp_video_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_dump(ptr nocapture noundef readonly %wp, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %2) #4
  %3 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %5) #4
  %6 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wp, align 4
  %add.ptr.i69 = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %8) #4
  %9 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wp, align 4
  %add.ptr.i70 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef %11) #4
  %12 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wp, align 4
  %add.ptr.i71 = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %14) #4
  %15 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wp, align 4
  %add.ptr.i72 = getelementptr i8, ptr %16, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %17) #4
  %18 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wp, align 4
  %add.ptr.i73 = getelementptr i8, ptr %19, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef %20) #4
  %21 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wp, align 4
  %add.ptr.i74 = getelementptr i8, ptr %22, i32 64
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %23) #4
  %24 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wp, align 4
  %add.ptr.i75 = getelementptr i8, ptr %25, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef %26) #4
  %27 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wp, align 4
  %add.ptr.i76 = getelementptr i8, ptr %28, i32 80
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef %29) #4
  %30 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wp, align 4
  %add.ptr.i77 = getelementptr i8, ptr %31, i32 96
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %32) #4
  %33 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wp, align 4
  %add.ptr.i78 = getelementptr i8, ptr %34, i32 104
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef %35) #4
  %36 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wp, align 4
  %add.ptr.i79 = getelementptr i8, ptr %37, i32 108
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %38) #4
  %39 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wp, align 4
  %add.ptr.i80 = getelementptr i8, ptr %40, i32 112
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %41) #4
  %42 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wp, align 4
  %add.ptr.i81 = getelementptr i8, ptr %43, i32 128
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %44) #4
  %45 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wp, align 4
  %add.ptr.i82 = getelementptr i8, ptr %46, i32 132
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %47) #4
  %48 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wp, align 4
  %add.ptr.i83 = getelementptr i8, ptr %49, i32 136
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %50) #4
  %51 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wp, align 4
  %add.ptr.i84 = getelementptr i8, ptr %52, i32 140
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #4, !srcloc !90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef %53) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_wp_get_irqstatus(ptr nocapture noundef readonly %wp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_set_irqstatus(ptr nocapture noundef readonly %wp, i32 noundef %irqstatus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %irqstatus) #4, !srcloc !91
  %2 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wp, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #4, !srcloc !90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_set_irqenable(ptr nocapture noundef readonly %wp, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %mask) #4, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_clear_irqenable(ptr nocapture noundef readonly %wp, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %mask) #4, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_wp_set_phy_pwr(ptr nocapture noundef readonly %wp, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %and = lshr i32 %2, 4
  %shr = and i32 %and, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %val)
  %cmp = icmp eq i32 %shr, %val
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wp, align 4
  %add.ptr.i19 = getelementptr i8, ptr %4, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #4, !srcloc !90
  %and4 = and i32 %5, -193
  %shl = shl i32 %val, 6
  %and5 = and i32 %shl, 192
  %or = or i32 %and4, %and5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %or) #4, !srcloc !91
  %6 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wp, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !90
  %and1.i = lshr i32 %8, 4
  %shr2.i = and i32 %and1.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr2.i, i32 %val)
  %cmp.not3.i = icmp eq i32 %shr2.i, %val
  br i1 %cmp.not3.i, label %if.end.return_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %t.04.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %if.end.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %t.04.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !90
  %and.i = lshr i32 %10, 4
  %shr.i = and i32 %and.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %val)
  %cmp.not.i = icmp eq i32 %shr.i, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %t.04.i)
  %cmp3.i = icmp ugt i32 %t.04.i, 9999
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %hdmi_wait_for_bit_change.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

hdmi_wait_for_bit_change.exit:                    ; preds = %if.end.i
  br i1 %cmp.not.i, label %hdmi_wait_for_bit_change.exit.return_crit_edge, label %do.end

hdmi_wait_for_bit_change.exit.return_crit_edge:   ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %val) #7
  br label %return

return:                                           ; preds = %do.end, %hdmi_wait_for_bit_change.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %entry.return_crit_edge ], [ 0, %hdmi_wait_for_bit_change.exit.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_wp_set_pll_pwr(ptr nocapture noundef readonly %wp, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %and = and i32 %2, -13
  %shl = shl i32 %val, 2
  %and2 = and i32 %shl, 12
  %or = or i32 %and, %and2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !91
  %3 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wp, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !90
  %and1.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %val)
  %cmp.not3.i = icmp eq i32 %and1.i, %val
  br i1 %cmp.not3.i, label %entry.return_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %t.04.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %t.04.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !90
  %and.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %val)
  %cmp.not.i = icmp eq i32 %and.i, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %t.04.i)
  %cmp3.i = icmp ugt i32 %t.04.i, 9999
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %hdmi_wait_for_bit_change.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

hdmi_wait_for_bit_change.exit:                    ; preds = %if.end.i
  br i1 %cmp.not.i, label %hdmi_wait_for_bit_change.exit.return_crit_edge, label %do.end

hdmi_wait_for_bit_change.exit.return_crit_edge:   ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #7
  br label %return

return:                                           ; preds = %do.end, %hdmi_wait_for_bit_change.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %hdmi_wait_for_bit_change.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_wp_video_start(ptr nocapture noundef readonly %wp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %or = or i32 %2, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !91
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_video_stop(ptr nocapture noundef readonly %wp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 131072) #4, !srcloc !91
  %2 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wp, align 4
  %add.ptr.i14 = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #4, !srcloc !90
  %and = and i32 %4, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %and) #4, !srcloc !91
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 20) #4
  %5 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wp, align 4
  %add.ptr.i16 = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #4, !srcloc !90
  %and5 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup7_crit_edge

for.body.cleanup7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup7

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #7
  br label %cleanup7

cleanup7:                                         ; preds = %do.end, %for.body.cleanup7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_video_config_format(ptr nocapture noundef readonly %wp, ptr nocapture noundef readonly %video_fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %and = and i32 %2, -1793
  %3 = ptrtoint ptr %video_fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %video_fmt, align 4
  %shl = shl i32 %4, 8
  %and2 = and i32 %shl, 1792
  %or = or i32 %and2, %and
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !91
  %y_res = getelementptr inbounds %struct.hdmi_video_format, ptr %video_fmt, i32 0, i32 1
  %5 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %y_res, align 4
  %shl3 = shl i32 %6, 16
  %x_res = getelementptr inbounds %struct.hdmi_video_format, ptr %video_fmt, i32 0, i32 2
  %7 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %x_res, align 4
  %and7 = and i32 %8, 65535
  %or8 = or i32 %and7, %shl3
  %9 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wp, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %or8) #4, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_video_config_interface(ptr nocapture noundef readonly %wp, ptr nocapture noundef readonly %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_wp_video_config_interface.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_wp_video_config_interface, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_wp_video_config_interface.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.29) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 80
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %or21 = and i32 %4, -252
  %5 = shl i32 %1, 3
  %shl = and i32 %5, 32
  %and11 = shl i32 %1, 4
  %shl29 = and i32 %and11, 16
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = lshr i32 %7, 5
  %shl40 = and i32 %8, 8
  %and22 = or i32 %shl, %shl29
  %or25 = or i32 %and22, %or21
  %or31 = or i32 %or25, %shl40
  %or44 = or i32 %or31, 193
  %9 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wp, align 4
  %add.ptr.i55 = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %or44) #4, !srcloc !91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_video_config_timing(ptr nocapture noundef readonly %wp, ptr nocapture noundef readonly %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_wp_video_config_timing.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_wp_video_config_timing, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_wp_video_config_timing.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.32) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %version = getelementptr inbounds %struct.hdmi_wp_data, ptr %wp, i32 0, i32 2
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ne i32 %1, 4
  %spec.select = sext i1 %cmp to i32
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %2 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hback_porch, align 4
  %shl = shl i32 %3, 20
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %4 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hfront_porch, align 4
  %shl6 = shl i32 %5, 8
  %and7 = and i32 %shl6, 1048320
  %or8 = or i32 %and7, %shl
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %6 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hsync_len, align 4
  %sub = add i32 %7, %spec.select
  %and10 = and i32 %sub, 255
  %or11 = or i32 %or8, %and10
  %8 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or11) #4, !srcloc !91
  %vback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 7
  %10 = ptrtoint ptr %vback_porch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vback_porch, align 4
  %shl12 = shl i32 %11, 20
  %vfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 6
  %12 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vfront_porch, align 4
  %shl15 = shl i32 %13, 8
  %and16 = and i32 %shl15, 1048320
  %or17 = or i32 %and16, %shl12
  %vsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 8
  %14 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsync_len, align 4
  %and19 = and i32 %15, 255
  %or20 = or i32 %or17, %and19
  %16 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wp, align 4
  %add.ptr.i35 = getelementptr i8, ptr %17, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %or20) #4, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_init_vid_fmt_timings(ptr nocapture noundef %video_fmt, ptr nocapture noundef %vm, ptr nocapture noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_wp_init_vid_fmt_timings.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_wp_init_vid_fmt_timings, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_wp_init_vid_fmt_timings.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.35) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %video_fmt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %video_fmt, align 4
  %vactive = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 5
  %1 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vactive, align 4
  %y_res = getelementptr inbounds %struct.hdmi_video_format, ptr %video_fmt, i32 0, i32 1
  %3 = ptrtoint ptr %y_res to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %y_res, align 4
  %hactive = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hactive, align 4
  %x_res = getelementptr inbounds %struct.hdmi_video_format, ptr %video_fmt, i32 0, i32 2
  %6 = ptrtoint ptr %x_res to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %x_res, align 4
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 3
  %7 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hback_porch, align 4
  %hback_porch7 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %9 = ptrtoint ptr %hback_porch7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hback_porch7, align 4
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 2
  %10 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hfront_porch, align 4
  %hfront_porch9 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %12 = ptrtoint ptr %hfront_porch9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hfront_porch9, align 4
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 4
  %13 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hsync_len, align 4
  %hsync_len11 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %15 = ptrtoint ptr %hsync_len11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %hsync_len11, align 4
  %vback_porch = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 7
  %16 = ptrtoint ptr %vback_porch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vback_porch, align 4
  %vback_porch13 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 7
  %18 = ptrtoint ptr %vback_porch13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vback_porch13, align 4
  %vfront_porch = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 6
  %19 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vfront_porch, align 4
  %vfront_porch15 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 6
  %21 = ptrtoint ptr %vfront_porch15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vfront_porch15, align 4
  %vsync_len = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 8
  %22 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vsync_len, align 4
  %vsync_len17 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 8
  %24 = ptrtoint ptr %vsync_len17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vsync_len17, align 4
  %flags = getelementptr inbounds %struct.videomode, ptr %param, i32 0, i32 9
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %flags19 = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 9
  %27 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flags19, align 4
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.end.if.end31_crit_edge, label %if.then23

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y_res, align 4
  %div71 = lshr i32 %30, 1
  store i32 %div71, ptr %y_res, align 4
  %31 = ptrtoint ptr %vback_porch13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vback_porch13, align 4
  %div2672 = lshr i32 %32, 1
  store i32 %div2672, ptr %vback_porch13, align 4
  %33 = ptrtoint ptr %vfront_porch15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vfront_porch15, align 4
  %div2873 = lshr i32 %34, 1
  store i32 %div2873, ptr %vfront_porch15, align 4
  %35 = ptrtoint ptr %vsync_len17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vsync_len17, align 4
  %div3074 = lshr i32 %36, 1
  store i32 %div3074, ptr %vsync_len17, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %do.end.if.end31_crit_edge
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and34 = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end31.if.end44_crit_edge, label %if.then36

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %x_res, align 4
  %mul = shl i32 %40, 1
  store i32 %mul, ptr %x_res, align 4
  %41 = ptrtoint ptr %hfront_porch9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hfront_porch9, align 4
  %mul39 = shl i32 %42, 1
  store i32 %mul39, ptr %hfront_porch9, align 4
  %43 = ptrtoint ptr %hsync_len11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hsync_len11, align 4
  %mul41 = shl i32 %44, 1
  store i32 %mul41, ptr %hsync_len11, align 4
  %45 = ptrtoint ptr %hback_porch7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hback_porch7, align 4
  %mul43 = shl i32 %46, 1
  store i32 %mul43, ptr %hback_porch7, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.end31.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_audio_config_format(ptr nocapture noundef readonly %wp, ptr nocapture noundef readonly %aud_fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_wp_audio_config_format.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_wp_audio_config_format, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_wp_audio_config_format.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.38) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %version = getelementptr inbounds %struct.hdmi_wp_data, ptr %wp, i32 0, i32 2
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then5, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %2, -134152193
  %5 = ptrtoint ptr %aud_fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %aud_fmt, align 4
  %shl = shl i32 %6, 24
  %and6 = and i32 %shl, 117440512
  %or = or i32 %and, %and6
  %active_chnnls_msk = getelementptr inbounds %struct.hdmi_audio_format, ptr %aud_fmt, i32 0, i32 1
  %7 = ptrtoint ptr %active_chnnls_msk to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active_chnnls_msk, align 4
  %conv = zext i8 %8 to i32
  %shl8 = shl nuw nsw i32 %conv, 16
  %or10 = or i32 %or, %shl8
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %do.end.if.end11_crit_edge
  %r.0 = phi i32 [ %or10, %if.then5 ], [ %2, %do.end.if.end11_crit_edge ]
  %and12 = and i32 %r.0, -64
  %en_sig_blk_strt_end = getelementptr inbounds %struct.hdmi_audio_format, ptr %aud_fmt, i32 0, i32 7
  %9 = ptrtoint ptr %en_sig_blk_strt_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %en_sig_blk_strt_end, align 4
  %shl13 = shl i32 %10, 5
  %and14 = and i32 %shl13, 32
  %or15 = or i32 %and14, %and12
  %type = getelementptr inbounds %struct.hdmi_audio_format, ptr %aud_fmt, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %shl17 = shl i32 %12, 4
  %and18 = and i32 %shl17, 16
  %or19 = or i32 %or15, %and18
  %justification = getelementptr inbounds %struct.hdmi_audio_format, ptr %aud_fmt, i32 0, i32 3
  %13 = ptrtoint ptr %justification to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %justification, align 4
  %shl21 = shl i32 %14, 3
  %and22 = and i32 %shl21, 8
  %or23 = or i32 %or19, %and22
  %sample_order = getelementptr inbounds %struct.hdmi_audio_format, ptr %aud_fmt, i32 0, i32 4
  %15 = ptrtoint ptr %sample_order to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sample_order, align 4
  %shl25 = shl i32 %16, 2
  %and26 = and i32 %shl25, 4
  %or27 = or i32 %or23, %and26
  %samples_per_word = getelementptr inbounds %struct.hdmi_audio_format, ptr %aud_fmt, i32 0, i32 5
  %17 = ptrtoint ptr %samples_per_word to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %samples_per_word, align 4
  %shl29 = shl i32 %18, 1
  %and30 = and i32 %shl29, 2
  %and32 = or i32 %or27, %and30
  %sample_size = getelementptr inbounds %struct.hdmi_audio_format, ptr %aud_fmt, i32 0, i32 6
  %19 = ptrtoint ptr %sample_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sample_size, align 4
  %and34 = and i32 %20, 1
  %or35 = or i32 %and32, %and34
  %21 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wp, align 4
  %add.ptr.i54 = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %or35) #4, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi_wp_audio_config_dma(ptr nocapture noundef readonly %wp, ptr nocapture noundef readonly %aud_dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_wp_audio_config_dma.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_wp_audio_config_dma, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_wp_audio_config_dma.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.41) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %and = and i32 %2, -65536
  %3 = ptrtoint ptr %aud_dma to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %aud_dma, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %and
  %block_size = getelementptr inbounds %struct.hdmi_audio_dma, ptr %aud_dma, i32 0, i32 1
  %5 = ptrtoint ptr %block_size to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %block_size, align 1
  %conv7 = zext i8 %6 to i32
  %or10 = or i32 %or, %conv7
  %7 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wp, align 4
  %add.ptr.i35 = getelementptr i8, ptr %8, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %or10) #4, !srcloc !91
  %9 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wp, align 4
  %add.ptr.i36 = getelementptr i8, ptr %10, i32 136
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #4, !srcloc !90
  %and14 = and i32 %11, -1024
  %mode = getelementptr inbounds %struct.hdmi_audio_dma, ptr %aud_dma, i32 0, i32 2
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %shl15 = shl i32 %13, 9
  %and16 = and i32 %shl15, 512
  %or17 = or i32 %and16, %and14
  %fifo_threshold = getelementptr inbounds %struct.hdmi_audio_dma, ptr %aud_dma, i32 0, i32 3
  %14 = ptrtoint ptr %fifo_threshold to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fifo_threshold, align 4
  %16 = and i16 %15, 511
  %and21 = zext i16 %16 to i32
  %or22 = or i32 %or17, %and21
  %17 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wp, align 4
  %add.ptr.i37 = getelementptr i8, ptr %18, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %or22) #4, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_wp_audio_enable(ptr nocapture noundef readonly %wp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %and = and i32 %2, 2147483647
  %shl = select i1 %enable, i32 -2147483648, i32 0
  %or = or i32 %and, %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !91
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_wp_audio_core_req_enable(ptr nocapture noundef readonly %wp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wp, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !90
  %and = and i32 %2, -1073741825
  %shl = select i1 %enable, i32 1073741824, i32 0
  %or = or i32 %and, %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !91
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi_wp_init(ptr noundef %pdev, ptr nocapture noundef %wp, i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.42) #4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #4
  %0 = ptrtoint ptr %wp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %wp, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %phys_base = getelementptr inbounds %struct.hdmi_wp_data, ptr %wp, i32 0, i32 1
  %4 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %phys_base, align 4
  %version6 = getelementptr inbounds %struct.hdmi_wp_data, ptr %wp, i32 0, i32 2
  %5 = ptrtoint ptr %version6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %version, ptr %version6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hdmi_wp_get_audio_dma_addr(ptr nocapture noundef readonly %wp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phys_base = getelementptr inbounds %struct.hdmi_wp_data, ptr %wp, i32 0, i32 1
  %0 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys_base, align 4
  %add = add i32 %1, 140
  ret i32 %add
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 24, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 25, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 26, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 27, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 28, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 29, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 30, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 31, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 32, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 33, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 34, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 35, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 36, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 37, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 38, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 39, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 40, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 41, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 79, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hdmi_wp_set_phy_pwr._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @hdmi_wp_set_phy_pwr._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 95, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hdmi_wp_set_pll_pwr._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hdmi_wp_set_pll_pwr._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 127, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hdmi_wp_video_stop._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hdmi_wp_video_stop._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 148, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hdmi_wp_video_config_interface.__UNIQUE_ID_ddebug307, !54, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!58 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 170, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hdmi_wp_video_config_timing.__UNIQUE_ID_ddebug308, !60, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!63 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 195, i32 2}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hdmi_wp_init_vid_fmt_timings.__UNIQUE_ID_ddebug309, !65, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!68 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 230, i32 2}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @hdmi_wp_audio_config_format.__UNIQUE_ID_ddebug310, !70, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!73 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 251, i32 2}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hdmi_wp_audio_config_dma.__UNIQUE_ID_ddebug311, !75, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!78 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi_wp.c", i32 283, i32 59}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 1252279}
!91 = !{i64 1251861}
!92 = !{i64 2148697533, i64 2148697538, i64 2148697551, i64 2148697595, i64 2148697629, i64 2148697650}
