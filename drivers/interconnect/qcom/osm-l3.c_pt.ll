; ModuleID = '/llk/IR_all_yes/drivers/interconnect/qcom/osm-l3.c_pt.bc'
source_filename = "../drivers/interconnect/qcom/osm-l3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.qcom_osm_l3_desc = type { ptr, i32, i32, i32, i32 }
%struct.qcom_osm_l3_node = type { ptr, [1 x i16], i16, i16, i16 }
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
%struct.qcom_osm_l3_icc_provider = type { ptr, i32, i32, [40 x i32], %struct.icc_provider }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.icc_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_icc_osm_l3__183_364_osm_l3_driver_init6 = internal global ptr @osm_l3_driver_init, section ".initcall6.init", align 4
@osm_l3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_osm_l3_probe, ptr @qcom_osm_l3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @osm_l3_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_osm_l3_driver_exit = internal global ptr @osm_l3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [59 x i8] c"icc_osm_l3.description=Qualcomm OSM L3 interconnect driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [53 x i8] c"icc_osm_l3.file=drivers/interconnect/qcom/icc-osm-l3\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [26 x i8] c"icc_osm_l3.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osm-l3\00", [25 x i8] zeroinitializer }, align 32
@osm_l3_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-osm-l3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_icc_osm_l3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-epss-l3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_icc_epss_l3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-osm-l3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_icc_osm_l3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-osm-l3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_icc_osm_l3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-osm-l3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_icc_osm_l3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-epss-l3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_icc_epss_l3 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@qcom_osm_l3_probe.hw_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@qcom_osm_l3_probe.xo_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alternate\00", [22 x i8] zeroinitializer }, align 32
@qcom_osm_l3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 261, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error hardware not enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_osm_l3_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/interconnect/qcom/osm-l3.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_osm_l3_probe._entry_ptr = internal global ptr @qcom_osm_l3_probe._entry, section ".printk_index", align 4
@qcom_osm_l3_probe.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"icc_osm_l3\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"index=%d freq=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@qcom_osm_l3_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 309, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error adding interconnect provider\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_osm_l3_probe._entry_ptr.12 = internal global ptr @qcom_osm_l3_probe._entry.10, section ".printk_index", align 4
@sc7180_icc_osm_l3 = internal constant { %struct.qcom_osm_l3_desc, [44 x i8] } { %struct.qcom_osm_l3_desc { ptr @sc7180_osm_l3_nodes, i32 2, i32 32, i32 272, i32 2336 }, [44 x i8] zeroinitializer }, align 32
@sc7280_icc_epss_l3 = internal constant { %struct.qcom_osm_l3_desc, [44 x i8] } { %struct.qcom_osm_l3_desc { ptr @sc7280_epss_l3_nodes, i32 2, i32 4, i32 256, i32 800 }, [44 x i8] zeroinitializer }, align 32
@sdm845_icc_osm_l3 = internal constant { %struct.qcom_osm_l3_desc, [44 x i8] } { %struct.qcom_osm_l3_desc { ptr @sdm845_osm_l3_nodes, i32 2, i32 32, i32 272, i32 2336 }, [44 x i8] zeroinitializer }, align 32
@sm8150_icc_osm_l3 = internal constant { %struct.qcom_osm_l3_desc, [44 x i8] } { %struct.qcom_osm_l3_desc { ptr @sm8150_osm_l3_nodes, i32 2, i32 32, i32 272, i32 2336 }, [44 x i8] zeroinitializer }, align 32
@sc8180x_icc_osm_l3 = internal constant { %struct.qcom_osm_l3_desc, [44 x i8] } { %struct.qcom_osm_l3_desc { ptr @sc8180x_osm_l3_nodes, i32 2, i32 32, i32 272, i32 2336 }, [44 x i8] zeroinitializer }, align 32
@sm8250_icc_epss_l3 = internal constant { %struct.qcom_osm_l3_desc, [44 x i8] } { %struct.qcom_osm_l3_desc { ptr @sm8250_epss_l3_nodes, i32 2, i32 4, i32 256, i32 800 }, [44 x i8] zeroinitializer }, align 32
@sc7180_osm_l3_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sc7180_osm_apps_l3, ptr @sc7180_osm_l3], [24 x i8] zeroinitializer }, align 32
@sc7180_osm_apps_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.13, [1 x i16] [i16 138], i16 137, i16 1, i16 16 }, [20 x i8] zeroinitializer }, align 32
@sc7180_osm_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.14, [1 x i16] zeroinitializer, i16 138, i16 0, i16 16 }, [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc7180_osm_apps_l3\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sc7180_osm_l3\00", [18 x i8] zeroinitializer }, align 32
@sc7280_epss_l3_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sc7280_epss_apps_l3, ptr @sc7280_epss_l3], [24 x i8] zeroinitializer }, align 32
@sc7280_epss_apps_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.15, [1 x i16] [i16 143], i16 142, i16 1, i16 32 }, [20 x i8] zeroinitializer }, align 32
@sc7280_epss_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.16, [1 x i16] zeroinitializer, i16 143, i16 0, i16 32 }, [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sc7280_epss_apps_l3\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc7280_epss_l3\00", [17 x i8] zeroinitializer }, align 32
@sdm845_osm_l3_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sdm845_osm_apps_l3, ptr @sdm845_osm_l3], [24 x i8] zeroinitializer }, align 32
@sdm845_osm_apps_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.17, [1 x i16] [i16 132], i16 131, i16 1, i16 16 }, [20 x i8] zeroinitializer }, align 32
@sdm845_osm_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.18, [1 x i16] zeroinitializer, i16 132, i16 0, i16 16 }, [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdm845_osm_apps_l3\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdm845_osm_l3\00", [18 x i8] zeroinitializer }, align 32
@sm8150_osm_l3_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sm8150_osm_apps_l3, ptr @sm8150_osm_l3], [24 x i8] zeroinitializer }, align 32
@sm8150_osm_apps_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.19, [1 x i16] [i16 141], i16 140, i16 1, i16 32 }, [20 x i8] zeroinitializer }, align 32
@sm8150_osm_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.20, [1 x i16] zeroinitializer, i16 141, i16 0, i16 32 }, [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sm8150_osm_apps_l3\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sm8150_osm_l3\00", [18 x i8] zeroinitializer }, align 32
@sc8180x_osm_l3_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sc8180x_osm_apps_l3, ptr @sc8180x_osm_l3], [24 x i8] zeroinitializer }, align 32
@sc8180x_osm_apps_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.21, [1 x i16] [i16 162], i16 161, i16 1, i16 32 }, [20 x i8] zeroinitializer }, align 32
@sc8180x_osm_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.22, [1 x i16] zeroinitializer, i16 162, i16 0, i16 32 }, [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sc8180x_osm_apps_l3\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sc8180x_osm_l3\00", [17 x i8] zeroinitializer }, align 32
@sm8250_epss_l3_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sm8250_epss_apps_l3, ptr @sm8250_epss_l3], [24 x i8] zeroinitializer }, align 32
@sm8250_epss_apps_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.23, [1 x i16] [i16 151], i16 150, i16 1, i16 32 }, [20 x i8] zeroinitializer }, align 32
@sm8250_epss_l3 = internal constant { %struct.qcom_osm_l3_node, [20 x i8] } { %struct.qcom_osm_l3_node { ptr @.str.24, [1 x i16] zeroinitializer, i16 151, i16 0, i16 32 }, [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sm8250_epss_apps_l3\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sm8250_epss_l3\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"osm_l3_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 355, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 359, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"osm_l3_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 344, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"hw_rate\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 226, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant [8 x i8] c"xo_rate\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 226, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 237, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 244, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 261, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 285, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 309, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"sc7180_icc_osm_l3\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 110, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"sc7280_icc_epss_l3\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 126, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"sdm845_icc_osm_l3\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 94, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"sm8150_icc_osm_l3\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 158, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"sc8180x_icc_osm_l3\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 142, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"sm8250_icc_epss_l3\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 174, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"sc7180_osm_l3_nodes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 105, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"sc7180_osm_apps_l3\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"sc7180_osm_l3\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 102, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 103, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"sc7280_epss_l3_nodes\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 121, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"sc7280_epss_apps_l3\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"sc7280_epss_l3\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 118, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 119, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"sdm845_osm_l3_nodes\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 89, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"sdm845_osm_apps_l3\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"sdm845_osm_l3\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 86, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 87, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"sm8150_osm_l3_nodes\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 153, i32 39 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"sm8150_osm_apps_l3\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"sm8150_osm_l3\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 150, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 151, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"sc8180x_osm_l3_nodes\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 137, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"sc8180x_osm_apps_l3\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"sc8180x_osm_l3\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 134, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 135, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [21 x i8] c"sm8250_epss_l3_nodes\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 169, i32 39 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"sm8250_epss_apps_l3\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [15 x i8] c"sm8250_epss_l3\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 166, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [38 x i8] c"../drivers/interconnect/qcom/osm-l3.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 167, i32 1 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_osm_l3_driver_exit, ptr @__initcall__kmod_icc_osm_l3__183_364_osm_l3_driver_init6, ptr @osm_l3_driver_exit, ptr @qcom_osm_l3_probe._entry, ptr @qcom_osm_l3_probe._entry.10, ptr @qcom_osm_l3_probe._entry_ptr, ptr @qcom_osm_l3_probe._entry_ptr.12, ptr @osm_l3_driver, ptr @.str, ptr @osm_l3_of_match, ptr @qcom_osm_l3_probe.hw_rate, ptr @qcom_osm_l3_probe.xo_rate, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @sc7180_icc_osm_l3, ptr @sc7280_icc_epss_l3, ptr @sdm845_icc_osm_l3, ptr @sm8150_icc_osm_l3, ptr @sc8180x_icc_osm_l3, ptr @sm8250_icc_epss_l3, ptr @sc7180_osm_l3_nodes, ptr @sc7180_osm_apps_l3, ptr @sc7180_osm_l3, ptr @.str.13, ptr @.str.14, ptr @sc7280_epss_l3_nodes, ptr @sc7280_epss_apps_l3, ptr @sc7280_epss_l3, ptr @.str.15, ptr @.str.16, ptr @sdm845_osm_l3_nodes, ptr @sdm845_osm_apps_l3, ptr @sdm845_osm_l3, ptr @.str.17, ptr @.str.18, ptr @sm8150_osm_l3_nodes, ptr @sm8150_osm_apps_l3, ptr @sm8150_osm_l3, ptr @.str.19, ptr @.str.20, ptr @sc8180x_osm_l3_nodes, ptr @sc8180x_osm_apps_l3, ptr @sc8180x_osm_l3, ptr @.str.21, ptr @.str.22, ptr @sm8250_epss_l3_nodes, ptr @sm8250_epss_apps_l3, ptr @sm8250_epss_l3, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osm_l3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osm_l3_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_osm_l3_probe.hw_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_osm_l3_probe.xo_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_osm_l3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_osm_l3_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_icc_osm_l3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_icc_epss_l3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_icc_osm_l3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_icc_osm_l3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_icc_osm_l3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_icc_epss_l3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_osm_l3_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_osm_apps_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_osm_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_epss_l3_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_epss_apps_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_epss_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_osm_l3_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_osm_apps_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_osm_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_osm_l3_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_osm_apps_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_osm_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_osm_l3_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_osm_apps_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_osm_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_epss_l3_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_epss_apps_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_epss_l3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @osm_l3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @osm_l3_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @osm_l3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @osm_l3_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_osm_l3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup147

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @clk_get_rate(ptr noundef %call) #6
  store i32 %call3, ptr @qcom_osm_l3_probe.xo_rate, align 4
  tail call void @clk_put(ptr noundef %call) #6
  %call5 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %cmp.i241 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup147

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @clk_get_rate(ptr noundef %call5) #6
  %div240 = lshr i32 %call10, 1
  store i32 %div240, ptr @qcom_osm_l3_probe.hw_rate, align 4
  tail call void @clk_put(ptr noundef %call5) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end9.cleanup147_crit_edge, label %if.end14

if.end9.cleanup147_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call15, ptr %call.i, align 4
  %cmp.i242 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call15 to i32
  br label %cleanup147

if.end21:                                         ; preds = %if.end14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call15) #6, !srcloc !107
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool24.not = icmp eq i32 %5, 0
  br i1 %tobool24.not, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup147

if.end27:                                         ; preds = %if.end21
  %call29 = tail call ptr @device_get_match_data(ptr noundef %dev) #6
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end27.cleanup147_crit_edge, label %if.end32

if.end27.cleanup147_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

if.end32:                                         ; preds = %if.end27
  %reg_perf_state = getelementptr inbounds %struct.qcom_osm_l3_desc, ptr %call29, i32 0, i32 4
  %6 = ptrtoint ptr %reg_perf_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_perf_state, align 4
  %reg_perf_state33 = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %reg_perf_state33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reg_perf_state33, align 4
  %reg_freq_lut = getelementptr inbounds %struct.qcom_osm_l3_desc, ptr %call29, i32 0, i32 3
  %lut_row_size = getelementptr inbounds %struct.qcom_osm_l3_desc, ptr %call29, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end93.for.body_crit_edge, %if.end32
  %i.0251 = phi i32 [ 0, %if.end32 ], [ %inc, %do.end93.for.body_crit_edge ]
  %prev_freq.0250 = phi i32 [ 0, %if.end32 ], [ %freq.0, %do.end93.for.body_crit_edge ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %11 = ptrtoint ptr %reg_freq_lut to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_freq_lut, align 4
  %add.ptr36 = getelementptr i8, ptr %10, i32 %12
  %13 = ptrtoint ptr %lut_row_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lut_row_size, align 4
  %mul = mul i32 %14, %i.0251
  %add.ptr37 = getelementptr i8, ptr %add.ptr36, i32 %mul
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !107
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %16)
  %tobool75.not = icmp ult i32 %16, 1073741824
  br i1 %tobool75.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %and73 = and i32 %16, 255
  %17 = load i32, ptr @qcom_osm_l3_probe.xo_rate, align 4
  %mul77 = mul i32 %17, %and73
  br label %if.end78

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = load i32, ptr @qcom_osm_l3_probe.hw_rate, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then76
  %freq.0 = phi i32 [ %mul77, %if.then76 ], [ %18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0251)
  %cmp79.not = icmp ne i32 %i.0251, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_freq.0250, i32 %freq.0)
  %cmp80 = icmp eq i32 %prev_freq.0250, %freq.0
  %or.cond = select i1 %cmp79.not, i1 %cmp80, i1 false
  br i1 %or.cond, label %if.end78.for.end_crit_edge, label %do.body83

