; ModuleID = '/llk/IR_all_yes/drivers/interconnect/qcom/msm8974.c_pt.bc'
source_filename = "../drivers/interconnect/qcom/msm8974.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msm8974_icc_desc = type { ptr, i32 }
%struct.msm8974_icc_node = type { ptr, i16, [3 x i16], i16, i16, i32, i32, i64 }
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
%struct.msm8974_icc_provider = type { %struct.icc_provider, ptr, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.icc_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_qnoc_msm8974__189_775_msm8974_noc_driver_init6 = internal global ptr @msm8974_noc_driver_init, section ".initcall6.init", align 4
@msm8974_noc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msm8974_icc_probe, ptr @msm8974_icc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm8974_noc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_msm8974_noc_driver_exit = internal global ptr @msm8974_noc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description190 = internal constant [53 x i8] c"qnoc_msm8974.description=Qualcomm MSM8974 NoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [57 x i8] c"qnoc_msm8974.author=Brian Masney <masneyb@onstation.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [57 x i8] c"qnoc_msm8974.file=drivers/interconnect/qcom/qnoc-msm8974\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [28 x i8] c"qnoc_msm8974.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnoc-msm8974\00", [19 x i8] zeroinitializer }, align 32
@msm8974_noc_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-bimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8974_bimc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-cnoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8974_cnoc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-mmssnoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8974_mnoc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-ocmemnoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8974_onoc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-pnoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8974_pnoc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-snoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8974_snoc }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@msm8974_icc_bus_clocks = internal constant { [2 x %struct.clk_bulk_data], [16 x i8] } { [2 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.8, ptr null }, %struct.clk_bulk_data { ptr @.str.9, ptr null }], [16 x i8] zeroinitializer }, align 32
@msm8974_icc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error adding interconnect provider: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm8974_icc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/interconnect/qcom/msm8974.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm8974_icc_probe._entry_ptr = internal global ptr @msm8974_icc_probe._entry, section ".printk_index", align 4
@msm8974_icc_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnoc_msm8974\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"registered node %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bus_a\00", [26 x i8] zeroinitializer }, align 32
@msm8974_icc_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s clk_set_rate error: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msm8974_icc_set\00", [16 x i8] zeroinitializer }, align 32
@msm8974_icc_set._entry_ptr = internal global ptr @msm8974_icc_set._entry, section ".printk_index", align 4
@msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msm8974_icc_rpm_smd_send\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot set bandwidth for node %s (%d): %d\0A\00", [53 x i8] zeroinitializer }, align 32
@msm8974_bimc = internal global { %struct.msm8974_icc_desc, [24 x i8] } { %struct.msm8974_icc_desc { ptr @msm8974_bimc_nodes, i32 7 }, [24 x i8] zeroinitializer }, align 32
@msm8974_cnoc = internal global { %struct.msm8974_icc_desc, [24 x i8] } { %struct.msm8974_icc_desc { ptr @msm8974_cnoc_nodes, i32 37 }, [24 x i8] zeroinitializer }, align 32
@msm8974_mnoc = internal global { %struct.msm8974_icc_desc, [24 x i8] } { %struct.msm8974_icc_desc { ptr @msm8974_mnoc_nodes, i32 22 }, [24 x i8] zeroinitializer }, align 32
@msm8974_onoc = internal global { %struct.msm8974_icc_desc, [24 x i8] } { %struct.msm8974_icc_desc { ptr @msm8974_onoc_nodes, i32 12 }, [24 x i8] zeroinitializer }, align 32
@msm8974_pnoc = internal global { %struct.msm8974_icc_desc, [24 x i8] } { %struct.msm8974_icc_desc { ptr @msm8974_pnoc_nodes, i32 27 }, [24 x i8] zeroinitializer }, align 32
@msm8974_snoc = internal global { %struct.msm8974_icc_desc, [24 x i8] } { %struct.msm8974_icc_desc { ptr @msm8974_snoc_nodes, i32 24 }, [24 x i8] zeroinitializer }, align 32
@msm8974_bimc_nodes = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @mas_ampss_m0, ptr @mas_ampss_m1, ptr @mas_mss_proc, ptr @bimc_to_mnoc, ptr @bimc_to_snoc, ptr @slv_ebi_ch0, ptr @slv_ampss_l2], [36 x i8] zeroinitializer }, align 32
@mas_ampss_m0 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.14, i16 1, [3 x i16] zeroinitializer, i16 0, i16 8, i32 0, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_ampss_m1 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.15, i16 2, [3 x i16] zeroinitializer, i16 0, i16 8, i32 0, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_mss_proc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.16, i16 3, [3 x i16] zeroinitializer, i16 0, i16 8, i32 1, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@bimc_to_mnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.17, i16 4, [3 x i16] [i16 6, i16 0, i16 0], i16 1, i16 8, i32 2, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@bimc_to_snoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.18, i16 5, [3 x i16] [i16 109, i16 6, i16 1], i16 3, i16 8, i32 3, i32 2, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ebi_ch0 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.19, i16 6, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 0, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ampss_l2 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.20, i16 7, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_ampss_m0\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_ampss_m1\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_mss_proc\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bimc_to_mnoc\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bimc_to_snoc\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_ebi_ch0\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_ampss_l2\00", [19 x i8] zeroinitializer }, align 32
@msm8974_cnoc_nodes = internal global { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr @mas_rpm_inst, ptr @mas_rpm_data, ptr @mas_rpm_sys, ptr @mas_dehr, ptr @mas_qdss_dap, ptr @mas_spdm, ptr @mas_tic, ptr @slv_clk_ctl, ptr @slv_cnoc_mss, ptr @slv_security, ptr @slv_tcsr, ptr @slv_tlmm, ptr @slv_crypto_0_cfg, ptr @slv_crypto_1_cfg, ptr @slv_imem_cfg, ptr @slv_message_ram, ptr @slv_bimc_cfg, ptr @slv_boot_rom, ptr @slv_pmic_arb, ptr @slv_spdm_wrapper, ptr @slv_dehr_cfg, ptr @slv_mpm, ptr @slv_qdss_cfg, ptr @slv_rbcpr_cfg, ptr @slv_rbcpr_qdss_apu_cfg, ptr @cnoc_to_snoc, ptr @slv_cnoc_onoc_cfg, ptr @slv_cnoc_mnoc_mmss_cfg, ptr @slv_cnoc_mnoc_cfg, ptr @slv_pnoc_cfg, ptr @slv_snoc_mpu_cfg, ptr @slv_snoc_cfg, ptr @slv_ebi1_dll_cfg, ptr @slv_phy_apu_cfg, ptr @slv_ebi1_phy_cfg, ptr @slv_rpm, ptr @slv_service_cnoc], [44 x i8] zeroinitializer }, align 32
@mas_rpm_inst = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.21, i16 8, [3 x i16] zeroinitializer, i16 0, i16 8, i32 45, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_rpm_data = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.22, i16 9, [3 x i16] zeroinitializer, i16 0, i16 8, i32 46, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_rpm_sys = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.23, i16 10, [3 x i16] zeroinitializer, i16 0, i16 8, i32 47, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_dehr = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.24, i16 11, [3 x i16] zeroinitializer, i16 0, i16 8, i32 48, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_qdss_dap = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.25, i16 12, [3 x i16] zeroinitializer, i16 0, i16 8, i32 49, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_spdm = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.26, i16 13, [3 x i16] zeroinitializer, i16 0, i16 8, i32 50, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_tic = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.27, i16 14, [3 x i16] zeroinitializer, i16 0, i16 8, i32 51, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_clk_ctl = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.28, i16 15, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 47, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_cnoc_mss = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.29, i16 16, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 48, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_security = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.30, i16 17, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 49, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_tcsr = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.31, i16 18, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 50, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_tlmm = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.32, i16 19, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 51, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_crypto_0_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.33, i16 20, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 52, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_crypto_1_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.34, i16 21, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 53, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_imem_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.35, i16 22, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 54, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_message_ram = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.36, i16 23, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 55, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_bimc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.37, i16 24, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 56, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_boot_rom = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.38, i16 25, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 57, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_pmic_arb = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.39, i16 26, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 59, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_spdm_wrapper = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.40, i16 27, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 60, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_dehr_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.41, i16 28, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 61, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_mpm = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.42, i16 29, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 62, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_qdss_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.43, i16 30, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 63, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_rbcpr_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.44, i16 31, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 64, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_rbcpr_qdss_apu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.45, i16 32, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 65, i64 0 }, [32 x i8] zeroinitializer }, align 32
@cnoc_to_snoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.46, i16 33, [3 x i16] zeroinitializer, i16 0, i16 8, i32 52, i32 75, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_cnoc_onoc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.47, i16 34, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 68, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_cnoc_mnoc_mmss_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.48, i16 35, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 58, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_cnoc_mnoc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.49, i16 36, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 66, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_pnoc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.50, i16 37, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 69, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_snoc_mpu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.51, i16 38, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 67, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_snoc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.52, i16 39, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 70, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ebi1_dll_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.53, i16 40, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 71, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_phy_apu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.54, i16 41, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 72, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ebi1_phy_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.55, i16 42, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 73, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_rpm = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.56, i16 43, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 74, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_service_cnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.57, i16 44, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 76, i64 0 }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_rpm_inst\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_rpm_data\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_rpm_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mas_dehr\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qdss_dap\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mas_spdm\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mas_tic\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_clk_ctl\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_cnoc_mss\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_security\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slv_tcsr\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slv_tlmm\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_crypto_0_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_crypto_1_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_imem_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_message_ram\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_bimc_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_boot_rom\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_pmic_arb\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_spdm_wrapper\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_dehr_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slv_mpm\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qdss_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_rbcpr_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"slv_rbcpr_qdss_apu_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cnoc_to_snoc\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_cnoc_onoc_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"slv_cnoc_mnoc_mmss_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_cnoc_mnoc_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_pnoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_snoc_mpu_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_snoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_ebi1_dll_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_phy_apu_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_ebi1_phy_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slv_rpm\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_service_cnoc\00", [47 x i8] zeroinitializer }, align 32
@msm8974_mnoc_nodes = internal global { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @mas_graphics_3d, ptr @mas_jpeg, ptr @mas_mdp_port0, ptr @mas_video_p0, ptr @mas_video_p1, ptr @mas_vfe, ptr @mnoc_to_cnoc, ptr @mnoc_to_bimc, ptr @slv_camera_cfg, ptr @slv_display_cfg, ptr @slv_ocmem_cfg, ptr @slv_cpr_cfg, ptr @slv_cpr_xpu_cfg, ptr @slv_misc_cfg, ptr @slv_misc_xpu_cfg, ptr @slv_venus_cfg, ptr @slv_graphics_3d_cfg, ptr @slv_mmss_clk_cfg, ptr @slv_mmss_clk_xpu_cfg, ptr @slv_mnoc_mpu_cfg, ptr @slv_onoc_mpu_cfg, ptr @slv_service_mnoc], [40 x i8] zeroinitializer }, align 32
@mas_graphics_3d = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.58, i16 45, [3 x i16] [i16 52, i16 0, i16 0], i16 1, i16 16, i32 6, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_jpeg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.59, i16 46, [3 x i16] [i16 52, i16 0, i16 0], i16 1, i16 16, i32 7, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_mdp_port0 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.60, i16 47, [3 x i16] [i16 52, i16 0, i16 0], i16 1, i16 16, i32 8, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_video_p0 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.61, i16 48, [3 x i16] zeroinitializer, i16 0, i16 16, i32 9, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_video_p1 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.62, i16 49, [3 x i16] zeroinitializer, i16 0, i16 16, i32 10, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_vfe = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.63, i16 50, [3 x i16] [i16 52, i16 0, i16 0], i16 1, i16 16, i32 11, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mnoc_to_cnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.64, i16 51, [3 x i16] zeroinitializer, i16 0, i16 16, i32 4, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mnoc_to_bimc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.65, i16 52, [3 x i16] [i16 4, i16 0, i16 0], i16 1, i16 16, i32 -1, i32 16, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_camera_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.66, i16 53, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 3, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_display_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.67, i16 54, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 4, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ocmem_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.68, i16 55, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 5, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_cpr_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.69, i16 56, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 6, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_cpr_xpu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.70, i16 57, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 7, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_misc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.71, i16 58, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 8, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_misc_xpu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.72, i16 59, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 9, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_venus_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.73, i16 60, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 10, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_graphics_3d_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.74, i16 61, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 11, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_mmss_clk_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.75, i16 62, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 12, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_mmss_clk_xpu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.76, i16 63, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 13, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_mnoc_mpu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.77, i16 64, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 14, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_onoc_mpu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.78, i16 65, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 15, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_service_mnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.79, i16 66, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 17, i64 0 }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_graphics_3d\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mas_jpeg\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_mdp_port0\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_video_p0\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_video_p1\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mas_vfe\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mnoc_to_cnoc\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mnoc_to_bimc\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_camera_cfg\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_display_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_ocmem_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_cpr_cfg\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_cpr_xpu_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_misc_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_misc_xpu_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_venus_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_graphics_3d_cfg\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_mmss_clk_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slv_mmss_clk_xpu_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_mnoc_mpu_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_onoc_mpu_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_service_mnoc\00", [47 x i8] zeroinitializer }, align 32
@msm8974_onoc_nodes = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @ocmem_noc_to_ocmem_vnoc, ptr @mas_jpeg_ocmem, ptr @mas_mdp_ocmem, ptr @mas_video_p0_ocmem, ptr @mas_video_p1_ocmem, ptr @mas_vfe_ocmem, ptr @mas_cnoc_onoc_cfg, ptr @slv_service_onoc, ptr @ocmem_vnoc_to_snoc, ptr @ocmem_vnoc_to_onoc, ptr @mas_v_ocmem_gfx3d, ptr @slv_ocmem], [48 x i8] zeroinitializer }, align 32
@ocmem_noc_to_ocmem_vnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.80, i16 67, [3 x i16] [i16 78, i16 0, i16 0], i16 1, i16 16, i32 54, i32 78, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_jpeg_ocmem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.81, i16 68, [3 x i16] zeroinitializer, i16 0, i16 16, i32 13, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_mdp_ocmem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.82, i16 69, [3 x i16] zeroinitializer, i16 0, i16 16, i32 14, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_video_p0_ocmem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.83, i16 70, [3 x i16] zeroinitializer, i16 0, i16 16, i32 15, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_video_p1_ocmem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.84, i16 71, [3 x i16] zeroinitializer, i16 0, i16 16, i32 16, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_vfe_ocmem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.85, i16 72, [3 x i16] zeroinitializer, i16 0, i16 16, i32 17, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_cnoc_onoc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.86, i16 73, [3 x i16] zeroinitializer, i16 0, i16 16, i32 12, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_service_onoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.87, i16 74, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 19, i64 0 }, [32 x i8] zeroinitializer }, align 32
@ocmem_vnoc_to_snoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.88, i16 75, [3 x i16] zeroinitializer, i16 0, i16 8, i32 57, i32 80, i64 0 }, [32 x i8] zeroinitializer }, align 32
@ocmem_vnoc_to_onoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.89, i16 76, [3 x i16] [i16 67, i16 0, i16 0], i16 1, i16 16, i32 56, i32 79, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_v_ocmem_gfx3d = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.90, i16 77, [3 x i16] [i16 76, i16 0, i16 0], i16 1, i16 8, i32 55, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ocmem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.91, i16 78, [3 x i16] zeroinitializer, i16 0, i16 16, i32 -1, i32 18, i64 0 }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ocmem_noc_to_ocmem_vnoc\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_jpeg_ocmem\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_mdp_ocmem\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_video_p0_ocmem\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_video_p1_ocmem\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_vfe_ocmem\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mas_cnoc_onoc_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_service_onoc\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ocmem_vnoc_to_snoc\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ocmem_vnoc_to_onoc\00", [45 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mas_v_ocmem_gfx3d\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slv_ocmem\00", [22 x i8] zeroinitializer }, align 32
@msm8974_pnoc_nodes = internal global { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @mas_pnoc_cfg, ptr @mas_sdcc_1, ptr @mas_sdcc_3, ptr @mas_sdcc_4, ptr @mas_sdcc_2, ptr @mas_tsif, ptr @mas_bam_dma, ptr @mas_blsp_2, ptr @mas_usb_hsic, ptr @mas_blsp_1, ptr @mas_usb_hs, ptr @pnoc_to_snoc, ptr @slv_sdcc_1, ptr @slv_sdcc_3, ptr @slv_sdcc_2, ptr @slv_sdcc_4, ptr @slv_tsif, ptr @slv_bam_dma, ptr @slv_blsp_2, ptr @slv_usb_hsic, ptr @slv_blsp_1, ptr @slv_usb_hs, ptr @slv_pdm, ptr @slv_periph_apu_cfg, ptr @slv_pnoc_mpu_cfg, ptr @slv_prng, ptr @slv_service_pnoc], [52 x i8] zeroinitializer }, align 32
@mas_pnoc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.92, i16 79, [3 x i16] zeroinitializer, i16 0, i16 8, i32 43, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_sdcc_1 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.93, i16 80, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 33, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_sdcc_3 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.94, i16 81, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 34, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_sdcc_4 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.95, i16 82, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 36, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_sdcc_2 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.96, i16 83, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 35, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_tsif = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.97, i16 84, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 37, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_bam_dma = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.98, i16 85, [3 x i16] zeroinitializer, i16 0, i16 8, i32 38, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_blsp_2 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.99, i16 86, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 39, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_usb_hsic = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.100, i16 87, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 40, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_blsp_1 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.101, i16 88, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 41, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_usb_hs = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.102, i16 89, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 42, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@pnoc_to_snoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.103, i16 90, [3 x i16] [i16 111, i16 104, i16 0], i16 2, i16 8, i32 44, i32 45, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_sdcc_1 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.104, i16 91, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 31, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_sdcc_3 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.105, i16 92, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 32, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_sdcc_2 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.106, i16 93, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 33, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_sdcc_4 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.107, i16 94, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 34, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_tsif = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.108, i16 95, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 35, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_bam_dma = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.109, i16 96, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 36, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_blsp_2 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.110, i16 97, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 37, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_usb_hsic = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.111, i16 98, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 38, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_blsp_1 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.112, i16 99, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 39, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_usb_hs = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.113, i16 100, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 40, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_pdm = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.114, i16 101, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 41, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_periph_apu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.115, i16 102, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 42, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_pnoc_mpu_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.116, i16 103, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 43, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_prng = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.117, i16 104, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 -1, i32 44, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_service_pnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.118, i16 105, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 46, i64 0 }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_pnoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_sdcc_1\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_sdcc_3\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_sdcc_4\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_sdcc_2\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mas_tsif\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_bam_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_blsp_2\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_usb_hsic\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_blsp_1\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_usb_hs\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pnoc_to_snoc\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_sdcc_1\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_sdcc_3\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_sdcc_2\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_sdcc_4\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slv_tsif\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_bam_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_blsp_2\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_usb_hsic\00", [19 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_blsp_1\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_usb_hs\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slv_pdm\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_periph_apu_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_pnoc_mpu_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slv_prng\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_service_pnoc\00", [47 x i8] zeroinitializer }, align 32
@msm8974_snoc_nodes = internal global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @mas_lpass_ahb, ptr @mas_qdss_bam, ptr @mas_snoc_cfg, ptr @snoc_to_bimc, ptr @snoc_to_cnoc, ptr @snoc_to_pnoc, ptr @snoc_to_ocmem_vnoc, ptr @mas_crypto_core0, ptr @mas_crypto_core1, ptr @mas_lpass_proc, ptr @mas_mss, ptr @mas_mss_nav, ptr @mas_ocmem_dma, ptr @mas_wcss, ptr @mas_qdss_etr, ptr @mas_usb3, ptr @slv_ampss, ptr @slv_lpass, ptr @slv_usb3, ptr @slv_wcss, ptr @slv_ocimem, ptr @slv_snoc_ocmem, ptr @slv_service_snoc, ptr @slv_qdss_stm], [32 x i8] zeroinitializer }, align 32
@mas_lpass_ahb = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.119, i16 106, [3 x i16] zeroinitializer, i16 0, i16 8, i32 18, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_qdss_bam = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.120, i16 107, [3 x i16] zeroinitializer, i16 0, i16 8, i32 19, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_snoc_cfg = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.121, i16 108, [3 x i16] zeroinitializer, i16 0, i16 8, i32 20, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@snoc_to_bimc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.122, i16 109, [3 x i16] [i16 5, i16 0, i16 0], i16 1, i16 8, i32 21, i32 24, i64 0 }, [32 x i8] zeroinitializer }, align 32
@snoc_to_cnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.123, i16 110, [3 x i16] zeroinitializer, i16 0, i16 8, i32 22, i32 25, i64 0 }, [32 x i8] zeroinitializer }, align 32
@snoc_to_pnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.124, i16 111, [3 x i16] [i16 90, i16 0, i16 0], i16 1, i16 8, i32 29, i32 28, i64 0 }, [32 x i8] zeroinitializer }, align 32
@snoc_to_ocmem_vnoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.125, i16 112, [3 x i16] [i16 76, i16 0, i16 0], i16 1, i16 8, i32 53, i32 77, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_crypto_core0 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.126, i16 113, [3 x i16] [i16 109, i16 0, i16 0], i16 1, i16 8, i32 23, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_crypto_core1 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.127, i16 114, [3 x i16] zeroinitializer, i16 0, i16 8, i32 24, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_lpass_proc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.128, i16 115, [3 x i16] [i16 112, i16 0, i16 0], i16 1, i16 8, i32 25, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_mss = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.129, i16 116, [3 x i16] zeroinitializer, i16 0, i16 8, i32 26, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_mss_nav = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.130, i16 117, [3 x i16] zeroinitializer, i16 0, i16 8, i32 27, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_ocmem_dma = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.131, i16 118, [3 x i16] zeroinitializer, i16 0, i16 8, i32 28, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_wcss = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.132, i16 119, [3 x i16] zeroinitializer, i16 0, i16 8, i32 30, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_qdss_etr = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.133, i16 120, [3 x i16] zeroinitializer, i16 0, i16 8, i32 31, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@mas_usb3 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.134, i16 121, [3 x i16] [i16 109, i16 0, i16 0], i16 1, i16 8, i32 32, i32 -1, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ampss = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.135, i16 122, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 20, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_lpass = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.136, i16 123, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 21, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_usb3 = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.137, i16 124, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 22, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_wcss = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.138, i16 125, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 23, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_ocimem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.139, i16 126, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 26, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_snoc_ocmem = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.140, i16 127, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 27, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_service_snoc = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.141, i16 128, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 29, i64 0 }, [32 x i8] zeroinitializer }, align 32
@slv_qdss_stm = internal global { %struct.msm8974_icc_node, [32 x i8] } { %struct.msm8974_icc_node { ptr @.str.142, i16 129, [3 x i16] zeroinitializer, i16 0, i16 8, i32 -1, i32 30, i64 0 }, [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_lpass_ahb\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qdss_bam\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_snoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snoc_to_bimc\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snoc_to_cnoc\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snoc_to_pnoc\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snoc_to_ocmem_vnoc\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mas_crypto_core0\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mas_crypto_core1\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_lpass_proc\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mas_mss\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_mss_nav\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_ocmem_dma\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mas_wcss\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qdss_etr\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mas_usb3\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slv_ampss\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slv_lpass\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slv_usb3\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slv_wcss\00", [23 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slv_ocimem\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_snoc_ocmem\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_service_snoc\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qdss_stm\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"msm8974_noc_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 766, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 770, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"msm8974_noc_of_match\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 755, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant [23 x i8] c"msm8974_icc_bus_clocks\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 181, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 705, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 722, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 182, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 183, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 629, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 577, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [13 x i8] c"msm8974_bimc\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 257, i32 32 }
@___asan_gen_.203 = private unnamed_addr constant [13 x i8] c"msm8974_cnoc\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 340, i32 32 }
@___asan_gen_.206 = private unnamed_addr constant [13 x i8] c"msm8974_mnoc\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 393, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant [13 x i8] c"msm8974_onoc\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 428, i32 32 }
@___asan_gen_.212 = private unnamed_addr constant [13 x i8] c"msm8974_pnoc\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 491, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant [13 x i8] c"msm8974_snoc\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 548, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"msm8974_bimc_nodes\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 247, i32 33 }
@___asan_gen_.221 = private unnamed_addr constant [13 x i8] c"mas_ampss_m0\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [13 x i8] c"mas_ampss_m1\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [13 x i8] c"mas_mss_proc\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [13 x i8] c"bimc_to_mnoc\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [13 x i8] c"bimc_to_snoc\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"slv_ebi_ch0\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [13 x i8] c"slv_ampss_l2\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 239, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 240, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 241, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 242, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 243, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 244, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 245, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant [19 x i8] c"msm8974_cnoc_nodes\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 300, i32 33 }
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"mas_rpm_inst\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [13 x i8] c"mas_rpm_data\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [12 x i8] c"mas_rpm_sys\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [9 x i8] c"mas_dehr\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [13 x i8] c"mas_qdss_dap\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [9 x i8] c"mas_spdm\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [8 x i8] c"mas_tic\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [12 x i8] c"slv_clk_ctl\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [13 x i8] c"slv_cnoc_mss\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [13 x i8] c"slv_security\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [9 x i8] c"slv_tcsr\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [9 x i8] c"slv_tlmm\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"slv_crypto_0_cfg\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"slv_crypto_1_cfg\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [13 x i8] c"slv_imem_cfg\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [16 x i8] c"slv_message_ram\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [13 x i8] c"slv_bimc_cfg\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [13 x i8] c"slv_boot_rom\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [13 x i8] c"slv_pmic_arb\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"slv_spdm_wrapper\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [13 x i8] c"slv_dehr_cfg\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [8 x i8] c"slv_mpm\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [13 x i8] c"slv_qdss_cfg\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [14 x i8] c"slv_rbcpr_cfg\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [23 x i8] c"slv_rbcpr_qdss_apu_cfg\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [13 x i8] c"cnoc_to_snoc\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [18 x i8] c"slv_cnoc_onoc_cfg\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [23 x i8] c"slv_cnoc_mnoc_mmss_cfg\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [18 x i8] c"slv_cnoc_mnoc_cfg\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [13 x i8] c"slv_pnoc_cfg\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"slv_snoc_mpu_cfg\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [13 x i8] c"slv_snoc_cfg\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"slv_ebi1_dll_cfg\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [16 x i8] c"slv_phy_apu_cfg\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"slv_ebi1_phy_cfg\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [8 x i8] c"slv_rpm\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"slv_service_cnoc\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 262, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 263, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 264, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 265, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 266, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 267, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 268, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 269, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 270, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 271, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 272, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 273, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 274, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 275, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 276, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 277, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 278, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 279, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 280, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 281, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 282, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 283, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 284, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 285, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 286, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 287, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 288, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 289, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 290, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 291, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 292, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 293, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 294, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 295, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 296, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 297, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 298, i32 1 }
@___asan_gen_.488 = private unnamed_addr constant [19 x i8] c"msm8974_mnoc_nodes\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 368, i32 33 }
@___asan_gen_.491 = private unnamed_addr constant [16 x i8] c"mas_graphics_3d\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [9 x i8] c"mas_jpeg\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [14 x i8] c"mas_mdp_port0\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [13 x i8] c"mas_video_p0\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [13 x i8] c"mas_video_p1\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [8 x i8] c"mas_vfe\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [13 x i8] c"mnoc_to_cnoc\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [13 x i8] c"mnoc_to_bimc\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [15 x i8] c"slv_camera_cfg\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [16 x i8] c"slv_display_cfg\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [14 x i8] c"slv_ocmem_cfg\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [12 x i8] c"slv_cpr_cfg\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [16 x i8] c"slv_cpr_xpu_cfg\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [13 x i8] c"slv_misc_cfg\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [17 x i8] c"slv_misc_xpu_cfg\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [14 x i8] c"slv_venus_cfg\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c"slv_graphics_3d_cfg\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"slv_mmss_clk_cfg\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [21 x i8] c"slv_mmss_clk_xpu_cfg\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"slv_mnoc_mpu_cfg\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [17 x i8] c"slv_onoc_mpu_cfg\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [17 x i8] c"slv_service_mnoc\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 345, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 346, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 347, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 348, i32 1 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 349, i32 1 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 350, i32 1 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 351, i32 1 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 352, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 353, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 354, i32 1 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 355, i32 1 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 356, i32 1 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 357, i32 1 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 358, i32 1 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 359, i32 1 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 360, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 361, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 362, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 363, i32 1 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 364, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 365, i32 1 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 366, i32 1 }
@___asan_gen_.623 = private unnamed_addr constant [19 x i8] c"msm8974_onoc_nodes\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 413, i32 33 }
@___asan_gen_.626 = private unnamed_addr constant [24 x i8] c"ocmem_noc_to_ocmem_vnoc\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [15 x i8] c"mas_jpeg_ocmem\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [14 x i8] c"mas_mdp_ocmem\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [19 x i8] c"mas_video_p0_ocmem\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [19 x i8] c"mas_video_p1_ocmem\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [14 x i8] c"mas_vfe_ocmem\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [18 x i8] c"mas_cnoc_onoc_cfg\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [17 x i8] c"slv_service_onoc\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [19 x i8] c"ocmem_vnoc_to_snoc\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [19 x i8] c"ocmem_vnoc_to_onoc\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [18 x i8] c"mas_v_ocmem_gfx3d\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [10 x i8] c"slv_ocmem\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 398, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 399, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 400, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 401, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 402, i32 1 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 403, i32 1 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 404, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 405, i32 1 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 410, i32 1 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 409, i32 1 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 411, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 406, i32 1 }
@___asan_gen_.698 = private unnamed_addr constant [19 x i8] c"msm8974_pnoc_nodes\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 461, i32 33 }
@___asan_gen_.701 = private unnamed_addr constant [13 x i8] c"mas_pnoc_cfg\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [11 x i8] c"mas_sdcc_1\00", align 1
@___asan_gen_.707 = private unnamed_addr constant [11 x i8] c"mas_sdcc_3\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [11 x i8] c"mas_sdcc_4\00", align 1
@___asan_gen_.713 = private unnamed_addr constant [11 x i8] c"mas_sdcc_2\00", align 1
@___asan_gen_.716 = private unnamed_addr constant [9 x i8] c"mas_tsif\00", align 1
@___asan_gen_.719 = private unnamed_addr constant [12 x i8] c"mas_bam_dma\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [11 x i8] c"mas_blsp_2\00", align 1
@___asan_gen_.725 = private unnamed_addr constant [13 x i8] c"mas_usb_hsic\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [11 x i8] c"mas_blsp_1\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [11 x i8] c"mas_usb_hs\00", align 1
@___asan_gen_.734 = private unnamed_addr constant [13 x i8] c"pnoc_to_snoc\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [11 x i8] c"slv_sdcc_1\00", align 1
@___asan_gen_.740 = private unnamed_addr constant [11 x i8] c"slv_sdcc_3\00", align 1
@___asan_gen_.743 = private unnamed_addr constant [11 x i8] c"slv_sdcc_2\00", align 1
@___asan_gen_.746 = private unnamed_addr constant [11 x i8] c"slv_sdcc_4\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [9 x i8] c"slv_tsif\00", align 1
@___asan_gen_.752 = private unnamed_addr constant [12 x i8] c"slv_bam_dma\00", align 1
@___asan_gen_.755 = private unnamed_addr constant [11 x i8] c"slv_blsp_2\00", align 1
@___asan_gen_.758 = private unnamed_addr constant [13 x i8] c"slv_usb_hsic\00", align 1
@___asan_gen_.761 = private unnamed_addr constant [11 x i8] c"slv_blsp_1\00", align 1
@___asan_gen_.764 = private unnamed_addr constant [11 x i8] c"slv_usb_hs\00", align 1
@___asan_gen_.767 = private unnamed_addr constant [8 x i8] c"slv_pdm\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [19 x i8] c"slv_periph_apu_cfg\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [17 x i8] c"slv_pnoc_mpu_cfg\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [9 x i8] c"slv_prng\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [17 x i8] c"slv_service_pnoc\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 433, i32 1 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 434, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 435, i32 1 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 436, i32 1 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 437, i32 1 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 438, i32 1 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 439, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 440, i32 1 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 441, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 442, i32 1 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 443, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 444, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 445, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 446, i32 1 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 447, i32 1 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 448, i32 1 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 449, i32 1 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 450, i32 1 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 451, i32 1 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 452, i32 1 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 453, i32 1 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 454, i32 1 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 455, i32 1 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 456, i32 1 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 457, i32 1 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 458, i32 1 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 459, i32 1 }
@___asan_gen_.863 = private unnamed_addr constant [19 x i8] c"msm8974_snoc_nodes\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 521, i32 33 }
@___asan_gen_.866 = private unnamed_addr constant [14 x i8] c"mas_lpass_ahb\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [13 x i8] c"mas_qdss_bam\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [13 x i8] c"mas_snoc_cfg\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [13 x i8] c"snoc_to_bimc\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [13 x i8] c"snoc_to_cnoc\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [13 x i8] c"snoc_to_pnoc\00", align 1
@___asan_gen_.884 = private unnamed_addr constant [19 x i8] c"snoc_to_ocmem_vnoc\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [17 x i8] c"mas_crypto_core0\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [17 x i8] c"mas_crypto_core1\00", align 1
@___asan_gen_.893 = private unnamed_addr constant [15 x i8] c"mas_lpass_proc\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [8 x i8] c"mas_mss\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [12 x i8] c"mas_mss_nav\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [14 x i8] c"mas_ocmem_dma\00", align 1
@___asan_gen_.905 = private unnamed_addr constant [9 x i8] c"mas_wcss\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [13 x i8] c"mas_qdss_etr\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [9 x i8] c"mas_usb3\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [10 x i8] c"slv_ampss\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [10 x i8] c"slv_lpass\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [9 x i8] c"slv_usb3\00", align 1
@___asan_gen_.923 = private unnamed_addr constant [9 x i8] c"slv_wcss\00", align 1
@___asan_gen_.926 = private unnamed_addr constant [11 x i8] c"slv_ocimem\00", align 1
@___asan_gen_.929 = private unnamed_addr constant [15 x i8] c"slv_snoc_ocmem\00", align 1
@___asan_gen_.932 = private unnamed_addr constant [17 x i8] c"slv_service_snoc\00", align 1
@___asan_gen_.935 = private unnamed_addr constant [13 x i8] c"slv_qdss_stm\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 496, i32 1 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 497, i32 1 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 498, i32 1 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 499, i32 1 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 500, i32 1 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 501, i32 1 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 502, i32 1 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 503, i32 1 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 504, i32 1 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 505, i32 1 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 506, i32 1 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 507, i32 1 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 508, i32 1 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 509, i32 1 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 510, i32 1 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 511, i32 1 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 512, i32 1 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 513, i32 1 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 514, i32 1 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 515, i32 1 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 516, i32 1 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 517, i32 1 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 518, i32 1 }
@___asan_gen_.1007 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1008 = private constant [39 x i8] c"../drivers/interconnect/qcom/msm8974.c\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1008, i32 519, i32 1 }
@llvm.compiler.used = appending global [298 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_msm8974_noc_driver_exit, ptr @__initcall__kmod_qnoc_msm8974__189_775_msm8974_noc_driver_init6, ptr @msm8974_icc_probe._entry, ptr @msm8974_icc_probe._entry_ptr, ptr @msm8974_icc_set._entry, ptr @msm8974_icc_set._entry_ptr, ptr @msm8974_noc_driver_exit, ptr @msm8974_noc_driver, ptr @.str, ptr @msm8974_noc_of_match, ptr @msm8974_icc_bus_clocks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @msm8974_bimc, ptr @msm8974_cnoc, ptr @msm8974_mnoc, ptr @msm8974_onoc, ptr @msm8974_pnoc, ptr @msm8974_snoc, ptr @msm8974_bimc_nodes, ptr @mas_ampss_m0, ptr @mas_ampss_m1, ptr @mas_mss_proc, ptr @bimc_to_mnoc, ptr @bimc_to_snoc, ptr @slv_ebi_ch0, ptr @slv_ampss_l2, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @msm8974_cnoc_nodes, ptr @mas_rpm_inst, ptr @mas_rpm_data, ptr @mas_rpm_sys, ptr @mas_dehr, ptr @mas_qdss_dap, ptr @mas_spdm, ptr @mas_tic, ptr @slv_clk_ctl, ptr @slv_cnoc_mss, ptr @slv_security, ptr @slv_tcsr, ptr @slv_tlmm, ptr @slv_crypto_0_cfg, ptr @slv_crypto_1_cfg, ptr @slv_imem_cfg, ptr @slv_message_ram, ptr @slv_bimc_cfg, ptr @slv_boot_rom, ptr @slv_pmic_arb, ptr @slv_spdm_wrapper, ptr @slv_dehr_cfg, ptr @slv_mpm, ptr @slv_qdss_cfg, ptr @slv_rbcpr_cfg, ptr @slv_rbcpr_qdss_apu_cfg, ptr @cnoc_to_snoc, ptr @slv_cnoc_onoc_cfg, ptr @slv_cnoc_mnoc_mmss_cfg, ptr @slv_cnoc_mnoc_cfg, ptr @slv_pnoc_cfg, ptr @slv_snoc_mpu_cfg, ptr @slv_snoc_cfg, ptr @slv_ebi1_dll_cfg, ptr @slv_phy_apu_cfg, ptr @slv_ebi1_phy_cfg, ptr @slv_rpm, ptr @slv_service_cnoc, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @msm8974_mnoc_nodes, ptr @mas_graphics_3d, ptr @mas_jpeg, ptr @mas_mdp_port0, ptr @mas_video_p0, ptr @mas_video_p1, ptr @mas_vfe, ptr @mnoc_to_cnoc, ptr @mnoc_to_bimc, ptr @slv_camera_cfg, ptr @slv_display_cfg, ptr @slv_ocmem_cfg, ptr @slv_cpr_cfg, ptr @slv_cpr_xpu_cfg, ptr @slv_misc_cfg, ptr @slv_misc_xpu_cfg, ptr @slv_venus_cfg, ptr @slv_graphics_3d_cfg, ptr @slv_mmss_clk_cfg, ptr @slv_mmss_clk_xpu_cfg, ptr @slv_mnoc_mpu_cfg, ptr @slv_onoc_mpu_cfg, ptr @slv_service_mnoc, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @msm8974_onoc_nodes, ptr @ocmem_noc_to_ocmem_vnoc, ptr @mas_jpeg_ocmem, ptr @mas_mdp_ocmem, ptr @mas_video_p0_ocmem, ptr @mas_video_p1_ocmem, ptr @mas_vfe_ocmem, ptr @mas_cnoc_onoc_cfg, ptr @slv_service_onoc, ptr @ocmem_vnoc_to_snoc, ptr @ocmem_vnoc_to_onoc, ptr @mas_v_ocmem_gfx3d, ptr @slv_ocmem, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @msm8974_pnoc_nodes, ptr @mas_pnoc_cfg, ptr @mas_sdcc_1, ptr @mas_sdcc_3, ptr @mas_sdcc_4, ptr @mas_sdcc_2, ptr @mas_tsif, ptr @mas_bam_dma, ptr @mas_blsp_2, ptr @mas_usb_hsic, ptr @mas_blsp_1, ptr @mas_usb_hs, ptr @pnoc_to_snoc, ptr @slv_sdcc_1, ptr @slv_sdcc_3, ptr @slv_sdcc_2, ptr @slv_sdcc_4, ptr @slv_tsif, ptr @slv_bam_dma, ptr @slv_blsp_2, ptr @slv_usb_hsic, ptr @slv_blsp_1, ptr @slv_usb_hs, ptr @slv_pdm, ptr @slv_periph_apu_cfg, ptr @slv_pnoc_mpu_cfg, ptr @slv_prng, ptr @slv_service_pnoc, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @msm8974_snoc_nodes, ptr @mas_lpass_ahb, ptr @mas_qdss_bam, ptr @mas_snoc_cfg, ptr @snoc_to_bimc, ptr @snoc_to_cnoc, ptr @snoc_to_pnoc, ptr @snoc_to_ocmem_vnoc, ptr @mas_crypto_core0, ptr @mas_crypto_core1, ptr @mas_lpass_proc, ptr @mas_mss, ptr @mas_mss_nav, ptr @mas_ocmem_dma, ptr @mas_wcss, ptr @mas_qdss_etr, ptr @mas_usb3, ptr @slv_ampss, ptr @slv_lpass, ptr @slv_usb3, ptr @slv_wcss, ptr @slv_ocimem, ptr @slv_snoc_ocmem, ptr @slv_service_snoc, ptr @slv_qdss_stm, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], section "llvm.metadata"
@0 = internal global [289 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_noc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_noc_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_icc_bus_clocks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_icc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_icc_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_bimc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cnoc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_mnoc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_onoc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_pnoc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_snoc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_bimc_nodes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_ampss_m0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_ampss_m1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_mss_proc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bimc_to_mnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bimc_to_snoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ebi_ch0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ampss_l2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_cnoc_nodes to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_rpm_inst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_rpm_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_rpm_sys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_dehr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qdss_dap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_spdm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_tic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_clk_ctl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_cnoc_mss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_security to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_tcsr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_tlmm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_crypto_0_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_crypto_1_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_imem_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_message_ram to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_bimc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_boot_rom to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_pmic_arb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_spdm_wrapper to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_dehr_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_mpm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qdss_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_rbcpr_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_rbcpr_qdss_apu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnoc_to_snoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_cnoc_onoc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_cnoc_mnoc_mmss_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_cnoc_mnoc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_pnoc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_snoc_mpu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_snoc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ebi1_dll_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_phy_apu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ebi1_phy_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_rpm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_service_cnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_mnoc_nodes to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_graphics_3d to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_jpeg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_mdp_port0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_video_p0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_video_p1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_vfe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnoc_to_cnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnoc_to_bimc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_camera_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_display_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ocmem_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_cpr_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_cpr_xpu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_misc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_misc_xpu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_venus_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_graphics_3d_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_mmss_clk_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_mmss_clk_xpu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_mnoc_mpu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_onoc_mpu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_service_mnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_onoc_nodes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_noc_to_ocmem_vnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_jpeg_ocmem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_mdp_ocmem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_video_p0_ocmem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_video_p1_ocmem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_vfe_ocmem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_cnoc_onoc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_service_onoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_vnoc_to_snoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocmem_vnoc_to_onoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_v_ocmem_gfx3d to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ocmem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_pnoc_nodes to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_pnoc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_sdcc_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_sdcc_3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_sdcc_4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_sdcc_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_tsif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_bam_dma to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_blsp_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_usb_hsic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_blsp_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_usb_hs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnoc_to_snoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_sdcc_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_sdcc_3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_sdcc_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_sdcc_4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_tsif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_bam_dma to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_blsp_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_usb_hsic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_blsp_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_usb_hs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_pdm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_periph_apu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_pnoc_mpu_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_prng to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_service_pnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8974_snoc_nodes to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_lpass_ahb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qdss_bam to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_snoc_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoc_to_bimc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoc_to_cnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoc_to_pnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snoc_to_ocmem_vnoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_crypto_core0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_crypto_core1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_lpass_proc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_mss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_mss_nav to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_ocmem_dma to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_wcss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qdss_etr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_usb3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ampss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_lpass to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_usb3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_wcss to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ocimem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_snoc_ocmem to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_service_snoc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qdss_stm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm8974_noc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm8974_noc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msm8974_noc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm8974_noc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm8974_icc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call zeroext i1 @qcom_icc_rpm_smd_available() #7
  br i1 %call, label %if.end, label %entry.cleanup79_crit_edge

entry.cleanup79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup79_crit_edge, label %if.end4

if.end.cleanup79_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call2, align 4
  %num_nodes5 = getelementptr inbounds %struct.msm8974_icc_desc, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %num_nodes5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_nodes5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup79_crit_edge, label %if.end9

if.end4.cleanup79_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end9:                                          ; preds = %if.end4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #7
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 4) #7
  %retval.0.i152 = select i1 %5, i32 -1, i32 %spec.select.i
  %call.i153 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i152, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i153, null
  br i1 %tobool12.not, label %if.end9.cleanup79_crit_edge, label %if.end14

