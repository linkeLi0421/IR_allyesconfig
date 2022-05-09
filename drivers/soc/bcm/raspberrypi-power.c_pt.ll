; ModuleID = '/llk/IR_all_yes/drivers/soc/bcm/raspberrypi-power.c_pt.bc'
source_filename = "../drivers/soc/bcm/raspberrypi-power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpi_power_domain_packet = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.rpi_power_domains = type { i8, %struct.genpd_onecell_data, ptr, [23 x %struct.rpi_power_domain] }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.rpi_power_domain = type { i32, i8, i8, %struct.generic_pm_domain, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }

@__initcall__kmod_raspberrypi_power__170_241_rpi_power_driver_init6 = internal global ptr @rpi_power_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author171 = internal constant [62 x i8] c"raspberrypi_power.author=Alexander Aring <aar@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [55 x i8] c"raspberrypi_power.author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [63 x i8] c"raspberrypi_power.description=Raspberry Pi power domain driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [57 x i8] c"raspberrypi_power.file=drivers/soc/bcm/raspberrypi-power\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [33 x i8] c"raspberrypi_power.license=GPL v2\00", section ".modinfo", align 1
@rpi_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpi_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_power_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"raspberrypi-power\00", [46 x i8] zeroinitializer }, align 32
@rpi_power_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,bcm2835-power\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@rpi_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no firmware node\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpi_power_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/soc/bcm/raspberrypi-power.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpi_power_probe._entry_ptr = internal global ptr @rpi_power_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2C0\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2C1\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2C2\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIDEO_SCALER\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VPU1\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VEC\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JPEG\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"H264\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V3D\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISP\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNICAM0\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNICAM1\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCP2RX\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CSI2\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPI\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSI0\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSI1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TRANSPOSER\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCP2TX\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CDP\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ARM\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"rpi_power_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 234, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 236, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"rpi_power_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 228, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 174, i32 46 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 176, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 188, i32 60 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 189, i32 60 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 190, i32 60 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 192, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 193, i32 60 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 194, i32 60 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 201, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 203, i32 59 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 204, i32 60 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 205, i32 60 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 206, i32 59 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 207, i32 59 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 208, i32 63 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 209, i32 63 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 210, i32 62 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 211, i32 60 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 212, i32 59 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 213, i32 60 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 214, i32 60 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 216, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 217, i32 62 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 218, i32 59 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [39 x i8] c"../drivers/soc/bcm/raspberrypi-power.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 219, i32 59 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__initcall__kmod_raspberrypi_power__170_241_rpi_power_driver_init6, ptr @rpi_power_probe._entry, ptr @rpi_power_probe._entry_ptr, ptr @rpi_power_driver, ptr @.str, ptr @rpi_power_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_power_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_power_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %packet.i = alloca %struct.rpi_power_domain_packet, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 31488, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #5
  %xlate = getelementptr inbounds %struct.rpi_power_domains, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5.i.i, ptr %xlate, align 4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %num_domains = getelementptr inbounds %struct.rpi_power_domains, ptr %call.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 23, ptr %num_domains, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i67 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end

of_parse_phandle.exit:                            ; preds = %if.end7
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end14

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end14:                                         ; preds = %of_parse_phandle.exit
  %call16 = call ptr @devm_rpi_firmware_get(ptr noundef %dev1, ptr noundef nonnull %6) #5
  %fw = getelementptr inbounds %struct.rpi_power_domains, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %fw, align 8
  call void @of_node_put(ptr noundef nonnull %6) #5
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 8
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packet.i) #5
  %10 = getelementptr inbounds %struct.rpi_power_domain_packet, ptr %packet.i, i32 0, i32 1
  %11 = ptrtoint ptr %packet.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 22, ptr %packet.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %10, align 4
  %call.i68 = call i32 @rpi_firmware_property(ptr noundef nonnull %9, i32 noundef 196656, ptr noundef nonnull %packet.i, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i = icmp eq i32 %call.i68, 0
  br i1 %cmp.i, label %rpi_has_new_domain_support.exit, label %rpi_has_new_domain_support.exit.thread

rpi_has_new_domain_support.exit.thread:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packet.i) #5
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call.i, align 8
  br label %rpi_init_power_domain.exit134

rpi_has_new_domain_support.exit:                  ; preds = %if.end20
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp2.i = icmp ne i32 %15, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packet.i) #5
  %frombool = zext i1 %cmp2.i to i8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %call.i, align 8
  br i1 %cmp2.i, label %rpi_init_power_domain.exit, label %rpi_has_new_domain_support.exit.rpi_init_power_domain.exit134_crit_edge

rpi_has_new_domain_support.exit.rpi_init_power_domain.exit134_crit_edge: ; preds = %rpi_has_new_domain_support.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit134

rpi_init_power_domain.exit:                       ; preds = %rpi_has_new_domain_support.exit
  %arrayidx.i = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 0
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 8
  %fw1.i.i = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %20 = ptrtoint ptr %fw1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %fw1.i.i, align 8
  %base.i.i = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %name2.i.i = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 0, i32 3, i32 10
  %21 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.7, ptr %name2.i.i, align 8
  %power_on.i.i = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 0, i32 3, i32 19
  %22 = ptrtoint ptr %power_on.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rpi_domain_on, ptr %power_on.i.i, align 4
  %power_off.i.i = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 0, i32 3, i32 18
  %23 = ptrtoint ptr %power_off.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rpi_domain_off, ptr %power_off.i.i, align 8
  %call.i.i = call i32 @pm_genpd_init(ptr noundef %base.i.i, ptr noundef null, i1 noundef zeroext true) #5
  %24 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xlate, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %base.i.i, ptr %25, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i71 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i71, label %rpi_init_power_domain.exit.rpi_init_power_domain.exit134_crit_edge, label %rpi_init_power_domain.exit82