if.end78.for.end_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body83:                                        ; preds = %if.end78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_osm_l3_probe.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_osm_l3_probe, %if.then89)) #6
          to label %do.end93 [label %if.then89], !srcloc !108

if.then89:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_osm_l3_probe.__UNIQUE_ID_ddebug182, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %i.0251, i32 noundef %freq.0) #6
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %do.body83
  %arrayidx = getelementptr %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 3, i32 %i.0251
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %freq.0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0251, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %do.end93.for.end_crit_edge, label %do.end93.for.body_crit_edge

do.end93.for.body_crit_edge:                      ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end93.for.end_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.end93.for.end_crit_edge, %if.end78.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0251, %if.end78.for.end_crit_edge ], [ 40, %do.end93.for.end_crit_edge ]
  %max_state = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %max_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0.lcssa, ptr %max_state, align 4
  %21 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call29, align 4
  %num_nodes94 = getelementptr inbounds %struct.qcom_osm_l3_desc, ptr %call29, i32 0, i32 1
  %23 = ptrtoint ptr %num_nodes94 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_nodes94, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 68) #6
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %for.end.cleanup147_crit_edge, label %devm_kcalloc.exit, !prof !109

for.end.cleanup147_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

devm_kcalloc.exit:                                ; preds = %for.end
  %27 = extractvalue { i32, i1 } %25, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %27, i32 noundef 3520) #6
  %tobool97.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool97.not, label %devm_kcalloc.exit.cleanup147_crit_edge, label %if.end99

