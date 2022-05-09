; ModuleID = '/llk/IR_all_yes/drivers/soc/amlogic/meson-gx-pwrc-vpu.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-gx-pwrc-vpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.meson_gx_pwrc_vpu = type { %struct.generic_pm_domain, ptr, ptr, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_meson_gx_pwrc_vpu__170_378_meson_gx_pwrc_vpu_driver_init6 = internal global ptr @meson_gx_pwrc_vpu_driver_init, section ".initcall6.init", align 4
@meson_gx_pwrc_vpu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_gx_pwrc_vpu_probe, ptr null, ptr @meson_gx_pwrc_vpu_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_gx_pwrc_vpu_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_gx_pwrc_vpu_driver_exit = internal global ptr @meson_gx_pwrc_vpu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [61 x i8] c"meson_gx_pwrc_vpu.file=drivers/soc/amlogic/meson-gx-pwrc-vpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [33 x i8] c"meson_gx_pwrc_vpu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_gx_pwrc_vpu\00", [46 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-pwrc-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vpu_hdmi_pd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-pwrc-vpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vpu_hdmi_pd_g12a }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_gx_pwrc_vpu_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/soc/amlogic/meson-gx-pwrc-vpu.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry_ptr = internal global ptr @meson_gx_pwrc_vpu_probe._entry, section ".printk_index", align 4
@meson_gx_pwrc_vpu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get regmap\0A\00", [42 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry_ptr.8 = internal global ptr @meson_gx_pwrc_vpu_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amlogic,hhi-sysctrl\00", [44 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get HHI regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry_ptr.12 = internal global ptr @meson_gx_pwrc_vpu_probe._entry.10, section ".printk_index", align 4
@meson_gx_pwrc_vpu_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get reset lines\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry_ptr.15 = internal global ptr @meson_gx_pwrc_vpu_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpu\00", [28 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vpu clock request failed\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry_ptr.19 = internal global ptr @meson_gx_pwrc_vpu_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vapb\00", [27 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vapb clock request failed\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_gx_pwrc_vpu_probe._entry_ptr.23 = internal global ptr @meson_gx_pwrc_vpu_probe._entry.21, section ".printk_index", align 4
@vpu_hdmi_pd = internal global { %struct.meson_gx_pwrc_vpu, [320 x i8] } { %struct.meson_gx_pwrc_vpu { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.24, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @meson_gx_pwrc_vpu_power_off, ptr @meson_gx_pwrc_vpu_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, ptr null }, [320 x i8] zeroinitializer }, align 32
@vpu_hdmi_pd_g12a = internal global { %struct.meson_gx_pwrc_vpu, [320 x i8] } { %struct.meson_gx_pwrc_vpu { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.24, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @meson_g12a_pwrc_vpu_power_off, ptr @meson_g12a_pwrc_vpu_power_on, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, ptr null, ptr null, ptr null }, [320 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpu_hdmi\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"meson_gx_pwrc_vpu_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 370, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 374, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [30 x i8] c"meson_gx_pwrc_vpu_match_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 360, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 284, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 296, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 301, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 303, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 310, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 314, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 316, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 320, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 322, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"vpu_hdmi_pd\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 255, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"vpu_hdmi_pd_g12a\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 263, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [43 x i8] c"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 257, i32 11 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_meson_gx_pwrc_vpu_driver_exit, ptr @__initcall__kmod_meson_gx_pwrc_vpu__170_378_meson_gx_pwrc_vpu_driver_init6, ptr @meson_gx_pwrc_vpu_driver_exit, ptr @meson_gx_pwrc_vpu_probe._entry, ptr @meson_gx_pwrc_vpu_probe._entry.10, ptr @meson_gx_pwrc_vpu_probe._entry.13, ptr @meson_gx_pwrc_vpu_probe._entry.17, ptr @meson_gx_pwrc_vpu_probe._entry.21, ptr @meson_gx_pwrc_vpu_probe._entry.6, ptr @meson_gx_pwrc_vpu_probe._entry_ptr, ptr @meson_gx_pwrc_vpu_probe._entry_ptr.12, ptr @meson_gx_pwrc_vpu_probe._entry_ptr.15, ptr @meson_gx_pwrc_vpu_probe._entry_ptr.19, ptr @meson_gx_pwrc_vpu_probe._entry_ptr.23, ptr @meson_gx_pwrc_vpu_probe._entry_ptr.8, ptr @meson_gx_pwrc_vpu_driver, ptr @.str, ptr @meson_gx_pwrc_vpu_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @vpu_hdmi_pd, ptr @vpu_hdmi_pd_g12a, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gx_pwrc_vpu_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_hdmi_pd to i32), i32 1376, i32 1696, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_hdmi_pd_g12a to i32), i32 1376, i32 1696, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_gx_pwrc_vpu_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_gx_pwrc_vpu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_gx_pwrc_vpu_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1376, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %0 = call ptr @memcpy(ptr %call.i, ptr %call, i32 1376)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_get_parent(ptr noundef %2) #5
  %call9 = tail call ptr @syscon_node_to_regmap(ptr noundef %call8) #5
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call20 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.9) #5
  %cmp.i130 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %6 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call.i131 = tail call ptr @devm_reset_control_array_get(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %cmp.i132 = icmp ugt ptr %call.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then32, label %if.end41

if.then32:                                        ; preds = %if.end28
  %cmp.not = icmp eq ptr %call.i131, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then32.cleanup_crit_edge, label %do.end37

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call.i131 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %call43 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #5
  %cmp.i133 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %8 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #5
  %cmp.i134 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %do.end58, label %if.end61

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  %9 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end51
  %regmap_ao62 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap_ao62 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %regmap_ao62, align 8
  %regmap_hhi63 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %regmap_hhi63 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %regmap_hhi63, align 4
  %rstc64 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %rstc64 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i131, ptr %rstc64, align 8
  %vpu_clk65 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %vpu_clk65 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call43, ptr %vpu_clk65, align 4
  %vapb_clk66 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %vapb_clk66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call53, ptr %vapb_clk66, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg.i, align 4, !annotation !61
  %call.i135 = call i32 @regmap_read(ptr noundef %call9, i32 noundef 232, ptr noundef nonnull %reg.i) #5
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  br i1 %tobool.i, label %if.end61.if.end74_crit_edge, label %if.then69

if.end61.if.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then69:                                        ; preds = %if.end61
  %call70 = call fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.if.end74_crit_edge, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then69.if.end74_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.end74:                                         ; preds = %if.then69.if.end74_crit_edge, %if.end61.if.end74_crit_edge
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i, i32 0, i32 32
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %flags, align 4
  %call77 = call i32 @pm_genpd_init(ptr noundef nonnull %call.i, ptr noundef null, i1 noundef zeroext %tobool.i) #5
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call81 = call i32 @of_genpd_add_provider_simple(ptr noundef %21, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then69.cleanup_crit_edge, %do.end58, %do.end48, %do.end37, %if.then32.cleanup_crit_edge, %do.end25, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %3, %do.end14 ], [ %6, %do.end25 ], [ %8, %do.end48 ], [ %9, %do.end58 ], [ %call81, %if.end74 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call70, %if.then69.cleanup_crit_edge ], [ %7, %do.end37 ], [ -517, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_gx_pwrc_vpu_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !61
  %regmap_ao.i = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap_ao.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_ao.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 232, ptr noundef nonnull %reg.i) #5
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %power_off = getelementptr inbounds %struct.generic_pm_domain, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_off, align 8
  %call3 = call i32 %8(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr nocapture noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vpu_clk = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %pd, i32 0, i32 4
  %0 = ptrtoint ptr %vpu_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vpu_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %vapb_clk = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %pd, i32 0, i32 5
  %2 = ptrtoint ptr %vapb_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vapb_clk, align 8
  %call.i11 = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end.i15:                                       ; preds = %if.end
  %call1.i13 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool2.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool2.not.i14, label %if.end.i15.cleanup_crit_edge, label %if.then3.i16

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i16, %if.end.if.then3_crit_edge
  %retval.0.i17.ph = phi i32 [ %call1.i13, %if.then3.i16 ], [ %call.i11, %if.end.if.then3_crit_edge ]
  %4 = ptrtoint ptr %vpu_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpu_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %5, %if.then3 ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i17.ph, %if.then3 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i15.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_ao = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_ao, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 232, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 4294960) #5
  %regmap_hhi = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_hhi, align 4
  %shl = shl i32 3, %i.046
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 260, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #5
  %add = add nuw nsw i32 %i.046, 2
  %cmp = icmp ult i32 %i.046, 30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond14.preheader:                             ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_hhi, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 256, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #5
  %9 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_hhi, align 4
  %call.i44.1 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 256, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #5
  %12 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_hhi, align 4
  %call.i44.2 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 256, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_hhi, align 4
  %call.i44.3 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 256, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #5
  %18 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_hhi, align 4
  %call.i44.4 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 256, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #5
  %21 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_hhi, align 4
  %call.i44.5 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 256, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #5
  %24 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_hhi, align 4
  %call.i44.6 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 256, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #5
  %27 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_hhi, align 4
  %call.i44.7 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 256, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 4294960) #5
  %31 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap_ao, align 8
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 232, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @msleep(i32 noundef 20) #5
  %vpu_clk = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 4
  %33 = ptrtoint ptr %vpu_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vpu_clk, align 4
  tail call void @clk_disable(ptr noundef %34) #5
  tail call void @clk_unprepare(ptr noundef %34) #5
  %vapb_clk = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 5
  %35 = ptrtoint ptr %vapb_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vapb_clk, align 8
  tail call void @clk_disable(ptr noundef %36) #5
  tail call void @clk_unprepare(ptr noundef %36) #5
  ret i32 0

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %i.147 = phi i32 [ %add12, %for.body6.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %37 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap_hhi, align 4
  %shl8 = shl i32 3, %i.147
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 264, i32 noundef %shl8, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1073740) #5
  %add12 = add nuw nsw i32 %i.147, 2
  %cmp5 = icmp ult i32 %i.147, 30
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.cond14.preheader

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_gx_pwrc_vpu_power_on(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_ao = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_ao, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 232, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 4294960) #5
  %regmap_hhi = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_hhi, align 4
  %shl = shl i32 3, %i.058
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 260, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #5
  %add = add nuw nsw i32 %i.058, 2
  %cmp = icmp ult i32 %i.058, 30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond12.preheader:                             ; preds = %for.body5
  %6 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_hhi, align 4
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #5
  %9 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_hhi, align 4
  %call.i56.1 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 256, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #5
  %12 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_hhi, align 4
  %call.i56.2 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 256, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_hhi, align 4
  %call.i56.3 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 256, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #5
  %18 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_hhi, align 4
  %call.i56.4 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 256, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #5
  %21 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_hhi, align 4
  %call.i56.5 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 256, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #5
  %24 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_hhi, align 4
  %call.i56.6 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 256, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #5
  %27 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_hhi, align 4
  %call.i56.7 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 256, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 4294960) #5
  %rstc = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 3
  %31 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rstc, align 8
  %call20 = tail call i32 @reset_control_assert(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end, label %for.cond12.preheader.cleanup_crit_edge

for.cond12.preheader.cleanup_crit_edge:           ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %i.159 = phi i32 [ %add10, %for.body5.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  %33 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap_hhi, align 4
  %shl7 = shl i32 3, %i.159
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 264, i32 noundef %shl7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 1073740) #5
  %add10 = add nuw nsw i32 %i.159, 2
  %cmp4 = icmp ult i32 %i.159, 30
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.cond12.preheader

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5

if.end:                                           ; preds = %for.cond12.preheader
  %36 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap_ao, align 8
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 232, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rstc, align 8
  %call24 = tail call i32 @reset_control_deassert(ptr noundef %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr noundef %genpd)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %for.cond12.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %for.cond12.preheader.cleanup_crit_edge ], [ %call24, %if.end.cleanup_crit_edge ], [ %call28, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_pwrc_vpu_power_off(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_ao = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_ao, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 232, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 4294960) #5
  %regmap_hhi = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_hhi, align 4
  %shl = shl i32 3, %i.062
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 260, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #5
  %add = add nuw nsw i32 %i.062, 2
  %cmp = icmp ult i32 %i.062, 30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.body6_crit_edge

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %i.163 = phi i32 [ %add12, %for.body6.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %6 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_hhi, align 4
  %shl8 = shl i32 3, %i.163
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 264, i32 noundef %shl8, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #5
  %add12 = add nuw nsw i32 %i.163, 2
  %cmp5 = icmp ult i32 %i.163, 30
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.body16_crit_edge

for.body6.for.body16_crit_edge:                   ; preds = %for.body6
  br label %for.body16

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.cond24.preheader:                             ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_hhi, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 256, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #5
  %12 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_hhi, align 4
  %call.i60.1 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 256, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_hhi, align 4
  %call.i60.2 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 256, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #5
  %18 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_hhi, align 4
  %call.i60.3 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 256, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #5
  %21 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_hhi, align 4
  %call.i60.4 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 256, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #5
  %24 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_hhi, align 4
  %call.i60.5 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 256, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #5
  %27 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_hhi, align 4
  %call.i60.6 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 256, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #5
  %30 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap_hhi, align 4
  %call.i60.7 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 256, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 4294960) #5
  %34 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap_ao, align 8
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 232, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @msleep(i32 noundef 20) #5
  %vpu_clk = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 4
  %36 = ptrtoint ptr %vpu_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vpu_clk, align 4
  tail call void @clk_disable(ptr noundef %37) #5
  tail call void @clk_unprepare(ptr noundef %37) #5
  %vapb_clk = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 5
  %38 = ptrtoint ptr %vapb_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vapb_clk, align 8
  tail call void @clk_disable(ptr noundef %39) #5
  tail call void @clk_unprepare(ptr noundef %39) #5
  ret i32 0

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body6.for.body16_crit_edge
  %i.264 = phi i32 [ %add22, %for.body16.for.body16_crit_edge ], [ 0, %for.body6.for.body16_crit_edge ]
  %40 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap_hhi, align 4
  %shl18 = shl i32 3, %i.264
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 308, i32 noundef %shl18, i32 noundef %shl18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 1073740) #5
  %add22 = add nuw nsw i32 %i.264, 2
  %cmp15 = icmp ult i32 %i.264, 30
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.cond24.preheader

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_g12a_pwrc_vpu_power_on(ptr nocapture noundef readonly %genpd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_ao = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_ao, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 232, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 4294960) #5
  %regmap_hhi = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.072 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_hhi, align 4
  %shl = shl i32 3, %i.072
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 260, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #5
  %add = add nuw nsw i32 %i.072, 2
  %cmp = icmp ult i32 %i.072, 30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %i.173 = phi i32 [ %add10, %for.body5.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  %6 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_hhi, align 4
  %shl7 = shl i32 3, %i.173
  %call.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 264, i32 noundef %shl7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #5
  %add10 = add nuw nsw i32 %i.173, 2
  %cmp4 = icmp ult i32 %i.173, 30
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.body14_crit_edge

for.body5.for.body14_crit_edge:                   ; preds = %for.body5
  br label %for.body14

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5

for.cond21.preheader:                             ; preds = %for.body14
  %9 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_hhi, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 256, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #5
  %12 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_hhi, align 4
  %call.i70.1 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 256, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_hhi, align 4
  %call.i70.2 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 256, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #5
  %18 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_hhi, align 4
  %call.i70.3 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 256, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #5
  %21 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap_hhi, align 4
  %call.i70.4 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 256, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 1073740) #5
  %24 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_hhi, align 4
  %call.i70.5 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 256, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #5
  %27 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_hhi, align 4
  %call.i70.6 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 256, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #5
  %30 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap_hhi, align 4
  %call.i70.7 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 256, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 4294960) #5
  %rstc = getelementptr inbounds %struct.meson_gx_pwrc_vpu, ptr %genpd, i32 0, i32 3
  %34 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rstc, align 8
  %call29 = tail call i32 @reset_control_assert(ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.end, label %for.cond21.preheader.cleanup_crit_edge

for.cond21.preheader.cleanup_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body5.for.body14_crit_edge
  %i.274 = phi i32 [ %add19, %for.body14.for.body14_crit_edge ], [ 0, %for.body5.for.body14_crit_edge ]
  %36 = ptrtoint ptr %regmap_hhi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap_hhi, align 4
  %shl16 = shl i32 3, %i.274
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 308, i32 noundef %shl16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #5
  %add19 = add nuw nsw i32 %i.274, 2
  %cmp13 = icmp ult i32 %i.274, 30
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.cond21.preheader

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14

if.end:                                           ; preds = %for.cond21.preheader
  %39 = ptrtoint ptr %regmap_ao to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap_ao, align 8
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 232, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %41 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rstc, align 8
  %call33 = tail call i32 @reset_control_deassert(ptr noundef %42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call fastcc i32 @meson_gx_pwrc_vpu_setup_clk(ptr noundef %genpd)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge, %for.cond21.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %for.cond21.preheader.cleanup_crit_edge ], [ %call33, %if.end.cleanup_crit_edge ], [ %call37, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_meson_gx_pwrc_vpu__170_378_meson_gx_pwrc_vpu_driver_init6, !1, !"__initcall__kmod_meson_gx_pwrc_vpu__170_378_meson_gx_pwrc_vpu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 378, i32 1}
!2 = !{ptr @__exitcall_meson_gx_pwrc_vpu_driver_exit, !1, !"__exitcall_meson_gx_pwrc_vpu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file171, !4, !"__UNIQUE_ID_file171", i1 false, i1 false}
!4 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 379, i32 1}
!5 = !{ptr @__UNIQUE_ID_license172, !4, !"__UNIQUE_ID_license172", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 374, i32 12}
!8 = !{ptr @meson_gx_pwrc_vpu_driver, !9, !"meson_gx_pwrc_vpu_driver", i1 false, i1 false}
!9 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 370, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 284, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @meson_gx_pwrc_vpu_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @meson_gx_pwrc_vpu_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 296, i32 3}
!20 = !{ptr @meson_gx_pwrc_vpu_probe._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_gx_pwrc_vpu_probe._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 301, i32 12}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 303, i32 3}
!26 = !{ptr @meson_gx_pwrc_vpu_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @meson_gx_pwrc_vpu_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 310, i32 4}
!30 = !{ptr @meson_gx_pwrc_vpu_probe._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson_gx_pwrc_vpu_probe._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 314, i32 37}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 316, i32 3}
!36 = !{ptr @meson_gx_pwrc_vpu_probe._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @meson_gx_pwrc_vpu_probe._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 320, i32 38}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 322, i32 3}
!42 = !{ptr @meson_gx_pwrc_vpu_probe._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @meson_gx_pwrc_vpu_probe._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @meson_gx_pwrc_vpu_match_table, !45, !"meson_gx_pwrc_vpu_match_table", i1 false, i1 false}
!45 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 360, i32 34}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 257, i32 11}
!48 = !{ptr @vpu_hdmi_pd, !49, !"vpu_hdmi_pd", i1 false, i1 false}
!49 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 255, i32 33}
!50 = !{ptr @vpu_hdmi_pd_g12a, !51, !"vpu_hdmi_pd_g12a", i1 false, i1 false}
!51 = !{!"../drivers/soc/amlogic/meson-gx-pwrc-vpu.c", i32 263, i32 33}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