rpi_init_power_domain.exit.rpi_init_power_domain.exit134_crit_edge: ; preds = %rpi_init_power_domain.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit134

rpi_init_power_domain.exit82:                     ; preds = %rpi_init_power_domain.exit
  %arrayidx.i72 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %arrayidx.i72, align 8
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 8
  %fw1.i.i74 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 1, i32 4
  %31 = ptrtoint ptr %fw1.i.i74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %fw1.i.i74, align 8
  %base.i.i75 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 1, i32 3
  %name2.i.i76 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 1, i32 3, i32 10
  %32 = ptrtoint ptr %name2.i.i76 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.8, ptr %name2.i.i76, align 8
  %power_on.i.i77 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 1, i32 3, i32 19
  %33 = ptrtoint ptr %power_on.i.i77 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @rpi_domain_on, ptr %power_on.i.i77, align 4
  %power_off.i.i78 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 1, i32 3, i32 18
  %34 = ptrtoint ptr %power_off.i.i78 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @rpi_domain_off, ptr %power_off.i.i78, align 8
  %call.i.i79 = call i32 @pm_genpd_init(ptr noundef %base.i.i75, ptr noundef null, i1 noundef zeroext true) #5
  %35 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i = getelementptr ptr, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %base.i.i75, ptr %arrayidx8.i.i, align 4
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %.pr358.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr358.pr)
  %tobool.not.i83 = icmp eq i8 %.pr358.pr, 0
  br i1 %tobool.not.i83, label %rpi_init_power_domain.exit82.rpi_init_power_domain.exit134_crit_edge, label %rpi_init_power_domain.exit95

rpi_init_power_domain.exit82.rpi_init_power_domain.exit134_crit_edge: ; preds = %rpi_init_power_domain.exit82
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit134

rpi_init_power_domain.exit95:                     ; preds = %rpi_init_power_domain.exit82
  %arrayidx.i84 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %arrayidx.i84, align 8
  %40 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw, align 8
  %fw1.i.i86 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 2, i32 4
  %42 = ptrtoint ptr %fw1.i.i86 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %fw1.i.i86, align 8
  %base.i.i87 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 2, i32 3
  %name2.i.i88 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 2, i32 3, i32 10
  %43 = ptrtoint ptr %name2.i.i88 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.9, ptr %name2.i.i88, align 8
  %power_on.i.i89 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 2, i32 3, i32 19
  %44 = ptrtoint ptr %power_on.i.i89 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @rpi_domain_on, ptr %power_on.i.i89, align 4
  %power_off.i.i90 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 2, i32 3, i32 18
  %45 = ptrtoint ptr %power_off.i.i90 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @rpi_domain_off, ptr %power_off.i.i90, align 8
  %call.i.i91 = call i32 @pm_genpd_init(ptr noundef %base.i.i87, ptr noundef null, i1 noundef zeroext true) #5
  %46 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i93 = getelementptr ptr, ptr %47, i32 2
  %48 = ptrtoint ptr %arrayidx8.i.i93 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %base.i.i87, ptr %arrayidx8.i.i93, align 4
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %.pr360 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr360)
  %tobool.not.i96 = icmp eq i8 %.pr360, 0
  br i1 %tobool.not.i96, label %rpi_init_power_domain.exit95.rpi_init_power_domain.exit134_crit_edge, label %rpi_init_power_domain.exit108

rpi_init_power_domain.exit95.rpi_init_power_domain.exit134_crit_edge: ; preds = %rpi_init_power_domain.exit95
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit134

rpi_init_power_domain.exit108:                    ; preds = %rpi_init_power_domain.exit95
  %arrayidx.i97 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %arrayidx.i97, align 8
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 8
  %fw1.i.i99 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 3, i32 4
  %53 = ptrtoint ptr %fw1.i.i99 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %fw1.i.i99, align 8
  %base.i.i100 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 3, i32 3
  %name2.i.i101 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 3, i32 3, i32 10
  %54 = ptrtoint ptr %name2.i.i101 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.10, ptr %name2.i.i101, align 8
  %power_on.i.i102 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 3, i32 3, i32 19
  %55 = ptrtoint ptr %power_on.i.i102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @rpi_domain_on, ptr %power_on.i.i102, align 4
  %power_off.i.i103 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 3, i32 3, i32 18
  %56 = ptrtoint ptr %power_off.i.i103 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @rpi_domain_off, ptr %power_off.i.i103, align 8
  %call.i.i104 = call i32 @pm_genpd_init(ptr noundef %base.i.i100, ptr noundef null, i1 noundef zeroext true) #5
  %57 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i106 = getelementptr ptr, ptr %58, i32 3
  %59 = ptrtoint ptr %arrayidx8.i.i106 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %base.i.i100, ptr %arrayidx8.i.i106, align 4
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %.pr362.pr.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr362.pr.pr)
  %tobool.not.i109 = icmp eq i8 %.pr362.pr.pr, 0
  br i1 %tobool.not.i109, label %rpi_init_power_domain.exit108.rpi_init_power_domain.exit134_crit_edge, label %rpi_init_power_domain.exit121

rpi_init_power_domain.exit108.rpi_init_power_domain.exit134_crit_edge: ; preds = %rpi_init_power_domain.exit108
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit134