if.end9.cleanup79_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @msm8974_icc_bus_clocks, i32 noundef 16, i32 noundef 3264) #7
  %bus_clks = getelementptr inbounds %struct.msm8974_icc_provider, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %bus_clks to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %bus_clks, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end14.cleanup79_crit_edge, label %if.end19

if.end14.cleanup79_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end19:                                         ; preds = %if.end14
  %num_clks = getelementptr inbounds %struct.msm8974_icc_provider, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_clks, align 4
  %call22 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull %call15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup79_crit_edge

if.end19.cleanup79_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end25:                                         ; preds = %if.end19
  %9 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_clks, align 4
  %11 = ptrtoint ptr %bus_clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus_clks, align 4
  %call.i154 = tail call i32 @clk_bulk_prepare(i32 noundef %10, ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.cleanup79_crit_edge

if.end25.cleanup79_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup79

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %10, ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end31, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_bulk_unprepare(i32 noundef %10, ptr noundef %12) #7
  br label %cleanup79

if.end31:                                         ; preds = %if.end.i
  %nodes33 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %nodes33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %nodes33, ptr %nodes33, align 4
  %prev.i = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %nodes33, ptr %prev.i, align 4
  %dev34 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %dev34, align 4
  %set = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @msm8974_icc_set, ptr %set, align 4
  %aggregate = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %aggregate to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @icc_std_aggregate, ptr %aggregate, align 4
  %xlate = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @of_icc_xlate_onecell, ptr %xlate, align 4
  %data35 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 11
  %19 = ptrtoint ptr %data35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i153, ptr %data35, align 4
  %get_bw = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %get_bw to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @msm8974_get_bw, ptr %get_bw, align 4
  %call36 = tail call i32 @icc_provider_add(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp167.not = icmp eq i32 %3, 0
  br i1 %cmp167.not, label %for.cond.preheader.for.end73_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end73_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call36) #10
  br label %err_disable_clks

for.body:                                         ; preds = %for.inc71.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0168 = phi i32 [ %inc72, %for.inc71.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.0168
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.msm8974_icc_node, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id, align 4
  %conv = zext i16 %24 to i32
  %call40 = tail call ptr @icc_node_create(i32 noundef %conv) #7
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err_del_icc, label %if.end44

if.end44:                                         ; preds = %for.body
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %name46 = getelementptr inbounds %struct.icc_node, ptr %call40, i32 0, i32 1
  %29 = ptrtoint ptr %name46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %name46, align 4
  %30 = load ptr, ptr %arrayidx, align 4
  %data48 = getelementptr inbounds %struct.icc_node, ptr %call40, i32 0, i32 14
  %31 = ptrtoint ptr %data48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %data48, align 4
  tail call void @icc_node_add(ptr noundef %call40, ptr noundef nonnull %call.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm8974_icc_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm8974_icc_probe, %if.then54)) #7
          to label %do.end58 [label %if.then54], !srcloc !463

if.then54:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msm8974_icc_probe.__UNIQUE_ID_ddebug188, ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %33) #7
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %if.end44
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %num_links163 = getelementptr inbounds %struct.msm8974_icc_node, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %num_links163 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_links163, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp62165.not = icmp eq i16 %37, 0
  br i1 %cmp62165.not, label %do.end58.for.inc71_crit_edge, label %do.end58.for.body64_crit_edge

