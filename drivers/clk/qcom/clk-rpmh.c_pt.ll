; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-rpmh.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-rpmh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_rpmh_desc = type { ptr, i32 }
%struct.clk_rpmh = type { %struct.clk_hw, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.tcs_cmd = type { i32, i32, i32 }

@__initcall__kmod_clk_rpmh__171_719_clk_rpmh_init1 = internal global ptr @clk_rpmh_init, section ".initcall1.init", align 4
@clk_rpmh_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_rpmh_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_rpmh_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_clk_rpmh_exit = internal global ptr @clk_rpmh_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [44 x i8] c"clk_rpmh.description=QCOM RPMh Clock Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [40 x i8] c"clk_rpmh.file=drivers/clk/qcom/clk-rpmh\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [24 x i8] c"clk_rpmh.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-rpmh\00", [23 x i8] zeroinitializer }, align 32
@clk_rpmh_match_table = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sc7180 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sc8180x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sdm845 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sdx55 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx65-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sdx65 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6350-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sm6350 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sm8150 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sm8250 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sm8350 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sm8450 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-rpmh-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_rpmh_sc7280 }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@clk_rpmh_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 651, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing RPMh resource address for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_rpmh_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/qcom/clk-rpmh.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_rpmh_probe._entry_ptr = internal global ptr @clk_rpmh_probe._entry, section ".printk_index", align 4
@clk_rpmh_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 660, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error reading RPMh aux data for %s (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@clk_rpmh_probe._entry_ptr.8 = internal global ptr @clk_rpmh_probe._entry.6, section ".printk_index", align 4
@clk_rpmh_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@clk_rpmh_probe._entry_ptr.11 = internal global ptr @clk_rpmh_probe._entry.9, section ".printk_index", align 4
@clk_rpmh_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add clock provider\0A\00", [34 x i8] zeroinitializer }, align 32
@clk_rpmh_probe._entry_ptr.14 = internal global ptr @clk_rpmh_probe._entry.12, section ".printk_index", align 4
@clk_rpmh_probe.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_rpmh\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Registered RPMh clocks\0A\00", [40 x i8] zeroinitializer }, align 32
@of_clk_rpmh_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_clk_rpmh_hw_get\00", [45 x i8] zeroinitializer }, align 32
@of_clk_rpmh_hw_get._entry_ptr = internal global ptr @of_clk_rpmh_hw_get._entry, section ".printk_index", align 4
@clk_rpmh_sc7180 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sc7180_rpmh_clocks, i32 13 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sc8180x = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sc8180x_rpmh_clocks, i32 12 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sdm845 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sdm845_rpmh_clocks, i32 16 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sdx55 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sdx55_rpmh_clocks, i32 17 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sdx65 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sdx65_rpmh_clocks, i32 21 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sm6350 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sm6350_rpmh_clocks, i32 27 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sm8150 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sm8150_rpmh_clocks, i32 12 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sm8250 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sm8250_rpmh_clocks, i32 15 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sm8350 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sm8350_rpmh_clocks, i32 25 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sm8450 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sm8450_rpmh_clocks, i32 21 }, [24 x i8] zeroinitializer }, align 32
@clk_rpmh_sc7280 = internal constant { %struct.clk_rpmh_desc, [24 x i8] } { %struct.clk_rpmh_desc { ptr @sc7280_rpmh_clocks, i32 25 }, [24 x i8] zeroinitializer }, align 32
@sc7180_rpmh_clocks = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr @sdm845_ln_bb_clk3, ptr @sdm845_ln_bb_clk3_ao, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr @sdm845_rf_clk2, ptr @sdm845_rf_clk2_ao, ptr null, ptr null, ptr @sdm845_ipa], [44 x i8] zeroinitializer }, align 32
@sdm845_bi_tcxo = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr @.str.23, i8 2, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdm845_bi_tcxo_ao }, [40 x i8] zeroinitializer }, align 32
@sdm845_bi_tcxo_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, ptr @.str.23, i8 2, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdm845_bi_tcxo }, [40 x i8] zeroinitializer }, align 32
@sdm845_ln_bb_clk2 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 }, ptr @.str.40, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdm845_ln_bb_clk2_ao }, [40 x i8] zeroinitializer }, align 32
@sdm845_ln_bb_clk2_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 }, ptr @.str.40, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdm845_ln_bb_clk2 }, [40 x i8] zeroinitializer }, align 32
@sdm845_ln_bb_clk3 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr @.str.47, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdm845_ln_bb_clk3_ao }, [40 x i8] zeroinitializer }, align 32
@sdm845_ln_bb_clk3_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 }, ptr @.str.47, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdm845_ln_bb_clk3 }, [40 x i8] zeroinitializer }, align 32
@sdm845_rf_clk1 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 }, ptr @.str.54, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdm845_rf_clk1_ao }, [40 x i8] zeroinitializer }, align 32
@sdm845_rf_clk1_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr @.str.54, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdm845_rf_clk1 }, [40 x i8] zeroinitializer }, align 32
@sdm845_rf_clk2 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.60 }, ptr @.str.61, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdm845_rf_clk2_ao }, [40 x i8] zeroinitializer }, align 32
@sdm845_rf_clk2_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr @.str.61, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdm845_rf_clk2 }, [40 x i8] zeroinitializer }, align 32
@sdm845_ipa = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 }, ptr @.str.67, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@clk_rpmh_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_rpmh_prepare, ptr @clk_rpmh_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rpmh_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xo_board\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xo.lvl\00", [25 x i8] zeroinitializer }, align 32
@rpmh_clk_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpmh_clk_lock, i64 52), ptr getelementptr (i8, ptr @rpmh_clk_lock, i64 52) }, ptr @rpmh_clk_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rpmh_clk_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpmh_clk_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk: %s failed to %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@clk_rpmh_send_aggregate_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"set %s state of %s failed: (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clk_rpmh_send_aggregate_command\00", [32 x i8] zeroinitializer }, align 32
@clk_rpmh_send_aggregate_command._entry_ptr = internal global ptr @clk_rpmh_send_aggregate_command._entry, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wake\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bi_tcxo_ao\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.35, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ln_bb_clk2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.38, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lnbclka2\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ln_bb_clk2_ao\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.42, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ln_bb_clk3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.44, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.45, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lnbclka3\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ln_bb_clk3_ao\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.48, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.49, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.51, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.52, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclka1\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rf_clk1_ao\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.56, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.59, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclka2\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rf_clk2_ao\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.63, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipa\00", [28 x i8] zeroinitializer }, align 32
@clk_rpmh_bcm_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_rpmh_bcm_prepare, ptr @clk_rpmh_bcm_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rpmh_bcm_recalc_rate, ptr @clk_rpmh_round_rate, ptr null, ptr null, ptr null, ptr @clk_rpmh_bcm_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @clk_rpmh_bcm_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IP0\00", [28 x i8] zeroinitializer }, align 32
@clk_rpmh_bcm_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set active state of %s failed: (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_rpmh_bcm_send_cmd\00", [42 x i8] zeroinitializer }, align 32
@clk_rpmh_bcm_send_cmd._entry_ptr = internal global ptr @clk_rpmh_bcm_send_cmd._entry, section ".printk_index", align 4
@sc8180x_rpmh_clocks = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr @sdm845_ln_bb_clk3, ptr @sdm845_ln_bb_clk3_ao, ptr @sc8180x_rf_clk1, ptr @sc8180x_rf_clk1_ao, ptr @sc8180x_rf_clk2, ptr @sc8180x_rf_clk2_ao, ptr @sc8180x_rf_clk3, ptr @sc8180x_rf_clk3_ao], [48 x i8] zeroinitializer }, align 32
@sc8180x_rf_clk1 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 }, ptr @.str.72, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sc8180x_rf_clk1_ao }, [40 x i8] zeroinitializer }, align 32
@sc8180x_rf_clk1_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.74 }, ptr @.str.72, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sc8180x_rf_clk1 }, [40 x i8] zeroinitializer }, align 32
@sc8180x_rf_clk2 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 }, ptr @.str.77, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sc8180x_rf_clk2_ao }, [40 x i8] zeroinitializer }, align 32
@sc8180x_rf_clk2_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 }, ptr @.str.77, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sc8180x_rf_clk2 }, [40 x i8] zeroinitializer }, align 32
@sc8180x_rf_clk3 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.82 }, ptr @.str.83, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sc8180x_rf_clk3_ao }, [40 x i8] zeroinitializer }, align 32
@sc8180x_rf_clk3_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.86 }, ptr @.str.83, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sc8180x_rf_clk3 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.51, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.70, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclkd1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.73, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.75, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclkd2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.78, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk3\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.81, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclkd3\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rf_clk3_ao\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.84, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.85, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sdm845_rpmh_clocks = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr @sdm845_ln_bb_clk3, ptr @sdm845_ln_bb_clk3_ao, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr @sdm845_rf_clk2, ptr @sdm845_rf_clk2_ao, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao, ptr @sdm845_ipa, ptr null, ptr null, ptr @sdm845_ce], [32 x i8] zeroinitializer }, align 32
@sdm845_rf_clk3 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 }, ptr @.str.89, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdm845_rf_clk3_ao }, [40 x i8] zeroinitializer }, align 32
@sdm845_rf_clk3_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 }, ptr @.str.89, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdm845_rf_clk3 }, [40 x i8] zeroinitializer }, align 32
@sdm845_ce = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 }, ptr @.str.94, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.80, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.87, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclka3\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.84, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.90, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ce\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.92, ptr @clk_rpmh_bcm_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE0\00", [28 x i8] zeroinitializer }, align 32
@sdx55_rpmh_clocks = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr null, ptr null, ptr null, ptr null, ptr @sdx55_rf_clk1, ptr @sdx55_rf_clk1_ao, ptr @sdx55_rf_clk2, ptr @sdx55_rf_clk2_ao, ptr null, ptr null, ptr @sdx55_ipa, ptr null, ptr null, ptr null, ptr @sdx55_qpic_clk], [60 x i8] zeroinitializer }, align 32
@sdx55_rf_clk1 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 }, ptr @.str.72, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdx55_rf_clk1_ao }, [40 x i8] zeroinitializer }, align 32
@sdx55_rf_clk1_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 }, ptr @.str.72, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdx55_rf_clk1 }, [40 x i8] zeroinitializer }, align 32
@sdx55_rf_clk2 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.100 }, ptr @.str.77, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdx55_rf_clk2_ao }, [40 x i8] zeroinitializer }, align 32
@sdx55_rf_clk2_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.102 }, ptr @.str.77, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdx55_rf_clk2 }, [40 x i8] zeroinitializer }, align 32
@sdx55_ipa = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 }, ptr @.str.67, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdx55_qpic_clk = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.105 }, ptr @.str.106, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.51, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.95, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.55, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.97, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.58, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.99, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.62, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.101, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.65, ptr @clk_rpmh_bcm_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qpic_clk\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.104, ptr @clk_rpmh_bcm_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QP0\00", [28 x i8] zeroinitializer }, align 32
@sdx65_rpmh_clocks = internal global { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @sc7280_bi_tcxo, ptr @sc7280_bi_tcxo_ao, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr @sdm845_rf_clk2, ptr @sdm845_rf_clk2_ao, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao, ptr @sdm845_ipa, ptr @sdx65_ln_bb_clk1, ptr @sdx65_ln_bb_clk1_ao, ptr null, ptr @sdx55_qpic_clk, ptr null, ptr null, ptr @sm8350_rf_clk4, ptr @sm8350_rf_clk4_ao], [44 x i8] zeroinitializer }, align 32
@sc7280_bi_tcxo = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 }, ptr @.str.23, i8 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sc7280_bi_tcxo_ao }, [40 x i8] zeroinitializer }, align 32
@sc7280_bi_tcxo_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 }, ptr @.str.23, i8 4, i32 0, i32 3, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sc7280_bi_tcxo }, [40 x i8] zeroinitializer }, align 32
@sdx65_ln_bb_clk1 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr @.str.114, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sdx65_ln_bb_clk1_ao }, [40 x i8] zeroinitializer }, align 32
@sdx65_ln_bb_clk1_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.117 }, ptr @.str.114, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sdx65_ln_bb_clk1 }, [40 x i8] zeroinitializer }, align 32
@sm8350_rf_clk4 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 }, ptr @.str.121, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm8350_rf_clk4_ao }, [40 x i8] zeroinitializer }, align 32
@sm8350_rf_clk4_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 }, ptr @.str.121, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm8350_rf_clk4 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.107, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.34, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.109, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ln_bb_clk1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.111, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.112, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lnbclka1\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ln_bb_clk1_ao\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.115, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.116, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk4\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.118, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.119, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclka4\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rf_clk4_ao\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.122, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.123, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sm6350_rpmh_clocks = internal global { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @sc7280_bi_tcxo, ptr @sc7280_bi_tcxo_ao, ptr @sm6350_ln_bb_clk2, ptr @sm6350_ln_bb_clk2_ao, ptr @sm6350_ln_bb_clk3, ptr @sm6350_ln_bb_clk3_ao, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm6350_qlink, ptr @sm6350_qlink_ao], [52 x i8] zeroinitializer }, align 32
@sm6350_ln_bb_clk2 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.126 }, ptr @.str.127, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm6350_ln_bb_clk2_ao }, [40 x i8] zeroinitializer }, align 32
@sm6350_ln_bb_clk2_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.129 }, ptr @.str.127, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm6350_ln_bb_clk2 }, [40 x i8] zeroinitializer }, align 32
@sm6350_ln_bb_clk3 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 }, ptr @.str.132, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm6350_ln_bb_clk3_ao }, [40 x i8] zeroinitializer }, align 32
@sm6350_ln_bb_clk3_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 }, ptr @.str.132, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm6350_ln_bb_clk3 }, [40 x i8] zeroinitializer }, align 32
@sm6350_qlink = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, ptr @.str.138, i8 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm6350_qlink_ao }, [40 x i8] zeroinitializer }, align 32
@sm6350_qlink_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.141 }, ptr @.str.138, i8 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm6350_qlink }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.125, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lnbclkg2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.128, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.44, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.130, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lnbclkg3\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.48, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.133, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qlink\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.135, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.136, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qphy.lvl\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qlink_ao\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.139, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.140, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sm8150_rpmh_clocks = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr @sdm845_ln_bb_clk3, ptr @sdm845_ln_bb_clk3_ao, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr @sdm845_rf_clk2, ptr @sdm845_rf_clk2_ao, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao], [48 x i8] zeroinitializer }, align 32
@sm8250_rpmh_clocks = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr @sdm845_ln_bb_clk3, ptr @sdm845_ln_bb_clk3_ao, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr null, ptr null, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao, ptr null, ptr @sm8250_ln_bb_clk1, ptr @sm8250_ln_bb_clk1_ao], [36 x i8] zeroinitializer }, align 32
@sm8250_ln_bb_clk1 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, ptr @.str.114, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm8250_ln_bb_clk1_ao }, [40 x i8] zeroinitializer }, align 32
@sm8250_ln_bb_clk1_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 }, ptr @.str.114, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm8250_ln_bb_clk1 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.111, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.142, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.115, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.144, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sm8350_rpmh_clocks = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr null, ptr null, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr null, ptr null, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao, ptr @sdm845_ipa, ptr @sm8250_ln_bb_clk1, ptr @sm8250_ln_bb_clk1_ao, ptr null, ptr null, ptr @sm8350_div_clk1, ptr @sm8350_div_clk1_ao, ptr @sm8350_rf_clk4, ptr @sm8350_rf_clk4_ao, ptr @sm8350_rf_clk5, ptr @sm8350_rf_clk5_ao, ptr @sm8350_pka, ptr @sm8350_hwkm], [60 x i8] zeroinitializer }, align 32
@sm8350_div_clk1 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.148 }, ptr @.str.149, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm8350_div_clk1_ao }, [40 x i8] zeroinitializer }, align 32
@sm8350_div_clk1_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 }, ptr @.str.149, i8 2, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm8350_div_clk1 }, [40 x i8] zeroinitializer }, align 32
@sm8350_rf_clk5 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, ptr @.str.156, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm8350_rf_clk5_ao }, [40 x i8] zeroinitializer }, align 32
@sm8350_rf_clk5_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.159 }, ptr @.str.156, i8 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm8350_rf_clk5 }, [40 x i8] zeroinitializer }, align 32
@sm8350_pka = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 }, ptr @.str.162, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sm8350_hwkm = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 }, ptr @.str.165, i8 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_clk1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.146, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.147, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"divclka1\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"div_clk1_ao\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.150, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.151, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rf_clk5\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.153, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.154, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfclka5\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rf_clk5_ao\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.157, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.158, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pka\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.160, ptr @clk_rpmh_bcm_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PKA0\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hwkm\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.163, ptr @clk_rpmh_bcm_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HK0\00", [28 x i8] zeroinitializer }, align 32
@sm8450_rpmh_clocks = internal global { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @sc7280_bi_tcxo, ptr @sc7280_bi_tcxo_ao, ptr @sm8450_ln_bb_clk2, ptr @sm8450_ln_bb_clk2_ao, ptr null, ptr null, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr @sdm845_rf_clk2, ptr @sdm845_rf_clk2_ao, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao, ptr @sdm845_ipa, ptr @sm8450_ln_bb_clk1, ptr @sm8450_ln_bb_clk1_ao, ptr null, ptr null, ptr null, ptr null, ptr @sm8350_rf_clk4, ptr @sm8350_rf_clk4_ao], [44 x i8] zeroinitializer }, align 32
@sm8450_ln_bb_clk2 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.167 }, ptr @.str.40, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm8450_ln_bb_clk2_ao }, [40 x i8] zeroinitializer }, align 32
@sm8450_ln_bb_clk2_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.169 }, ptr @.str.40, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm8450_ln_bb_clk2 }, [40 x i8] zeroinitializer }, align 32
@sm8450_ln_bb_clk1 = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.171 }, ptr @.str.114, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 7, i32 0, ptr null, ptr @sm8450_ln_bb_clk1_ao }, [40 x i8] zeroinitializer }, align 32
@sm8450_ln_bb_clk1_ao = internal global { %struct.clk_rpmh, [40 x i8] } { %struct.clk_rpmh { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.173 }, ptr @.str.114, i8 4, i32 4, i32 1, i32 0, i32 0, i32 0, i32 6, i32 0, ptr null, ptr @sm8450_ln_bb_clk1 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.166, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.168, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.111, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.170, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal constant { %struct.clk_parent_data, [16 x i8] } { %struct.clk_parent_data { ptr null, ptr @.str.20, ptr @.str.21, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.115, ptr @clk_rpmh_ops, ptr null, ptr @.compoundliteral.172, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sc7280_rpmh_clocks = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @sc7280_bi_tcxo, ptr @sc7280_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr null, ptr null, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr null, ptr null, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao, ptr @sdm845_ipa, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sm8350_rf_clk4, ptr @sm8350_rf_clk4_ao, ptr null, ptr null, ptr @sm8350_pka, ptr @sm8350_hwkm], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"clk_rpmh_driver\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 707, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 710, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"clk_rpmh_match_table\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 691, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 650, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 658, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 673, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 682, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 686, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 616, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sc7180\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 435, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"clk_rpmh_sc8180x\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 455, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sdm845\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 375, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant [15 x i8] c"clk_rpmh_sdx55\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 396, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"clk_rpmh_sdx65\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 604, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sm6350\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 580, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sm8150\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 416, i32 35 }
@___asan_gen_.255 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sm8250\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 477, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sm8350\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 510, i32 35 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sm8450\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 539, i32 35 }
@___asan_gen_.264 = private unnamed_addr constant [16 x i8] c"clk_rpmh_sc7280\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 560, i32 35 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"sc7180_rpmh_clocks\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 421, i32 23 }
@___asan_gen_.270 = private unnamed_addr constant [15 x i8] c"sdm845_bi_tcxo\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"sdm845_bi_tcxo_ao\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [18 x i8] c"sdm845_ln_bb_clk2\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [21 x i8] c"sdm845_ln_bb_clk2_ao\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"sdm845_ln_bb_clk3\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [21 x i8] c"sdm845_ln_bb_clk3_ao\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [15 x i8] c"sdm845_rf_clk1\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"sdm845_rf_clk1_ao\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [15 x i8] c"sdm845_rf_clk2\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [18 x i8] c"sdm845_rf_clk2_ao\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [11 x i8] c"sdm845_ipa\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [13 x i8] c"clk_rpmh_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 252, i32 29 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [14 x i8] c"rpmh_clk_lock\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 71, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 215, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 175, i32 5 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 344, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 345, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 346, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 347, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 348, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [17 x i8] c"clk_rpmh_bcm_ops\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 335, i32 29 }
@___asan_gen_.419 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 355, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 279, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant [20 x i8] c"sc8180x_rpmh_clocks\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 440, i32 23 }
@___asan_gen_.435 = private unnamed_addr constant [16 x i8] c"sc8180x_rf_clk1\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [19 x i8] c"sc8180x_rf_clk1_ao\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [16 x i8] c"sc8180x_rf_clk2\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [19 x i8] c"sc8180x_rf_clk2_ao\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [16 x i8] c"sc8180x_rf_clk3\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [19 x i8] c"sc8180x_rf_clk3_ao\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 351, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 352, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 353, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [19 x i8] c"sdm845_rpmh_clocks\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 358, i32 23 }
@___asan_gen_.483 = private unnamed_addr constant [15 x i8] c"sdm845_rf_clk3\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [18 x i8] c"sdm845_rf_clk3_ao\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [10 x i8] c"sdm845_ce\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 349, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 356, i32 1 }
@___asan_gen_.506 = private unnamed_addr constant [18 x i8] c"sdx55_rpmh_clocks\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 385, i32 23 }
@___asan_gen_.509 = private unnamed_addr constant [14 x i8] c"sdx55_rf_clk1\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [17 x i8] c"sdx55_rf_clk1_ao\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 380, i32 1 }
@___asan_gen_.515 = private unnamed_addr constant [14 x i8] c"sdx55_rf_clk2\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"sdx55_rf_clk2_ao\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 381, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant [10 x i8] c"sdx55_ipa\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 383, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant [15 x i8] c"sdx55_qpic_clk\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 382, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [18 x i8] c"sdx65_rpmh_clocks\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 587, i32 23 }
@___asan_gen_.546 = private unnamed_addr constant [15 x i8] c"sc7280_bi_tcxo\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [18 x i8] c"sc7280_bi_tcxo_ao\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 516, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant [17 x i8] c"sdx65_ln_bb_clk1\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [20 x i8] c"sdx65_ln_bb_clk1_ao\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [15 x i8] c"sm8350_rf_clk4\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [18 x i8] c"sm8350_rf_clk4_ao\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 585, i32 1 }
@___asan_gen_.579 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 483, i32 1 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [19 x i8] c"sm6350_rpmh_clocks\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 569, i32 23 }
@___asan_gen_.597 = private unnamed_addr constant [18 x i8] c"sm6350_ln_bb_clk2\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [21 x i8] c"sm6350_ln_bb_clk2_ao\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [18 x i8] c"sm6350_ln_bb_clk3\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [21 x i8] c"sm6350_ln_bb_clk3_ao\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [13 x i8] c"sm6350_qlink\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [16 x i8] c"sm6350_qlink_ao\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 565, i32 1 }
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.622 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 566, i32 1 }
@___asan_gen_.627 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 567, i32 1 }
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [19 x i8] c"sm8150_rpmh_clocks\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 401, i32 23 }
@___asan_gen_.645 = private unnamed_addr constant [19 x i8] c"sm8250_rpmh_clocks\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 462, i32 23 }
@___asan_gen_.648 = private unnamed_addr constant [18 x i8] c"sm8250_ln_bb_clk1\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [21 x i8] c"sm8250_ln_bb_clk1_ao\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 460, i32 1 }
@___asan_gen_.654 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [19 x i8] c"sm8350_rpmh_clocks\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 488, i32 23 }
@___asan_gen_.661 = private unnamed_addr constant [16 x i8] c"sm8350_div_clk1\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [19 x i8] c"sm8350_div_clk1_ao\00", align 1
@___asan_gen_.667 = private unnamed_addr constant [15 x i8] c"sm8350_rf_clk5\00", align 1
@___asan_gen_.670 = private unnamed_addr constant [18 x i8] c"sm8350_rf_clk5_ao\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [11 x i8] c"sm8350_pka\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [12 x i8] c"sm8350_hwkm\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.683 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 482, i32 1 }
@___asan_gen_.690 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.696 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 484, i32 1 }
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 485, i32 1 }
@___asan_gen_.715 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.716 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 486, i32 1 }
@___asan_gen_.719 = private unnamed_addr constant [19 x i8] c"sm8450_rpmh_clocks\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 521, i32 23 }
@___asan_gen_.722 = private unnamed_addr constant [18 x i8] c"sm8450_ln_bb_clk2\00", align 1
@___asan_gen_.725 = private unnamed_addr constant [21 x i8] c"sm8450_ln_bb_clk2_ao\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 519, i32 1 }
@___asan_gen_.728 = private unnamed_addr constant [18 x i8] c"sm8450_ln_bb_clk1\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c"sm8450_ln_bb_clk1_ao\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 518, i32 1 }
@___asan_gen_.734 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.740 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.742 = private unnamed_addr constant [19 x i8] c"sc7280_rpmh_clocks\00", align 1
@___asan_gen_.743 = private constant [31 x i8] c"../drivers/clk/qcom/clk-rpmh.c\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 544, i32 23 }
@llvm.compiler.used = appending global [266 x ptr] [ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_clk_rpmh_exit, ptr @__initcall__kmod_clk_rpmh__171_719_clk_rpmh_init1, ptr @clk_rpmh_bcm_send_cmd._entry, ptr @clk_rpmh_bcm_send_cmd._entry_ptr, ptr @clk_rpmh_exit, ptr @clk_rpmh_probe._entry, ptr @clk_rpmh_probe._entry.12, ptr @clk_rpmh_probe._entry.6, ptr @clk_rpmh_probe._entry.9, ptr @clk_rpmh_probe._entry_ptr, ptr @clk_rpmh_probe._entry_ptr.11, ptr @clk_rpmh_probe._entry_ptr.14, ptr @clk_rpmh_probe._entry_ptr.8, ptr @clk_rpmh_send_aggregate_command._entry, ptr @clk_rpmh_send_aggregate_command._entry_ptr, ptr @of_clk_rpmh_hw_get._entry, ptr @of_clk_rpmh_hw_get._entry_ptr, ptr @clk_rpmh_driver, ptr @.str, ptr @clk_rpmh_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @clk_rpmh_sc7180, ptr @clk_rpmh_sc8180x, ptr @clk_rpmh_sdm845, ptr @clk_rpmh_sdx55, ptr @clk_rpmh_sdx65, ptr @clk_rpmh_sm6350, ptr @clk_rpmh_sm8150, ptr @clk_rpmh_sm8250, ptr @clk_rpmh_sm8350, ptr @clk_rpmh_sm8450, ptr @clk_rpmh_sc7280, ptr @sc7180_rpmh_clocks, ptr @sdm845_bi_tcxo, ptr @sdm845_bi_tcxo_ao, ptr @sdm845_ln_bb_clk2, ptr @sdm845_ln_bb_clk2_ao, ptr @sdm845_ln_bb_clk3, ptr @sdm845_ln_bb_clk3_ao, ptr @sdm845_rf_clk1, ptr @sdm845_rf_clk1_ao, ptr @sdm845_rf_clk2, ptr @sdm845_rf_clk2_ao, ptr @sdm845_ipa, ptr @.str.19, ptr @clk_rpmh_ops, ptr @.str.20, ptr @.str.21, ptr @.compoundliteral, ptr @.compoundliteral.22, ptr @.str.23, ptr @rpmh_clk_lock, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @clk_rpmh_bcm_ops, ptr @.compoundliteral.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @sc8180x_rpmh_clocks, ptr @sc8180x_rf_clk1, ptr @sc8180x_rf_clk1_ao, ptr @sc8180x_rf_clk2, ptr @sc8180x_rf_clk2_ao, ptr @sc8180x_rf_clk3, ptr @sc8180x_rf_clk3_ao, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @sdm845_rpmh_clocks, ptr @sdm845_rf_clk3, ptr @sdm845_rf_clk3_ao, ptr @sdm845_ce, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @sdx55_rpmh_clocks, ptr @sdx55_rf_clk1, ptr @sdx55_rf_clk1_ao, ptr @sdx55_rf_clk2, ptr @sdx55_rf_clk2_ao, ptr @sdx55_ipa, ptr @sdx55_qpic_clk, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @sdx65_rpmh_clocks, ptr @sc7280_bi_tcxo, ptr @sc7280_bi_tcxo_ao, ptr @sdx65_ln_bb_clk1, ptr @sdx65_ln_bb_clk1_ao, ptr @sm8350_rf_clk4, ptr @sm8350_rf_clk4_ao, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @sm6350_rpmh_clocks, ptr @sm6350_ln_bb_clk2, ptr @sm6350_ln_bb_clk2_ao, ptr @sm6350_ln_bb_clk3, ptr @sm6350_ln_bb_clk3_ao, ptr @sm6350_qlink, ptr @sm6350_qlink_ao, ptr @.compoundliteral.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.compoundliteral.129, ptr @.compoundliteral.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @sm8150_rpmh_clocks, ptr @sm8250_rpmh_clocks, ptr @sm8250_ln_bb_clk1, ptr @sm8250_ln_bb_clk1_ao, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @sm8350_rpmh_clocks, ptr @sm8350_div_clk1, ptr @sm8350_div_clk1_ao, ptr @sm8350_rf_clk5, ptr @sm8350_rf_clk5_ao, ptr @sm8350_pka, ptr @sm8350_hwkm, ptr @.str.146, ptr @.compoundliteral.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.str.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @sm8450_rpmh_clocks, ptr @sm8450_ln_bb_clk2, ptr @sm8450_ln_bb_clk2_ao, ptr @sm8450_ln_bb_clk1, ptr @sm8450_ln_bb_clk1_ao, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @sc7280_rpmh_clocks], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_match_table to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_rpmh_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sc7180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sc8180x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sdm845 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sdx55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sdx65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sm6350 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sm8150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sm8250 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sm8350 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sm8450 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_sc7280 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_rpmh_clocks to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_bi_tcxo to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_bi_tcxo_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ln_bb_clk2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ln_bb_clk2_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ln_bb_clk3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ln_bb_clk3_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rf_clk1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rf_clk1_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rf_clk2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rf_clk2_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ipa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_clk_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_send_aggregate_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_bcm_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rpmh_bcm_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rpmh_clocks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rf_clk1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rf_clk1_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rf_clk2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rf_clk2_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rf_clk3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_rf_clk3_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rpmh_clocks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rf_clk3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rf_clk3_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ce to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_rpmh_clocks to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_rf_clk1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_rf_clk1_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_rf_clk2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_rf_clk2_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_ipa to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_qpic_clk to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx65_rpmh_clocks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_bi_tcxo to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_bi_tcxo_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx65_ln_bb_clk1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx65_ln_bb_clk1_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_rf_clk4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_rf_clk4_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_rpmh_clocks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_ln_bb_clk2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_ln_bb_clk2_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_ln_bb_clk3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_ln_bb_clk3_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_qlink to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6350_qlink_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_rpmh_clocks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_rpmh_clocks to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_ln_bb_clk1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_ln_bb_clk1_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_rpmh_clocks to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_div_clk1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_div_clk1_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_rf_clk5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_rf_clk5_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_pka to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_hwkm to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_rpmh_clocks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_ln_bb_clk2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_ln_bb_clk2_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_ln_bb_clk1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_ln_bb_clk1_ao to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_rpmh_clocks to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpmh_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_rpmh_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clk_rpmh_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @clk_rpmh_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpmh_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %aux_data_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %num_clks = getelementptr inbounds %struct.clk_rpmh_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp111.not = icmp eq i32 %3, 0
  br i1 %cmp111.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aux_data_len) #8
  %4 = ptrtoint ptr %aux_data_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %aux_data_len, align 4, !annotation !250
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.0112
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %init = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %res_name = getelementptr inbounds %struct.clk_rpmh, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %res_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res_name, align 4
  %call8 = call i32 @cmd_db_read_addr(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %13 = ptrtoint ptr %res_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res_name, align 4
  br i1 %tobool9.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %14) #11
  br label %cleanup.thread