rpi_init_power_domain.exit121:                    ; preds = %rpi_init_power_domain.exit108
  %arrayidx.i110 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 5, ptr %arrayidx.i110, align 8
  %62 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw, align 8
  %fw1.i.i112 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 4, i32 4
  %64 = ptrtoint ptr %fw1.i.i112 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %fw1.i.i112, align 8
  %base.i.i113 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 4, i32 3
  %name2.i.i114 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 4, i32 3, i32 10
  %65 = ptrtoint ptr %name2.i.i114 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.11, ptr %name2.i.i114, align 8
  %power_on.i.i115 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 4, i32 3, i32 19
  %66 = ptrtoint ptr %power_on.i.i115 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @rpi_domain_on, ptr %power_on.i.i115, align 4
  %power_off.i.i116 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 4, i32 3, i32 18
  %67 = ptrtoint ptr %power_off.i.i116 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @rpi_domain_off, ptr %power_off.i.i116, align 8
  %call.i.i117 = call i32 @pm_genpd_init(ptr noundef %base.i.i113, ptr noundef null, i1 noundef zeroext true) #5
  %68 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i119 = getelementptr ptr, ptr %69, i32 4
  %70 = ptrtoint ptr %arrayidx8.i.i119 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %base.i.i113, ptr %arrayidx8.i.i119, align 4
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %.pr364 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr364)
  %tobool.not.i122 = icmp eq i8 %.pr364, 0
  br i1 %tobool.not.i122, label %rpi_init_power_domain.exit121.rpi_init_power_domain.exit134_crit_edge, label %if.end.i133

rpi_init_power_domain.exit121.rpi_init_power_domain.exit134_crit_edge: ; preds = %rpi_init_power_domain.exit121
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit134

if.end.i133:                                      ; preds = %rpi_init_power_domain.exit121
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i123 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 5
  %72 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 6, ptr %arrayidx.i123, align 8
  %73 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fw, align 8
  %fw1.i.i125 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 5, i32 4
  %75 = ptrtoint ptr %fw1.i.i125 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %fw1.i.i125, align 8
  %base.i.i126 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 5, i32 3
  %name2.i.i127 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 5, i32 3, i32 10
  %76 = ptrtoint ptr %name2.i.i127 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.12, ptr %name2.i.i127, align 8
  %power_on.i.i128 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 5, i32 3, i32 19
  %77 = ptrtoint ptr %power_on.i.i128 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @rpi_domain_on, ptr %power_on.i.i128, align 4
  %power_off.i.i129 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 5, i32 3, i32 18
  %78 = ptrtoint ptr %power_off.i.i129 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @rpi_domain_off, ptr %power_off.i.i129, align 8
  %call.i.i130 = call i32 @pm_genpd_init(ptr noundef %base.i.i126, ptr noundef null, i1 noundef zeroext true) #5
  %79 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i132 = getelementptr ptr, ptr %80, i32 5
  %81 = ptrtoint ptr %arrayidx8.i.i132 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %base.i.i126, ptr %arrayidx8.i.i132, align 4
  br label %rpi_init_power_domain.exit134

rpi_init_power_domain.exit134:                    ; preds = %if.end.i133, %rpi_init_power_domain.exit121.rpi_init_power_domain.exit134_crit_edge, %rpi_init_power_domain.exit108.rpi_init_power_domain.exit134_crit_edge, %rpi_init_power_domain.exit95.rpi_init_power_domain.exit134_crit_edge, %rpi_init_power_domain.exit82.rpi_init_power_domain.exit134_crit_edge, %rpi_init_power_domain.exit.rpi_init_power_domain.exit134_crit_edge, %rpi_has_new_domain_support.exit.rpi_init_power_domain.exit134_crit_edge, %rpi_has_new_domain_support.exit.thread
  %arrayidx.i135 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 6
  %old_interface.i = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 6, i32 2
  %82 = ptrtoint ptr %old_interface.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %old_interface.i, align 1
  %83 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %arrayidx.i135, align 8
  %84 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fw, align 8
  %fw1.i.i137 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 6, i32 4
  %86 = ptrtoint ptr %fw1.i.i137 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %fw1.i.i137, align 8
  %base.i.i138 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 6, i32 3
  %name2.i.i139 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 6, i32 3, i32 10
  %87 = ptrtoint ptr %name2.i.i139 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.13, ptr %name2.i.i139, align 8
  %power_on.i.i140 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 6, i32 3, i32 19
  %88 = ptrtoint ptr %power_on.i.i140 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @rpi_domain_on, ptr %power_on.i.i140, align 4
  %power_off.i.i141 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 6, i32 3, i32 18
  %89 = ptrtoint ptr %power_off.i.i141 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @rpi_domain_off, ptr %power_off.i.i141, align 8
  %call.i.i142 = call i32 @pm_genpd_init(ptr noundef %base.i.i138, ptr noundef null, i1 noundef zeroext true) #5
  %90 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i144 = getelementptr ptr, ptr %91, i32 6
  %92 = ptrtoint ptr %arrayidx8.i.i144 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %base.i.i138, ptr %arrayidx8.i.i144, align 4
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i145 = icmp eq i8 %94, 0
  br i1 %tobool.not.i145, label %rpi_init_power_domain.exit134.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit157

rpi_init_power_domain.exit134.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit134
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit157:                    ; preds = %rpi_init_power_domain.exit134
  %arrayidx.i146 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 7
  %95 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %arrayidx.i146, align 8
  %96 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fw, align 8
  %fw1.i.i148 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 7, i32 4
  %98 = ptrtoint ptr %fw1.i.i148 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %fw1.i.i148, align 8
  %base.i.i149 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 7, i32 3
  %name2.i.i150 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 7, i32 3, i32 10
  %99 = ptrtoint ptr %name2.i.i150 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.14, ptr %name2.i.i150, align 8
  %power_on.i.i151 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 7, i32 3, i32 19
  %100 = ptrtoint ptr %power_on.i.i151 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @rpi_domain_on, ptr %power_on.i.i151, align 4
  %power_off.i.i152 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 7, i32 3, i32 18
  %101 = ptrtoint ptr %power_off.i.i152 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @rpi_domain_off, ptr %power_off.i.i152, align 8
  %call.i.i153 = call i32 @pm_genpd_init(ptr noundef %base.i.i149, ptr noundef null, i1 noundef zeroext true) #5
  %102 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i155 = getelementptr ptr, ptr %103, i32 7
  %104 = ptrtoint ptr %arrayidx8.i.i155 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %base.i.i149, ptr %arrayidx8.i.i155, align 4
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %.pr366 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr366)
  %tobool.not.i158 = icmp eq i8 %.pr366, 0
  br i1 %tobool.not.i158, label %rpi_init_power_domain.exit157.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit170