devm_kcalloc.exit.cleanup147_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

if.end99:                                         ; preds = %devm_kcalloc.exit
  %provider100 = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4
  %dev102 = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %dev102 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev102, align 4
  %set = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @qcom_osm_l3_set, ptr %set, align 4
  %aggregate = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %aggregate to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @icc_std_aggregate, ptr %aggregate, align 4
  %xlate = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @of_icc_xlate_onecell, ptr %xlate, align 4
  %nodes103 = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %nodes103 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %nodes103, ptr %nodes103, align 4
  %prev.i = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %nodes103, ptr %prev.i, align 4
  %data104 = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %call.i, i32 0, i32 4, i32 11
  %34 = ptrtoint ptr %data104 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i, ptr %data104, align 4
  %call105 = tail call i32 @icc_provider_add(ptr noundef %provider100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %for.cond113.preheader, label %do.end110

for.cond113.preheader:                            ; preds = %if.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp114256.not = icmp eq i32 %24, 0
  br i1 %cmp114256.not, label %for.cond113.preheader.for.end143_crit_edge, label %for.cond113.preheader.for.body115_crit_edge

for.cond113.preheader.for.body115_crit_edge:      ; preds = %for.cond113.preheader
  br label %for.body115

for.cond113.preheader.for.end143_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end143

do.end110:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup147

for.body115:                                      ; preds = %for.inc141.for.body115_crit_edge, %for.cond113.preheader.for.body115_crit_edge
  %i.1257 = phi i32 [ %inc142, %for.inc141.for.body115_crit_edge ], [ 0, %for.cond113.preheader.for.body115_crit_edge ]
  %arrayidx116 = getelementptr ptr, ptr %22, i32 %i.1257
  %35 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx116, align 4
  %id = getelementptr inbounds %struct.qcom_osm_l3_node, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %id, align 2
  %conv = zext i16 %38 to i32
  %call117 = tail call ptr @icc_node_create(i32 noundef %conv) #6
  %cmp.i243 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %err, label %if.end121

if.end121:                                        ; preds = %for.body115
  %39 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx116, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %name123 = getelementptr inbounds %struct.icc_node, ptr %call117, i32 0, i32 1
  %43 = ptrtoint ptr %name123 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %name123, align 4
  %44 = load ptr, ptr %arrayidx116, align 4
  %data125 = getelementptr inbounds %struct.icc_node, ptr %call117, i32 0, i32 14
  %45 = ptrtoint ptr %data125 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %data125, align 4
  tail call void @icc_node_add(ptr noundef %call117, ptr noundef %provider100) #6
  %46 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx116, align 4
  %num_links252 = getelementptr inbounds %struct.qcom_osm_l3_node, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %num_links252 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_links252, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp129254.not = icmp eq i16 %49, 0
  br i1 %cmp129254.not, label %if.end121.for.inc141_crit_edge, label %if.end121.for.body131_crit_edge

if.end121.for.body131_crit_edge:                  ; preds = %if.end121
  br label %for.body131

if.end121.for.inc141_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc141

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %if.end121.for.body131_crit_edge
  %50 = phi ptr [ %54, %for.body131.for.body131_crit_edge ], [ %47, %if.end121.for.body131_crit_edge ]
  %j.0255 = phi i32 [ %inc137, %for.body131.for.body131_crit_edge ], [ 0, %if.end121.for.body131_crit_edge ]
  %arrayidx133 = getelementptr %struct.qcom_osm_l3_node, ptr %50, i32 0, i32 1, i32 %j.0255
  %51 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx133, align 2
  %conv134 = zext i16 %52 to i32
  %call135 = tail call i32 @icc_link_create(ptr noundef %call117, i32 noundef %conv134) #6
  %inc137 = add nuw nsw i32 %j.0255, 1
  %53 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx116, align 4
  %num_links = getelementptr inbounds %struct.qcom_osm_l3_node, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %num_links to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_links, align 4
  %conv128 = zext i16 %56 to i32
  %cmp129 = icmp ult i32 %inc137, %conv128
  br i1 %cmp129, label %for.body131.for.body131_crit_edge, label %for.body131.for.inc141_crit_edge

for.body131.for.inc141_crit_edge:                 ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc141

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body131

for.inc141:                                       ; preds = %for.body131.for.inc141_crit_edge, %if.end121.for.inc141_crit_edge
  %arrayidx140 = getelementptr %struct.icc_onecell_data, ptr %call5.i.i, i32 0, i32 1, i32 %i.1257
  %57 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call117, ptr %arrayidx140, align 4
  %inc142 = add nuw i32 %i.1257, 1
  %exitcond259.not = icmp eq i32 %inc142, %24
  br i1 %exitcond259.not, label %for.inc141.for.end143_crit_edge, label %for.inc141.for.body115_crit_edge

for.inc141.for.body115_crit_edge:                 ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body115

for.inc141.for.end143_crit_edge:                  ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end143

for.end143:                                       ; preds = %for.inc141.for.end143_crit_edge, %for.cond113.preheader.for.end143_crit_edge
  %58 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %24, ptr %call5.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup147

err:                                              ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %call117 to i32
  %call145 = tail call i32 @icc_nodes_remove(ptr noundef %provider100) #6
  %call146 = tail call i32 @icc_provider_del(ptr noundef %provider100) #6
  br label %cleanup147

cleanup147:                                       ; preds = %err, %for.end143, %do.end110, %devm_kcalloc.exit.cleanup147_crit_edge, %for.end.cleanup147_crit_edge, %if.end27.cleanup147_crit_edge, %do.end, %if.then18, %if.end9.cleanup147_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then7 ], [ %3, %if.then18 ], [ %call105, %do.end110 ], [ %60, %err ], [ 0, %for.end143 ], [ -19, %do.end ], [ -12, %if.end9.cleanup147_crit_edge ], [ -22, %if.end27.cleanup147_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup147_crit_edge ], [ -12, %for.end.cleanup147_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_osm_l3_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %provider = getelementptr inbounds %struct.qcom_osm_l3_icc_provider, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @icc_nodes_remove(ptr noundef %provider) #6
  %call3 = tail call i32 @icc_provider_del(ptr noundef %provider) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_osm_l3_set(ptr nocapture noundef readonly %src, ptr nocapture noundef readnone %dst) #2 align 64 {
entry:
  %agg_peak = alloca i32, align 4
  %agg_avg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg_peak) #6
  %0 = ptrtoint ptr %agg_peak to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %agg_peak, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg_avg) #6
  %1 = ptrtoint ptr %agg_avg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %agg_avg, align 4
  %data = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %provider1 = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %provider1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %provider1, align 4
  %nodes = getelementptr inbounds %struct.icc_provider, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn337 = load ptr, ptr %nodes, align 4
  %cmp.not338 = icmp eq ptr %.pn337, %nodes
  br i1 %cmp.not338, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aggregate = getelementptr inbounds %struct.icc_provider, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn339 = phi ptr [ %.pn337, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %n.0 = getelementptr i8, ptr %.pn339, i32 -20
  %7 = ptrtoint ptr %aggregate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aggregate, align 4
  %avg_bw = getelementptr i8, ptr %.pn339, i32 28
  %9 = ptrtoint ptr %avg_bw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %avg_bw, align 4
  %peak_bw = getelementptr i8, ptr %.pn339, i32 32
  %11 = ptrtoint ptr %peak_bw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %peak_bw, align 4
  %call = call i32 %8(ptr noundef %n.0, i32 noundef 0, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %agg_avg, ptr noundef nonnull %agg_peak) #6
  %13 = ptrtoint ptr %.pn339 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn339, align 4
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %agg_avg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %agg_avg, align 4
  %16 = ptrtoint ptr %agg_peak to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %agg_peak, align 4
  %18 = call i32 @llvm.umax.i32(i32 %15, i32 %17)
  %conv = zext i32 %18 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %buswidth = getelementptr inbounds %struct.qcom_osm_l3_node, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %buswidth to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %buswidth, align 2
  %conv13 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp187 = icmp ult i64 %mul, 4294967296
  br i1 %cmp187, label %if.then192, label %if.else198, !prof !110

if.then192:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv193 = trunc i64 %mul to i32
  %div196 = udiv i32 %conv193, %conv13
  %conv197 = zext i32 %div196 to i64
  br label %if.end202

if.else198:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv13, i64 %mul) #10, !srcloc !111
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  br label %if.end202