if.end13:                                         ; preds = %if.end3
  %call15 = call ptr @cmd_db_read_aux_data(ptr noundef %14, ptr noundef nonnull %aux_data_len) #8
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end24

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %res_name.le = getelementptr inbounds %struct.clk_rpmh, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %call15 to i32
  %16 = ptrtoint ptr %res_name.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res_name.le, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %17, i32 noundef %15) #11
  br label %cleanup.thread

if.end24:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %aux_data_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %aux_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp25 = icmp eq i32 %19, 8
  br i1 %cmp25, label %if.then26, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call15, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %mul = mul i32 %22, 1000
  %unit28 = getelementptr inbounds %struct.clk_rpmh, ptr %6, i32 0, i32 9
  %23 = ptrtoint ptr %unit28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %unit28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %res_addr30 = getelementptr inbounds %struct.clk_rpmh, ptr %6, i32 0, i32 3
  %24 = ptrtoint ptr %res_addr30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res_addr30, align 4
  %add = add i32 %25, %call8
  store i32 %add, ptr %res_addr30, align 4
  %dev32 = getelementptr inbounds %struct.clk_rpmh, ptr %6, i32 0, i32 10
  %26 = ptrtoint ptr %dev32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev32, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %call35 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end29.for.inc_crit_edge, label %do.end40

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %10) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end40, %if.then17, %do.end
  %retval.1.ph = phi i32 [ -19, %do.end ], [ %call35, %do.end40 ], [ %15, %if.then17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux_data_len) #8
  br label %cleanup65