rpi_init_power_domain.exit157.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit157
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit170:                    ; preds = %rpi_init_power_domain.exit157
  %arrayidx.i159 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 8
  %106 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 9, ptr %arrayidx.i159, align 8
  %107 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fw, align 8
  %fw1.i.i161 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 8, i32 4
  %109 = ptrtoint ptr %fw1.i.i161 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %fw1.i.i161, align 8
  %base.i.i162 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 8, i32 3
  %name2.i.i163 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 8, i32 3, i32 10
  %110 = ptrtoint ptr %name2.i.i163 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.15, ptr %name2.i.i163, align 8
  %power_on.i.i164 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 8, i32 3, i32 19
  %111 = ptrtoint ptr %power_on.i.i164 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @rpi_domain_on, ptr %power_on.i.i164, align 4
  %power_off.i.i165 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 8, i32 3, i32 18
  %112 = ptrtoint ptr %power_off.i.i165 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @rpi_domain_off, ptr %power_off.i.i165, align 8
  %call.i.i166 = call i32 @pm_genpd_init(ptr noundef %base.i.i162, ptr noundef null, i1 noundef zeroext true) #5
  %113 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i168 = getelementptr ptr, ptr %114, i32 8
  %115 = ptrtoint ptr %arrayidx8.i.i168 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %base.i.i162, ptr %arrayidx8.i.i168, align 4
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %.pr368 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr368)
  %tobool.not.i171 = icmp eq i8 %.pr368, 0
  br i1 %tobool.not.i171, label %rpi_init_power_domain.exit170.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit183

rpi_init_power_domain.exit170.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit170
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit183:                    ; preds = %rpi_init_power_domain.exit170
  %arrayidx.i172 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 9
  %117 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 10, ptr %arrayidx.i172, align 8
  %118 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fw, align 8
  %fw1.i.i174 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 9, i32 4
  %120 = ptrtoint ptr %fw1.i.i174 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %fw1.i.i174, align 8
  %base.i.i175 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 9, i32 3
  %name2.i.i176 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 9, i32 3, i32 10
  %121 = ptrtoint ptr %name2.i.i176 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.16, ptr %name2.i.i176, align 8
  %power_on.i.i177 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 9, i32 3, i32 19
  %122 = ptrtoint ptr %power_on.i.i177 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @rpi_domain_on, ptr %power_on.i.i177, align 4
  %power_off.i.i178 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 9, i32 3, i32 18
  %123 = ptrtoint ptr %power_off.i.i178 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @rpi_domain_off, ptr %power_off.i.i178, align 8
  %call.i.i179 = call i32 @pm_genpd_init(ptr noundef %base.i.i175, ptr noundef null, i1 noundef zeroext true) #5
  %124 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i181 = getelementptr ptr, ptr %125, i32 9
  %126 = ptrtoint ptr %arrayidx8.i.i181 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %base.i.i175, ptr %arrayidx8.i.i181, align 4
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %.pr370.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr370.pr)
  %tobool.not.i184 = icmp eq i8 %.pr370.pr, 0
  br i1 %tobool.not.i184, label %rpi_init_power_domain.exit183.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit196

rpi_init_power_domain.exit183.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit183
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit196:                    ; preds = %rpi_init_power_domain.exit183
  %arrayidx.i185 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 10
  %128 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 11, ptr %arrayidx.i185, align 8
  %129 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fw, align 8
  %fw1.i.i187 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 10, i32 4
  %131 = ptrtoint ptr %fw1.i.i187 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %fw1.i.i187, align 8
  %base.i.i188 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 10, i32 3
  %name2.i.i189 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 10, i32 3, i32 10
  %132 = ptrtoint ptr %name2.i.i189 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.17, ptr %name2.i.i189, align 8
  %power_on.i.i190 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 10, i32 3, i32 19
  %133 = ptrtoint ptr %power_on.i.i190 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @rpi_domain_on, ptr %power_on.i.i190, align 4
  %power_off.i.i191 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 10, i32 3, i32 18
  %134 = ptrtoint ptr %power_off.i.i191 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @rpi_domain_off, ptr %power_off.i.i191, align 8
  %call.i.i192 = call i32 @pm_genpd_init(ptr noundef %base.i.i188, ptr noundef null, i1 noundef zeroext true) #5
  %135 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i194 = getelementptr ptr, ptr %136, i32 10
  %137 = ptrtoint ptr %arrayidx8.i.i194 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %base.i.i188, ptr %arrayidx8.i.i194, align 4
  %138 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %.pr372 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr372)
  %tobool.not.i197 = icmp eq i8 %.pr372, 0
  br i1 %tobool.not.i197, label %rpi_init_power_domain.exit196.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit209