if.end202:                                        ; preds = %if.else198, %if.then192
  %rate.0 = phi i64 [ %conv197, %if.then192 ], [ %asmresult1.i, %if.else198 ]
  %lut_tables = getelementptr i8, ptr %5, i32 -160
  %max_state = getelementptr i8, ptr %5, i32 -168
  %22 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_state, align 4
  %sub205 = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub205)
  %cmp206340.not = icmp eq i32 %sub205, 0
  br i1 %cmp206340.not, label %if.end202.for.end215_crit_edge, label %if.end202.for.body208_crit_edge

if.end202.for.body208_crit_edge:                  ; preds = %if.end202
  br label %for.body208

if.end202.for.end215_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end215

for.body208:                                      ; preds = %for.inc214.for.body208_crit_edge, %if.end202.for.body208_crit_edge
  %index.0341 = phi i32 [ %inc, %for.inc214.for.body208_crit_edge ], [ 0, %if.end202.for.body208_crit_edge ]
  %arrayidx = getelementptr [40 x i32], ptr %lut_tables, i32 0, i32 %index.0341
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %conv209 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %rate.0, i64 %conv209)
  %cmp210.not = icmp ugt i64 %rate.0, %conv209
  br i1 %cmp210.not, label %for.inc214, label %for.body208.for.end215_crit_edge