do.end58.for.body64_crit_edge:                    ; preds = %do.end58
  br label %for.body64

do.end58.for.inc71_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %do.end58.for.body64_crit_edge
  %38 = phi ptr [ %42, %for.body64.for.body64_crit_edge ], [ %35, %do.end58.for.body64_crit_edge ]
  %j.0166 = phi i32 [ %inc, %for.body64.for.body64_crit_edge ], [ 0, %do.end58.for.body64_crit_edge ]
  %arrayidx66 = getelementptr %struct.msm8974_icc_node, ptr %38, i32 0, i32 2, i32 %j.0166
  %39 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx66, align 2
  %conv67 = zext i16 %40 to i32
  %call68 = tail call i32 @icc_link_create(ptr noundef %call40, i32 noundef %conv67) #7
  %inc = add nuw nsw i32 %j.0166, 1
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %num_links = getelementptr inbounds %struct.msm8974_icc_node, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %num_links to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_links, align 4
  %conv61 = zext i16 %44 to i32
  %cmp62 = icmp ult i32 %inc, %conv61
  br i1 %cmp62, label %for.body64.for.body64_crit_edge, label %for.body64.for.inc71_crit_edge

for.body64.for.inc71_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc71

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64

for.inc71:                                        ; preds = %for.body64.for.inc71_crit_edge, %do.end58.for.inc71_crit_edge
  %arrayidx70 = getelementptr %struct.icc_onecell_data, ptr %call.i153, i32 0, i32 1, i32 %i.0168
  %45 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call40, ptr %arrayidx70, align 4
  %inc72 = add nuw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc72, %3
  br i1 %exitcond.not, label %for.inc71.for.end73_crit_edge, label %for.inc71.for.body_crit_edge