rpi_init_power_domain.exit196.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit196
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit209:                    ; preds = %rpi_init_power_domain.exit196
  %arrayidx.i198 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 11
  %139 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 12, ptr %arrayidx.i198, align 8
  %140 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %fw, align 8
  %fw1.i.i200 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 11, i32 4
  %142 = ptrtoint ptr %fw1.i.i200 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %fw1.i.i200, align 8
  %base.i.i201 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 11, i32 3
  %name2.i.i202 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 11, i32 3, i32 10
  %143 = ptrtoint ptr %name2.i.i202 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str.18, ptr %name2.i.i202, align 8
  %power_on.i.i203 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 11, i32 3, i32 19
  %144 = ptrtoint ptr %power_on.i.i203 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @rpi_domain_on, ptr %power_on.i.i203, align 4
  %power_off.i.i204 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 11, i32 3, i32 18
  %145 = ptrtoint ptr %power_off.i.i204 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @rpi_domain_off, ptr %power_off.i.i204, align 8
  %call.i.i205 = call i32 @pm_genpd_init(ptr noundef %base.i.i201, ptr noundef null, i1 noundef zeroext true) #5
  %146 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i207 = getelementptr ptr, ptr %147, i32 11
  %148 = ptrtoint ptr %arrayidx8.i.i207 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %base.i.i201, ptr %arrayidx8.i.i207, align 4
  %149 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %.pr374.pr.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr374.pr.pr)
  %tobool.not.i210 = icmp eq i8 %.pr374.pr.pr, 0
  br i1 %tobool.not.i210, label %rpi_init_power_domain.exit209.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit222

rpi_init_power_domain.exit209.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit209
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit222:                    ; preds = %rpi_init_power_domain.exit209
  %arrayidx.i211 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 12
  %150 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 13, ptr %arrayidx.i211, align 8
  %151 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %fw, align 8
  %fw1.i.i213 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 12, i32 4
  %153 = ptrtoint ptr %fw1.i.i213 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %fw1.i.i213, align 8
  %base.i.i214 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 12, i32 3
  %name2.i.i215 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 12, i32 3, i32 10
  %154 = ptrtoint ptr %name2.i.i215 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.19, ptr %name2.i.i215, align 8
  %power_on.i.i216 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 12, i32 3, i32 19
  %155 = ptrtoint ptr %power_on.i.i216 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @rpi_domain_on, ptr %power_on.i.i216, align 4
  %power_off.i.i217 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 12, i32 3, i32 18
  %156 = ptrtoint ptr %power_off.i.i217 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @rpi_domain_off, ptr %power_off.i.i217, align 8
  %call.i.i218 = call i32 @pm_genpd_init(ptr noundef %base.i.i214, ptr noundef null, i1 noundef zeroext true) #5
  %157 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i220 = getelementptr ptr, ptr %158, i32 12
  %159 = ptrtoint ptr %arrayidx8.i.i220 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %base.i.i214, ptr %arrayidx8.i.i220, align 4
  %160 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %.pr376 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr376)
  %tobool.not.i223 = icmp eq i8 %.pr376, 0
  br i1 %tobool.not.i223, label %rpi_init_power_domain.exit222.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit235

rpi_init_power_domain.exit222.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit222
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit235:                    ; preds = %rpi_init_power_domain.exit222
  %arrayidx.i224 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 13
  %161 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 14, ptr %arrayidx.i224, align 8
  %162 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fw, align 8
  %fw1.i.i226 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 13, i32 4
  %164 = ptrtoint ptr %fw1.i.i226 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %fw1.i.i226, align 8
  %base.i.i227 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 13, i32 3
  %name2.i.i228 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 13, i32 3, i32 10
  %165 = ptrtoint ptr %name2.i.i228 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @.str.20, ptr %name2.i.i228, align 8
  %power_on.i.i229 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 13, i32 3, i32 19
  %166 = ptrtoint ptr %power_on.i.i229 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @rpi_domain_on, ptr %power_on.i.i229, align 4
  %power_off.i.i230 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 13, i32 3, i32 18
  %167 = ptrtoint ptr %power_off.i.i230 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @rpi_domain_off, ptr %power_off.i.i230, align 8
  %call.i.i231 = call i32 @pm_genpd_init(ptr noundef %base.i.i227, ptr noundef null, i1 noundef zeroext true) #5
  %168 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i233 = getelementptr ptr, ptr %169, i32 13
  %170 = ptrtoint ptr %arrayidx8.i.i233 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %base.i.i227, ptr %arrayidx8.i.i233, align 4
  %171 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %.pr378.pr.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr378.pr.pr)
  %tobool.not.i236 = icmp eq i8 %.pr378.pr.pr, 0
  br i1 %tobool.not.i236, label %rpi_init_power_domain.exit235.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit248

rpi_init_power_domain.exit235.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit235
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit248:                    ; preds = %rpi_init_power_domain.exit235
  %arrayidx.i237 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 14
  %172 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 15, ptr %arrayidx.i237, align 8
  %173 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %fw, align 8
  %fw1.i.i239 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 14, i32 4
  %175 = ptrtoint ptr %fw1.i.i239 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %fw1.i.i239, align 8
  %base.i.i240 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 14, i32 3
  %name2.i.i241 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 14, i32 3, i32 10
  %176 = ptrtoint ptr %name2.i.i241 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @.str.21, ptr %name2.i.i241, align 8
  %power_on.i.i242 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 14, i32 3, i32 19
  %177 = ptrtoint ptr %power_on.i.i242 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @rpi_domain_on, ptr %power_on.i.i242, align 4
  %power_off.i.i243 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 14, i32 3, i32 18
  %178 = ptrtoint ptr %power_off.i.i243 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @rpi_domain_off, ptr %power_off.i.i243, align 8
  %call.i.i244 = call i32 @pm_genpd_init(ptr noundef %base.i.i240, ptr noundef null, i1 noundef zeroext true) #5
  %179 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i246 = getelementptr ptr, ptr %180, i32 14
  %181 = ptrtoint ptr %arrayidx8.i.i246 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %base.i.i240, ptr %arrayidx8.i.i246, align 4
  %182 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %.pr380 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr380)
  %tobool.not.i249 = icmp eq i8 %.pr380, 0
  br i1 %tobool.not.i249, label %rpi_init_power_domain.exit248.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit261