for.body208.for.end215_crit_edge:                 ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end215

for.inc214:                                       ; preds = %for.body208
  %inc = add nuw i32 %index.0341, 1
  %exitcond.not = icmp eq i32 %inc, %sub205
  br i1 %exitcond.not, label %for.inc214.for.end215_crit_edge, label %for.inc214.for.body208_crit_edge

for.inc214.for.body208_crit_edge:                 ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body208

for.inc214.for.end215_crit_edge:                  ; preds = %for.inc214
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end215

for.end215:                                       ; preds = %for.inc214.for.end215_crit_edge, %for.body208.for.end215_crit_edge, %if.end202.for.end215_crit_edge
  %index.0.lcssa = phi i32 [ 0, %if.end202.for.end215_crit_edge ], [ %index.0341, %for.body208.for.end215_crit_edge ], [ %sub205, %for.inc214.for.end215_crit_edge ]
  %add.ptr = getelementptr i8, ptr %5, i32 -172
  %26 = call i32 @llvm.bswap.i32(i32 %index.0.lcssa)
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %reg_perf_state = getelementptr i8, ptr %5, i32 -164
  %29 = ptrtoint ptr %reg_perf_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_perf_state, align 4
  %add.ptr216 = getelementptr i8, ptr %28, i32 %30
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr216, i32 %26) #6, !srcloc !112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg_avg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg_peak) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_std_aggregate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_xlate_onecell(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_nodes_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !47, !48, !50, !52, !54, !55, !57, !58, !60, !62, !64, !65, !67, !68, !70, !72, !74, !75, !77, !78, !80, !82, !84, !85, !87, !88, !90, !92, !94, !95, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_icc_osm_l3__183_364_osm_l3_driver_init6, !1, !"__initcall__kmod_icc_osm_l3__183_364_osm_l3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 364, i32 1}
!2 = !{ptr @__exitcall_osm_l3_driver_exit, !1, !"__exitcall_osm_l3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 366, i32 1}
!5 = !{ptr @__UNIQUE_ID_file185, !6, !"__UNIQUE_ID_file185", i1 false, i1 false}
!6 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 367, i32 1}
!7 = !{ptr @__UNIQUE_ID_license186, !6, !"__UNIQUE_ID_license186", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 359, i32 11}
!10 = !{ptr @osm_l3_driver, !11, !"osm_l3_driver", i1 false, i1 false}
!11 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 355, i32 31}
!12 = !{ptr @qcom_osm_l3_probe.hw_rate, !13, !"hw_rate", i1 false, i1 false}
!13 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 226, i32 23}
!14 = !{ptr @qcom_osm_l3_probe.xo_rate, !15, !"xo_rate", i1 false, i1 false}
!15 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 226, i32 32}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 237, i32 28}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 244, i32 28}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 261, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qcom_osm_l3_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_osm_l3_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 285, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qcom_osm_l3_probe.__UNIQUE_ID_ddebug182, !29, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 309, i32 3}
!34 = !{ptr @qcom_osm_l3_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qcom_osm_l3_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @osm_l3_of_match, !37, !"osm_l3_of_match", i1 false, i1 false}
!37 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 344, i32 34}
!38 = !{ptr @sc7180_icc_osm_l3, !39, !"sc7180_icc_osm_l3", i1 false, i1 false}
!39 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 110, i32 38}
!40 = !{ptr @sc7180_osm_l3_nodes, !41, !"sc7180_osm_l3_nodes", i1 false, i1 false}
!41 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 105, i32 39}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 102, i32 1}
!44 = !{ptr @sc7180_osm_apps_l3, !43, !"sc7180_osm_apps_l3", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 103, i32 1}
!47 = !{ptr @sc7180_osm_l3, !46, !"sc7180_osm_l3", i1 false, i1 false}
!48 = !{ptr @sc7280_icc_epss_l3, !49, !"sc7280_icc_epss_l3", i1 false, i1 false}
!49 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 126, i32 38}
!50 = !{ptr @sc7280_epss_l3_nodes, !51, !"sc7280_epss_l3_nodes", i1 false, i1 false}
!51 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 121, i32 39}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 118, i32 1}
!54 = !{ptr @sc7280_epss_apps_l3, !53, !"sc7280_epss_apps_l3", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 119, i32 1}
!57 = !{ptr @sc7280_epss_l3, !56, !"sc7280_epss_l3", i1 false, i1 false}
!58 = !{ptr @sdm845_icc_osm_l3, !59, !"sdm845_icc_osm_l3", i1 false, i1 false}
!59 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 94, i32 38}
!60 = !{ptr @sdm845_osm_l3_nodes, !61, !"sdm845_osm_l3_nodes", i1 false, i1 false}
!61 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 89, i32 39}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 86, i32 1}
!64 = !{ptr @sdm845_osm_apps_l3, !63, !"sdm845_osm_apps_l3", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 87, i32 1}
!67 = !{ptr @sdm845_osm_l3, !66, !"sdm845_osm_l3", i1 false, i1 false}
!68 = !{ptr @sm8150_icc_osm_l3, !69, !"sm8150_icc_osm_l3", i1 false, i1 false}
!69 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 158, i32 38}
!70 = !{ptr @sm8150_osm_l3_nodes, !71, !"sm8150_osm_l3_nodes", i1 false, i1 false}
!71 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 153, i32 39}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 150, i32 1}
!74 = !{ptr @sm8150_osm_apps_l3, !73, !"sm8150_osm_apps_l3", i1 false, i1 false}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 151, i32 1}
!77 = !{ptr @sm8150_osm_l3, !76, !"sm8150_osm_l3", i1 false, i1 false}
!78 = !{ptr @sc8180x_icc_osm_l3, !79, !"sc8180x_icc_osm_l3", i1 false, i1 false}
!79 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 142, i32 38}
!80 = !{ptr @sc8180x_osm_l3_nodes, !81, !"sc8180x_osm_l3_nodes", i1 false, i1 false}
!81 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 137, i32 39}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 134, i32 1}
!84 = !{ptr @sc8180x_osm_apps_l3, !83, !"sc8180x_osm_apps_l3", i1 false, i1 false}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 135, i32 1}
!87 = !{ptr @sc8180x_osm_l3, !86, !"sc8180x_osm_l3", i1 false, i1 false}
!88 = !{ptr @sm8250_icc_epss_l3, !89, !"sm8250_icc_epss_l3", i1 false, i1 false}
!89 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 174, i32 38}
!90 = !{ptr @sm8250_epss_l3_nodes, !91, !"sm8250_epss_l3_nodes", i1 false, i1 false}
!91 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 169, i32 39}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 166, i32 1}
!94 = !{ptr @sm8250_epss_apps_l3, !93, !"sm8250_epss_apps_l3", i1 false, i1 false}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/interconnect/qcom/osm-l3.c", i32 167, i32 1}
!97 = !{ptr @sm8250_epss_l3, !96, !"sm8250_epss_l3", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 2078484}
!108 = !{i64 2148761264, i64 2148761269, i64 2148761282, i64 2148761326, i64 2148761360, i64 2148761381}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148669983, i64 2148670263, i64 2148670597, i64 2148670931}
!112 = !{i64 2078066}