for.inc:                                          ; preds = %if.end29.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aux_data_len) #8
  %inc = add nuw i32 %i.0112, 1
  %29 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_clks, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %call47 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev, ptr noundef nonnull @of_clk_rpmh_hw_get, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body55, label %do.end52

do.end52:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %cleanup65

do.body55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_rpmh_probe.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_rpmh_probe, %if.then60)) #8
          to label %cleanup65 [label %if.then60], !srcloc !251

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @clk_rpmh_probe.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %cleanup65

cleanup65:                                        ; preds = %if.then60, %do.body55, %do.end52, %cleanup.thread, %entry.cleanup65_crit_edge
  %retval.2 = phi i32 [ %call47, %do.end52 ], [ -19, %entry.cleanup65_crit_edge ], [ 0, %if.then60 ], [ %retval.1.ph, %cleanup.thread ], [ 0, %do.body55 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmd_db_read_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cmd_db_read_aux_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_clk_rpmh_hw_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_clks = getelementptr inbounds %struct.clk_rpmh_desc, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx2 = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %7, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpmh_prepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmh_clk_lock, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @clk_rpmh_aggregate_state_send_command(ptr noundef %hw, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef nonnull @rpmh_clk_lock) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_rpmh_unprepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmh_clk_lock, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @clk_rpmh_aggregate_state_send_command(ptr noundef %hw, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef nonnull @rpmh_clk_lock) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_rpmh_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div, align 4
  %conv = zext i8 %1 to i32
  %div1 = udiv i32 %prate, %conv
  ret i32 %div1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_rpmh_aggregate_state_send_command(ptr nocapture noundef %c, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i32
  %state = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp eq i32 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %valid_state_mask = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 8
  %2 = ptrtoint ptr %valid_state_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid_state_mask, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %state, align 4
  %peer = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 11
  %5 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer, align 4
  %state6 = getelementptr inbounds %struct.clk_rpmh, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state6, align 4
  %or = or i32 %8, %cond
  %aggr_state = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 6
  %9 = ptrtoint ptr %aggr_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %aggr_state, align 4
  %aggr_state9 = getelementptr inbounds %struct.clk_rpmh, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %aggr_state9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %aggr_state9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #8
  %11 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %11, align 4
  %res_addr.i = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 3
  %13 = ptrtoint ptr %res_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res_addr.i, align 4
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cmd.i, align 4
  %16 = ptrtoint ptr %aggr_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aggr_state, align 4
  %res_on_val.i = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 4
  %18 = ptrtoint ptr %res_on_val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res_on_val.i, align 4
  %last_sent_aggr_state.i.i = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.not.i = icmp eq i32 %17, 0
  %dev.i.i = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 10
  %20 = ptrtoint ptr %last_sent_aggr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_sent_aggr_state.i.i, align 4
  %22 = xor i32 %21, %17
  %23 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, 0
  br i1 %cmp.i.not.i, label %cond.end.for.inc.i_crit_edge, label %if.then.i

cond.end.for.inc.i_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %cond.end
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.clk_rpmh_send.exit.i_crit_edge, label %if.then1.i

if.then.i.clk_rpmh_send.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_rpmh_send.exit.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %11, align 4
  br label %clk_rpmh_send.exit.i

clk_rpmh_send.exit.i:                             ; preds = %if.then1.i, %if.then.i.clk_rpmh_send.exit.i_crit_edge
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %call2.i.i = call i32 @rpmh_write_async(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %cmd.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool6.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool6.not.i, label %clk_rpmh_send.exit.i.for.inc.i_crit_edge, label %clk_rpmh_send.exit.i.land.lhs.true_crit_edge

clk_rpmh_send.exit.i.land.lhs.true_crit_edge:     ; preds = %clk_rpmh_send.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

clk_rpmh_send.exit.i.for.inc.i_crit_edge:         ; preds = %clk_rpmh_send.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %clk_rpmh_send.exit.i.for.inc.i_crit_edge, %cond.end.for.inc.i_crit_edge
  %27 = ptrtoint ptr %last_sent_aggr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_sent_aggr_state.i.i, align 4
  %29 = ptrtoint ptr %aggr_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aggr_state, align 4
  %31 = xor i32 %30, %28
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not.1.i = icmp eq i32 %32, 0
  br i1 %cmp.i.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %and.1.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.then.1.i.clk_rpmh_send.exit.1.i_crit_edge, label %if.then1.1.i

if.then.1.i.clk_rpmh_send.exit.1.i_crit_edge:     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_rpmh_send.exit.1.i

if.then1.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %19, ptr %11, align 4
  br label %clk_rpmh_send.exit.1.i

clk_rpmh_send.exit.1.i:                           ; preds = %if.then1.1.i, %if.then.1.i.clk_rpmh_send.exit.1.i_crit_edge
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  %call2.i.1.i = call i32 @rpmh_write_async(ptr noundef %35, i32 noundef 1, ptr noundef nonnull %cmd.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1.i)
  %tobool6.not.1.i = icmp eq i32 %call2.i.1.i, 0
  br i1 %tobool6.not.1.i, label %clk_rpmh_send.exit.1.i.for.inc.1.i_crit_edge, label %clk_rpmh_send.exit.1.i.land.lhs.true_crit_edge

clk_rpmh_send.exit.1.i.land.lhs.true_crit_edge:   ; preds = %clk_rpmh_send.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

clk_rpmh_send.exit.1.i.for.inc.1.i_crit_edge:     ; preds = %clk_rpmh_send.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %clk_rpmh_send.exit.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %36 = ptrtoint ptr %last_sent_aggr_state.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_sent_aggr_state.i.i, align 4
  %38 = ptrtoint ptr %aggr_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %aggr_state, align 4
  %40 = xor i32 %39, %37
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.not.2.i = icmp eq i32 %41, 0
  br i1 %cmp.i.not.2.i, label %for.inc.1.i.clk_rpmh_send_aggregate_command.exit.thread_crit_edge, label %if.then.2.i

for.inc.1.i.clk_rpmh_send_aggregate_command.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_rpmh_send_aggregate_command.exit.thread

if.then.2.i:                                      ; preds = %for.inc.1.i
  %and.2.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.then.2.i.if.end.2.i_crit_edge, label %if.then1.2.i

if.then.2.i.if.end.2.i_crit_edge:                 ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2.i

if.then1.2.i:                                     ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %19, ptr %11, align 4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then1.2.i, %if.then.2.i.if.end.2.i_crit_edge
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  br i1 %tobool2.not.not.i, label %if.end.i.2.i, label %if.then.i.2.i

if.end.i.2.i:                                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.2.i = call i32 @rpmh_write_async(ptr noundef %44, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #8
  br label %clk_rpmh_send.exit.2.i

if.then.i.2.i:                                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.2.i = call i32 @rpmh_write(ptr noundef %44, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #8
  br label %clk_rpmh_send.exit.2.i

clk_rpmh_send.exit.2.i:                           ; preds = %if.then.i.2.i, %if.end.i.2.i
  %retval.0.i.2.i = phi i32 [ %call.i.2.i, %if.then.i.2.i ], [ %call2.i.2.i, %if.end.i.2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.2.i)
  %tobool6.not.2.i = icmp eq i32 %retval.0.i.2.i, 0
  br i1 %tobool6.not.2.i, label %clk_rpmh_send.exit.2.i.clk_rpmh_send_aggregate_command.exit.thread_crit_edge, label %clk_rpmh_send.exit.2.i.land.lhs.true_crit_edge

clk_rpmh_send.exit.2.i.land.lhs.true_crit_edge:   ; preds = %clk_rpmh_send.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

clk_rpmh_send.exit.2.i.clk_rpmh_send_aggregate_command.exit.thread_crit_edge: ; preds = %clk_rpmh_send.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_rpmh_send_aggregate_command.exit.thread

clk_rpmh_send_aggregate_command.exit.thread:      ; preds = %clk_rpmh_send.exit.2.i.clk_rpmh_send_aggregate_command.exit.thread_crit_edge, %for.inc.1.i.clk_rpmh_send_aggregate_command.exit.thread_crit_edge
  %45 = ptrtoint ptr %aggr_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %aggr_state, align 4
  %47 = ptrtoint ptr %last_sent_aggr_state.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %last_sent_aggr_state.i.i, align 4
  %48 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %peer, align 4
  %last_sent_aggr_state15.i = getelementptr inbounds %struct.clk_rpmh, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %last_sent_aggr_state15.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %46, ptr %last_sent_aggr_state15.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #8
  br label %cleanup

land.lhs.true:                                    ; preds = %clk_rpmh_send.exit.2.i.land.lhs.true_crit_edge, %clk_rpmh_send.exit.1.i.land.lhs.true_crit_edge, %clk_rpmh_send.exit.i.land.lhs.true_crit_edge
  %tobool8.not.i = phi ptr [ @.str.33, %clk_rpmh_send.exit.2.i.land.lhs.true_crit_edge ], [ @.str.32, %clk_rpmh_send.exit.1.i.land.lhs.true_crit_edge ], [ @.str.31, %clk_rpmh_send.exit.i.land.lhs.true_crit_edge ]
  %retval.0.i.lcssa.i = phi i32 [ %retval.0.i.2.i, %clk_rpmh_send.exit.2.i.land.lhs.true_crit_edge ], [ %call2.i.1.i, %clk_rpmh_send.exit.1.i.land.lhs.true_crit_edge ], [ %call2.i.i, %clk_rpmh_send.exit.i.land.lhs.true_crit_edge ]
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  %res_name.i = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 1
  %53 = ptrtoint ptr %res_name.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %res_name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.29, ptr noundef nonnull %tobool8.not.i, ptr noundef %54, i32 noundef %retval.0.i.lcssa.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #8
  br i1 %enable, label %land.lhs.true.if.end23_crit_edge, label %if.then19

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %valid_state_mask20 = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 8
  %55 = ptrtoint ptr %valid_state_mask20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %valid_state_mask20, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true.if.end23_crit_edge
  %cond31 = phi ptr [ @.str.27, %land.lhs.true.if.end23_crit_edge ], [ @.str.28, %if.then19 ]
  %storemerge = phi i32 [ 0, %land.lhs.true.if.end23_crit_edge ], [ %56, %if.then19 ]
  %57 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge, ptr %state, align 4
  %58 = ptrtoint ptr %res_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %res_name.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %59, ptr noundef nonnull %cond31) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %clk_rpmh_send_aggregate_command.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.lcssa.i, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %clk_rpmh_send_aggregate_command.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_write_async(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpmh_bcm_prepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @clk_rpmh_bcm_send_cmd(ptr noundef %hw, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_rpmh_bcm_unprepare(ptr nocapture noundef %hw) #2 align 64 {
entry:
  %cmd.i = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #8
  %0 = call ptr @memset(ptr %cmd.i, i32 0, i32 12)
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmh_clk_lock, i32 noundef 0) #8
  %last_sent_aggr_state.i = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 7
  %1 = ptrtoint ptr %last_sent_aggr_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_sent_aggr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %entry.clk_rpmh_bcm_send_cmd.exit_crit_edge, label %if.then5.i

entry.clk_rpmh_bcm_send_cmd.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_rpmh_bcm_send_cmd.exit

if.then5.i:                                       ; preds = %entry
  %res_addr.i = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %res_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res_addr.i, align 4
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 1
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1073741824, ptr %data.i, align 4
  %dev.i.i = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 10
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %call2.i.i = call i32 @rpmh_write_async(ptr noundef %8, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool11.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %do.end.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %res_name.i = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %res_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %res_name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.68, ptr noundef %12, i32 noundef %call2.i.i) #11
  br label %clk_rpmh_bcm_send_cmd.exit

if.else13.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %last_sent_aggr_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %last_sent_aggr_state.i, align 4
  br label %clk_rpmh_bcm_send_cmd.exit

clk_rpmh_bcm_send_cmd.exit:                       ; preds = %if.else13.i, %do.end.i, %entry.clk_rpmh_bcm_send_cmd.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @rpmh_clk_lock) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_rpmh_bcm_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %aggr_state = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %aggr_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aggr_state, align 4
  %unit = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unit, align 4
  %mul = mul i32 %3, %1
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_rpmh_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_rpmh_bcm_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unit, align 4
  %div = udiv i32 %rate, %1
  %aggr_state = getelementptr inbounds %struct.clk_rpmh, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %aggr_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %aggr_state, align 4
  %call1 = tail call zeroext i1 @clk_hw_is_prepared(ptr noundef %hw) #8
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @clk_rpmh_bcm_send_cmd(ptr noundef %hw, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_rpmh_bcm_send_cmd(ptr nocapture noundef %c, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 12)
  tail call void @mutex_lock_nested(ptr noundef nonnull @rpmh_clk_lock, i32 noundef 0) #8
  br i1 %enable, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %aggr_state = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 6
  %1 = ptrtoint ptr %aggr_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %aggr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  %spec.select = select i1 %tobool1.not, i32 1, i32 %2
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %cmd_state.0 = phi i32 [ %spec.select, %if.then ], [ 0, %entry.if.end4_crit_edge ]
  %last_sent_aggr_state = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 7
  %3 = ptrtoint ptr %last_sent_aggr_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_sent_aggr_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cmd_state.0)
  %cmp.not = icmp eq i32 %4, %cmd_state.0
  br i1 %cmp.not, label %if.end4.if.end16_crit_edge, label %if.then5

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then5:                                         ; preds = %if.end4
  %res_addr = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 3
  %5 = ptrtoint ptr %res_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res_addr, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cmd, align 4
  %or = select i1 %enable, i32 1610612736, i32 1073741824
  %8 = and i32 %cmd_state.0, -12648448
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or9 = or i32 %9, %or
  %data = getelementptr inbounds %struct.tcs_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or9, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br i1 %enable, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @rpmh_write(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %cmd, i32 noundef 1) #8
  br label %clk_rpmh_send.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @rpmh_write_async(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %cmd, i32 noundef 1) #8
  br label %clk_rpmh_send.exit

clk_rpmh_send.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not, label %if.else13, label %do.end

do.end:                                           ; preds = %clk_rpmh_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %res_name = getelementptr inbounds %struct.clk_rpmh, ptr %c, i32 0, i32 1
  %15 = ptrtoint ptr %res_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.68, ptr noundef %16, i32 noundef %retval.0.i) #11
  br label %if.end16

if.else13:                                        ; preds = %clk_rpmh_send.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %last_sent_aggr_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cmd_state.0, ptr %last_sent_aggr_state, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %do.end, %if.end4.if.end16_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %if.else13 ], [ 0, %if.end4.if.end16_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rpmh_clk_lock) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_hw_is_prepared(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !109, !111, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !127, !129, !131, !133, !134, !135, !137, !138, !139, !141, !143, !145, !146, !148, !149, !151, !153, !154, !155, !157, !159, !161, !162, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !176, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !192, !194, !196, !198, !200, !202, !203, !205, !207, !209, !210, !211, !212, !213, !215, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !231, !233, !234, !236, !237, !239}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @__initcall__kmod_clk_rpmh__171_719_clk_rpmh_init1, !1, !"__initcall__kmod_clk_rpmh__171_719_clk_rpmh_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 719, i32 1}
!2 = !{ptr @__exitcall_clk_rpmh_exit, !3, !"__exitcall_clk_rpmh_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 725, i32 1}
!4 = !{ptr @__UNIQUE_ID_description172, !5, !"__UNIQUE_ID_description172", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 727, i32 1}
!6 = !{ptr @__UNIQUE_ID_file173, !7, !"__UNIQUE_ID_file173", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 728, i32 1}
!8 = !{ptr @__UNIQUE_ID_license174, !7, !"__UNIQUE_ID_license174", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 710, i32 11}
!11 = !{ptr @clk_rpmh_driver, !12, !"clk_rpmh_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 707, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 650, i32 4}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @clk_rpmh_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @clk_rpmh_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 658, i32 4}
!23 = !{ptr @clk_rpmh_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @clk_rpmh_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 673, i32 4}
!27 = !{ptr @clk_rpmh_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @clk_rpmh_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 682, i32 3}
!31 = !{ptr @clk_rpmh_probe._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @clk_rpmh_probe._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 686, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @clk_rpmh_probe.__UNIQUE_ID_ddebug170, !34, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 616, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @of_clk_rpmh_hw_get._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @of_clk_rpmh_hw_get._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @clk_rpmh_match_table, !43, !"clk_rpmh_match_table", i1 false, i1 false}
!43 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 691, i32 34}
!44 = !{ptr @clk_rpmh_sc7180, !45, !"clk_rpmh_sc7180", i1 false, i1 false}
!45 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 435, i32 35}
!46 = !{ptr @sc7180_rpmh_clocks, !47, !"sc7180_rpmh_clocks", i1 false, i1 false}
!47 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 421, i32 23}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 344, i32 1}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sdm845_bi_tcxo, !49, !"sdm845_bi_tcxo", i1 false, i1 false}
!54 = !{ptr @clk_rpmh_ops, !55, !"clk_rpmh_ops", i1 false, i1 false}
!55 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 252, i32 29}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 71, i32 8}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rpmh_clk_lock, !57, !"rpmh_clk_lock", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 215, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 175, i32 5}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @clk_rpmh_send_aggregate_command._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @clk_rpmh_send_aggregate_command._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sdm845_bi_tcxo_ao, !49, !"sdm845_bi_tcxo_ao", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 345, i32 1}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sdm845_ln_bb_clk2, !75, !"sdm845_ln_bb_clk2", i1 false, i1 false}
!78 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @sdm845_ln_bb_clk2_ao, !75, !"sdm845_ln_bb_clk2_ao", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 346, i32 1}
!82 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sdm845_ln_bb_clk3, !81, !"sdm845_ln_bb_clk3", i1 false, i1 false}
!84 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sdm845_ln_bb_clk3_ao, !81, !"sdm845_ln_bb_clk3_ao", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 347, i32 1}
!88 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sdm845_rf_clk1, !87, !"sdm845_rf_clk1", i1 false, i1 false}
!90 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sdm845_rf_clk1_ao, !87, !"sdm845_rf_clk1_ao", i1 false, i1 false}
!92 = !{ptr @.str.58, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 348, i32 1}
!94 = !{ptr @.str.61, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sdm845_rf_clk2, !93, !"sdm845_rf_clk2", i1 false, i1 false}
!96 = !{ptr @.str.62, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sdm845_rf_clk2_ao, !93, !"sdm845_rf_clk2_ao", i1 false, i1 false}
!98 = !{ptr @.str.65, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 355, i32 1}
!100 = !{ptr @.str.67, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sdm845_ipa, !99, !"sdm845_ipa", i1 false, i1 false}
!102 = !{ptr @clk_rpmh_bcm_ops, !103, !"clk_rpmh_bcm_ops", i1 false, i1 false}
!103 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 335, i32 29}
!104 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 279, i32 4}
!106 = !{ptr @.str.69, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @clk_rpmh_bcm_send_cmd._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @clk_rpmh_bcm_send_cmd._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @clk_rpmh_sc8180x, !110, !"clk_rpmh_sc8180x", i1 false, i1 false}
!110 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 455, i32 35}
!111 = !{ptr @sc8180x_rpmh_clocks, !112, !"sc8180x_rpmh_clocks", i1 false, i1 false}
!112 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 440, i32 23}
!113 = !{ptr @.str.72, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 351, i32 1}
!115 = !{ptr @sc8180x_rf_clk1, !114, !"sc8180x_rf_clk1", i1 false, i1 false}
!116 = !{ptr @sc8180x_rf_clk1_ao, !114, !"sc8180x_rf_clk1_ao", i1 false, i1 false}
!117 = !{ptr @.str.77, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 352, i32 1}
!119 = !{ptr @sc8180x_rf_clk2, !118, !"sc8180x_rf_clk2", i1 false, i1 false}
!120 = !{ptr @sc8180x_rf_clk2_ao, !118, !"sc8180x_rf_clk2_ao", i1 false, i1 false}
!121 = !{ptr @.str.80, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 353, i32 1}
!123 = !{ptr @.str.83, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sc8180x_rf_clk3, !122, !"sc8180x_rf_clk3", i1 false, i1 false}
!125 = !{ptr @.str.84, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sc8180x_rf_clk3_ao, !122, !"sc8180x_rf_clk3_ao", i1 false, i1 false}
!127 = !{ptr @clk_rpmh_sdm845, !128, !"clk_rpmh_sdm845", i1 false, i1 false}
!128 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 375, i32 35}
!129 = !{ptr @sdm845_rpmh_clocks, !130, !"sdm845_rpmh_clocks", i1 false, i1 false}
!130 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 358, i32 23}
!131 = !{ptr @.str.89, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 349, i32 1}
!133 = !{ptr @sdm845_rf_clk3, !132, !"sdm845_rf_clk3", i1 false, i1 false}
!134 = !{ptr @sdm845_rf_clk3_ao, !132, !"sdm845_rf_clk3_ao", i1 false, i1 false}
!135 = !{ptr @.str.92, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 356, i32 1}
!137 = !{ptr @.str.94, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @sdm845_ce, !136, !"sdm845_ce", i1 false, i1 false}
!139 = !{ptr @clk_rpmh_sdx55, !140, !"clk_rpmh_sdx55", i1 false, i1 false}
!140 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 396, i32 35}
!141 = !{ptr @sdx55_rpmh_clocks, !142, !"sdx55_rpmh_clocks", i1 false, i1 false}
!142 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 385, i32 23}
!143 = !{ptr @sdx55_rf_clk1, !144, !"sdx55_rf_clk1", i1 false, i1 false}
!144 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 380, i32 1}
!145 = !{ptr @sdx55_rf_clk1_ao, !144, !"sdx55_rf_clk1_ao", i1 false, i1 false}
!146 = !{ptr @sdx55_rf_clk2, !147, !"sdx55_rf_clk2", i1 false, i1 false}
!147 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 381, i32 1}
!148 = !{ptr @sdx55_rf_clk2_ao, !147, !"sdx55_rf_clk2_ao", i1 false, i1 false}
!149 = !{ptr @sdx55_ipa, !150, !"sdx55_ipa", i1 false, i1 false}
!150 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 383, i32 1}
!151 = !{ptr @.str.104, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 382, i32 1}
!153 = !{ptr @.str.106, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @sdx55_qpic_clk, !152, !"sdx55_qpic_clk", i1 false, i1 false}
!155 = !{ptr @clk_rpmh_sdx65, !156, !"clk_rpmh_sdx65", i1 false, i1 false}
!156 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 604, i32 35}
!157 = !{ptr @sdx65_rpmh_clocks, !158, !"sdx65_rpmh_clocks", i1 false, i1 false}
!158 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 587, i32 23}
!159 = !{ptr @sc7280_bi_tcxo, !160, !"sc7280_bi_tcxo", i1 false, i1 false}
!160 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 516, i32 1}
!161 = !{ptr @sc7280_bi_tcxo_ao, !160, !"sc7280_bi_tcxo_ao", i1 false, i1 false}
!162 = !{ptr @.str.111, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 585, i32 1}
!164 = !{ptr @.str.114, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @sdx65_ln_bb_clk1, !163, !"sdx65_ln_bb_clk1", i1 false, i1 false}
!166 = !{ptr @.str.115, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @sdx65_ln_bb_clk1_ao, !163, !"sdx65_ln_bb_clk1_ao", i1 false, i1 false}
!168 = !{ptr @.str.118, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 483, i32 1}
!170 = !{ptr @.str.121, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @sm8350_rf_clk4, !169, !"sm8350_rf_clk4", i1 false, i1 false}
!172 = !{ptr @.str.122, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @sm8350_rf_clk4_ao, !169, !"sm8350_rf_clk4_ao", i1 false, i1 false}
!174 = !{ptr @clk_rpmh_sm6350, !175, !"clk_rpmh_sm6350", i1 false, i1 false}
!175 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 580, i32 35}
!176 = !{ptr @sm6350_rpmh_clocks, !177, !"sm6350_rpmh_clocks", i1 false, i1 false}
!177 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 569, i32 23}
!178 = !{ptr @.str.127, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 565, i32 1}
!180 = !{ptr @sm6350_ln_bb_clk2, !179, !"sm6350_ln_bb_clk2", i1 false, i1 false}
!181 = !{ptr @sm6350_ln_bb_clk2_ao, !179, !"sm6350_ln_bb_clk2_ao", i1 false, i1 false}
!182 = !{ptr @.str.132, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 566, i32 1}
!184 = !{ptr @sm6350_ln_bb_clk3, !183, !"sm6350_ln_bb_clk3", i1 false, i1 false}
!185 = !{ptr @sm6350_ln_bb_clk3_ao, !183, !"sm6350_ln_bb_clk3_ao", i1 false, i1 false}
!186 = !{ptr @.str.135, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 567, i32 1}
!188 = !{ptr @.str.138, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @sm6350_qlink, !187, !"sm6350_qlink", i1 false, i1 false}
!190 = !{ptr @.str.139, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @sm6350_qlink_ao, !187, !"sm6350_qlink_ao", i1 false, i1 false}
!192 = !{ptr @clk_rpmh_sm8150, !193, !"clk_rpmh_sm8150", i1 false, i1 false}
!193 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 416, i32 35}
!194 = !{ptr @sm8150_rpmh_clocks, !195, !"sm8150_rpmh_clocks", i1 false, i1 false}
!195 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 401, i32 23}
!196 = !{ptr @clk_rpmh_sm8250, !197, !"clk_rpmh_sm8250", i1 false, i1 false}
!197 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 477, i32 35}
!198 = !{ptr @sm8250_rpmh_clocks, !199, !"sm8250_rpmh_clocks", i1 false, i1 false}
!199 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 462, i32 23}
!200 = !{ptr @sm8250_ln_bb_clk1, !201, !"sm8250_ln_bb_clk1", i1 false, i1 false}
!201 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 460, i32 1}
!202 = !{ptr @sm8250_ln_bb_clk1_ao, !201, !"sm8250_ln_bb_clk1_ao", i1 false, i1 false}
!203 = !{ptr @clk_rpmh_sm8350, !204, !"clk_rpmh_sm8350", i1 false, i1 false}
!204 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 510, i32 35}
!205 = !{ptr @sm8350_rpmh_clocks, !206, !"sm8350_rpmh_clocks", i1 false, i1 false}
!206 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 488, i32 23}
!207 = !{ptr @.str.146, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 482, i32 1}
!209 = !{ptr @.str.149, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @sm8350_div_clk1, !208, !"sm8350_div_clk1", i1 false, i1 false}
!211 = !{ptr @.str.150, !208, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @sm8350_div_clk1_ao, !208, !"sm8350_div_clk1_ao", i1 false, i1 false}
!213 = !{ptr @.str.153, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 484, i32 1}
!215 = !{ptr @.str.156, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @sm8350_rf_clk5, !214, !"sm8350_rf_clk5", i1 false, i1 false}
!217 = !{ptr @.str.157, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @sm8350_rf_clk5_ao, !214, !"sm8350_rf_clk5_ao", i1 false, i1 false}
!219 = !{ptr @.str.160, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 485, i32 1}
!221 = !{ptr @.str.162, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @sm8350_pka, !220, !"sm8350_pka", i1 false, i1 false}
!223 = !{ptr @.str.163, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 486, i32 1}
!225 = !{ptr @.str.165, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @sm8350_hwkm, !224, !"sm8350_hwkm", i1 false, i1 false}
!227 = !{ptr @clk_rpmh_sm8450, !228, !"clk_rpmh_sm8450", i1 false, i1 false}
!228 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 539, i32 35}
!229 = !{ptr @sm8450_rpmh_clocks, !230, !"sm8450_rpmh_clocks", i1 false, i1 false}
!230 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 521, i32 23}
!231 = !{ptr @sm8450_ln_bb_clk2, !232, !"sm8450_ln_bb_clk2", i1 false, i1 false}
!232 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 519, i32 1}
!233 = !{ptr @sm8450_ln_bb_clk2_ao, !232, !"sm8450_ln_bb_clk2_ao", i1 false, i1 false}
!234 = !{ptr @sm8450_ln_bb_clk1, !235, !"sm8450_ln_bb_clk1", i1 false, i1 false}
!235 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 518, i32 1}
!236 = !{ptr @sm8450_ln_bb_clk1_ao, !235, !"sm8450_ln_bb_clk1_ao", i1 false, i1 false}
!237 = !{ptr @clk_rpmh_sc7280, !238, !"clk_rpmh_sc7280", i1 false, i1 false}
!238 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 560, i32 35}
!239 = !{ptr @sc7280_rpmh_clocks, !240, !"sc7280_rpmh_clocks", i1 false, i1 false}
!240 = !{!"../drivers/clk/qcom/clk-rpmh.c", i32 544, i32 23}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"auto-init"}
!251 = !{i64 2148936627, i64 2148936632, i64 2148936645, i64 2148936689, i64 2148936723, i64 2148936744}