for.inc71.for.body_crit_edge:                     ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc71.for.end73_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.end73:                                        ; preds = %for.inc71.for.end73_crit_edge, %for.cond.preheader.for.end73_crit_edge
  %46 = ptrtoint ptr %call.i153 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %3, ptr %call.i153, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup79

err_del_icc:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %call40 to i32
  %call75 = tail call i32 @icc_nodes_remove(ptr noundef nonnull %call.i) #7
  %call76 = tail call i32 @icc_provider_del(ptr noundef nonnull %call.i) #7
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %err_del_icc, %do.end
  %ret.2 = phi i32 [ %call36, %do.end ], [ %48, %err_del_icc ]
  %49 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_clks, align 4
  %51 = ptrtoint ptr %bus_clks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %50, ptr noundef %52) #7
  tail call void @clk_bulk_unprepare(i32 noundef %50, ptr noundef %52) #7
  br label %cleanup79

cleanup79:                                        ; preds = %err_disable_clks, %for.end73, %if.then3.i, %if.end25.cleanup79_crit_edge, %if.end19.cleanup79_crit_edge, %if.end14.cleanup79_crit_edge, %if.end9.cleanup79_crit_edge, %if.end4.cleanup79_crit_edge, %if.end.cleanup79_crit_edge, %entry.cleanup79_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_disable_clks ], [ 0, %for.end73 ], [ -517, %entry.cleanup79_crit_edge ], [ -22, %if.end.cleanup79_crit_edge ], [ -12, %if.end4.cleanup79_crit_edge ], [ -12, %if.end9.cleanup79_crit_edge ], [ -12, %if.end14.cleanup79_crit_edge ], [ %call22, %if.end19.cleanup79_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i154, %if.end25.cleanup79_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm8974_icc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @icc_nodes_remove(ptr noundef %1) #7
  %num_clks = getelementptr inbounds %struct.msm8974_icc_provider, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %bus_clks = getelementptr inbounds %struct.msm8974_icc_provider, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #7
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #7
  %call3 = tail call i32 @icc_provider_del(ptr noundef %1) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_icc_rpm_smd_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm8974_icc_set(ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) #2 align 64 {
entry:
  %agg_avg = alloca i32, align 4
  %agg_peak = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg_avg) #7
  %0 = ptrtoint ptr %agg_avg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %agg_avg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg_peak) #7
  %1 = ptrtoint ptr %agg_peak to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %agg_peak, align 4
  %data = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.icc_node, ptr %dst, i32 0, i32 14
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %provider2 = getelementptr inbounds %struct.icc_node, ptr %src, i32 0, i32 4
  %6 = ptrtoint ptr %provider2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %provider2, align 4
  %nodes = getelementptr inbounds %struct.icc_provider, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn424 = load ptr, ptr %nodes, align 4
  %cmp.not425 = icmp eq ptr %.pn424, %nodes
  br i1 %cmp.not425, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %aggregate = getelementptr inbounds %struct.icc_provider, ptr %7, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn426 = phi ptr [ %.pn424, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %n.0 = getelementptr i8, ptr %.pn426, i32 -20
  %9 = ptrtoint ptr %aggregate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aggregate, align 4
  %avg_bw = getelementptr i8, ptr %.pn426, i32 28
  %11 = ptrtoint ptr %avg_bw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %avg_bw, align 4
  %peak_bw = getelementptr i8, ptr %.pn426, i32 32
  %13 = ptrtoint ptr %peak_bw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %peak_bw, align 4
  %call = call i32 %10(ptr noundef %n.0, i32 noundef 0, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %agg_avg, ptr noundef nonnull %agg_peak) #7
  %15 = ptrtoint ptr %.pn426 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn426, align 4
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %16 = ptrtoint ptr %agg_avg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %agg_avg, align 4
  %conv = zext i32 %17 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %18 = ptrtoint ptr %agg_peak to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %agg_peak, align 4
  %conv12 = zext i32 %19 to i64
  %mul13 = mul nuw nsw i64 %conv12, 1000
  %dev = getelementptr inbounds %struct.icc_provider, ptr %7, i32 0, i32 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %mas_rpm_id = getelementptr inbounds %struct.msm8974_icc_node, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %mas_rpm_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mas_rpm_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i = icmp eq i32 %25, -1
  br i1 %cmp.i, label %for.end.msm8974_icc_rpm_smd_send.exit_crit_edge, label %if.end.i

for.end.msm8974_icc_rpm_smd_send.exit_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit

if.end.i:                                         ; preds = %for.end
  %conv.i = trunc i64 %mul to i32
  %call.i = call i32 @qcom_icc_rpm_smd_send(i32 noundef 0, i32 noundef 1935764834, i32 noundef %25, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.msm8974_icc_rpm_smd_send.exit_crit_edge, label %do.body.i

if.end.i.msm8974_icc_rpm_smd_send.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm8974_icc_set, %if.then6.i)) #7
          to label %msm8974_icc_rpm_smd_send.exit [label %if.then6.i], !srcloc !463

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, ptr noundef %21, ptr noundef nonnull @.str.13, ptr noundef %23, i32 noundef %25, i32 noundef %call.i) #7
  br label %msm8974_icc_rpm_smd_send.exit

