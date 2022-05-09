; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-rpm.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-rpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpm_clk_desc = type { ptr, i32 }
%struct.clk_rpm = type { i32, i32, i8, i32, i8, i8, ptr, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rpm_cc = type { ptr, ptr, i32, i32, %struct.mutex }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_rpm__178_621_rpm_clk_init1 = internal global ptr @rpm_clk_init, section ".initcall1.init", align 4
@rpm_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpm_clk_probe, ptr @rpm_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpm_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpm_clk_exit = internal global ptr @rpm_clk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description179 = internal constant [57 x i8] c"clk_rpm.description=Qualcomm RPM Clock Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file180 = internal constant [38 x i8] c"clk_rpm.file=drivers/clk/qcom/clk-rpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [23 x i8] c"clk_rpm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias182 = internal constant [36 x i8] c"clk_rpm.alias=platform:qcom-clk-rpm\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom-clk-rpm\00", [19 x i8] zeroinitializer }, align 32
@rpm_clk_match_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-msm8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8660 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-apq8060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_msm8660 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_apq8064 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmcc-ipq806x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_clk_ipq806x }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@rpm_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to retrieve handle to RPM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpm_clk_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/qcom/clk-rpm.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpm_clk_probe._entry_ptr = internal global ptr @rpm_clk_probe._entry, section ".printk_index", align 4
@rpm_clk_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rcc->xo_lock\00", [18 x i8] zeroinitializer }, align 32
@rpm_clk_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 598, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error registering RPM Clock driver (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@rpm_clk_probe._entry_ptr.9 = internal global ptr @rpm_clk_probe._entry.7, section ".printk_index", align 4
@qcom_rpm_clk_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_rpm_clk_hw_get\00", [44 x i8] zeroinitializer }, align 32
@qcom_rpm_clk_hw_get._entry_ptr = internal global ptr @qcom_rpm_clk_hw_get._entry, section ".printk_index", align 4
@rpm_clk_msm8660 = internal constant { %struct.rpm_clk_desc, [24 x i8] } { %struct.rpm_clk_desc { ptr @msm8660_clks, i32 25 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_apq8064 = internal constant { %struct.rpm_clk_desc, [24 x i8] } { %struct.rpm_clk_desc { ptr @apq8064_clks, i32 30 }, [24 x i8] zeroinitializer }, align 32
@rpm_clk_ipq806x = internal constant { %struct.rpm_clk_desc, [24 x i8] } { %struct.rpm_clk_desc { ptr @ipq806x_clks, i32 34 }, [24 x i8] zeroinitializer }, align 32
@msm8660_clks = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @msm8660_afab_clk, ptr @msm8660_afab_a_clk, ptr @msm8660_cfpb_clk, ptr @msm8660_cfpb_a_clk, ptr null, ptr null, ptr @msm8660_daytona_clk, ptr @msm8660_daytona_a_clk, ptr @msm8660_ebi1_clk, ptr @msm8660_ebi1_a_clk, ptr @msm8660_mmfab_clk, ptr @msm8660_mmfab_a_clk, ptr @msm8660_mmfpb_clk, ptr @msm8660_mmfpb_a_clk, ptr @msm8660_sfab_clk, ptr @msm8660_sfab_a_clk, ptr @msm8660_sfpb_clk, ptr @msm8660_sfpb_a_clk, ptr @msm8660_smi_clk, ptr @msm8660_smi_a_clk, ptr @msm8660_pll4_clk], [60 x i8] zeroinitializer }, align 32
@msm8660_afab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 2, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_afab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_afab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 2, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_afab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_cfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 7, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_cfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_cfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 7, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_cfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_daytona_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 10, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_daytona_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_daytona_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 10, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_daytona_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_ebi1_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 12, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_ebi1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_ebi1_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 12, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_ebi1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_mmfab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 16, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_mmfab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 16, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_mmfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 14, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_mmfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 14, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_mmfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_sfab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 128, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_sfab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 128, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_sfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 125, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_sfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 125, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_sfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_smi_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 126, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @msm8660_smi_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_smi_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 126, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @msm8660_smi_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msm8660_pll4_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 20, i32 0, i8 0, i32 540672000, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afab_clk\00", [23 x i8] zeroinitializer }, align 32
@clk_rpm_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_rpm_prepare, ptr @clk_rpm_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rpm_recalc_rate, ptr @clk_rpm_round_rate, ptr null, ptr null, ptr null, ptr @clk_rpm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pxo_board\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_rpm_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rpm_clk_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpm_clk_lock, i64 52), ptr getelementptr (i8, ptr @rpm_clk_lock, i64 52) }, ptr @rpm_clk_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rpm_clk_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpm_clk_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afab_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @clk_rpm_ops, ptr @.compoundliteral.18, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfpb_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_rpm_ops, ptr @.compoundliteral.21, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cfpb_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @clk_rpm_ops, ptr @.compoundliteral.24, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"daytona_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_rpm_ops, ptr @.compoundliteral.27, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"daytona_a_clk\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_rpm_ops, ptr @.compoundliteral.30, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ebi1_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_rpm_ops, ptr @.compoundliteral.33, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ebi1_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @clk_rpm_ops, ptr @.compoundliteral.36, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmfab_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @clk_rpm_ops, ptr @.compoundliteral.39, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmfab_a_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @clk_rpm_ops, ptr @.compoundliteral.42, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmfpb_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.44, ptr @clk_rpm_ops, ptr @.compoundliteral.45, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmfpb_a_clk\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.47, ptr @clk_rpm_ops, ptr @.compoundliteral.48, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfab_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_rpm_ops, ptr @.compoundliteral.51, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfab_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @clk_rpm_ops, ptr @.compoundliteral.54, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfpb_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.56, ptr @clk_rpm_ops, ptr @.compoundliteral.57, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfpb_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.59, ptr @clk_rpm_ops, ptr @.compoundliteral.60, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smi_clk\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_rpm_ops, ptr @.compoundliteral.63, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smi_a_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @clk_rpm_ops, ptr @.compoundliteral.66, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll4_clk\00", [23 x i8] zeroinitializer }, align 32
@clk_rpm_fixed_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_rpm_fixed_prepare, ptr @clk_rpm_fixed_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rpm_recalc_rate, ptr @clk_rpm_round_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxo\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.69], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.68, ptr @clk_rpm_fixed_ops, ptr @.compoundliteral.70, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@apq8064_clks = internal global { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @apq8064_afab_clk, ptr @apq8064_afab_a_clk, ptr @apq8064_cfpb_clk, ptr @apq8064_cfpb_a_clk, ptr @apq8064_qdss_clk, ptr @apq8064_qdss_a_clk, ptr @apq8064_daytona_clk, ptr @apq8064_daytona_a_clk, ptr @apq8064_ebi1_clk, ptr @apq8064_ebi1_a_clk, ptr @apq8064_mmfab_clk, ptr @apq8064_mmfab_a_clk, ptr @apq8064_mmfpb_clk, ptr @apq8064_mmfpb_a_clk, ptr @apq8064_sfab_clk, ptr @apq8064_sfab_a_clk, ptr @apq8064_sfpb_clk, ptr @apq8064_sfpb_a_clk, ptr null, ptr null, ptr null, ptr @apq8064_xo_d0_clk, ptr @apq8064_xo_d1_clk, ptr @apq8064_xo_a0_clk, ptr @apq8064_xo_a1_clk, ptr @apq8064_xo_a2_clk], [40 x i8] zeroinitializer }, align 32
@apq8064_afab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 2, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_afab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_afab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 2, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_afab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_cfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 7, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_cfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_cfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 7, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_cfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_qdss_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 124, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_qdss_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_qdss_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 124, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_qdss_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_daytona_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 10, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_daytona_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.87 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_daytona_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 10, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_daytona_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_ebi1_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 12, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_ebi1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_ebi1_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 12, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_ebi1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_mmfab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 16, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_mmfab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 16, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_mmfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 14, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_mmfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 14, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_mmfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_sfab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 128, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_sfab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 128, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_sfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 125, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_sfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 125, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @apq8064_sfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.109 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_xo_d0_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 8, i32 0, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_xo_d1_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 8, i32 8, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_xo_a0_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 8, i32 16, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_xo_a1_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 8, i32 24, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@apq8064_xo_a2_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 8, i32 28, i8 0, i32 0, i8 0, i8 0, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.125 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_rpm_ops, ptr @.compoundliteral.72, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @clk_rpm_ops, ptr @.compoundliteral.74, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_rpm_ops, ptr @.compoundliteral.76, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @clk_rpm_ops, ptr @.compoundliteral.78, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qdss_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @clk_rpm_ops, ptr @.compoundliteral.81, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qdss_a_clk\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.83, ptr @clk_rpm_ops, ptr @.compoundliteral.84, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_rpm_ops, ptr @.compoundliteral.86, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_rpm_ops, ptr @.compoundliteral.88, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_rpm_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @clk_rpm_ops, ptr @.compoundliteral.92, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.38, ptr @clk_rpm_ops, ptr @.compoundliteral.94, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @clk_rpm_ops, ptr @.compoundliteral.96, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.44, ptr @clk_rpm_ops, ptr @.compoundliteral.98, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.47, ptr @clk_rpm_ops, ptr @.compoundliteral.100, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_rpm_ops, ptr @.compoundliteral.102, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @clk_rpm_ops, ptr @.compoundliteral.104, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.56, ptr @clk_rpm_ops, ptr @.compoundliteral.106, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.59, ptr @clk_rpm_ops, ptr @.compoundliteral.108, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xo_d0_clk\00", [22 x i8] zeroinitializer }, align 32
@clk_rpm_xo_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_rpm_xo_prepare, ptr @clk_rpm_xo_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cxo_board\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.110, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xo_d1_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.114, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xo_a0_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.117, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.118, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xo_a1_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.120, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.121, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xo_a2_clk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.123, ptr @clk_rpm_xo_ops, ptr @.compoundliteral.124, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ipq806x_clks = internal global { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @ipq806x_afab_clk, ptr @ipq806x_afab_a_clk, ptr @ipq806x_cfpb_clk, ptr @ipq806x_cfpb_a_clk, ptr null, ptr null, ptr @ipq806x_daytona_clk, ptr @ipq806x_daytona_a_clk, ptr @ipq806x_ebi1_clk, ptr @ipq806x_ebi1_a_clk, ptr null, ptr null, ptr null, ptr null, ptr @ipq806x_sfab_clk, ptr @ipq806x_sfab_a_clk, ptr @ipq806x_sfpb_clk, ptr @ipq806x_sfpb_a_clk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipq806x_nss_fabric_0_clk, ptr @ipq806x_nss_fabric_0_a_clk, ptr @ipq806x_nss_fabric_1_clk, ptr @ipq806x_nss_fabric_1_a_clk], [56 x i8] zeroinitializer }, align 32
@ipq806x_afab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 2, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_afab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_afab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 2, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_afab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.129 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_cfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 7, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_cfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_cfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 7, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_cfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.133 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_daytona_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 10, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_daytona_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.135 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_daytona_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 10, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_daytona_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_ebi1_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 12, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_ebi1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.139 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_ebi1_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 12, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_ebi1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.141 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_sfab_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 128, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfab_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_sfab_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 128, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfab_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_sfpb_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 125, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfpb_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.147 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_sfpb_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 125, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_sfpb_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_nss_fabric_0_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 134, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_0_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_nss_fabric_0_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 134, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_0_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_nss_fabric_1_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 135, i32 0, i8 0, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_1_a_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ipq806x_nss_fabric_1_a_clk = internal global { %struct.clk_rpm, [52 x i8] } { %struct.clk_rpm { i32 135, i32 0, i8 1, i32 2147483647, i8 0, i8 0, ptr @ipq806x_nss_fabric_1_clk, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 }, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.12, ptr @clk_rpm_ops, ptr @.compoundliteral.126, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @clk_rpm_ops, ptr @.compoundliteral.128, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @clk_rpm_ops, ptr @.compoundliteral.130, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @clk_rpm_ops, ptr @.compoundliteral.132, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @clk_rpm_ops, ptr @.compoundliteral.134, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @clk_rpm_ops, ptr @.compoundliteral.136, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @clk_rpm_ops, ptr @.compoundliteral.138, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @clk_rpm_ops, ptr @.compoundliteral.140, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.50, ptr @clk_rpm_ops, ptr @.compoundliteral.142, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @clk_rpm_ops, ptr @.compoundliteral.144, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.56, ptr @clk_rpm_ops, ptr @.compoundliteral.146, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.59, ptr @clk_rpm_ops, ptr @.compoundliteral.148, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nss_fabric_0_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.150, ptr @clk_rpm_ops, ptr @.compoundliteral.151, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nss_fabric_0_a_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.153, ptr @clk_rpm_ops, ptr @.compoundliteral.154, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nss_fabric_1_clk\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.156, ptr @clk_rpm_ops, ptr @.compoundliteral.157, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nss_fabric_1_a_clk\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.159, ptr @clk_rpm_ops, ptr @.compoundliteral.160, ptr null, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 20]
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"rpm_clk_driver\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 608, i32 31 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 610, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"rpm_clk_match_table\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 517, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 551, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 568, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 598, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 533, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"rpm_clk_msm8660\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 431, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"rpm_clk_apq8064\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 478, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"rpm_clk_ipq806x\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 512, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant [13 x i8] c"msm8660_clks\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 409, i32 24 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"msm8660_afab_clk\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c"msm8660_afab_a_clk\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"msm8660_cfpb_clk\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"msm8660_cfpb_a_clk\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"msm8660_daytona_clk\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [22 x i8] c"msm8660_daytona_a_clk\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"msm8660_ebi1_clk\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [19 x i8] c"msm8660_ebi1_a_clk\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [18 x i8] c"msm8660_mmfab_clk\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"msm8660_mmfab_a_clk\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [18 x i8] c"msm8660_mmfpb_clk\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"msm8660_mmfpb_a_clk\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"msm8660_sfab_clk\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"msm8660_sfab_a_clk\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"msm8660_sfpb_clk\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"msm8660_sfpb_a_clk\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"msm8660_smi_clk\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"msm8660_smi_a_clk\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"msm8660_pll4_clk\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [12 x i8] c"clk_rpm_ops\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 389, i32 29 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [13 x i8] c"rpm_clk_lock\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 106, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 398, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 403, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 401, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 406, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 400, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 404, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 399, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 402, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 405, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [18 x i8] c"clk_rpm_fixed_ops\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 382, i32 29 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 407, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [13 x i8] c"apq8064_clks\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 452, i32 24 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"apq8064_afab_clk\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [19 x i8] c"apq8064_afab_a_clk\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 437, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"apq8064_cfpb_clk\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [19 x i8] c"apq8064_cfpb_a_clk\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 438, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"apq8064_qdss_clk\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [19 x i8] c"apq8064_qdss_a_clk\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c"apq8064_daytona_clk\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [22 x i8] c"apq8064_daytona_a_clk\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 439, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"apq8064_ebi1_clk\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [19 x i8] c"apq8064_ebi1_a_clk\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 440, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant [18 x i8] c"apq8064_mmfab_clk\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c"apq8064_mmfab_a_clk\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 441, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant [18 x i8] c"apq8064_mmfpb_clk\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c"apq8064_mmfpb_a_clk\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 442, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"apq8064_sfab_clk\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [19 x i8] c"apq8064_sfab_a_clk\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 443, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"apq8064_sfpb_clk\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [19 x i8] c"apq8064_sfpb_a_clk\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 444, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant [18 x i8] c"apq8064_xo_d0_clk\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [18 x i8] c"apq8064_xo_d1_clk\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [18 x i8] c"apq8064_xo_a0_clk\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [18 x i8] c"apq8064_xo_a1_clk\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [18 x i8] c"apq8064_xo_a2_clk\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 445, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [15 x i8] c"clk_rpm_xo_ops\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 377, i32 29 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 446, i32 1 }
@___asan_gen_.518 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 447, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 448, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 449, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 450, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [13 x i8] c"ipq806x_clks\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 493, i32 24 }
@___asan_gen_.543 = private unnamed_addr constant [17 x i8] c"ipq806x_afab_clk\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [19 x i8] c"ipq806x_afab_a_clk\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 484, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant [17 x i8] c"ipq806x_cfpb_clk\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [19 x i8] c"ipq806x_cfpb_a_clk\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 485, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant [20 x i8] c"ipq806x_daytona_clk\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [22 x i8] c"ipq806x_daytona_a_clk\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 486, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant [17 x i8] c"ipq806x_ebi1_clk\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [19 x i8] c"ipq806x_ebi1_a_clk\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 487, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"ipq806x_sfab_clk\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [19 x i8] c"ipq806x_sfab_a_clk\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 488, i32 1 }
@___asan_gen_.573 = private unnamed_addr constant [17 x i8] c"ipq806x_sfpb_clk\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [19 x i8] c"ipq806x_sfpb_a_clk\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 489, i32 1 }
@___asan_gen_.579 = private unnamed_addr constant [25 x i8] c"ipq806x_nss_fabric_0_clk\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [27 x i8] c"ipq806x_nss_fabric_0_a_clk\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [25 x i8] c"ipq806x_nss_fabric_1_clk\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [27 x i8] c"ipq806x_nss_fabric_1_a_clk\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.607 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.613 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 490, i32 1 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.631 = private constant [30 x i8] c"../drivers/clk/qcom/clk-rpm.c\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 491, i32 1 }
@___asan_gen_.633 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@llvm.compiler.used = appending global [245 x ptr] [ptr @__UNIQUE_ID_alias182, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__exitcall_rpm_clk_exit, ptr @__initcall__kmod_clk_rpm__178_621_rpm_clk_init1, ptr @qcom_rpm_clk_hw_get._entry, ptr @qcom_rpm_clk_hw_get._entry_ptr, ptr @rpm_clk_exit, ptr @rpm_clk_probe._entry, ptr @rpm_clk_probe._entry.7, ptr @rpm_clk_probe._entry_ptr, ptr @rpm_clk_probe._entry_ptr.9, ptr @rpm_clk_driver, ptr @.str, ptr @rpm_clk_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rpm_clk_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @rpm_clk_msm8660, ptr @rpm_clk_apq8064, ptr @rpm_clk_ipq806x, ptr @msm8660_clks, ptr @msm8660_afab_clk, ptr @msm8660_afab_a_clk, ptr @msm8660_cfpb_clk, ptr @msm8660_cfpb_a_clk, ptr @msm8660_daytona_clk, ptr @msm8660_daytona_a_clk, ptr @msm8660_ebi1_clk, ptr @msm8660_ebi1_a_clk, ptr @msm8660_mmfab_clk, ptr @msm8660_mmfab_a_clk, ptr @msm8660_mmfpb_clk, ptr @msm8660_mmfpb_a_clk, ptr @msm8660_sfab_clk, ptr @msm8660_sfab_a_clk, ptr @msm8660_sfpb_clk, ptr @msm8660_sfpb_a_clk, ptr @msm8660_smi_clk, ptr @msm8660_smi_a_clk, ptr @msm8660_pll4_clk, ptr @.str.12, ptr @clk_rpm_ops, ptr @.str.13, ptr @.compoundliteral, ptr @.compoundliteral.14, ptr @rpm_clk_lock, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @clk_rpm_fixed_ops, ptr @.str.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @apq8064_clks, ptr @apq8064_afab_clk, ptr @apq8064_afab_a_clk, ptr @apq8064_cfpb_clk, ptr @apq8064_cfpb_a_clk, ptr @apq8064_qdss_clk, ptr @apq8064_qdss_a_clk, ptr @apq8064_daytona_clk, ptr @apq8064_daytona_a_clk, ptr @apq8064_ebi1_clk, ptr @apq8064_ebi1_a_clk, ptr @apq8064_mmfab_clk, ptr @apq8064_mmfab_a_clk, ptr @apq8064_mmfpb_clk, ptr @apq8064_mmfpb_a_clk, ptr @apq8064_sfab_clk, ptr @apq8064_sfab_a_clk, ptr @apq8064_sfpb_clk, ptr @apq8064_sfpb_a_clk, ptr @apq8064_xo_d0_clk, ptr @apq8064_xo_d1_clk, ptr @apq8064_xo_a0_clk, ptr @apq8064_xo_a1_clk, ptr @apq8064_xo_a2_clk, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @clk_rpm_xo_ops, ptr @.str.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @ipq806x_clks, ptr @ipq806x_afab_clk, ptr @ipq806x_afab_a_clk, ptr @ipq806x_cfpb_clk, ptr @ipq806x_cfpb_a_clk, ptr @ipq806x_daytona_clk, ptr @ipq806x_daytona_a_clk, ptr @ipq806x_ebi1_clk, ptr @ipq806x_ebi1_a_clk, ptr @ipq806x_sfab_clk, ptr @ipq806x_sfab_a_clk, ptr @ipq806x_sfpb_clk, ptr @ipq806x_sfpb_a_clk, ptr @ipq806x_nss_fabric_0_clk, ptr @ipq806x_nss_fabric_0_a_clk, ptr @ipq806x_nss_fabric_1_clk, ptr @ipq806x_nss_fabric_1_a_clk, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.compoundliteral.128, ptr @.compoundliteral.129, ptr @.compoundliteral.130, ptr @.compoundliteral.131, ptr @.compoundliteral.132, ptr @.compoundliteral.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.compoundliteral.137, ptr @.compoundliteral.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.compoundliteral.147, ptr @.compoundliteral.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161], section "llvm.metadata"
@0 = internal global [235 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_match_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rpm_clk_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_msm8660 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_apq8064 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_ipq806x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_clks to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_afab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_afab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_cfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_cfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_daytona_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_daytona_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_ebi1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_ebi1_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_mmfab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_mmfab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_mmfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_mmfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_sfab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_sfab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_sfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_sfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_smi_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_smi_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8660_pll4_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpm_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_clk_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpm_fixed_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_clks to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_afab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_afab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_cfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_cfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_qdss_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_qdss_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_daytona_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_daytona_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_ebi1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_ebi1_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_mmfab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_mmfab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_mmfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_mmfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_sfab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_sfab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_sfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_sfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_xo_d0_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_xo_d1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_xo_a0_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_xo_a1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8064_xo_a2_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpm_xo_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_clks to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_afab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_afab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_cfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_cfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_daytona_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_daytona_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_ebi1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_ebi1_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_sfab_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_sfab_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_sfpb_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_sfpb_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_nss_fabric_0_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_nss_fabric_0_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_nss_fabric_1_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq806x_nss_fabric_1_a_clk to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpm_clk_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpm_clk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpm_clk_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call3, align 4
  %num_clks7 = getelementptr inbounds %struct.rpm_clk_desc, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %num_clks7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clks7, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %clks13 = getelementptr inbounds %struct.rpm_cc, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %clks13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %clks13, align 4
  %num_clks14 = getelementptr inbounds %struct.rpm_cc, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %num_clks14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %num_clks14, align 4
  %xo_lock = getelementptr inbounds %struct.rpm_cc, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %xo_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @rpm_clk_probe.__key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp105.not = icmp eq i32 %7, 0
  br i1 %cmp105.not, label %if.end12.for.end44_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.for.end44_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.cond29.preheader:                             ; preds = %for.inc
  br i1 %cmp105.not, label %for.cond29.preheader.for.end44_crit_edge, label %for.cond29.preheader.for.body31_crit_edge

for.cond29.preheader.for.body31_crit_edge:        ; preds = %for.cond29.preheader
  br label %for.body31

for.cond29.preheader.for.end44_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.0106 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.0106
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %rpm22 = getelementptr inbounds %struct.clk_rpm, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %rpm22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %rpm22, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %rpm_cc = getelementptr inbounds %struct.clk_rpm, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %rpm_cc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %rpm_cc, align 4
  %16 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2147483647, ptr %value.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %16, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end.i [
    i32 20, label %if.end20.clk_rpm_handoff.exit.thread_crit_edge
    i32 8, label %if.end20.clk_rpm_handoff.exit.thread_crit_edge119
  ]

if.end20.clk_rpm_handoff.exit.thread_crit_edge119: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_rpm_handoff.exit.thread

if.end20.clk_rpm_handoff.exit.thread_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_rpm_handoff.exit.thread

if.end.i:                                         ; preds = %if.end20
  %rpm.i = getelementptr inbounds %struct.clk_rpm, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rpm.i, align 4
  %call.i97 = call i32 @qcom_rpm_write(ptr noundef %22, i32 noundef 0, i32 noundef %19, ptr noundef nonnull %value.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i, label %clk_rpm_handoff.exit, label %clk_rpm_handoff.exit.thread100

clk_rpm_handoff.exit.thread100:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  br label %do.end52

clk_rpm_handoff.exit.thread:                      ; preds = %if.end20.clk_rpm_handoff.exit.thread_crit_edge, %if.end20.clk_rpm_handoff.exit.thread_crit_edge119
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  br label %for.inc

clk_rpm_handoff.exit:                             ; preds = %if.end.i
  %23 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rpm.i, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 4
  %call8.i = call i32 @qcom_rpm_write(ptr noundef %24, i32 noundef 1, i32 noundef %26, ptr noundef nonnull %value.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool26.not = icmp eq i32 %call8.i, 0
  br i1 %tobool26.not, label %clk_rpm_handoff.exit.for.inc_crit_edge, label %clk_rpm_handoff.exit.do.end52_crit_edge

clk_rpm_handoff.exit.do.end52_crit_edge:          ; preds = %clk_rpm_handoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

clk_rpm_handoff.exit.for.inc_crit_edge:           ; preds = %clk_rpm_handoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %clk_rpm_handoff.exit.for.inc_crit_edge, %clk_rpm_handoff.exit.thread, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond29.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body31:                                       ; preds = %for.inc42.for.body31_crit_edge, %for.cond29.preheader.for.body31_crit_edge
  %i.1108 = phi i32 [ %inc43, %for.inc42.for.body31_crit_edge ], [ 0, %for.cond29.preheader.for.body31_crit_edge ]
  %arrayidx32 = getelementptr ptr, ptr %5, i32 %i.1108
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %28, null
  br i1 %tobool33.not, label %for.body31.for.inc42_crit_edge, label %if.end35

for.body31.for.inc42_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc42

if.end35:                                         ; preds = %for.body31
  %hw = getelementptr inbounds %struct.clk_rpm, ptr %28, i32 0, i32 7
  %call38 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end35.for.inc42_crit_edge, label %if.end35.do.end52_crit_edge

if.end35.do.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

if.end35.for.inc42_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc42

for.inc42:                                        ; preds = %if.end35.for.inc42_crit_edge, %for.body31.for.inc42_crit_edge
  %inc43 = add nuw i32 %i.1108, 1
  %exitcond111.not = icmp eq i32 %inc43, %7
  br i1 %exitcond111.not, label %for.inc42.for.end44_crit_edge, label %for.inc42.for.body31_crit_edge

for.inc42.for.body31_crit_edge:                   ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.inc42.for.end44_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.end44:                                        ; preds = %for.inc42.for.end44_crit_edge, %for.cond29.preheader.for.end44_crit_edge, %if.end12.for.end44_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call46 = call i32 @of_clk_add_hw_provider(ptr noundef %30, ptr noundef nonnull @qcom_rpm_clk_hw_get, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.end44.cleanup_crit_edge, label %for.end44.do.end52_crit_edge

for.end44.do.end52_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

for.end44.cleanup_crit_edge:                      ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end52:                                         ; preds = %for.end44.do.end52_crit_edge, %if.end35.do.end52_crit_edge, %clk_rpm_handoff.exit.do.end52_crit_edge, %clk_rpm_handoff.exit.thread100
  %ret.0 = phi i32 [ %call46, %for.end44.do.end52_crit_edge ], [ %call.i97, %clk_rpm_handoff.exit.thread100 ], [ %call38, %if.end35.do.end52_crit_edge ], [ %call8.i, %clk_rpm_handoff.exit.do.end52_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %for.end44.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end52 ], [ -19, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %for.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_clk_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_rpm_clk_hw_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_clks = getelementptr inbounds %struct.rpm_cc, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.rpm_cc, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  %arrayidx2 = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %cond.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.clk_rpm, ptr %7, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %hw, %cond.true ], [ inttoptr (i32 -2 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpm_prepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %value.i73 = alloca i32, align 4
  %value.i68 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %peer1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpm_clk_lock, i32 noundef 0) #8
  %rate = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then37_crit_edge, label %if.end

entry.if.then37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end:                                           ; preds = %entry
  %active_only.i = getelementptr i8, ptr %hw, i32 -16
  %4 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_only.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %rate..i = select i1 %tobool.not.i, i32 %3, i32 0
  %enabled = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate5 = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate5, align 4
  %active_only.i65 = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %active_only.i65 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_only.i65, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i66 = icmp eq i8 %11, 0
  %rate..i67 = select i1 %tobool.not.i66, i32 %9, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %peer_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %9, %if.then4 ]
  %peer_sleep_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %rate..i67, %if.then4 ]
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 %peer_rate.0)
  %branch = getelementptr i8, ptr %hw, i32 -7
  %13 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %branch, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %.op = add i32 %12, 999
  %.op.op = udiv i32 %.op, 1000
  %div.i = select i1 %tobool8.not, i32 %.op.op, i32 1
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div.i, ptr %value.i, align 4
  %rpm.i = getelementptr i8, ptr %hw, i32 12
  %16 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rpm.i, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %call.i = call i32 @qcom_rpm_write(ptr noundef %17, i32 noundef 0, i32 noundef %19, ptr noundef nonnull %value.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.if.end39_crit_edge

if.end6.if.end39_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end15:                                         ; preds = %if.end6
  %20 = call i32 @llvm.umax.i32(i32 %rate..i, i32 %peer_sleep_rate.0)
  %21 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %branch, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25 = icmp ne i32 %20, 0
  %lnot.ext29 = zext i1 %tobool25 to i32
  %sleep_rate.0 = select i1 %tobool23.not, i32 %20, i32 %lnot.ext29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i68) #8
  %sub.i69 = add i32 %sleep_rate.0, 999
  %div.i70 = udiv i32 %sub.i69, 1000
  %23 = ptrtoint ptr %value.i68 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i70, ptr %value.i68, align 4
  %24 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rpm.i, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %call.i72 = call i32 @qcom_rpm_write(ptr noundef %25, i32 noundef 1, i32 noundef %27, ptr noundef nonnull %value.i68, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool32.not = icmp eq i32 %call.i72, 0
  br i1 %tobool32.not, label %if.end15.if.then37_crit_edge, label %out

if.end15.if.then37_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

out:                                              ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i73) #8
  %sub.i74 = add i32 %peer_rate.0, 999
  %div.i75 = udiv i32 %sub.i74, 1000
  %28 = ptrtoint ptr %value.i73 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i75, ptr %value.i73, align 4
  %29 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rpm.i, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr, align 4
  %call.i77 = call i32 @qcom_rpm_write(ptr noundef %30, i32 noundef 0, i32 noundef %32, ptr noundef nonnull %value.i73, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool36.not = icmp eq i32 %call.i77, 0
  br i1 %tobool36.not, label %out.if.then37_crit_edge, label %out.if.end39_crit_edge

out.if.end39_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

out.if.then37_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then37:                                        ; preds = %out.if.then37_crit_edge, %if.end15.if.then37_crit_edge, %entry.if.then37_crit_edge
  %enabled38 = getelementptr i8, ptr %hw, i32 -8
  %33 = ptrtoint ptr %enabled38 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %enabled38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %out.if.end39_crit_edge, %if.end6.if.end39_crit_edge
  %ret.081 = phi i32 [ 0, %if.then37 ], [ %call.i77, %out.if.end39_crit_edge ], [ %call.i, %if.end6.if.end39_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rpm_clk_lock) #8
  ret i32 %ret.081
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_rpm_unprepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %value.i37 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %peer1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpm_clk_lock, i32 noundef 0) #8
  %rate = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate4 = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rate4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate4, align 4
  %active_only.i = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active_only.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %rate..i = select i1 %tobool.not.i, i32 %7, i32 0
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %peer_rate.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %7, %if.then3 ]
  %peer_sleep_rate.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %rate..i, %if.then3 ]
  %branch = getelementptr i8, ptr %hw, i32 -7
  %10 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %branch, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer_rate.0)
  %tobool7 = icmp ne i32 %peer_rate.0, 0
  %lnot.ext = zext i1 %tobool7 to i32
  %cond = select i1 %tobool6.not, i32 %peer_rate.0, i32 %lnot.ext
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %sub.i = add i32 %cond, 999
  %div.i = udiv i32 %sub.i, 1000
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div.i, ptr %value.i, align 4
  %rpm.i = getelementptr i8, ptr %hw, i32 12
  %13 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rpm.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %call.i = call i32 @qcom_rpm_write(ptr noundef %14, i32 noundef 0, i32 noundef %16, ptr noundef nonnull %value.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %branch to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %branch, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer_sleep_rate.0)
  %tobool15 = icmp ne i32 %peer_sleep_rate.0, 0
  %lnot.ext19 = zext i1 %tobool15 to i32
  %cond22 = select i1 %tobool13.not, i32 %peer_sleep_rate.0, i32 %lnot.ext19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i37) #8
  %sub.i38 = add i32 %cond22, 999
  %div.i39 = udiv i32 %sub.i38, 1000
  %19 = ptrtoint ptr %value.i37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i39, ptr %value.i37, align 4
  %20 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rpm.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %call.i41 = call i32 @qcom_rpm_write(ptr noundef %21, i32 noundef 1, i32 noundef %23, ptr noundef nonnull %value.i37, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool24.not = icmp eq i32 %call.i41, 0
  br i1 %tobool24.not, label %if.end26, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end26:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %enabled27 = getelementptr i8, ptr %hw, i32 -8
  %24 = ptrtoint ptr %enabled27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %enabled27, align 4
  br label %out

out:                                              ; preds = %if.end26, %if.end11.out_crit_edge, %if.end5.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @rpm_clk_lock) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_rpm_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_rpm_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpm_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %value.i43 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %peer1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %peer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpm_clk_lock, i32 noundef 0) #8
  %enabled = getelementptr i8, ptr %hw, i32 -8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %active_only.i = getelementptr i8, ptr %hw, i32 -16
  %4 = ptrtoint ptr %active_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_only.i, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %rate..i = select i1 %tobool.not.i, i32 %rate, i32 0
  %enabled2 = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %enabled2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled2, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate5 = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate5, align 4
  %active_only.i40 = getelementptr inbounds %struct.clk_rpm, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %active_only.i40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_only.i40, align 4, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i41 = icmp eq i8 %11, 0
  %rate..i42 = select i1 %tobool.not.i41, i32 %9, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %peer_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %9, %if.then4 ]
  %peer_sleep_rate.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %rate..i42, %if.then4 ]
  %12 = tail call i32 @llvm.umax.i32(i32 %peer_rate.0, i32 %rate)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %sub.i = add i32 %12, 999
  %div.i = udiv i32 %sub.i, 1000
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i, ptr %value.i, align 4
  %rpm.i = getelementptr i8, ptr %hw, i32 12
  %14 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rpm.i, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %call.i = call i32 @qcom_rpm_write(ptr noundef %15, i32 noundef 0, i32 noundef %17, ptr noundef nonnull %value.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end6
  %18 = call i32 @llvm.umax.i32(i32 %rate..i, i32 %peer_sleep_rate.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i43) #8
  %sub.i44 = add i32 %18, 999
  %div.i45 = udiv i32 %sub.i44, 1000
  %19 = ptrtoint ptr %value.i43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i45, ptr %value.i43, align 4
  %20 = ptrtoint ptr %rpm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rpm.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %call.i47 = call i32 @qcom_rpm_write(ptr noundef %21, i32 noundef 1, i32 noundef %23, ptr noundef nonnull %value.i43, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool18.not = icmp eq i32 %call.i47, 0
  br i1 %tobool18.not, label %if.end20, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %rate21 = getelementptr i8, ptr %hw, i32 -12
  %24 = ptrtoint ptr %rate21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rate, ptr %rate21, align 4
  br label %out

out:                                              ; preds = %if.end20, %if.end10.out_crit_edge, %if.end6.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end6.out_crit_edge ], [ %call.i47, %if.end10.out_crit_edge ], [ 0, %if.end20 ], [ 0, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rpm_clk_lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpm_fixed_prepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %value, align 4
  %rpm = getelementptr i8, ptr %hw, i32 12
  %1 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rpm, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %call = call i32 @qcom_rpm_write(ptr noundef %2, i32 noundef 0, i32 noundef %4, ptr noundef nonnull %value, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %enabled = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_rpm_fixed_unprepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %rpm = getelementptr i8, ptr %hw, i32 12
  %1 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rpm, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %call = call i32 @qcom_rpm_write(ptr noundef %2, i32 noundef 0, i32 noundef %4, ptr noundef nonnull %value, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %enabled = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpm_xo_prepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %rpm_cc = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %rpm_cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpm_cc, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %xo_lock = getelementptr inbounds %struct.rpm_cc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %xo_lock, i32 noundef 0) #8
  %xo_buffer_value = getelementptr inbounds %struct.rpm_cc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xo_buffer_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xo_buffer_value, align 4
  %xo_offset = getelementptr i8, ptr %hw, i32 -20
  %6 = ptrtoint ptr %xo_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xo_offset, align 4
  %shl = shl i32 2, %7
  %or = or i32 %shl, %5
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %value, align 4
  %rpm = getelementptr i8, ptr %hw, i32 12
  %9 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rpm, align 4
  %call = call i32 @qcom_rpm_write(ptr noundef %10, i32 noundef 0, i32 noundef %3, ptr noundef nonnull %value, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %enabled = getelementptr i8, ptr %hw, i32 -8
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %enabled, align 4
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 4
  %14 = ptrtoint ptr %xo_buffer_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xo_buffer_value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %xo_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_rpm_xo_unprepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -24
  %rpm_cc = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %rpm_cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpm_cc, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %xo_lock = getelementptr inbounds %struct.rpm_cc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %xo_lock, i32 noundef 0) #8
  %xo_buffer_value = getelementptr inbounds %struct.rpm_cc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %xo_buffer_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xo_buffer_value, align 4
  %xo_offset = getelementptr i8, ptr %hw, i32 -20
  %6 = ptrtoint ptr %xo_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xo_offset, align 4
  %shl = shl i32 2, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %value, align 4
  %rpm = getelementptr i8, ptr %hw, i32 12
  %9 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rpm, align 4
  %call = call i32 @qcom_rpm_write(ptr noundef %10, i32 noundef 0, i32 noundef %3, ptr noundef nonnull %value, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %enabled = getelementptr i8, ptr %hw, i32 -8
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enabled, align 4
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 4
  %14 = ptrtoint ptr %xo_buffer_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xo_buffer_value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %xo_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__initcall__kmod_clk_rpm__178_621_rpm_clk_init1, !1, !"__initcall__kmod_clk_rpm__178_621_rpm_clk_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 621, i32 1}
!2 = !{ptr @__exitcall_rpm_clk_exit, !3, !"__exitcall_rpm_clk_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 627, i32 1}
!4 = !{ptr @__UNIQUE_ID_description179, !5, !"__UNIQUE_ID_description179", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 629, i32 1}
!6 = !{ptr @__UNIQUE_ID_file180, !7, !"__UNIQUE_ID_file180", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 630, i32 1}
!8 = !{ptr @__UNIQUE_ID_license181, !7, !"__UNIQUE_ID_license181", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias182, !10, !"__UNIQUE_ID_alias182", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 631, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 610, i32 11}
!13 = !{ptr @rpm_clk_driver, !14, !"rpm_clk_driver", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 608, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 551, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rpm_clk_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @rpm_clk_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @rpm_clk_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 568, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 598, i32 2}
!28 = !{ptr @rpm_clk_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rpm_clk_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 533, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @qcom_rpm_clk_hw_get._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @qcom_rpm_clk_hw_get._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @rpm_clk_match_table, !36, !"rpm_clk_match_table", i1 false, i1 false}
!36 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 517, i32 34}
!37 = !{ptr @rpm_clk_msm8660, !38, !"rpm_clk_msm8660", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 431, i32 34}
!39 = !{ptr @msm8660_clks, !40, !"msm8660_clks", i1 false, i1 false}
!40 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 409, i32 24}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 398, i32 1}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @msm8660_afab_clk, !42, !"msm8660_afab_clk", i1 false, i1 false}
!45 = !{ptr @clk_rpm_ops, !46, !"clk_rpm_ops", i1 false, i1 false}
!46 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 389, i32 29}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 106, i32 8}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rpm_clk_lock, !48, !"rpm_clk_lock", i1 false, i1 false}
!51 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @msm8660_afab_a_clk, !42, !"msm8660_afab_a_clk", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 403, i32 1}
!55 = !{ptr @msm8660_cfpb_clk, !54, !"msm8660_cfpb_clk", i1 false, i1 false}
!56 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @msm8660_cfpb_a_clk, !54, !"msm8660_cfpb_a_clk", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 401, i32 1}
!60 = !{ptr @msm8660_daytona_clk, !59, !"msm8660_daytona_clk", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @msm8660_daytona_a_clk, !59, !"msm8660_daytona_a_clk", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 406, i32 1}
!65 = !{ptr @msm8660_ebi1_clk, !64, !"msm8660_ebi1_clk", i1 false, i1 false}
!66 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @msm8660_ebi1_a_clk, !64, !"msm8660_ebi1_a_clk", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 400, i32 1}
!70 = !{ptr @msm8660_mmfab_clk, !69, !"msm8660_mmfab_clk", i1 false, i1 false}
!71 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @msm8660_mmfab_a_clk, !69, !"msm8660_mmfab_a_clk", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 404, i32 1}
!75 = !{ptr @msm8660_mmfpb_clk, !74, !"msm8660_mmfpb_clk", i1 false, i1 false}
!76 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @msm8660_mmfpb_a_clk, !74, !"msm8660_mmfpb_a_clk", i1 false, i1 false}
!78 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 399, i32 1}
!80 = !{ptr @msm8660_sfab_clk, !79, !"msm8660_sfab_clk", i1 false, i1 false}
!81 = !{ptr @.str.53, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @msm8660_sfab_a_clk, !79, !"msm8660_sfab_a_clk", i1 false, i1 false}
!83 = !{ptr @.str.56, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 402, i32 1}
!85 = !{ptr @msm8660_sfpb_clk, !84, !"msm8660_sfpb_clk", i1 false, i1 false}
!86 = !{ptr @.str.59, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @msm8660_sfpb_a_clk, !84, !"msm8660_sfpb_a_clk", i1 false, i1 false}
!88 = !{ptr @.str.62, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 405, i32 1}
!90 = !{ptr @msm8660_smi_clk, !89, !"msm8660_smi_clk", i1 false, i1 false}
!91 = !{ptr @.str.65, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @msm8660_smi_a_clk, !89, !"msm8660_smi_a_clk", i1 false, i1 false}
!93 = !{ptr @.str.68, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 407, i32 1}
!95 = !{ptr @.str.69, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @msm8660_pll4_clk, !94, !"msm8660_pll4_clk", i1 false, i1 false}
!97 = !{ptr @clk_rpm_fixed_ops, !98, !"clk_rpm_fixed_ops", i1 false, i1 false}
!98 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 382, i32 29}
!99 = !{ptr @rpm_clk_apq8064, !100, !"rpm_clk_apq8064", i1 false, i1 false}
!100 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 478, i32 34}
!101 = !{ptr @apq8064_clks, !102, !"apq8064_clks", i1 false, i1 false}
!102 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 452, i32 24}
!103 = !{ptr @apq8064_afab_clk, !104, !"apq8064_afab_clk", i1 false, i1 false}
!104 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 437, i32 1}
!105 = !{ptr @apq8064_afab_a_clk, !104, !"apq8064_afab_a_clk", i1 false, i1 false}
!106 = !{ptr @apq8064_cfpb_clk, !107, !"apq8064_cfpb_clk", i1 false, i1 false}
!107 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 438, i32 1}
!108 = !{ptr @apq8064_cfpb_a_clk, !107, !"apq8064_cfpb_a_clk", i1 false, i1 false}
!109 = !{ptr @.str.80, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 445, i32 1}
!111 = !{ptr @apq8064_qdss_clk, !110, !"apq8064_qdss_clk", i1 false, i1 false}
!112 = !{ptr @.str.83, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @apq8064_qdss_a_clk, !110, !"apq8064_qdss_a_clk", i1 false, i1 false}
!114 = !{ptr @apq8064_daytona_clk, !115, !"apq8064_daytona_clk", i1 false, i1 false}
!115 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 439, i32 1}
!116 = !{ptr @apq8064_daytona_a_clk, !115, !"apq8064_daytona_a_clk", i1 false, i1 false}
!117 = !{ptr @apq8064_ebi1_clk, !118, !"apq8064_ebi1_clk", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 440, i32 1}
!119 = !{ptr @apq8064_ebi1_a_clk, !118, !"apq8064_ebi1_a_clk", i1 false, i1 false}
!120 = !{ptr @apq8064_mmfab_clk, !121, !"apq8064_mmfab_clk", i1 false, i1 false}
!121 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 441, i32 1}
!122 = !{ptr @apq8064_mmfab_a_clk, !121, !"apq8064_mmfab_a_clk", i1 false, i1 false}
!123 = !{ptr @apq8064_mmfpb_clk, !124, !"apq8064_mmfpb_clk", i1 false, i1 false}
!124 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 442, i32 1}
!125 = !{ptr @apq8064_mmfpb_a_clk, !124, !"apq8064_mmfpb_a_clk", i1 false, i1 false}
!126 = !{ptr @apq8064_sfab_clk, !127, !"apq8064_sfab_clk", i1 false, i1 false}
!127 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 443, i32 1}
!128 = !{ptr @apq8064_sfab_a_clk, !127, !"apq8064_sfab_a_clk", i1 false, i1 false}
!129 = !{ptr @apq8064_sfpb_clk, !130, !"apq8064_sfpb_clk", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 444, i32 1}
!131 = !{ptr @apq8064_sfpb_a_clk, !130, !"apq8064_sfpb_a_clk", i1 false, i1 false}
!132 = !{ptr @.str.110, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 446, i32 1}
!134 = !{ptr @.str.111, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @apq8064_xo_d0_clk, !133, !"apq8064_xo_d0_clk", i1 false, i1 false}
!136 = !{ptr @clk_rpm_xo_ops, !137, !"clk_rpm_xo_ops", i1 false, i1 false}
!137 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 377, i32 29}
!138 = !{ptr @.str.114, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 447, i32 1}
!140 = !{ptr @apq8064_xo_d1_clk, !139, !"apq8064_xo_d1_clk", i1 false, i1 false}
!141 = !{ptr @.str.117, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 448, i32 1}
!143 = !{ptr @apq8064_xo_a0_clk, !142, !"apq8064_xo_a0_clk", i1 false, i1 false}
!144 = !{ptr @.str.120, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 449, i32 1}
!146 = !{ptr @apq8064_xo_a1_clk, !145, !"apq8064_xo_a1_clk", i1 false, i1 false}
!147 = !{ptr @.str.123, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 450, i32 1}
!149 = !{ptr @apq8064_xo_a2_clk, !148, !"apq8064_xo_a2_clk", i1 false, i1 false}
!150 = !{ptr @rpm_clk_ipq806x, !151, !"rpm_clk_ipq806x", i1 false, i1 false}
!151 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 512, i32 34}
!152 = !{ptr @ipq806x_clks, !153, !"ipq806x_clks", i1 false, i1 false}
!153 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 493, i32 24}
!154 = !{ptr @ipq806x_afab_clk, !155, !"ipq806x_afab_clk", i1 false, i1 false}
!155 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 484, i32 1}
!156 = !{ptr @ipq806x_afab_a_clk, !155, !"ipq806x_afab_a_clk", i1 false, i1 false}
!157 = !{ptr @ipq806x_cfpb_clk, !158, !"ipq806x_cfpb_clk", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 485, i32 1}
!159 = !{ptr @ipq806x_cfpb_a_clk, !158, !"ipq806x_cfpb_a_clk", i1 false, i1 false}
!160 = !{ptr @ipq806x_daytona_clk, !161, !"ipq806x_daytona_clk", i1 false, i1 false}
!161 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 486, i32 1}
!162 = !{ptr @ipq806x_daytona_a_clk, !161, !"ipq806x_daytona_a_clk", i1 false, i1 false}
!163 = !{ptr @ipq806x_ebi1_clk, !164, !"ipq806x_ebi1_clk", i1 false, i1 false}
!164 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 487, i32 1}
!165 = !{ptr @ipq806x_ebi1_a_clk, !164, !"ipq806x_ebi1_a_clk", i1 false, i1 false}
!166 = !{ptr @ipq806x_sfab_clk, !167, !"ipq806x_sfab_clk", i1 false, i1 false}
!167 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 488, i32 1}
!168 = !{ptr @ipq806x_sfab_a_clk, !167, !"ipq806x_sfab_a_clk", i1 false, i1 false}
!169 = !{ptr @ipq806x_sfpb_clk, !170, !"ipq806x_sfpb_clk", i1 false, i1 false}
!170 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 489, i32 1}
!171 = !{ptr @ipq806x_sfpb_a_clk, !170, !"ipq806x_sfpb_a_clk", i1 false, i1 false}
!172 = !{ptr @.str.150, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 490, i32 1}
!174 = !{ptr @ipq806x_nss_fabric_0_clk, !173, !"ipq806x_nss_fabric_0_clk", i1 false, i1 false}
!175 = !{ptr @.str.153, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ipq806x_nss_fabric_0_a_clk, !173, !"ipq806x_nss_fabric_0_a_clk", i1 false, i1 false}
!177 = !{ptr @.str.156, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/qcom/clk-rpm.c", i32 491, i32 1}
!179 = !{ptr @ipq806x_nss_fabric_1_clk, !178, !"ipq806x_nss_fabric_1_clk", i1 false, i1 false}
!180 = !{ptr @.str.159, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @ipq806x_nss_fabric_1_a_clk, !178, !"ipq806x_nss_fabric_1_a_clk", i1 false, i1 false}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i8 0, i8 2}