rpi_init_power_domain.exit248.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit248
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit261:                    ; preds = %rpi_init_power_domain.exit248
  %arrayidx.i250 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 15
  %183 = ptrtoint ptr %arrayidx.i250 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 16, ptr %arrayidx.i250, align 8
  %184 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fw, align 8
  %fw1.i.i252 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 15, i32 4
  %186 = ptrtoint ptr %fw1.i.i252 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %185, ptr %fw1.i.i252, align 8
  %base.i.i253 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 15, i32 3
  %name2.i.i254 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 15, i32 3, i32 10
  %187 = ptrtoint ptr %name2.i.i254 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.22, ptr %name2.i.i254, align 8
  %power_on.i.i255 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 15, i32 3, i32 19
  %188 = ptrtoint ptr %power_on.i.i255 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @rpi_domain_on, ptr %power_on.i.i255, align 4
  %power_off.i.i256 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 15, i32 3, i32 18
  %189 = ptrtoint ptr %power_off.i.i256 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @rpi_domain_off, ptr %power_off.i.i256, align 8
  %call.i.i257 = call i32 @pm_genpd_init(ptr noundef %base.i.i253, ptr noundef null, i1 noundef zeroext true) #5
  %190 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i259 = getelementptr ptr, ptr %191, i32 15
  %192 = ptrtoint ptr %arrayidx8.i.i259 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %base.i.i253, ptr %arrayidx8.i.i259, align 4
  %193 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %.pr382.pr.pr.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr382.pr.pr.pr)
  %tobool.not.i262 = icmp eq i8 %.pr382.pr.pr.pr, 0
  br i1 %tobool.not.i262, label %rpi_init_power_domain.exit261.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit274

rpi_init_power_domain.exit261.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit261
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit274:                    ; preds = %rpi_init_power_domain.exit261
  %arrayidx.i263 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 16
  %194 = ptrtoint ptr %arrayidx.i263 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 17, ptr %arrayidx.i263, align 8
  %195 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %fw, align 8
  %fw1.i.i265 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 16, i32 4
  %197 = ptrtoint ptr %fw1.i.i265 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %196, ptr %fw1.i.i265, align 8
  %base.i.i266 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 16, i32 3
  %name2.i.i267 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 16, i32 3, i32 10
  %198 = ptrtoint ptr %name2.i.i267 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr @.str.23, ptr %name2.i.i267, align 8
  %power_on.i.i268 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 16, i32 3, i32 19
  %199 = ptrtoint ptr %power_on.i.i268 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @rpi_domain_on, ptr %power_on.i.i268, align 4
  %power_off.i.i269 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 16, i32 3, i32 18
  %200 = ptrtoint ptr %power_off.i.i269 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @rpi_domain_off, ptr %power_off.i.i269, align 8
  %call.i.i270 = call i32 @pm_genpd_init(ptr noundef %base.i.i266, ptr noundef null, i1 noundef zeroext true) #5
  %201 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i272 = getelementptr ptr, ptr %202, i32 16
  %203 = ptrtoint ptr %arrayidx8.i.i272 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %base.i.i266, ptr %arrayidx8.i.i272, align 4
  %204 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %.pr384 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr384)
  %tobool.not.i275 = icmp eq i8 %.pr384, 0
  br i1 %tobool.not.i275, label %rpi_init_power_domain.exit274.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit287

rpi_init_power_domain.exit274.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit274
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit287:                    ; preds = %rpi_init_power_domain.exit274
  %arrayidx.i276 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 17
  %205 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 18, ptr %arrayidx.i276, align 8
  %206 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %fw, align 8
  %fw1.i.i278 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 17, i32 4
  %208 = ptrtoint ptr %fw1.i.i278 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %207, ptr %fw1.i.i278, align 8
  %base.i.i279 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 17, i32 3
  %name2.i.i280 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 17, i32 3, i32 10
  %209 = ptrtoint ptr %name2.i.i280 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr @.str.24, ptr %name2.i.i280, align 8
  %power_on.i.i281 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 17, i32 3, i32 19
  %210 = ptrtoint ptr %power_on.i.i281 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @rpi_domain_on, ptr %power_on.i.i281, align 4
  %power_off.i.i282 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 17, i32 3, i32 18
  %211 = ptrtoint ptr %power_off.i.i282 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @rpi_domain_off, ptr %power_off.i.i282, align 8
  %call.i.i283 = call i32 @pm_genpd_init(ptr noundef %base.i.i279, ptr noundef null, i1 noundef zeroext true) #5
  %212 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i285 = getelementptr ptr, ptr %213, i32 17
  %214 = ptrtoint ptr %arrayidx8.i.i285 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %base.i.i279, ptr %arrayidx8.i.i285, align 4
  %215 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %.pr386.pr.pr.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr386.pr.pr.pr)
  %tobool.not.i288 = icmp eq i8 %.pr386.pr.pr.pr, 0
  br i1 %tobool.not.i288, label %rpi_init_power_domain.exit287.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit300

rpi_init_power_domain.exit287.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit287
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit300:                    ; preds = %rpi_init_power_domain.exit287
  %arrayidx.i289 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 18
  %216 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 19, ptr %arrayidx.i289, align 8
  %217 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %fw, align 8
  %fw1.i.i291 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 18, i32 4
  %219 = ptrtoint ptr %fw1.i.i291 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %218, ptr %fw1.i.i291, align 8
  %base.i.i292 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 18, i32 3
  %name2.i.i293 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 18, i32 3, i32 10
  %220 = ptrtoint ptr %name2.i.i293 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.25, ptr %name2.i.i293, align 8
  %power_on.i.i294 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 18, i32 3, i32 19
  %221 = ptrtoint ptr %power_on.i.i294 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr @rpi_domain_on, ptr %power_on.i.i294, align 4
  %power_off.i.i295 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 18, i32 3, i32 18
  %222 = ptrtoint ptr %power_off.i.i295 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @rpi_domain_off, ptr %power_off.i.i295, align 8
  %call.i.i296 = call i32 @pm_genpd_init(ptr noundef %base.i.i292, ptr noundef null, i1 noundef zeroext true) #5
  %223 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i298 = getelementptr ptr, ptr %224, i32 18
  %225 = ptrtoint ptr %arrayidx8.i.i298 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %base.i.i292, ptr %arrayidx8.i.i298, align 4
  %226 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %.pr388 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr388)
  %tobool.not.i301 = icmp eq i8 %.pr388, 0
  br i1 %tobool.not.i301, label %rpi_init_power_domain.exit300.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit313