msm8974_icc_rpm_smd_send.exit:                    ; preds = %if.then6.i, %do.body.i, %if.end.i.msm8974_icc_rpm_smd_send.exit_crit_edge, %for.end.msm8974_icc_rpm_smd_send.exit_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %slv_rpm_id = getelementptr inbounds %struct.msm8974_icc_node, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %slv_rpm_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slv_rpm_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i372 = icmp eq i32 %31, -1
  br i1 %cmp.i372, label %msm8974_icc_rpm_smd_send.exit.msm8974_icc_rpm_smd_send.exit379_crit_edge, label %if.end.i376

msm8974_icc_rpm_smd_send.exit.msm8974_icc_rpm_smd_send.exit379_crit_edge: ; preds = %msm8974_icc_rpm_smd_send.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit379

if.end.i376:                                      ; preds = %msm8974_icc_rpm_smd_send.exit
  %conv.i373 = trunc i64 %mul to i32
  %call.i374 = call i32 @qcom_icc_rpm_smd_send(i32 noundef 0, i32 noundef 1986818914, i32 noundef %31, i32 noundef %conv.i373) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374)
  %tobool.not.i375 = icmp eq i32 %call.i374, 0
  br i1 %tobool.not.i375, label %if.end.i376.msm8974_icc_rpm_smd_send.exit379_crit_edge, label %do.body.i377

if.end.i376.msm8974_icc_rpm_smd_send.exit379_crit_edge: ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit379

do.body.i377:                                     ; preds = %if.end.i376
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm8974_icc_set, %if.then6.i378)) #7
          to label %msm8974_icc_rpm_smd_send.exit379 [label %if.then6.i378], !srcloc !463

if.then6.i378:                                    ; preds = %do.body.i377
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, ptr noundef %27, ptr noundef nonnull @.str.13, ptr noundef %29, i32 noundef %31, i32 noundef %call.i374) #7
  br label %msm8974_icc_rpm_smd_send.exit379

msm8974_icc_rpm_smd_send.exit379:                 ; preds = %if.then6.i378, %do.body.i377, %if.end.i376.msm8974_icc_rpm_smd_send.exit379_crit_edge, %msm8974_icc_rpm_smd_send.exit.msm8974_icc_rpm_smd_send.exit379_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 8
  %mas_rpm_id18 = getelementptr inbounds %struct.msm8974_icc_node, ptr %5, i32 0, i32 5
  %36 = ptrtoint ptr %mas_rpm_id18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mas_rpm_id18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i380 = icmp eq i32 %37, -1
  br i1 %cmp.i380, label %msm8974_icc_rpm_smd_send.exit379.msm8974_icc_rpm_smd_send.exit387_crit_edge, label %if.end.i384

