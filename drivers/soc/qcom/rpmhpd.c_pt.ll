; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/rpmhpd.c_pt.bc'
source_filename = "../drivers/soc/qcom/rpmhpd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rpmhpd_desc = type { ptr, i32 }
%struct.rpmhpd = type { ptr, %struct.generic_pm_domain, ptr, ptr, i8, i32, i32, i32, [16 x i32], i32, i8, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.tcs_cmd = type { i32, i32, i32 }

@__initcall__kmod_rpmhpd__190_657_rpmhpd_init1 = internal global ptr @rpmhpd_init, section ".initcall1.init", align 4
@__UNIQUE_ID_description191 = internal constant [72 x i8] c"rpmhpd.description=Qualcomm Technologies, Inc. RPMh Power Domain Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [36 x i8] c"rpmhpd.file=drivers/soc/qcom/rpmhpd\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [22 x i8] c"rpmhpd.license=GPL v2\00", section ".modinfo", align 1
@rpmhpd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpmhpd_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rpmhpd_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom-rpmhpd\00", [20 x i8] zeroinitializer }, align 32
@rpmhpd_match_table = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdx55_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6350-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6350_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-rpmhpd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_desc }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@rpmhpd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rpmhpds[%d] is empty\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmhpd_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/soc/qcom/rpmhpd.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmhpd_probe._entry_ptr = internal global ptr @rpmhpd_probe._entry, section ".printk_index", align 4
@rpmhpd_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 609, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Could not find RPMh address for resource %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rpmhpd_probe._entry_ptr.9 = internal global ptr @rpmhpd_probe._entry.6, section ".printk_index", align 4
@rpmhpd_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 615, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RPMh slave ID mismatch\0A\00", [40 x i8] zeroinitializer }, align 32
@rpmhpd_probe._entry_ptr.12 = internal global ptr @rpmhpd_probe._entry.10, section ".printk_index", align 4
@rpmhpd_update_level_mapping.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rpmhpd\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rpmhpd_update_level_mapping\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ARC hlvl=%2d --> vlvl=%4u\0A\00", [33 x i8] zeroinitializer }, align 32
@rpmhpd_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpmhpd_lock, i64 52), ptr getelementptr (i8, ptr @rpmhpd_lock, i64 52) }, ptr @rpmhpd_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rpmhpd_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpmhpd_lock\00", [20 x i8] zeroinitializer }, align 32
@sc7180_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sc7180_rpmhpds, i32 8 }, [24 x i8] zeroinitializer }, align 32
@sc7280_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sc7280_rpmhpds, i32 9 }, [24 x i8] zeroinitializer }, align 32
@sc8180x_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sc8180x_rpmhpds, i32 11 }, [24 x i8] zeroinitializer }, align 32
@sdm845_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sdm845_rpmhpds, i32 9 }, [24 x i8] zeroinitializer }, align 32
@sdx55_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sdx55_rpmhpds, i32 3 }, [24 x i8] zeroinitializer }, align 32
@sm6350_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sm6350_rpmhpds, i32 6 }, [24 x i8] zeroinitializer }, align 32
@sm8150_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sm8150_rpmhpds, i32 11 }, [24 x i8] zeroinitializer }, align 32
@sm8250_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sm8250_rpmhpds, i32 10 }, [24 x i8] zeroinitializer }, align 32
@sm8350_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sm8350_rpmhpds, i32 13 }, [24 x i8] zeroinitializer }, align 32
@sm8450_desc = internal constant { %struct.rpmhpd_desc, [24 x i8] } { %struct.rpmhpd_desc { ptr @sm8450_rpmhpds, i32 13 }, [24 x i8] zeroinitializer }, align 32
@sc7180_rpmhpds = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @cx_w_mx_parent, ptr @cx_ao_w_mx_parent, ptr @gfx, ptr @mx, ptr @mx_ao, ptr @lmx, ptr @lcx, ptr @mss], [32 x i8] zeroinitializer }, align 32
@cx_w_mx_parent = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.18, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr getelementptr (i8, ptr @mx, i64 8), ptr @cx_ao_w_mx_parent, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.19, i32 0 }, [360 x i8] zeroinitializer }, align 32
@cx_ao_w_mx_parent = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.20, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr getelementptr (i8, ptr @mx_ao, i64 8), ptr @cx_w_mx_parent, i8 1, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.19, i32 0 }, [360 x i8] zeroinitializer }, align 32
@gfx = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.21, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.22, i32 0 }, [360 x i8] zeroinitializer }, align 32
@mx = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.23, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @mx_ao, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.24, i32 0 }, [360 x i8] zeroinitializer }, align 32
@mx_ao = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.25, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @mx, i8 1, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.24, i32 0 }, [360 x i8] zeroinitializer }, align 32
@lmx = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.26, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.27, i32 0 }, [360 x i8] zeroinitializer }, align 32
@lcx = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.28, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.29, i32 0 }, [360 x i8] zeroinitializer }, align 32
@mss = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.30, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.31, i32 0 }, [360 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cx\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cx.lvl\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cx_ao\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gfx\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gfx.lvl\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mx\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mx.lvl\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mx_ao\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lmx\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lmx.lvl\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcx\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lcx.lvl\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mss\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mss.lvl\00", [24 x i8] zeroinitializer }, align 32
@sc7280_rpmhpds = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @cx, ptr @cx_ao, ptr @ebi, ptr @gfx, ptr @mx, ptr @mx_ao, ptr @lmx, ptr @lcx, ptr @mss], [60 x i8] zeroinitializer }, align 32
@cx = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.18, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @cx_ao, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.19, i32 0 }, [360 x i8] zeroinitializer }, align 32
@cx_ao = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.20, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @cx, i8 1, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.19, i32 0 }, [360 x i8] zeroinitializer }, align 32
@ebi = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.32, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.33, i32 0 }, [360 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ebi\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ebi.lvl\00", [24 x i8] zeroinitializer }, align 32
@sc8180x_rpmhpds = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @cx_w_mx_parent, ptr @cx_ao_w_mx_parent, ptr @ebi, ptr @gfx, ptr @lcx, ptr @lmx, ptr @mmcx, ptr @mmcx_ao, ptr @mss, ptr @mx, ptr @mx_ao], [52 x i8] zeroinitializer }, align 32
@mmcx = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.34, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @mmcx_ao, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.35, i32 0 }, [360 x i8] zeroinitializer }, align 32
@mmcx_ao = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.36, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @mmcx, i8 1, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.35, i32 0 }, [360 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmcx\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmcx.lvl\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmcx_ao\00", [24 x i8] zeroinitializer }, align 32
@sdm845_rpmhpds = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @ebi, ptr @mx, ptr @mx_ao, ptr @cx_w_mx_parent, ptr @cx_ao_w_mx_parent, ptr @lmx, ptr @lcx, ptr @gfx, ptr @mss], [60 x i8] zeroinitializer }, align 32
@sdx55_rpmhpds = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mss, ptr @mx, ptr @cx_w_mx_parent], [20 x i8] zeroinitializer }, align 32
@sm6350_rpmhpds = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @cx_w_mx_parent, ptr @gfx, ptr @lcx, ptr @lmx, ptr @mss, ptr @mx], [40 x i8] zeroinitializer }, align 32
@sm8150_rpmhpds = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @mss, ptr @ebi, ptr @lmx, ptr @lcx, ptr @gfx, ptr @mx, ptr @mx_ao, ptr @cx_w_mx_parent, ptr @cx_ao_w_mx_parent, ptr @mmcx, ptr @mmcx_ao], [52 x i8] zeroinitializer }, align 32
@sm8250_rpmhpds = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @cx_w_mx_parent, ptr @cx_ao_w_mx_parent, ptr @ebi, ptr @gfx, ptr @lcx, ptr @lmx, ptr @mmcx, ptr @mmcx_ao, ptr @mx, ptr @mx_ao], [56 x i8] zeroinitializer }, align 32
@sm8350_rpmhpds = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @cx_w_mx_parent, ptr @cx_ao_w_mx_parent, ptr @ebi, ptr @gfx, ptr @lcx, ptr @lmx, ptr @mmcx, ptr @mmcx_ao, ptr @mx, ptr @mx_ao, ptr @mxc, ptr @mxc_ao, ptr @mss], [44 x i8] zeroinitializer }, align 32
@mxc = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.37, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @mxc_ao, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.38, i32 0 }, [360 x i8] zeroinitializer }, align 32
@mxc_ao = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.39, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr null, ptr @mxc, i8 1, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.38, i32 0 }, [360 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mxc\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxc.lvl\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mxc_ao\00", [25 x i8] zeroinitializer }, align 32
@sm8450_rpmhpds = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @cx, ptr @cx_ao, ptr @ebi, ptr @gfx, ptr @lcx, ptr @lmx, ptr @mmcx_w_cx_parent, ptr @mmcx_ao_w_cx_parent, ptr @mx, ptr @mx_ao, ptr @mxc, ptr @mxc_ao, ptr @mss], [44 x i8] zeroinitializer }, align 32
@mmcx_w_cx_parent = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.34, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr getelementptr (i8, ptr @cx, i64 8), ptr @mmcx_ao_w_cx_parent, i8 0, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.35, i32 0 }, [360 x i8] zeroinitializer }, align 32
@mmcx_ao_w_cx_parent = internal global { %struct.rpmhpd, [360 x i8] } { %struct.rpmhpd { ptr null, %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.36, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.43 zeroinitializer }, ptr getelementptr (i8, ptr @cx_ao, i64 8), ptr @mmcx_w_cx_parent, i8 1, i32 0, i32 0, i32 0, [16 x i32] zeroinitializer, i32 0, i8 0, ptr @.str.35, i32 0 }, [360 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"rpmhpd_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 644, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 646, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"rpmhpd_match_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 366, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 601, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 608, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 615, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 565, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"rpmhpd_lock\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 64, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"sc7180_desc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 323, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"sc7280_desc\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 341, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"sc8180x_desc\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 361, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"sdm845_desc\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 196, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"sdx55_desc\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 208, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"sm6350_desc\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 223, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"sm8150_desc\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 243, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"sm8250_desc\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 262, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"sm8350_desc\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 284, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"sm8450_desc\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 306, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"sc7180_rpmhpds\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 312, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"cx_w_mx_parent\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 85, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"cx_ao_w_mx_parent\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 92, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 105, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant [3 x i8] c"mx\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 156, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"mx_ao\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 162, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant [4 x i8] c"lmx\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 115, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant [4 x i8] c"lcx\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 110, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant [4 x i8] c"mss\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 150, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 86, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 89, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 93, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 106, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 107, i32 14 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 157, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 159, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 163, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 116, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 117, i32 14 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 111, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 112, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 151, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 152, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"sc7280_rpmhpds\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 329, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 71, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"cx_ao\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 77, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant [4 x i8] c"ebi\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 100, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 101, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 102, i32 14 }
@___asan_gen_.217 = private unnamed_addr constant [16 x i8] c"sc8180x_rpmhpds\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 347, i32 23 }
@___asan_gen_.220 = private unnamed_addr constant [5 x i8] c"mmcx\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 121, i32 22 }
@___asan_gen_.223 = private unnamed_addr constant [8 x i8] c"mmcx_ao\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 127, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 122, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 124, i32 14 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 128, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"sdm845_rpmhpds\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 184, i32 23 }
@___asan_gen_.238 = private unnamed_addr constant [14 x i8] c"sdx55_rpmhpds\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 202, i32 23 }
@___asan_gen_.241 = private unnamed_addr constant [15 x i8] c"sm6350_rpmhpds\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 214, i32 23 }
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"sm8150_rpmhpds\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 229, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant [15 x i8] c"sm8250_rpmhpds\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 249, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant [15 x i8] c"sm8350_rpmhpds\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 268, i32 23 }
@___asan_gen_.253 = private unnamed_addr constant [4 x i8] c"mxc\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 170, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"mxc_ao\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 176, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 171, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 173, i32 14 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 177, i32 18 }
@___asan_gen_.268 = private unnamed_addr constant [15 x i8] c"sm8450_rpmhpds\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 290, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"mmcx_w_cx_parent\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 135, i32 22 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c"mmcx_ao_w_cx_parent\00", align 1
@___asan_gen_.275 = private constant [29 x i8] c"../drivers/soc/qcom/rpmhpd.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 142, i32 22 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__initcall__kmod_rpmhpd__190_657_rpmhpd_init1, ptr @rpmhpd_probe._entry, ptr @rpmhpd_probe._entry.10, ptr @rpmhpd_probe._entry.6, ptr @rpmhpd_probe._entry_ptr, ptr @rpmhpd_probe._entry_ptr.12, ptr @rpmhpd_probe._entry_ptr.9, ptr @rpmhpd_driver, ptr @.str, ptr @rpmhpd_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rpmhpd_lock, ptr @.str.16, ptr @.str.17, ptr @sc7180_desc, ptr @sc7280_desc, ptr @sc8180x_desc, ptr @sdm845_desc, ptr @sdx55_desc, ptr @sm6350_desc, ptr @sm8150_desc, ptr @sm8250_desc, ptr @sm8350_desc, ptr @sm8450_desc, ptr @sc7180_rpmhpds, ptr @cx_w_mx_parent, ptr @cx_ao_w_mx_parent, ptr @gfx, ptr @mx, ptr @mx_ao, ptr @lmx, ptr @lcx, ptr @mss, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @sc7280_rpmhpds, ptr @cx, ptr @cx_ao, ptr @ebi, ptr @.str.32, ptr @.str.33, ptr @sc8180x_rpmhpds, ptr @mmcx, ptr @mmcx_ao, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @sdm845_rpmhpds, ptr @sdx55_rpmhpds, ptr @sm6350_rpmhpds, ptr @sm8150_rpmhpds, ptr @sm8250_rpmhpds, ptr @sm8350_rpmhpds, ptr @mxc, ptr @mxc_ao, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @sm8450_rpmhpds, ptr @mmcx_w_cx_parent, ptr @mmcx_ao_w_cx_parent], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmhpd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmhpd_match_table to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmhpd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmhpd_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmhpd_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmhpd_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_rpmhpds to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_w_mx_parent to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_ao_w_mx_parent to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx_ao to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmx to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcx to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mss to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_rpmhpds to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_ao to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebi to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rpmhpds to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcx to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcx_ao to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rpmhpds to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_rpmhpds to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_rpmhpds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_rpmhpds to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_rpmhpds to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_rpmhpds to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc_ao to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_rpmhpds to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcx_w_cx_parent to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmcx_ao_w_cx_parent to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmhpd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpmhpd_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmhpd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %num_pds3 = getelementptr inbounds %struct.rpmhpd_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_pds3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pds3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !166