rpi_init_power_domain.exit300.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit300
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit313:                    ; preds = %rpi_init_power_domain.exit300
  %arrayidx.i302 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 19
  %227 = ptrtoint ptr %arrayidx.i302 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 20, ptr %arrayidx.i302, align 8
  %228 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %fw, align 8
  %fw1.i.i304 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 19, i32 4
  %230 = ptrtoint ptr %fw1.i.i304 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %229, ptr %fw1.i.i304, align 8
  %base.i.i305 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 19, i32 3
  %name2.i.i306 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 19, i32 3, i32 10
  %231 = ptrtoint ptr %name2.i.i306 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @.str.26, ptr %name2.i.i306, align 8
  %power_on.i.i307 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 19, i32 3, i32 19
  %232 = ptrtoint ptr %power_on.i.i307 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @rpi_domain_on, ptr %power_on.i.i307, align 4
  %power_off.i.i308 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 19, i32 3, i32 18
  %233 = ptrtoint ptr %power_off.i.i308 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr @rpi_domain_off, ptr %power_off.i.i308, align 8
  %call.i.i309 = call i32 @pm_genpd_init(ptr noundef %base.i.i305, ptr noundef null, i1 noundef zeroext true) #5
  %234 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i311 = getelementptr ptr, ptr %235, i32 19
  %236 = ptrtoint ptr %arrayidx8.i.i311 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %base.i.i305, ptr %arrayidx8.i.i311, align 4
  %237 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %.pr390.pr.pr.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr390.pr.pr.pr)
  %tobool.not.i314 = icmp eq i8 %.pr390.pr.pr.pr, 0
  br i1 %tobool.not.i314, label %rpi_init_power_domain.exit313.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit326

rpi_init_power_domain.exit313.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit313
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit326:                    ; preds = %rpi_init_power_domain.exit313
  %arrayidx.i315 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 20
  %238 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 21, ptr %arrayidx.i315, align 8
  %239 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %fw, align 8
  %fw1.i.i317 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 20, i32 4
  %241 = ptrtoint ptr %fw1.i.i317 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %240, ptr %fw1.i.i317, align 8
  %base.i.i318 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 20, i32 3
  %name2.i.i319 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 20, i32 3, i32 10
  %242 = ptrtoint ptr %name2.i.i319 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @.str.27, ptr %name2.i.i319, align 8
  %power_on.i.i320 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 20, i32 3, i32 19
  %243 = ptrtoint ptr %power_on.i.i320 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @rpi_domain_on, ptr %power_on.i.i320, align 4
  %power_off.i.i321 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 20, i32 3, i32 18
  %244 = ptrtoint ptr %power_off.i.i321 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @rpi_domain_off, ptr %power_off.i.i321, align 8
  %call.i.i322 = call i32 @pm_genpd_init(ptr noundef %base.i.i318, ptr noundef null, i1 noundef zeroext true) #5
  %245 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i324 = getelementptr ptr, ptr %246, i32 20
  %247 = ptrtoint ptr %arrayidx8.i.i324 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %base.i.i318, ptr %arrayidx8.i.i324, align 4
  %248 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %.pr392 = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr392)
  %tobool.not.i327 = icmp eq i8 %.pr392, 0
  br i1 %tobool.not.i327, label %rpi_init_power_domain.exit326.rpi_init_power_domain.exit352_crit_edge, label %rpi_init_power_domain.exit339

rpi_init_power_domain.exit326.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit326
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit339:                    ; preds = %rpi_init_power_domain.exit326
  %arrayidx.i328 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 21
  %249 = ptrtoint ptr %arrayidx.i328 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 22, ptr %arrayidx.i328, align 8
  %250 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %fw, align 8
  %fw1.i.i330 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 21, i32 4
  %252 = ptrtoint ptr %fw1.i.i330 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %251, ptr %fw1.i.i330, align 8
  %base.i.i331 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 21, i32 3
  %name2.i.i332 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 21, i32 3, i32 10
  %253 = ptrtoint ptr %name2.i.i332 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @.str.28, ptr %name2.i.i332, align 8
  %power_on.i.i333 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 21, i32 3, i32 19
  %254 = ptrtoint ptr %power_on.i.i333 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr @rpi_domain_on, ptr %power_on.i.i333, align 4
  %power_off.i.i334 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 21, i32 3, i32 18
  %255 = ptrtoint ptr %power_off.i.i334 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr @rpi_domain_off, ptr %power_off.i.i334, align 8
  %call.i.i335 = call i32 @pm_genpd_init(ptr noundef %base.i.i331, ptr noundef null, i1 noundef zeroext true) #5
  %256 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i337 = getelementptr ptr, ptr %257, i32 21
  %258 = ptrtoint ptr %arrayidx8.i.i337 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %base.i.i331, ptr %arrayidx8.i.i337, align 4
  %259 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %.pr394.pr.pr.pr = load i8, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr394.pr.pr.pr)
  %tobool.not.i340 = icmp eq i8 %.pr394.pr.pr.pr, 0
  br i1 %tobool.not.i340, label %rpi_init_power_domain.exit339.rpi_init_power_domain.exit352_crit_edge, label %if.end.i351

rpi_init_power_domain.exit339.rpi_init_power_domain.exit352_crit_edge: ; preds = %rpi_init_power_domain.exit339
  call void @__sanitizer_cov_trace_pc() #7
  br label %rpi_init_power_domain.exit352