msm8974_icc_rpm_smd_send.exit379.msm8974_icc_rpm_smd_send.exit387_crit_edge: ; preds = %msm8974_icc_rpm_smd_send.exit379
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit387

if.end.i384:                                      ; preds = %msm8974_icc_rpm_smd_send.exit379
  %conv.i381 = trunc i64 %mul to i32
  %call.i382 = call i32 @qcom_icc_rpm_smd_send(i32 noundef 0, i32 noundef 1935764834, i32 noundef %37, i32 noundef %conv.i381) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %tobool.not.i383 = icmp eq i32 %call.i382, 0
  br i1 %tobool.not.i383, label %if.end.i384.msm8974_icc_rpm_smd_send.exit387_crit_edge, label %do.body.i385

if.end.i384.msm8974_icc_rpm_smd_send.exit387_crit_edge: ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit387

do.body.i385:                                     ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm8974_icc_set, %if.then6.i386)) #7
          to label %msm8974_icc_rpm_smd_send.exit387 [label %if.then6.i386], !srcloc !463

if.then6.i386:                                    ; preds = %do.body.i385
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, ptr noundef %33, ptr noundef nonnull @.str.13, ptr noundef %35, i32 noundef %37, i32 noundef %call.i382) #7
  br label %msm8974_icc_rpm_smd_send.exit387

msm8974_icc_rpm_smd_send.exit387:                 ; preds = %if.then6.i386, %do.body.i385, %if.end.i384.msm8974_icc_rpm_smd_send.exit387_crit_edge, %msm8974_icc_rpm_smd_send.exit379.msm8974_icc_rpm_smd_send.exit387_crit_edge
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 8
  %slv_rpm_id21 = getelementptr inbounds %struct.msm8974_icc_node, ptr %5, i32 0, i32 6
  %42 = ptrtoint ptr %slv_rpm_id21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %slv_rpm_id21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i388 = icmp eq i32 %43, -1
  br i1 %cmp.i388, label %msm8974_icc_rpm_smd_send.exit387.msm8974_icc_rpm_smd_send.exit395_crit_edge, label %if.end.i392

msm8974_icc_rpm_smd_send.exit387.msm8974_icc_rpm_smd_send.exit395_crit_edge: ; preds = %msm8974_icc_rpm_smd_send.exit387
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit395

if.end.i392:                                      ; preds = %msm8974_icc_rpm_smd_send.exit387
  %conv.i389 = trunc i64 %mul to i32
  %call.i390 = call i32 @qcom_icc_rpm_smd_send(i32 noundef 0, i32 noundef 1986818914, i32 noundef %43, i32 noundef %conv.i389) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i390)
  %tobool.not.i391 = icmp eq i32 %call.i390, 0
  br i1 %tobool.not.i391, label %if.end.i392.msm8974_icc_rpm_smd_send.exit395_crit_edge, label %do.body.i393

if.end.i392.msm8974_icc_rpm_smd_send.exit395_crit_edge: ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #9
  br label %msm8974_icc_rpm_smd_send.exit395

do.body.i393:                                     ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm8974_icc_set, %if.then6.i394)) #7
          to label %msm8974_icc_rpm_smd_send.exit395 [label %if.then6.i394], !srcloc !463

if.then6.i394:                                    ; preds = %do.body.i393
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, ptr noundef %39, ptr noundef nonnull @.str.13, ptr noundef %41, i32 noundef %43, i32 noundef %call.i390) #7
  br label %msm8974_icc_rpm_smd_send.exit395

msm8974_icc_rpm_smd_send.exit395:                 ; preds = %if.then6.i394, %do.body.i393, %if.end.i392.msm8974_icc_rpm_smd_send.exit395_crit_edge, %msm8974_icc_rpm_smd_send.exit387.msm8974_icc_rpm_smd_send.exit395_crit_edge
  %44 = call i64 @llvm.umax.i64(i64 %mul, i64 %mul13)
  %buswidth = getelementptr inbounds %struct.msm8974_icc_node, ptr %3, i32 0, i32 4
  %45 = ptrtoint ptr %buswidth to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %buswidth, align 2
  %conv25 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %44)
  %cmp199 = icmp ult i64 %44, 4294967296
  br i1 %cmp199, label %if.then204, label %if.else210, !prof !464

if.then204:                                       ; preds = %msm8974_icc_rpm_smd_send.exit395
  call void @__sanitizer_cov_trace_pc() #9
  %conv205 = trunc i64 %44 to i32
  %div208 = udiv i32 %conv205, %conv25
  br label %if.end214

if.else210:                                       ; preds = %msm8974_icc_rpm_smd_send.exit395
  call void @__sanitizer_cov_trace_pc() #9
  %47 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv25, i64 %44) #11, !srcloc !465
  %asmresult1.i = extractvalue { i64, i64 } %47, 1
  %extract.t422 = trunc i64 %asmresult1.i to i32
  br label %if.end214

if.end214:                                        ; preds = %if.else210, %if.then204
  %rate.0.off0 = phi i32 [ %div208, %if.then204 ], [ %extract.t422, %if.else210 ]
  %48 = call i32 @llvm.umin.i32(i32 %rate.0.off0, i32 2147483647)
  %conv224 = zext i32 %48 to i64
  %rate225 = getelementptr inbounds %struct.msm8974_icc_node, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %rate225 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rate225, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv224)
  %cmp226 = icmp eq i64 %50, %conv224
  br i1 %cmp226, label %if.end214.cleanup_crit_edge, label %for.cond230.preheader

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond230.preheader:                            ; preds = %if.end214
  %num_clks = getelementptr inbounds %struct.msm8974_icc_provider, ptr %7, i32 0, i32 2
  %51 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp231427 = icmp sgt i32 %52, 0
  br i1 %cmp231427, label %for.body233.lr.ph, label %for.cond230.preheader.for.end243_crit_edge

for.cond230.preheader.for.end243_crit_edge:       ; preds = %for.cond230.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end243

for.body233.lr.ph:                                ; preds = %for.cond230.preheader
  %bus_clks = getelementptr inbounds %struct.msm8974_icc_provider, ptr %7, i32 0, i32 1
  br label %for.body233

for.body233:                                      ; preds = %for.inc242.for.body233_crit_edge, %for.body233.lr.ph
  %i.0428 = phi i32 [ 0, %for.body233.lr.ph ], [ %inc, %for.inc242.for.body233_crit_edge ]
  %53 = ptrtoint ptr %bus_clks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus_clks, align 4
  %clk = getelementptr %struct.clk_bulk_data, ptr %54, i32 %i.0428, i32 1
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 4
  %call235 = call i32 @clk_set_rate(ptr noundef %56, i32 noundef %48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %for.body233.for.inc242_crit_edge, label %do.end

for.body233.for.inc242_crit_edge:                 ; preds = %for.body233
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc242

do.end:                                           ; preds = %for.body233
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %59 = ptrtoint ptr %bus_clks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus_clks, align 4
  %arrayidx240 = getelementptr %struct.clk_bulk_data, ptr %60, i32 %i.0428
  %61 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx240, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.10, ptr noundef %62, i32 noundef %call235) #10
  br label %for.inc242

for.inc242:                                       ; preds = %do.end, %for.body233.for.inc242_crit_edge
  %inc = add nuw nsw i32 %i.0428, 1
  %63 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_clks, align 4
  %cmp231 = icmp slt i32 %inc, %64
  br i1 %cmp231, label %for.inc242.for.body233_crit_edge, label %for.inc242.for.end243_crit_edge

for.inc242.for.end243_crit_edge:                  ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end243

for.inc242.for.body233_crit_edge:                 ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body233

for.end243:                                       ; preds = %for.inc242.for.end243_crit_edge, %for.cond230.preheader.for.end243_crit_edge
  %65 = ptrtoint ptr %rate225 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv224, ptr %rate225, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end243, %if.end214.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg_peak) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg_avg) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_std_aggregate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_xlate_onecell(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @msm8974_get_bw(ptr nocapture noundef readnone %node, ptr nocapture noundef writeonly %avg, ptr nocapture noundef writeonly %peak) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %avg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %avg, align 4
  %1 = ptrtoint ptr %peak to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %peak, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_nodes_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_icc_rpm_smd_send(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 289)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 289)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !420, !421, !423, !424, !426, !427, !429, !430, !432, !433, !435, !436, !438, !439, !441, !442, !444, !445, !447, !448, !450, !451, !453}
!llvm.module.flags = !{!454, !455, !456, !457, !458, !459, !460, !461}
!llvm.ident = !{!462}