devm_kcalloc.exit.thread:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %call.i, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end7
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %7, i32 noundef 3520) #6
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp152.not = icmp eq i32 %3, 0
  br i1 %cmp152.not, label %if.end12.for.end77_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.for.end77_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end77

for.cond59.preheader:                             ; preds = %for.inc
  br i1 %cmp152.not, label %for.cond59.preheader.for.end77_crit_edge, label %for.cond59.preheader.for.body61_crit_edge

for.cond59.preheader.for.body61_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body61

for.cond59.preheader.for.end77_crit_edge:         ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end77

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.0153 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.0153
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %do.end, label %if.end15

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %i.0153) #9
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %11, align 8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %res_name = getelementptr inbounds %struct.rpmhpd, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %res_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res_name, align 8
  %call19 = tail call i32 @cmd_db_read_addr(ptr noundef %16) #6
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %addr = getelementptr inbounds %struct.rpmhpd, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call19, ptr %addr, align 4
  %20 = load ptr, ptr %arrayidx, align 4
  %addr22 = getelementptr inbounds %struct.rpmhpd, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %addr22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  %res_name29 = getelementptr inbounds %struct.rpmhpd, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %res_name29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res_name29, align 8
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %24) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  %call33 = tail call i32 @cmd_db_read_slave_id(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 3
  br i1 %cmp34.not, label %if.end39, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %call41 = tail call fastcc i32 @rpmhpd_update_level_mapping(ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %power_off = getelementptr inbounds %struct.rpmhpd, ptr %28, i32 0, i32 1, i32 18
  %29 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rpmhpd_power_off, ptr %power_off, align 8
  %30 = load ptr, ptr %arrayidx, align 4
  %power_on = getelementptr inbounds %struct.rpmhpd, ptr %30, i32 0, i32 1, i32 19
  %31 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rpmhpd_power_on, ptr %power_on, align 4
  %32 = load ptr, ptr %arrayidx, align 4
  %set_performance_state = getelementptr inbounds %struct.rpmhpd, ptr %32, i32 0, i32 1, i32 23
  %33 = ptrtoint ptr %set_performance_state to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @rpmhpd_set_performance_state, ptr %set_performance_state, align 4
  %34 = load ptr, ptr %arrayidx, align 4
  %opp_to_performance_state = getelementptr inbounds %struct.rpmhpd, ptr %34, i32 0, i32 1, i32 22
  %35 = ptrtoint ptr %opp_to_performance_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rpmhpd_get_performance_state, ptr %opp_to_performance_state, align 8
  %36 = load ptr, ptr %arrayidx, align 4
  %pd53 = getelementptr inbounds %struct.rpmhpd, ptr %36, i32 0, i32 1
  %call54 = tail call i32 @pm_genpd_init(ptr noundef %pd53, ptr noundef null, i1 noundef zeroext true) #6
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %pd56 = getelementptr inbounds %struct.rpmhpd, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %arrayidx58 = getelementptr ptr, ptr %40, i32 %i.0153
  %41 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pd56, ptr %arrayidx58, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %do.end
  %inc = add nuw i32 %i.0153, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond59.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body61:                                       ; preds = %for.inc75.for.body61_crit_edge, %for.cond59.preheader.for.body61_crit_edge
  %i.1156 = phi i32 [ %inc76, %for.inc75.for.body61_crit_edge ], [ 0, %for.cond59.preheader.for.body61_crit_edge ]
  %arrayidx62 = getelementptr ptr, ptr %1, i32 %i.1156
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx62, align 4
  %tobool63.not = icmp eq ptr %43, null
  br i1 %tobool63.not, label %for.body61.for.inc75_crit_edge, label %if.end65

for.body61.for.inc75_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.end65:                                         ; preds = %for.body61
  %parent = getelementptr inbounds %struct.rpmhpd, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent, align 8
  %tobool67.not = icmp eq ptr %45, null
  br i1 %tobool67.not, label %if.end65.for.inc75_crit_edge, label %if.then68

if.end65.for.inc75_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %pd72 = getelementptr inbounds %struct.rpmhpd, ptr %43, i32 0, i32 1
  %call73 = tail call i32 @pm_genpd_add_subdomain(ptr noundef nonnull %45, ptr noundef %pd72) #6
  br label %for.inc75

for.inc75:                                        ; preds = %if.then68, %if.end65.for.inc75_crit_edge, %for.body61.for.inc75_crit_edge
  %inc76 = add nuw i32 %i.1156, 1
  %exitcond159.not = icmp eq i32 %inc76, %3
  br i1 %exitcond159.not, label %for.inc75.for.end77_crit_edge, label %for.inc75.for.body61_crit_edge

for.inc75.for.body61_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body61

for.inc75.for.end77_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end77

for.end77:                                        ; preds = %for.inc75.for.end77_crit_edge, %for.cond59.preheader.for.end77_crit_edge, %if.end12.for.end77_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %call79 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %47, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end77, %if.end39.cleanup_crit_edge, %do.end38, %do.end27, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end38 ], [ -19, %do.end27 ], [ %call79, %for.end77 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call41, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmd_db_read_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmd_db_read_slave_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpmhpd_update_level_mapping(ptr noundef %rpmhpd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %res_name = getelementptr inbounds %struct.rpmhpd, ptr %rpmhpd, i32 0, i32 11
  %0 = ptrtoint ptr %res_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_name, align 8
  %level_count = getelementptr inbounds %struct.rpmhpd, ptr %rpmhpd, i32 0, i32 9
  %call = tail call ptr @cmd_db_read_aux_data(ptr noundef %1, ptr noundef %level_count) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level_count, align 8
  %shr = lshr i32 %4, 1
  store i32 %shr, ptr %level_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %4)
  %cmp = icmp ugt i32 %4, 33
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp865.not = icmp eq i32 %6, 0
  br i1 %cmp865.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %enable_corner = getelementptr inbounds %struct.rpmhpd, ptr %rpmhpd, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %call, i32 %i.066
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %arrayidx9 = getelementptr %struct.rpmhpd, ptr %rpmhpd, i32 0, i32 8, i32 %i.066
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %arrayidx9, align 4
  %10 = ptrtoint ptr %enable_corner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_corner, align 4
  %arrayidx11 = getelementptr %struct.rpmhpd, ptr %rpmhpd, i32 0, i32 8, i32 %11
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool14.not = icmp eq i16 %8, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %for.body.if.end17_crit_edge, label %if.then15

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %enable_corner to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.066, ptr %enable_corner, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.066)
  %cmp18 = icmp sgt i32 %i.066, 0
  br i1 %cmp18, label %land.lhs.true20, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true20:                                  ; preds = %if.end17
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23 = icmp eq i32 %16, 0
  br i1 %cmp23, label %if.then25, label %land.lhs.true20.do.body_crit_edge

land.lhs.true20.do.body_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then25:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %level_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.066, ptr %level_count, align 8
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true20.do.body_crit_edge, %if.end17.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmhpd_update_level_mapping.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmhpd_update_level_mapping, %if.then32)) #6
          to label %for.inc [label %if.then32], !srcloc !167

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %res_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %res_name, align 8
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rpmhpd_update_level_mapping.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.15, ptr noundef %19, i32 noundef %i.066, i32 noundef %21) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %do.body
  %inc = add nuw i32 %i.066, 1
  %22 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %level_count, align 8
  %cmp8 = icmp ult i32 %inc, %23
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then25, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmhpd_power_off(ptr nocapture noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmhpd_lock, i32 noundef 0) #6
  %call = tail call fastcc i32 @rpmhpd_aggregate_corner(ptr noundef %add.ptr, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enabled = getelementptr i8, ptr %domain, i32 1444
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rpmhpd_lock) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmhpd_power_on(ptr nocapture noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmhpd_lock, i32 noundef 0) #6
  %corner1 = getelementptr i8, ptr %domain, i32 1364
  %0 = ptrtoint ptr %corner1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %corner1, align 4
  %enable_corner = getelementptr i8, ptr %domain, i32 1372
  %2 = ptrtoint ptr %enable_corner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_corner, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  %call = tail call fastcc i32 @rpmhpd_aggregate_corner(ptr noundef %add.ptr, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enabled = getelementptr i8, ptr %domain, i32 1444
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @rpmhpd_lock) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmhpd_set_performance_state(ptr nocapture noundef %domain, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmhpd_lock, i32 noundef 0) #6
  %level1 = getelementptr i8, ptr %domain, i32 1376
  %level_count = getelementptr i8, ptr %domain, i32 1440
  %0 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32.not = icmp eq i32 %1, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr %level1, i32 0, i32 %i.033
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %level)
  %cmp2.not = icmp ult i32 %3, %level
  br i1 %cmp2.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.033, %for.body.for.end_crit_edge ], [ %1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %1)
  %cmp4 = icmp eq i32 %i.0.lcssa, %1
  %dec = sext i1 %cmp4 to i32
  %spec.select = add i32 %i.0.lcssa, %dec
  %enabled = getelementptr i8, ptr %domain, i32 1444
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.end.if.end15_crit_edge, label %if.then7

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then7:                                         ; preds = %for.end
  %enable_corner = getelementptr i8, ptr %domain, i32 1372
  %6 = ptrtoint ptr %enable_corner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_corner, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 %7)
  %call = tail call fastcc i32 @rpmhpd_aggregate_corner(ptr noundef %add.ptr, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then7.if.end15_crit_edge, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %for.end.if.end15_crit_edge
  %i.3 = phi i32 [ %8, %if.then7.if.end15_crit_edge ], [ %spec.select, %for.end.if.end15_crit_edge ]
  %corner = getelementptr i8, ptr %domain, i32 1364
  %9 = ptrtoint ptr %corner to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.3, ptr %corner, align 4
  br label %out

out:                                              ; preds = %if.end15, %if.then7.out_crit_edge
  %ret.1 = phi i32 [ %call, %if.then7.out_crit_edge ], [ 0, %if.end15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rpmhpd_lock) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmhpd_get_performance_state(ptr nocapture noundef readnone %genpd, ptr noundef %opp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_pm_opp_get_level(ptr noundef %opp) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cmd_db_read_aux_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpmhpd_aggregate_corner(ptr nocapture noundef %pd, i32 noundef %corner) unnamed_addr #2 align 64 {
entry:
  %cmd.i68 = alloca %struct.tcs_cmd, align 4
  %cmd.i63 = alloca %struct.tcs_cmd, align 4
  %cmd.i = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %peer1 = getelementptr inbounds %struct.rpmhpd, ptr %pd, i32 0, i32 3
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  %active_only.i = getelementptr inbounds %struct.rpmhpd, ptr %pd, i32 0, i32 4
  %2 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_only.i, align 8, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %corner..i = select i1 %tobool.not.i, i32 %corner, i32 0
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.rpmhpd, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %corner3 = getelementptr inbounds %struct.rpmhpd, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %corner3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %corner3, align 4
  %active_only.i60 = getelementptr inbounds %struct.rpmhpd, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %active_only.i60 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active_only.i60, align 8, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i61 = icmp eq i8 %9, 0
  %corner..i62 = select i1 %tobool.not.i61, i32 %7, i32 0
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %peer_active_corner.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %7, %if.then ]
  %peer_sleep_corner.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %corner..i62, %if.then ]
  %10 = tail call i32 @llvm.umax.i32(i32 %peer_active_corner.0, i32 %corner)
  %active_corner4 = getelementptr inbounds %struct.rpmhpd, ptr %pd, i32 0, i32 6
  %11 = ptrtoint ptr %active_corner4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_corner4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp5 = icmp ugt i32 %10, %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #6
  %13 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 2
  %addr1.i = getelementptr inbounds %struct.rpmhpd, ptr %pd, i32 0, i32 12
  %15 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr1.i, align 4
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cmd.i, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %10, ptr %13, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %14, align 4
  %20 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pd, align 8
  br i1 %cmp5, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @rpmh_write(ptr noundef %21, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #6
  br label %rpmhpd_send_corner.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @rpmh_write_async(ptr noundef %21, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #6
  br label %rpmhpd_send_corner.exit

rpmhpd_send_corner.exit:                          ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %if.end8, label %rpmhpd_send_corner.exit.cleanup_crit_edge

rpmhpd_send_corner.exit.cleanup_crit_edge:        ; preds = %rpmhpd_send_corner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %rpmhpd_send_corner.exit
  %22 = ptrtoint ptr %active_corner4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %10, ptr %active_corner4, align 8
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %active_corner12 = getelementptr inbounds %struct.rpmhpd, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %active_corner12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %10, ptr %active_corner12, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i63) #6
  %24 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i63, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i63, i32 0, i32 2
  %26 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr1.i, align 4
  %28 = ptrtoint ptr %cmd.i63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cmd.i63, align 4
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %10, ptr %24, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %25, align 4
  %31 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pd, align 8
  %call3.i65 = call i32 @rpmh_write_async(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %cmd.i63, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i65)
  %tobool14.not = icmp eq i32 %call3.i65, 0
  br i1 %tobool14.not, label %if.end16, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %33 = call i32 @llvm.umax.i32(i32 %corner..i, i32 %peer_sleep_corner.0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i68) #6
  %34 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i68, i32 0, i32 1
  %35 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i68, i32 0, i32 2
  %36 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr1.i, align 4
  %38 = ptrtoint ptr %cmd.i68 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cmd.i68, align 4
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %33, ptr %34, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %35, align 4
  %41 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pd, align 8
  %call3.i70 = call i32 @rpmh_write_async(ptr noundef %42, i32 noundef 0, ptr noundef nonnull %cmd.i68, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i68) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %rpmhpd_send_corner.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i70, %if.end16 ], [ %retval.0.i, %rpmhpd_send_corner.exit.cleanup_crit_edge ], [ %call3.i65, %if.then11.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_write_async(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_level(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__initcall__kmod_rpmhpd__190_657_rpmhpd_init1, !1, !"__initcall__kmod_rpmhpd__190_657_rpmhpd_init1", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 657, i32 1}
!2 = !{ptr @__UNIQUE_ID_description191, !3, !"__UNIQUE_ID_description191", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 659, i32 1}
!4 = !{ptr @__UNIQUE_ID_file192, !5, !"__UNIQUE_ID_file192", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 660, i32 1}
!6 = !{ptr @__UNIQUE_ID_license193, !5, !"__UNIQUE_ID_license193", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 646, i32 11}
!9 = !{ptr @rpmhpd_driver, !10, !"rpmhpd_driver", i1 false, i1 false}
!10 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 644, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 601, i32 4}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rpmhpd_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @rpmhpd_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 608, i32 4}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rpmhpd_probe._entry.6, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @rpmhpd_probe._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 615, i32 4}
!26 = !{ptr @rpmhpd_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rpmhpd_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 565, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rpmhpd_update_level_mapping.__UNIQUE_ID_ddebug189, !29, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 64, i32 8}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rpmhpd_lock, !34, !"rpmhpd_lock", i1 false, i1 false}
!37 = !{ptr @rpmhpd_match_table, !38, !"rpmhpd_match_table", i1 false, i1 false}
!38 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 366, i32 34}
!39 = !{ptr @sc7180_desc, !40, !"sc7180_desc", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 323, i32 33}
!41 = !{ptr @sc7180_rpmhpds, !42, !"sc7180_rpmhpds", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 312, i32 23}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 86, i32 18}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 89, i32 14}
!47 = !{ptr @cx_w_mx_parent, !48, !"cx_w_mx_parent", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 85, i32 22}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 93, i32 18}
!51 = !{ptr @cx_ao_w_mx_parent, !52, !"cx_ao_w_mx_parent", i1 false, i1 false}
!52 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 92, i32 22}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 106, i32 18}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 107, i32 14}
!57 = !{ptr @gfx, !58, !"gfx", i1 false, i1 false}
!58 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 105, i32 22}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 157, i32 18}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 159, i32 14}
!63 = !{ptr @mx, !64, !"mx", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 156, i32 22}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 163, i32 18}
!67 = !{ptr @mx_ao, !68, !"mx_ao", i1 false, i1 false}
!68 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 162, i32 22}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 116, i32 18}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 117, i32 14}
!73 = !{ptr @lmx, !74, !"lmx", i1 false, i1 false}
!74 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 115, i32 22}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 111, i32 18}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 112, i32 14}
!79 = !{ptr @lcx, !80, !"lcx", i1 false, i1 false}
!80 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 110, i32 22}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 151, i32 18}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 152, i32 14}
!85 = !{ptr @mss, !86, !"mss", i1 false, i1 false}
!86 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 150, i32 22}
!87 = !{ptr @sc7280_desc, !88, !"sc7280_desc", i1 false, i1 false}
!88 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 341, i32 33}
!89 = !{ptr @sc7280_rpmhpds, !90, !"sc7280_rpmhpds", i1 false, i1 false}
!90 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 329, i32 23}
!91 = !{ptr @cx, !92, !"cx", i1 false, i1 false}
!92 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 71, i32 22}
!93 = !{ptr @cx_ao, !94, !"cx_ao", i1 false, i1 false}
!94 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 77, i32 22}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 101, i32 18}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 102, i32 14}
!99 = !{ptr @ebi, !100, !"ebi", i1 false, i1 false}
!100 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 100, i32 22}
!101 = !{ptr @sc8180x_desc, !102, !"sc8180x_desc", i1 false, i1 false}
!102 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 361, i32 33}
!103 = !{ptr @sc8180x_rpmhpds, !104, !"sc8180x_rpmhpds", i1 false, i1 false}
!104 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 347, i32 23}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 122, i32 18}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 124, i32 14}
!109 = !{ptr @mmcx, !110, !"mmcx", i1 false, i1 false}
!110 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 121, i32 22}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 128, i32 18}
!113 = !{ptr @mmcx_ao, !114, !"mmcx_ao", i1 false, i1 false}
!114 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 127, i32 22}
!115 = !{ptr @sdm845_desc, !116, !"sdm845_desc", i1 false, i1 false}
!116 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 196, i32 33}
!117 = !{ptr @sdm845_rpmhpds, !118, !"sdm845_rpmhpds", i1 false, i1 false}
!118 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 184, i32 23}
!119 = !{ptr @sdx55_desc, !120, !"sdx55_desc", i1 false, i1 false}
!120 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 208, i32 33}
!121 = !{ptr @sdx55_rpmhpds, !122, !"sdx55_rpmhpds", i1 false, i1 false}
!122 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 202, i32 23}
!123 = !{ptr @sm6350_desc, !124, !"sm6350_desc", i1 false, i1 false}
!124 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 223, i32 33}
!125 = !{ptr @sm6350_rpmhpds, !126, !"sm6350_rpmhpds", i1 false, i1 false}
!126 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 214, i32 23}
!127 = !{ptr @sm8150_desc, !128, !"sm8150_desc", i1 false, i1 false}
!128 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 243, i32 33}
!129 = !{ptr @sm8150_rpmhpds, !130, !"sm8150_rpmhpds", i1 false, i1 false}
!130 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 229, i32 23}
!131 = !{ptr @sm8250_desc, !132, !"sm8250_desc", i1 false, i1 false}
!132 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 262, i32 33}
!133 = !{ptr @sm8250_rpmhpds, !134, !"sm8250_rpmhpds", i1 false, i1 false}
!134 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 249, i32 23}
!135 = !{ptr @sm8350_desc, !136, !"sm8350_desc", i1 false, i1 false}
!136 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 284, i32 33}
!137 = !{ptr @sm8350_rpmhpds, !138, !"sm8350_rpmhpds", i1 false, i1 false}
!138 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 268, i32 23}
!139 = !{ptr @.str.37, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 171, i32 18}
!141 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 173, i32 14}
!143 = !{ptr @mxc, !144, !"mxc", i1 false, i1 false}
!144 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 170, i32 22}
!145 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 177, i32 18}
!147 = !{ptr @mxc_ao, !148, !"mxc_ao", i1 false, i1 false}
!148 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 176, i32 22}
!149 = !{ptr @sm8450_desc, !150, !"sm8450_desc", i1 false, i1 false}
!150 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 306, i32 33}
!151 = !{ptr @sm8450_rpmhpds, !152, !"sm8450_rpmhpds", i1 false, i1 false}
!152 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 290, i32 23}
!153 = !{ptr @mmcx_w_cx_parent, !154, !"mmcx_w_cx_parent", i1 false, i1 false}
!154 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 135, i32 22}
!155 = !{ptr @mmcx_ao_w_cx_parent, !156, !"mmcx_ao_w_cx_parent", i1 false, i1 false}
!156 = !{!"../drivers/soc/qcom/rpmhpd.c", i32 142, i32 22}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2148705329, i64 2148705334, i64 2148705347, i64 2148705391, i64 2148705425, i64 2148705446}
!168 = !{i8 0, i8 2}