if.end.i351:                                      ; preds = %rpi_init_power_domain.exit339
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i341 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 22
  %260 = ptrtoint ptr %arrayidx.i341 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 23, ptr %arrayidx.i341, align 8
  %261 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %fw, align 8
  %fw1.i.i343 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 22, i32 4
  %263 = ptrtoint ptr %fw1.i.i343 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %262, ptr %fw1.i.i343, align 8
  %base.i.i344 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 22, i32 3
  %name2.i.i345 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 22, i32 3, i32 10
  %264 = ptrtoint ptr %name2.i.i345 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr @.str.29, ptr %name2.i.i345, align 8
  %power_on.i.i346 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 22, i32 3, i32 19
  %265 = ptrtoint ptr %power_on.i.i346 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @rpi_domain_on, ptr %power_on.i.i346, align 4
  %power_off.i.i347 = getelementptr %struct.rpi_power_domains, ptr %call.i, i32 0, i32 3, i32 22, i32 3, i32 18
  %266 = ptrtoint ptr %power_off.i.i347 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr @rpi_domain_off, ptr %power_off.i.i347, align 8
  %call.i.i348 = call i32 @pm_genpd_init(ptr noundef %base.i.i344, ptr noundef null, i1 noundef zeroext true) #5
  %267 = ptrtoint ptr %xlate to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %xlate, align 4
  %arrayidx8.i.i350 = getelementptr ptr, ptr %268, i32 22
  %269 = ptrtoint ptr %arrayidx8.i.i350 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %base.i.i344, ptr %arrayidx8.i.i350, align 4
  br label %rpi_init_power_domain.exit352

rpi_init_power_domain.exit352:                    ; preds = %if.end.i351, %rpi_init_power_domain.exit339.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit326.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit313.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit300.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit287.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit274.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit261.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit248.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit235.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit222.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit209.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit196.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit183.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit170.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit157.rpi_init_power_domain.exit352_crit_edge, %rpi_init_power_domain.exit134.rpi_init_power_domain.exit352_crit_edge
  %270 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %of_node, align 8
  %call24 = call i32 @of_genpd_add_provider_onecell(ptr noundef %271, ptr noundef %xlate) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %272 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rpi_init_power_domain.exit352, %if.end14.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rpi_init_power_domain.exit352 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rpi_firmware_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_domain_on(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  %packet.i = alloca %struct.rpi_power_domain_packet, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packet.i) #5
  %0 = getelementptr inbounds %struct.rpi_power_domain_packet, ptr %packet.i, i32 0, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 8
  %3 = ptrtoint ptr %packet.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %packet.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %0, align 4
  %fw.i = getelementptr i8, ptr %domain, i32 1352
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 8
  %old_interface.i = getelementptr i8, ptr %domain, i32 -3
  %7 = ptrtoint ptr %old_interface.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %old_interface.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  %cond.i = select i1 %tobool3.not.i, i32 229424, i32 163841
  %call.i = call i32 @rpi_firmware_property(ptr noundef %6, i32 noundef %cond.i, ptr noundef nonnull %packet.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packet.i) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_domain_off(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  %packet.i = alloca %struct.rpi_power_domain_packet, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packet.i) #5
  %0 = getelementptr inbounds %struct.rpi_power_domain_packet, ptr %packet.i, i32 0, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 8
  %3 = ptrtoint ptr %packet.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %packet.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %fw.i = getelementptr i8, ptr %domain, i32 1352
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 8
  %old_interface.i = getelementptr i8, ptr %domain, i32 -3
  %7 = ptrtoint ptr %old_interface.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %old_interface.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  %cond.i = select i1 %tobool3.not.i, i32 229424, i32 163841
  %call.i = call i32 @rpi_firmware_property(ptr noundef %6, i32 noundef %cond.i, ptr noundef nonnull %packet.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packet.i) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_raspberrypi_power__170_241_rpi_power_driver_init6, !1, !"__initcall__kmod_raspberrypi_power__170_241_rpi_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 241, i32 1}
!2 = !{ptr @__UNIQUE_ID_author171, !3, !"__UNIQUE_ID_author171", i1 false, i1 false}
!3 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 243, i32 1}
!4 = !{ptr @__UNIQUE_ID_author172, !5, !"__UNIQUE_ID_author172", i1 false, i1 false}
!5 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 244, i32 1}
!6 = !{ptr @__UNIQUE_ID_description173, !7, !"__UNIQUE_ID_description173", i1 false, i1 false}
!7 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 245, i32 1}
!8 = !{ptr @__UNIQUE_ID_file174, !9, !"__UNIQUE_ID_file174", i1 false, i1 false}
!9 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 246, i32 1}
!10 = !{ptr @__UNIQUE_ID_license175, !9, !"__UNIQUE_ID_license175", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 236, i32 11}
!13 = !{ptr @rpi_power_driver, !14, !"rpi_power_driver", i1 false, i1 false}
!14 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 234, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 174, i32 46}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 176, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rpi_power_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rpi_power_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 188, i32 60}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 189, i32 60}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 190, i32 60}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 192, i32 10}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 193, i32 60}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 194, i32 60}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 201, i32 33}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 203, i32 59}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 204, i32 60}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 205, i32 60}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 206, i32 59}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 207, i32 59}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 208, i32 63}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 209, i32 63}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 210, i32 62}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 211, i32 60}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 212, i32 59}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 213, i32 60}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 214, i32 60}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 216, i32 10}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 217, i32 62}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 218, i32 59}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 219, i32 59}
!71 = !{ptr @rpi_power_of_match, !72, !"rpi_power_of_match", i1 false, i1 false}
!72 = !{!"../drivers/soc/bcm/raspberrypi-power.c", i32 228, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