!0 = !{ptr @__initcall__kmod_qnoc_msm8974__189_775_msm8974_noc_driver_init6, !1, !"__initcall__kmod_qnoc_msm8974__189_775_msm8974_noc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 775, i32 1}
!2 = !{ptr @__exitcall_msm8974_noc_driver_exit, !1, !"__exitcall_msm8974_noc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description190, !4, !"__UNIQUE_ID_description190", i1 false, i1 false}
!4 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 776, i32 1}
!5 = !{ptr @__UNIQUE_ID_author191, !6, !"__UNIQUE_ID_author191", i1 false, i1 false}
!6 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 777, i32 1}
!7 = !{ptr @__UNIQUE_ID_file192, !8, !"__UNIQUE_ID_file192", i1 false, i1 false}
!8 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 778, i32 1}
!9 = !{ptr @__UNIQUE_ID_license193, !8, !"__UNIQUE_ID_license193", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 770, i32 11}
!12 = !{ptr @msm8974_noc_driver, !13, !"msm8974_noc_driver", i1 false, i1 false}
!13 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 766, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 705, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @msm8974_icc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @msm8974_icc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 722, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @msm8974_icc_probe.__UNIQUE_ID_ddebug188, !23, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 182, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 183, i32 10}
!30 = !{ptr @msm8974_icc_bus_clocks, !31, !"msm8974_icc_bus_clocks", i1 false, i1 false}
!31 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 181, i32 35}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 629, i32 4}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @msm8974_icc_set._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @msm8974_icc_set._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 577, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @msm8974_icc_rpm_smd_send.__UNIQUE_ID_ddebug183, !38, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!41 = !{ptr @msm8974_noc_of_match, !42, !"msm8974_noc_of_match", i1 false, i1 false}
!42 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 755, i32 34}
!43 = !{ptr @msm8974_bimc, !44, !"msm8974_bimc", i1 false, i1 false}
!44 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 257, i32 32}
!45 = !{ptr @msm8974_bimc_nodes, !46, !"msm8974_bimc_nodes", i1 false, i1 false}
!46 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 247, i32 33}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 239, i32 1}
!49 = !{ptr @mas_ampss_m0, !48, !"mas_ampss_m0", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 240, i32 1}
!52 = !{ptr @mas_ampss_m1, !51, !"mas_ampss_m1", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 241, i32 1}
!55 = !{ptr @mas_mss_proc, !54, !"mas_mss_proc", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 242, i32 1}
!58 = !{ptr @bimc_to_mnoc, !57, !"bimc_to_mnoc", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 243, i32 1}
!61 = !{ptr @bimc_to_snoc, !60, !"bimc_to_snoc", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 244, i32 1}
!64 = !{ptr @slv_ebi_ch0, !63, !"slv_ebi_ch0", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 245, i32 1}
!67 = !{ptr @slv_ampss_l2, !66, !"slv_ampss_l2", i1 false, i1 false}
!68 = !{ptr @msm8974_cnoc, !69, !"msm8974_cnoc", i1 false, i1 false}
!69 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 340, i32 32}
!70 = !{ptr @msm8974_cnoc_nodes, !71, !"msm8974_cnoc_nodes", i1 false, i1 false}
!71 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 300, i32 33}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 262, i32 1}
!74 = !{ptr @mas_rpm_inst, !73, !"mas_rpm_inst", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 263, i32 1}
!77 = !{ptr @mas_rpm_data, !76, !"mas_rpm_data", i1 false, i1 false}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 264, i32 1}
!80 = !{ptr @mas_rpm_sys, !79, !"mas_rpm_sys", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 265, i32 1}
!83 = !{ptr @mas_dehr, !82, !"mas_dehr", i1 false, i1 false}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 266, i32 1}
!86 = !{ptr @mas_qdss_dap, !85, !"mas_qdss_dap", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 267, i32 1}
!89 = !{ptr @mas_spdm, !88, !"mas_spdm", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 268, i32 1}
!92 = !{ptr @mas_tic, !91, !"mas_tic", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 269, i32 1}
!95 = !{ptr @slv_clk_ctl, !94, !"slv_clk_ctl", i1 false, i1 false}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 270, i32 1}
!98 = !{ptr @slv_cnoc_mss, !97, !"slv_cnoc_mss", i1 false, i1 false}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 271, i32 1}
!101 = !{ptr @slv_security, !100, !"slv_security", i1 false, i1 false}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 272, i32 1}
!104 = !{ptr @slv_tcsr, !103, !"slv_tcsr", i1 false, i1 false}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 273, i32 1}
!107 = !{ptr @slv_tlmm, !106, !"slv_tlmm", i1 false, i1 false}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 274, i32 1}
!110 = !{ptr @slv_crypto_0_cfg, !109, !"slv_crypto_0_cfg", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 275, i32 1}
!113 = !{ptr @slv_crypto_1_cfg, !112, !"slv_crypto_1_cfg", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 276, i32 1}
!116 = !{ptr @slv_imem_cfg, !115, !"slv_imem_cfg", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 277, i32 1}
!119 = !{ptr @slv_message_ram, !118, !"slv_message_ram", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 278, i32 1}
!122 = !{ptr @slv_bimc_cfg, !121, !"slv_bimc_cfg", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 279, i32 1}
!125 = !{ptr @slv_boot_rom, !124, !"slv_boot_rom", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 280, i32 1}
!128 = !{ptr @slv_pmic_arb, !127, !"slv_pmic_arb", i1 false, i1 false}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 281, i32 1}
!131 = !{ptr @slv_spdm_wrapper, !130, !"slv_spdm_wrapper", i1 false, i1 false}
!132 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 282, i32 1}
!134 = !{ptr @slv_dehr_cfg, !133, !"slv_dehr_cfg", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 283, i32 1}
!137 = !{ptr @slv_mpm, !136, !"slv_mpm", i1 false, i1 false}
!138 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 284, i32 1}
!140 = !{ptr @slv_qdss_cfg, !139, !"slv_qdss_cfg", i1 false, i1 false}
!141 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 285, i32 1}
!143 = !{ptr @slv_rbcpr_cfg, !142, !"slv_rbcpr_cfg", i1 false, i1 false}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 286, i32 1}
!146 = !{ptr @slv_rbcpr_qdss_apu_cfg, !145, !"slv_rbcpr_qdss_apu_cfg", i1 false, i1 false}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 287, i32 1}
!149 = !{ptr @cnoc_to_snoc, !148, !"cnoc_to_snoc", i1 false, i1 false}
!150 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 288, i32 1}
!152 = !{ptr @slv_cnoc_onoc_cfg, !151, !"slv_cnoc_onoc_cfg", i1 false, i1 false}
!153 = !{ptr @.str.48, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 289, i32 1}
!155 = !{ptr @slv_cnoc_mnoc_mmss_cfg, !154, !"slv_cnoc_mnoc_mmss_cfg", i1 false, i1 false}
!156 = !{ptr @.str.49, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 290, i32 1}
!158 = !{ptr @slv_cnoc_mnoc_cfg, !157, !"slv_cnoc_mnoc_cfg", i1 false, i1 false}
!159 = !{ptr @.str.50, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 291, i32 1}
!161 = !{ptr @slv_pnoc_cfg, !160, !"slv_pnoc_cfg", i1 false, i1 false}
!162 = !{ptr @.str.51, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 292, i32 1}
!164 = !{ptr @slv_snoc_mpu_cfg, !163, !"slv_snoc_mpu_cfg", i1 false, i1 false}
!165 = !{ptr @.str.52, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 293, i32 1}
!167 = !{ptr @slv_snoc_cfg, !166, !"slv_snoc_cfg", i1 false, i1 false}
!168 = !{ptr @.str.53, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 294, i32 1}
!170 = !{ptr @slv_ebi1_dll_cfg, !169, !"slv_ebi1_dll_cfg", i1 false, i1 false}
!171 = !{ptr @.str.54, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 295, i32 1}
!173 = !{ptr @slv_phy_apu_cfg, !172, !"slv_phy_apu_cfg", i1 false, i1 false}
!174 = !{ptr @.str.55, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 296, i32 1}
!176 = !{ptr @slv_ebi1_phy_cfg, !175, !"slv_ebi1_phy_cfg", i1 false, i1 false}
!177 = !{ptr @.str.56, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 297, i32 1}
!179 = !{ptr @slv_rpm, !178, !"slv_rpm", i1 false, i1 false}
!180 = !{ptr @.str.57, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 298, i32 1}
!182 = !{ptr @slv_service_cnoc, !181, !"slv_service_cnoc", i1 false, i1 false}
!183 = !{ptr @msm8974_mnoc, !184, !"msm8974_mnoc", i1 false, i1 false}
!184 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 393, i32 32}
!185 = !{ptr @msm8974_mnoc_nodes, !186, !"msm8974_mnoc_nodes", i1 false, i1 false}
!186 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 368, i32 33}
!187 = !{ptr @.str.58, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 345, i32 1}
!189 = !{ptr @mas_graphics_3d, !188, !"mas_graphics_3d", i1 false, i1 false}
!190 = !{ptr @.str.59, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 346, i32 1}
!192 = !{ptr @mas_jpeg, !191, !"mas_jpeg", i1 false, i1 false}
!193 = !{ptr @.str.60, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 347, i32 1}
!195 = !{ptr @mas_mdp_port0, !194, !"mas_mdp_port0", i1 false, i1 false}
!196 = !{ptr @.str.61, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 348, i32 1}
!198 = !{ptr @mas_video_p0, !197, !"mas_video_p0", i1 false, i1 false}
!199 = !{ptr @.str.62, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 349, i32 1}
!201 = !{ptr @mas_video_p1, !200, !"mas_video_p1", i1 false, i1 false}
!202 = !{ptr @.str.63, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 350, i32 1}
!204 = !{ptr @mas_vfe, !203, !"mas_vfe", i1 false, i1 false}
!205 = !{ptr @.str.64, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 351, i32 1}
!207 = !{ptr @mnoc_to_cnoc, !206, !"mnoc_to_cnoc", i1 false, i1 false}
!208 = !{ptr @.str.65, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 352, i32 1}
!210 = !{ptr @mnoc_to_bimc, !209, !"mnoc_to_bimc", i1 false, i1 false}
!211 = !{ptr @.str.66, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 353, i32 1}
!213 = !{ptr @slv_camera_cfg, !212, !"slv_camera_cfg", i1 false, i1 false}
!214 = !{ptr @.str.67, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 354, i32 1}
!216 = !{ptr @slv_display_cfg, !215, !"slv_display_cfg", i1 false, i1 false}
!217 = !{ptr @.str.68, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 355, i32 1}
!219 = !{ptr @slv_ocmem_cfg, !218, !"slv_ocmem_cfg", i1 false, i1 false}
!220 = !{ptr @.str.69, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 356, i32 1}
!222 = !{ptr @slv_cpr_cfg, !221, !"slv_cpr_cfg", i1 false, i1 false}
!223 = !{ptr @.str.70, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 357, i32 1}
!225 = !{ptr @slv_cpr_xpu_cfg, !224, !"slv_cpr_xpu_cfg", i1 false, i1 false}
!226 = !{ptr @.str.71, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 358, i32 1}
!228 = !{ptr @slv_misc_cfg, !227, !"slv_misc_cfg", i1 false, i1 false}
!229 = !{ptr @.str.72, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 359, i32 1}
!231 = !{ptr @slv_misc_xpu_cfg, !230, !"slv_misc_xpu_cfg", i1 false, i1 false}
!232 = !{ptr @.str.73, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 360, i32 1}
!234 = !{ptr @slv_venus_cfg, !233, !"slv_venus_cfg", i1 false, i1 false}
!235 = !{ptr @.str.74, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 361, i32 1}
!237 = !{ptr @slv_graphics_3d_cfg, !236, !"slv_graphics_3d_cfg", i1 false, i1 false}
!238 = !{ptr @.str.75, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 362, i32 1}
!240 = !{ptr @slv_mmss_clk_cfg, !239, !"slv_mmss_clk_cfg", i1 false, i1 false}
!241 = !{ptr @.str.76, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 363, i32 1}
!243 = !{ptr @slv_mmss_clk_xpu_cfg, !242, !"slv_mmss_clk_xpu_cfg", i1 false, i1 false}
!244 = !{ptr @.str.77, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 364, i32 1}
!246 = !{ptr @slv_mnoc_mpu_cfg, !245, !"slv_mnoc_mpu_cfg", i1 false, i1 false}
!247 = !{ptr @.str.78, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 365, i32 1}
!249 = !{ptr @slv_onoc_mpu_cfg, !248, !"slv_onoc_mpu_cfg", i1 false, i1 false}
!250 = !{ptr @.str.79, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 366, i32 1}
!252 = !{ptr @slv_service_mnoc, !251, !"slv_service_mnoc", i1 false, i1 false}
!253 = !{ptr @msm8974_onoc, !254, !"msm8974_onoc", i1 false, i1 false}
!254 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 428, i32 32}
!255 = !{ptr @msm8974_onoc_nodes, !256, !"msm8974_onoc_nodes", i1 false, i1 false}
!256 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 413, i32 33}
!257 = !{ptr @.str.80, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 398, i32 1}
!259 = !{ptr @ocmem_noc_to_ocmem_vnoc, !258, !"ocmem_noc_to_ocmem_vnoc", i1 false, i1 false}
!260 = !{ptr @.str.81, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 399, i32 1}
!262 = !{ptr @mas_jpeg_ocmem, !261, !"mas_jpeg_ocmem", i1 false, i1 false}
!263 = !{ptr @.str.82, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 400, i32 1}
!265 = !{ptr @mas_mdp_ocmem, !264, !"mas_mdp_ocmem", i1 false, i1 false}
!266 = !{ptr @.str.83, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 401, i32 1}
!268 = !{ptr @mas_video_p0_ocmem, !267, !"mas_video_p0_ocmem", i1 false, i1 false}
!269 = !{ptr @.str.84, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 402, i32 1}
!271 = !{ptr @mas_video_p1_ocmem, !270, !"mas_video_p1_ocmem", i1 false, i1 false}
!272 = !{ptr @.str.85, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 403, i32 1}
!274 = !{ptr @mas_vfe_ocmem, !273, !"mas_vfe_ocmem", i1 false, i1 false}
!275 = !{ptr @.str.86, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 404, i32 1}
!277 = !{ptr @mas_cnoc_onoc_cfg, !276, !"mas_cnoc_onoc_cfg", i1 false, i1 false}
!278 = !{ptr @.str.87, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 405, i32 1}
!280 = !{ptr @slv_service_onoc, !279, !"slv_service_onoc", i1 false, i1 false}
!281 = !{ptr @.str.88, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 410, i32 1}
!283 = !{ptr @ocmem_vnoc_to_snoc, !282, !"ocmem_vnoc_to_snoc", i1 false, i1 false}
!284 = !{ptr @.str.89, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 409, i32 1}
!286 = !{ptr @ocmem_vnoc_to_onoc, !285, !"ocmem_vnoc_to_onoc", i1 false, i1 false}
!287 = !{ptr @.str.90, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 411, i32 1}
!289 = !{ptr @mas_v_ocmem_gfx3d, !288, !"mas_v_ocmem_gfx3d", i1 false, i1 false}
!290 = !{ptr @.str.91, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 406, i32 1}
!292 = !{ptr @slv_ocmem, !291, !"slv_ocmem", i1 false, i1 false}
!293 = !{ptr @msm8974_pnoc, !294, !"msm8974_pnoc", i1 false, i1 false}
!294 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 491, i32 32}
!295 = !{ptr @msm8974_pnoc_nodes, !296, !"msm8974_pnoc_nodes", i1 false, i1 false}
!296 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 461, i32 33}
!297 = !{ptr @.str.92, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 433, i32 1}
!299 = !{ptr @mas_pnoc_cfg, !298, !"mas_pnoc_cfg", i1 false, i1 false}
!300 = !{ptr @.str.93, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 434, i32 1}
!302 = !{ptr @mas_sdcc_1, !301, !"mas_sdcc_1", i1 false, i1 false}
!303 = !{ptr @.str.94, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 435, i32 1}
!305 = !{ptr @mas_sdcc_3, !304, !"mas_sdcc_3", i1 false, i1 false}
!306 = !{ptr @.str.95, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 436, i32 1}
!308 = !{ptr @mas_sdcc_4, !307, !"mas_sdcc_4", i1 false, i1 false}
!309 = !{ptr @.str.96, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 437, i32 1}
!311 = !{ptr @mas_sdcc_2, !310, !"mas_sdcc_2", i1 false, i1 false}
!312 = !{ptr @.str.97, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 438, i32 1}
!314 = !{ptr @mas_tsif, !313, !"mas_tsif", i1 false, i1 false}
!315 = !{ptr @.str.98, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 439, i32 1}
!317 = !{ptr @mas_bam_dma, !316, !"mas_bam_dma", i1 false, i1 false}
!318 = !{ptr @.str.99, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 440, i32 1}
!320 = !{ptr @mas_blsp_2, !319, !"mas_blsp_2", i1 false, i1 false}
!321 = !{ptr @.str.100, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 441, i32 1}
!323 = !{ptr @mas_usb_hsic, !322, !"mas_usb_hsic", i1 false, i1 false}
!324 = !{ptr @.str.101, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 442, i32 1}
!326 = !{ptr @mas_blsp_1, !325, !"mas_blsp_1", i1 false, i1 false}
!327 = !{ptr @.str.102, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 443, i32 1}
!329 = !{ptr @mas_usb_hs, !328, !"mas_usb_hs", i1 false, i1 false}
!330 = !{ptr @.str.103, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 444, i32 1}
!332 = !{ptr @pnoc_to_snoc, !331, !"pnoc_to_snoc", i1 false, i1 false}
!333 = !{ptr @.str.104, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 445, i32 1}
!335 = !{ptr @slv_sdcc_1, !334, !"slv_sdcc_1", i1 false, i1 false}
!336 = !{ptr @.str.105, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 446, i32 1}
!338 = !{ptr @slv_sdcc_3, !337, !"slv_sdcc_3", i1 false, i1 false}
!339 = !{ptr @.str.106, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 447, i32 1}
!341 = !{ptr @slv_sdcc_2, !340, !"slv_sdcc_2", i1 false, i1 false}
!342 = !{ptr @.str.107, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 448, i32 1}
!344 = !{ptr @slv_sdcc_4, !343, !"slv_sdcc_4", i1 false, i1 false}
!345 = !{ptr @.str.108, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 449, i32 1}
!347 = !{ptr @slv_tsif, !346, !"slv_tsif", i1 false, i1 false}
!348 = !{ptr @.str.109, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 450, i32 1}
!350 = !{ptr @slv_bam_dma, !349, !"slv_bam_dma", i1 false, i1 false}
!351 = !{ptr @.str.110, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 451, i32 1}
!353 = !{ptr @slv_blsp_2, !352, !"slv_blsp_2", i1 false, i1 false}
!354 = !{ptr @.str.111, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 452, i32 1}
!356 = !{ptr @slv_usb_hsic, !355, !"slv_usb_hsic", i1 false, i1 false}
!357 = !{ptr @.str.112, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 453, i32 1}
!359 = !{ptr @slv_blsp_1, !358, !"slv_blsp_1", i1 false, i1 false}
!360 = !{ptr @.str.113, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 454, i32 1}
!362 = !{ptr @slv_usb_hs, !361, !"slv_usb_hs", i1 false, i1 false}
!363 = !{ptr @.str.114, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 455, i32 1}
!365 = !{ptr @slv_pdm, !364, !"slv_pdm", i1 false, i1 false}
!366 = !{ptr @.str.115, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 456, i32 1}
!368 = !{ptr @slv_periph_apu_cfg, !367, !"slv_periph_apu_cfg", i1 false, i1 false}
!369 = !{ptr @.str.116, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 457, i32 1}
!371 = !{ptr @slv_pnoc_mpu_cfg, !370, !"slv_pnoc_mpu_cfg", i1 false, i1 false}
!372 = !{ptr @.str.117, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 458, i32 1}
!374 = !{ptr @slv_prng, !373, !"slv_prng", i1 false, i1 false}
!375 = !{ptr @.str.118, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 459, i32 1}
!377 = !{ptr @slv_service_pnoc, !376, !"slv_service_pnoc", i1 false, i1 false}
!378 = !{ptr @msm8974_snoc, !379, !"msm8974_snoc", i1 false, i1 false}
!379 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 548, i32 32}
!380 = !{ptr @msm8974_snoc_nodes, !381, !"msm8974_snoc_nodes", i1 false, i1 false}
!381 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 521, i32 33}
!382 = !{ptr @.str.119, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 496, i32 1}
!384 = !{ptr @mas_lpass_ahb, !383, !"mas_lpass_ahb", i1 false, i1 false}
!385 = !{ptr @.str.120, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 497, i32 1}
!387 = !{ptr @mas_qdss_bam, !386, !"mas_qdss_bam", i1 false, i1 false}
!388 = !{ptr @.str.121, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 498, i32 1}
!390 = !{ptr @mas_snoc_cfg, !389, !"mas_snoc_cfg", i1 false, i1 false}
!391 = !{ptr @.str.122, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 499, i32 1}
!393 = !{ptr @snoc_to_bimc, !392, !"snoc_to_bimc", i1 false, i1 false}
!394 = !{ptr @.str.123, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 500, i32 1}
!396 = !{ptr @snoc_to_cnoc, !395, !"snoc_to_cnoc", i1 false, i1 false}
!397 = !{ptr @.str.124, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 501, i32 1}
!399 = !{ptr @snoc_to_pnoc, !398, !"snoc_to_pnoc", i1 false, i1 false}
!400 = !{ptr @.str.125, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 502, i32 1}
!402 = !{ptr @snoc_to_ocmem_vnoc, !401, !"snoc_to_ocmem_vnoc", i1 false, i1 false}
!403 = !{ptr @.str.126, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 503, i32 1}
!405 = !{ptr @mas_crypto_core0, !404, !"mas_crypto_core0", i1 false, i1 false}
!406 = !{ptr @.str.127, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 504, i32 1}
!408 = !{ptr @mas_crypto_core1, !407, !"mas_crypto_core1", i1 false, i1 false}
!409 = !{ptr @.str.128, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 505, i32 1}
!411 = !{ptr @mas_lpass_proc, !410, !"mas_lpass_proc", i1 false, i1 false}
!412 = !{ptr @.str.129, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 506, i32 1}
!414 = !{ptr @mas_mss, !413, !"mas_mss", i1 false, i1 false}
!415 = !{ptr @.str.130, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 507, i32 1}
!417 = !{ptr @mas_mss_nav, !416, !"mas_mss_nav", i1 false, i1 false}
!418 = !{ptr @.str.131, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 508, i32 1}
!420 = !{ptr @mas_ocmem_dma, !419, !"mas_ocmem_dma", i1 false, i1 false}
!421 = !{ptr @.str.132, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 509, i32 1}
!423 = !{ptr @mas_wcss, !422, !"mas_wcss", i1 false, i1 false}
!424 = !{ptr @.str.133, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 510, i32 1}
!426 = !{ptr @mas_qdss_etr, !425, !"mas_qdss_etr", i1 false, i1 false}
!427 = !{ptr @.str.134, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 511, i32 1}
!429 = !{ptr @mas_usb3, !428, !"mas_usb3", i1 false, i1 false}
!430 = !{ptr @.str.135, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 512, i32 1}
!432 = !{ptr @slv_ampss, !431, !"slv_ampss", i1 false, i1 false}
!433 = !{ptr @.str.136, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 513, i32 1}
!435 = !{ptr @slv_lpass, !434, !"slv_lpass", i1 false, i1 false}
!436 = !{ptr @.str.137, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 514, i32 1}
!438 = !{ptr @slv_usb3, !437, !"slv_usb3", i1 false, i1 false}
!439 = !{ptr @.str.138, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 515, i32 1}
!441 = !{ptr @slv_wcss, !440, !"slv_wcss", i1 false, i1 false}
!442 = !{ptr @.str.139, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 516, i32 1}
!444 = !{ptr @slv_ocimem, !443, !"slv_ocimem", i1 false, i1 false}
!445 = !{ptr @.str.140, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 517, i32 1}
!447 = !{ptr @slv_snoc_ocmem, !446, !"slv_snoc_ocmem", i1 false, i1 false}
!448 = !{ptr @.str.141, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 518, i32 1}
!450 = !{ptr @slv_service_snoc, !449, !"slv_service_snoc", i1 false, i1 false}
!451 = !{ptr @.str.142, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/interconnect/qcom/msm8974.c", i32 519, i32 1}
!453 = !{ptr @slv_qdss_stm, !452, !"slv_qdss_stm", i1 false, i1 false}
!454 = !{i32 1, !"wchar_size", i32 2}
!455 = !{i32 1, !"min_enum_size", i32 4}
!456 = !{i32 8, !"branch-target-enforcement", i32 0}
!457 = !{i32 8, !"sign-return-address", i32 0}
!458 = !{i32 8, !"sign-return-address-all", i32 0}
!459 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!460 = !{i32 7, !"uwtable", i32 1}
!461 = !{i32 7, !"frame-pointer", i32 2}
!462 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!463 = !{i64 2148752596, i64 2148752601, i64 2148752614, i64 2148752658, i64 2148752692, i64 2148752713}
!464 = !{!"branch_weights", i32 2000, i32 1}
!465 = !{i64 2148661315, i64 2148661595, i64 2148661929, i64 2148662263}
