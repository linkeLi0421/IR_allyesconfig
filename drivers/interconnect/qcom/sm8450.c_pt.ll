; ModuleID = '/llk/IR_all_yes/drivers/interconnect/qcom/sm8450.c_pt.bc'
source_filename = "../drivers/interconnect/qcom/sm8450.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_icc_desc = type { ptr, i32, ptr, i32 }
%struct.qcom_icc_node = type { ptr, [128 x i16], i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }
%struct.bcm_db = type { i32, i16, i8, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.qcom_icc_provider = type { %struct.icc_provider, ptr, ptr, i32, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.icc_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_qnoc_sm8450__170_1978_qnoc_driver_init1 = internal global ptr @qnoc_driver_init, section ".initcall1.init", align 4
@qnoc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qnoc_probe, ptr @qnoc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qnoc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qnoc_driver_exit = internal global ptr @qnoc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [42 x i8] c"qnoc_sm8450.description=sm8450 NoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [55 x i8] c"qnoc_sm8450.file=drivers/interconnect/qcom/qnoc-sm8450\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [27 x i8] c"qnoc_sm8450.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qnoc-sm8450\00", [20 x i8] zeroinitializer }, align 32
@qnoc_of_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-aggre1-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_aggre1_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-aggre2-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_aggre2_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-clk-virt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_clk_virt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-config-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_config_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-gem-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_gem_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-lpass-ag-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_lpass_ag_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-mc-virt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_mc_virt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-mmss-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_mmss_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-nsp-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_nsp_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-pcie-anoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_pcie_anoc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-system-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_system_noc }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@qnoc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error adding interconnect provider\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qnoc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/interconnect/qcom/sm8450.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qnoc_probe._entry_ptr = internal global ptr @qnoc_probe._entry, section ".printk_index", align 4
@sm8450_aggre1_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @aggre1_noc_nodes, i32 8, ptr @aggre1_noc_bcms, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sm8450_aggre2_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @aggre2_noc_nodes, i32 13, ptr @aggre2_noc_bcms, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sm8450_clk_virt = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @clk_virt_nodes, i32 6, ptr @clk_virt_bcms, i32 3 }, [16 x i8] zeroinitializer }, align 32
@sm8450_config_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @config_noc_nodes, i32 55, ptr @config_noc_bcms, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sm8450_gem_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @gem_noc_nodes, i32 18, ptr @gem_noc_bcms, i32 4 }, [16 x i8] zeroinitializer }, align 32
@sm8450_lpass_ag_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @lpass_ag_noc_nodes, i32 9, ptr @lpass_ag_noc_bcms, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sm8450_mc_virt = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @mc_virt_nodes, i32 4, ptr @mc_virt_bcms, i32 4 }, [16 x i8] zeroinitializer }, align 32
@sm8450_mmss_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @mmss_noc_nodes, i32 18, ptr @mmss_noc_bcms, i32 4 }, [16 x i8] zeroinitializer }, align 32
@sm8450_nsp_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @nsp_noc_nodes, i32 4, ptr @nsp_noc_bcms, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sm8450_pcie_anoc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @pcie_anoc_nodes, i32 5, ptr @pcie_anoc_bcms, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sm8450_system_noc = internal global { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @system_noc_nodes, i32 10, ptr @system_noc_bcms, i32 5 }, [16 x i8] zeroinitializer }, align 32
@aggre1_noc_nodes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @qhm_qspi, ptr @qhm_qup1, ptr @qnm_a1noc_cfg, ptr @xm_sdc4, ptr @xm_ufs_mem, ptr @xm_usb3_0, ptr @qns_a1noc_snoc, ptr @srvc_aggre1_noc], [32 x i8] zeroinitializer }, align 32
@aggre1_noc_bcms = internal global { [0 x ptr], [32 x i8] } zeroinitializer, align 32
@srvc_aggre1_noc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.20, [128 x i16] zeroinitializer, i16 581, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhm_qspi\00", [23 x i8] zeroinitializer }, align 32
@qhm_qspi = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.6, <{ i16, [127 x i16] }> <{ i16 558, [127 x i16] zeroinitializer }>, i16 8, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhm_qup1\00", [23 x i8] zeroinitializer }, align 32
@qhm_qup1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.8, <{ i16, [127 x i16] }> <{ i16 558, [127 x i16] zeroinitializer }>, i16 10, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_a1noc_cfg\00", [18 x i8] zeroinitializer }, align 32
@qnm_a1noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.10, <{ i16, [127 x i16] }> <{ i16 581, [127 x i16] zeroinitializer }>, i16 12, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xm_sdc4\00", [24 x i8] zeroinitializer }, align 32
@xm_sdc4 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.12, <{ i16, [127 x i16] }> <{ i16 558, [127 x i16] zeroinitializer }>, i16 56, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xm_ufs_mem\00", [21 x i8] zeroinitializer }, align 32
@xm_ufs_mem = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.14, <{ i16, [127 x i16] }> <{ i16 558, [127 x i16] zeroinitializer }>, i16 57, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xm_usb3_0\00", [22 x i8] zeroinitializer }, align 32
@xm_usb3_0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.16, <{ i16, [127 x i16] }> <{ i16 558, [127 x i16] zeroinitializer }>, i16 58, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qns_a1noc_snoc\00", [17 x i8] zeroinitializer }, align 32
@qns_a1noc_snoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.18, <{ i16, [127 x i16] }> <{ i16 14, [127 x i16] zeroinitializer }>, i16 558, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"srvc_aggre1_noc\00", [16 x i8] zeroinitializer }, align 32
@aggre2_noc_nodes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @qhm_qdss_bam, ptr @qhm_qup0, ptr @qhm_qup2, ptr @qnm_a2noc_cfg, ptr @qxm_crypto, ptr @qxm_ipa, ptr @qxm_sensorss_q6, ptr @qxm_sp, ptr @xm_qdss_etr_0, ptr @xm_qdss_etr_1, ptr @xm_sdc2, ptr @qns_a2noc_snoc, ptr @srvc_aggre2_noc], [44 x i8] zeroinitializer }, align 32
@aggre2_noc_bcms = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @bcm_ce0], [28 x i8] zeroinitializer }, align 32
@srvc_aggre2_noc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.45, [128 x i16] zeroinitializer, i16 582, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qhm_qdss_bam\00", [19 x i8] zeroinitializer }, align 32
@qhm_qdss_bam = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.21, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 7, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhm_qup0\00", [23 x i8] zeroinitializer }, align 32
@qhm_qup0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.23, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 9, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhm_qup2\00", [23 x i8] zeroinitializer }, align 32
@qhm_qup2 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.25, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 11, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_a2noc_cfg\00", [18 x i8] zeroinitializer }, align 32
@qnm_a2noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.27, <{ i16, [127 x i16] }> <{ i16 582, [127 x i16] zeroinitializer }>, i16 13, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qxm_crypto\00", [21 x i8] zeroinitializer }, align 32
@qxm_crypto = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.29, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 43, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qxm_ipa\00", [24 x i8] zeroinitializer }, align 32
@qxm_ipa = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.31, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 44, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qxm_sensorss_q6\00", [16 x i8] zeroinitializer }, align 32
@qxm_sensorss_q6 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.33, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 48, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qxm_sp\00", [25 x i8] zeroinitializer }, align 32
@qxm_sp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.35, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 49, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xm_qdss_etr_0\00", [18 x i8] zeroinitializer }, align 32
@xm_qdss_etr_0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.37, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 53, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xm_qdss_etr_1\00", [18 x i8] zeroinitializer }, align 32
@xm_qdss_etr_1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.39, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 54, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xm_sdc2\00", [24 x i8] zeroinitializer }, align 32
@xm_sdc2 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.41, <{ i16, [127 x i16] }> <{ i16 560, [127 x i16] zeroinitializer }>, i16 55, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qns_a2noc_snoc\00", [17 x i8] zeroinitializer }, align 32
@qns_a2noc_snoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.43, <{ i16, [127 x i16] }> <{ i16 15, [127 x i16] zeroinitializer }>, i16 560, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"srvc_aggre2_noc\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE0\00", [28 x i8] zeroinitializer }, align 32
@bcm_ce0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.46, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qxm_crypto] }>, [52 x i8] zeroinitializer }, align 32
@clk_virt_nodes = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @qup0_core_master, ptr @qup1_core_master, ptr @qup2_core_master, ptr @qup0_core_slave, ptr @qup1_core_slave, ptr @qup2_core_slave], [40 x i8] zeroinitializer }, align 32
@clk_virt_bcms = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bcm_qup0, ptr @bcm_qup1, ptr @bcm_qup2], [20 x i8] zeroinitializer }, align 32
@qup0_core_slave = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.54, [128 x i16] zeroinitializer, i16 575, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qup1_core_slave = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.55, [128 x i16] zeroinitializer, i16 576, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qup2_core_slave = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.56, [128 x i16] zeroinitializer, i16 577, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qup0_core_master\00", [47 x i8] zeroinitializer }, align 32
@qup0_core_master = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.48, <{ i16, [127 x i16] }> <{ i16 575, [127 x i16] zeroinitializer }>, i16 40, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qup1_core_master\00", [47 x i8] zeroinitializer }, align 32
@qup1_core_master = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.50, <{ i16, [127 x i16] }> <{ i16 576, [127 x i16] zeroinitializer }>, i16 41, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qup2_core_master\00", [47 x i8] zeroinitializer }, align 32
@qup2_core_master = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.52, <{ i16, [127 x i16] }> <{ i16 577, [127 x i16] zeroinitializer }>, i16 42, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qup0_core_slave\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qup1_core_slave\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qup2_core_slave\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QUP0\00", [27 x i8] zeroinitializer }, align 32
@bcm_qup0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.57, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 1, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qup0_core_slave] }>, [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QUP1\00", [27 x i8] zeroinitializer }, align 32
@bcm_qup1 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.59, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 1, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qup1_core_slave] }>, [52 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QUP2\00", [27 x i8] zeroinitializer }, align 32
@bcm_qup2 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.61, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 1, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qup2_core_slave] }>, [52 x i8] zeroinitializer }, align 32
@config_noc_nodes = internal global { [55 x ptr], [36 x i8] } { [55 x ptr] [ptr @qnm_gemnoc_cnoc, ptr @qnm_gemnoc_pcie, ptr @qhs_ahb2phy0, ptr @qhs_ahb2phy1, ptr @qhs_aoss, ptr @qhs_camera_cfg, ptr @qhs_clk_ctl, ptr @qhs_compute_cfg, ptr @qhs_cpr_cx, ptr @qhs_cpr_mmcx, ptr @qhs_cpr_mxa, ptr @qhs_cpr_mxc, ptr @qhs_crypto0_cfg, ptr @qhs_cx_rdpm, ptr @qhs_display_cfg, ptr @qhs_gpuss_cfg, ptr @qhs_imem_cfg, ptr @qhs_ipa, ptr @qhs_ipc_router, ptr @qhs_lpass_cfg, ptr @qhs_mss_cfg, ptr @qhs_mx_rdpm, ptr @qhs_pcie0_cfg, ptr @qhs_pcie1_cfg, ptr @qhs_pdm, ptr @qhs_pimem_cfg, ptr @qhs_prng, ptr @qhs_qdss_cfg, ptr @qhs_qspi, ptr @qhs_qup0, ptr @qhs_qup1, ptr @qhs_qup2, ptr @qhs_sdc2, ptr @qhs_sdc4, ptr @qhs_spss_cfg, ptr @qhs_tcsr, ptr @qhs_tlmm, ptr @qhs_tme_cfg, ptr @qhs_ufs_mem_cfg, ptr @qhs_usb3_0, ptr @qhs_venus_cfg, ptr @qhs_vsense_ctrl_cfg, ptr @qns_a1_noc_cfg, ptr @qns_a2_noc_cfg, ptr @qns_ddrss_cfg, ptr @qns_mnoc_cfg, ptr @qns_pcie_anoc_cfg, ptr @qns_snoc_cfg, ptr @qxs_imem, ptr @qxs_pimem, ptr @srvc_cnoc, ptr @xs_pcie_0, ptr @xs_pcie_1, ptr @xs_qdss_stm, ptr @xs_sys_tcu_cfg], [36 x i8] zeroinitializer }, align 32
@config_noc_bcms = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @bcm_cn0], [28 x i8] zeroinitializer }, align 32
@qhs_ahb2phy0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.67, [128 x i16] zeroinitializer, i16 513, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_ahb2phy1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.68, [128 x i16] zeroinitializer, i16 514, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_aoss = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.69, [128 x i16] zeroinitializer, i16 515, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_camera_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.70, [128 x i16] zeroinitializer, i16 516, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_clk_ctl = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.71, [128 x i16] zeroinitializer, i16 517, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_compute_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.72, [128 x i16] zeroinitializer, i16 518, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_cpr_cx = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.73, [128 x i16] zeroinitializer, i16 519, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_cpr_mmcx = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.74, [128 x i16] zeroinitializer, i16 520, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_cpr_mxa = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.75, [128 x i16] zeroinitializer, i16 521, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_cpr_mxc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.76, [128 x i16] zeroinitializer, i16 522, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_crypto0_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.77, [128 x i16] zeroinitializer, i16 523, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_cx_rdpm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.78, [128 x i16] zeroinitializer, i16 524, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_display_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.79, [128 x i16] zeroinitializer, i16 525, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_gpuss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.80, [128 x i16] zeroinitializer, i16 526, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_imem_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.81, [128 x i16] zeroinitializer, i16 527, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_ipa = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.82, [128 x i16] zeroinitializer, i16 528, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_ipc_router = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.83, [128 x i16] zeroinitializer, i16 529, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_lpass_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.84, [128 x i16] zeroinitializer, i16 530, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_mss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.85, [128 x i16] zeroinitializer, i16 535, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_mx_rdpm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.86, [128 x i16] zeroinitializer, i16 536, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_pcie0_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.87, [128 x i16] zeroinitializer, i16 537, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_pcie1_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.88, [128 x i16] zeroinitializer, i16 538, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_pdm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.89, [128 x i16] zeroinitializer, i16 539, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_pimem_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.90, [128 x i16] zeroinitializer, i16 540, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_prng = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.91, [128 x i16] zeroinitializer, i16 541, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_qdss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.92, [128 x i16] zeroinitializer, i16 542, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_qspi = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.93, [128 x i16] zeroinitializer, i16 543, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_qup0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.94, [128 x i16] zeroinitializer, i16 544, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_qup1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.95, [128 x i16] zeroinitializer, i16 545, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_qup2 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.96, [128 x i16] zeroinitializer, i16 546, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_sdc2 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.97, [128 x i16] zeroinitializer, i16 547, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_sdc4 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.98, [128 x i16] zeroinitializer, i16 548, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_spss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.99, [128 x i16] zeroinitializer, i16 549, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_tcsr = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.100, [128 x i16] zeroinitializer, i16 550, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_tlmm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.101, [128 x i16] zeroinitializer, i16 551, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_tme_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.102, [128 x i16] zeroinitializer, i16 552, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_ufs_mem_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.103, [128 x i16] zeroinitializer, i16 553, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_usb3_0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.104, [128 x i16] zeroinitializer, i16 554, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_venus_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.105, [128 x i16] zeroinitializer, i16 555, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_vsense_ctrl_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.106, [128 x i16] zeroinitializer, i16 556, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qns_ddrss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.111, [128 x i16] zeroinitializer, i16 561, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qxs_imem = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.118, [128 x i16] zeroinitializer, i16 578, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qxs_pimem = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.119, [128 x i16] zeroinitializer, i16 579, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@srvc_cnoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.120, [128 x i16] zeroinitializer, i16 583, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@xs_pcie_0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.121, [128 x i16] zeroinitializer, i16 589, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@xs_pcie_1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.122, [128 x i16] zeroinitializer, i16 590, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@xs_qdss_stm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.123, [128 x i16] zeroinitializer, i16 591, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@xs_sys_tcu_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.124, [128 x i16] zeroinitializer, i16 592, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qnm_gemnoc_cnoc\00", [16 x i8] zeroinitializer }, align 32
@qnm_gemnoc_cnoc = internal global { { ptr, <{ [51 x i16], [77 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ [51 x i16], [77 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.63, <{ [51 x i16], [77 x i16] }> <{ [51 x i16] [i16 513, i16 514, i16 515, i16 516, i16 517, i16 518, i16 519, i16 520, i16 521, i16 522, i16 523, i16 524, i16 525, i16 526, i16 527, i16 528, i16 529, i16 530, i16 535, i16 536, i16 537, i16 538, i16 539, i16 540, i16 541, i16 542, i16 543, i16 544, i16 545, i16 546, i16 547, i16 548, i16 549, i16 550, i16 551, i16 552, i16 553, i16 554, i16 555, i16 556, i16 557, i16 559, i16 561, i16 568, i16 571, i16 573, i16 578, i16 579, i16 583, i16 591, i16 592], [77 x i16] zeroinitializer }>, i16 19, i16 51, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qnm_gemnoc_pcie\00", [16 x i8] zeroinitializer }, align 32
@qnm_gemnoc_pcie = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.65, <{ i16, i16, [126 x i16] }> <{ i16 589, i16 590, [126 x i16] zeroinitializer }>, i16 20, i16 2, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qhs_ahb2phy0\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qhs_ahb2phy1\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_aoss\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qhs_camera_cfg\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qhs_clk_ctl\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qhs_compute_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qhs_cpr_cx\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qhs_cpr_mmcx\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qhs_cpr_mxa\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qhs_cpr_mxc\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qhs_crypto0_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qhs_cx_rdpm\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qhs_display_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_gpuss_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qhs_imem_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qhs_ipa\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qhs_ipc_router\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_lpass_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qhs_mss_cfg\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qhs_mx_rdpm\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_pcie0_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_pcie1_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qhs_pdm\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_pimem_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_prng\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qhs_qdss_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_qspi\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_qup0\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_qup1\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_qup2\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_sdc2\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_sdc4\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qhs_spss_cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_tcsr\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qhs_tlmm\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qhs_tme_cfg\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qhs_ufs_mem_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qhs_usb3_0\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_venus_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qhs_vsense_ctrl_cfg\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qns_a1_noc_cfg\00", [17 x i8] zeroinitializer }, align 32
@qns_a1_noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.107, <{ i16, [127 x i16] }> <{ i16 12, [127 x i16] zeroinitializer }>, i16 557, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qns_a2_noc_cfg\00", [17 x i8] zeroinitializer }, align 32
@qns_a2_noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.109, <{ i16, [127 x i16] }> <{ i16 13, [127 x i16] zeroinitializer }>, i16 559, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qns_ddrss_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qns_mnoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@qns_mnoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.112, <{ i16, [127 x i16] }> <{ i16 25, [127 x i16] zeroinitializer }>, i16 568, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qns_pcie_anoc_cfg\00", [46 x i8] zeroinitializer }, align 32
@qns_pcie_anoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.114, <{ i16, [127 x i16] }> <{ i16 30, [127 x i16] zeroinitializer }>, i16 571, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qns_snoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@qns_snoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.116, <{ i16, [127 x i16] }> <{ i16 32, [127 x i16] zeroinitializer }>, i16 573, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qxs_imem\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qxs_pimem\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"srvc_cnoc\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xs_pcie_0\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xs_pcie_1\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xs_qdss_stm\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xs_sys_tcu_cfg\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CN0\00", [28 x i8] zeroinitializer }, align 32
@bcm_cn0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [55 x ptr] }>, [92 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [55 x ptr] }> <{ ptr @.str.125, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 55, [55 x ptr] [ptr @qnm_gemnoc_cnoc, ptr @qnm_gemnoc_pcie, ptr @qhs_ahb2phy0, ptr @qhs_ahb2phy1, ptr @qhs_aoss, ptr @qhs_camera_cfg, ptr @qhs_clk_ctl, ptr @qhs_compute_cfg, ptr @qhs_cpr_cx, ptr @qhs_cpr_mmcx, ptr @qhs_cpr_mxa, ptr @qhs_cpr_mxc, ptr @qhs_crypto0_cfg, ptr @qhs_cx_rdpm, ptr @qhs_display_cfg, ptr @qhs_gpuss_cfg, ptr @qhs_imem_cfg, ptr @qhs_ipa, ptr @qhs_ipc_router, ptr @qhs_lpass_cfg, ptr @qhs_mss_cfg, ptr @qhs_mx_rdpm, ptr @qhs_pcie0_cfg, ptr @qhs_pcie1_cfg, ptr @qhs_pdm, ptr @qhs_pimem_cfg, ptr @qhs_prng, ptr @qhs_qdss_cfg, ptr @qhs_qspi, ptr @qhs_qup0, ptr @qhs_qup1, ptr @qhs_qup2, ptr @qhs_sdc2, ptr @qhs_sdc4, ptr @qhs_spss_cfg, ptr @qhs_tcsr, ptr @qhs_tlmm, ptr @qhs_tme_cfg, ptr @qhs_ufs_mem_cfg, ptr @qhs_usb3_0, ptr @qhs_venus_cfg, ptr @qhs_vsense_ctrl_cfg, ptr @qns_a1_noc_cfg, ptr @qns_a2_noc_cfg, ptr @qns_ddrss_cfg, ptr @qns_mnoc_cfg, ptr @qns_pcie_anoc_cfg, ptr @qns_snoc_cfg, ptr @qxs_imem, ptr @qxs_pimem, ptr @srvc_cnoc, ptr @xs_pcie_0, ptr @xs_pcie_1, ptr @xs_qdss_stm, ptr @xs_sys_tcu_cfg] }>, [92 x i8] zeroinitializer }, align 32
@gem_noc_nodes = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @alm_gpu_tcu, ptr @alm_sys_tcu, ptr @chm_apps, ptr @qnm_gpu, ptr @qnm_mdsp, ptr @qnm_mnoc_hf, ptr @qnm_mnoc_sf, ptr @qnm_nsp_gemnoc, ptr @qnm_pcie, ptr @qnm_snoc_gc, ptr @qnm_snoc_sf, ptr @qns_gem_noc_cnoc, ptr @qns_llcc, ptr @qns_pcie, ptr @qnm_mnoc_hf_disp, ptr @qnm_mnoc_sf_disp, ptr @qnm_pcie_disp, ptr @qns_llcc_disp], [56 x i8] zeroinitializer }, align 32
@gem_noc_bcms = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @bcm_sh0, ptr @bcm_sh1, ptr @bcm_sh0_disp, ptr @bcm_sh1_disp], [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alm_gpu_tcu\00", [20 x i8] zeroinitializer }, align 32
@alm_gpu_tcu = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.127, <{ i16, i16, [126 x i16] }> <{ i16 562, i16 565, [126 x i16] zeroinitializer }>, i16 0, i16 2, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alm_sys_tcu\00", [20 x i8] zeroinitializer }, align 32
@alm_sys_tcu = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.129, <{ i16, i16, [126 x i16] }> <{ i16 562, i16 565, [126 x i16] zeroinitializer }>, i16 1, i16 2, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chm_apps\00", [23 x i8] zeroinitializer }, align 32
@chm_apps = internal global { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.131, <{ i16, i16, i16, [125 x i16] }> <{ i16 562, i16 565, i16 570, [125 x i16] zeroinitializer }>, i16 2, i16 3, i16 3, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qnm_gpu\00", [24 x i8] zeroinitializer }, align 32
@qnm_gpu = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.133, <{ i16, i16, [126 x i16] }> <{ i16 562, i16 565, [126 x i16] zeroinitializer }>, i16 21, i16 2, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qnm_mdsp\00", [23 x i8] zeroinitializer }, align 32
@qnm_mdsp = internal global { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.135, <{ i16, i16, i16, [125 x i16] }> <{ i16 562, i16 565, i16 570, [125 x i16] zeroinitializer }>, i16 24, i16 3, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qnm_mnoc_hf\00", [20 x i8] zeroinitializer }, align 32
@qnm_mnoc_hf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.137, <{ i16, [127 x i16] }> <{ i16 565, [127 x i16] zeroinitializer }>, i16 26, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qnm_mnoc_sf\00", [20 x i8] zeroinitializer }, align 32
@qnm_mnoc_sf = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.139, <{ i16, i16, [126 x i16] }> <{ i16 562, i16 565, [126 x i16] zeroinitializer }>, i16 27, i16 2, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qnm_nsp_gemnoc\00", [17 x i8] zeroinitializer }, align 32
@qnm_nsp_gemnoc = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.141, <{ i16, i16, [126 x i16] }> <{ i16 562, i16 565, [126 x i16] zeroinitializer }>, i16 28, i16 2, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qnm_pcie\00", [23 x i8] zeroinitializer }, align 32
@qnm_pcie = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.143, <{ i16, i16, [126 x i16] }> <{ i16 562, i16 565, [126 x i16] zeroinitializer }>, i16 29, i16 2, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qnm_snoc_gc\00", [20 x i8] zeroinitializer }, align 32
@qnm_snoc_gc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.145, <{ i16, [127 x i16] }> <{ i16 565, [127 x i16] zeroinitializer }>, i16 33, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qnm_snoc_sf\00", [20 x i8] zeroinitializer }, align 32
@qnm_snoc_sf = internal global { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.147, <{ i16, i16, i16, [125 x i16] }> <{ i16 562, i16 565, i16 570, [125 x i16] zeroinitializer }>, i16 34, i16 3, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qns_gem_noc_cnoc\00", [47 x i8] zeroinitializer }, align 32
@qns_gem_noc_cnoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.149, <{ i16, [127 x i16] }> <{ i16 19, [127 x i16] zeroinitializer }>, i16 562, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qns_llcc\00", [23 x i8] zeroinitializer }, align 32
@qns_llcc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.151, <{ i16, [127 x i16] }> <{ i16 3, [127 x i16] zeroinitializer }>, i16 565, i16 1, i16 4, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qns_pcie\00", [23 x i8] zeroinitializer }, align 32
@qns_pcie = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.153, <{ i16, [127 x i16] }> <{ i16 20, [127 x i16] zeroinitializer }>, i16 570, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qnm_mnoc_hf_disp\00", [47 x i8] zeroinitializer }, align 32
@qnm_mnoc_hf_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.155, <{ i16, [127 x i16] }> <{ i16 1513, [127 x i16] zeroinitializer }>, i16 1002, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qnm_mnoc_sf_disp\00", [47 x i8] zeroinitializer }, align 32
@qnm_mnoc_sf_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.157, <{ i16, [127 x i16] }> <{ i16 1513, [127 x i16] zeroinitializer }>, i16 1003, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_pcie_disp\00", [18 x i8] zeroinitializer }, align 32
@qnm_pcie_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.159, <{ i16, [127 x i16] }> <{ i16 1513, [127 x i16] zeroinitializer }>, i16 1004, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qns_llcc_disp\00", [18 x i8] zeroinitializer }, align 32
@qns_llcc_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.161, <{ i16, [127 x i16] }> <{ i16 1000, [127 x i16] zeroinitializer }>, i16 1513, i16 1, i16 4, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SH0\00", [28 x i8] zeroinitializer }, align 32
@bcm_sh0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.163, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qns_llcc] }>, [52 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SH1\00", [28 x i8] zeroinitializer }, align 32
@bcm_sh1 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [7 x ptr] }>, [60 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [7 x ptr] }> <{ ptr @.str.165, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 7, [7 x ptr] [ptr @alm_gpu_tcu, ptr @alm_sys_tcu, ptr @qnm_nsp_gemnoc, ptr @qnm_pcie, ptr @qnm_snoc_gc, ptr @qns_gem_noc_cnoc, ptr @qns_pcie] }>, [60 x i8] zeroinitializer }, align 32
@bcm_sh0_disp = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.163, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qns_llcc_disp] }>, [52 x i8] zeroinitializer }, align 32
@bcm_sh1_disp = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.165, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qnm_pcie_disp] }>, [52 x i8] zeroinitializer }, align 32
@lpass_ag_noc_nodes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @qhm_config_noc, ptr @qxm_lpass_dsp, ptr @qhs_lpass_core, ptr @qhs_lpass_lpi, ptr @qhs_lpass_mpu, ptr @qhs_lpass_top, ptr @qns_sysnoc, ptr @srvc_niu_aml_noc, ptr @srvc_niu_lpass_agnoc], [60 x i8] zeroinitializer }, align 32
@lpass_ag_noc_bcms = internal global { [0 x ptr], [32 x i8] } zeroinitializer, align 32
@qhs_lpass_core = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.173, [128 x i16] zeroinitializer, i16 531, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_lpass_lpi = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.174, [128 x i16] zeroinitializer, i16 532, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_lpass_mpu = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.175, [128 x i16] zeroinitializer, i16 533, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@qhs_lpass_top = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.176, [128 x i16] zeroinitializer, i16 534, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@srvc_niu_aml_noc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.179, [128 x i16] zeroinitializer, i16 585, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@srvc_niu_lpass_agnoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.180, [128 x i16] zeroinitializer, i16 586, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qhm_config_noc\00", [17 x i8] zeroinitializer }, align 32
@qhm_config_noc = internal global { { ptr, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.169, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }> <{ i16 531, i16 532, i16 533, i16 534, i16 585, i16 586, [122 x i16] zeroinitializer }>, i16 4, i16 6, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qxm_lpass_dsp\00", [18 x i8] zeroinitializer }, align 32
@qxm_lpass_dsp = internal global { { ptr, <{ i16, i16, i16, i16, [124 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, i16, [124 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.171, <{ i16, i16, i16, i16, [124 x i16] }> <{ i16 534, i16 574, i16 585, i16 586, [124 x i16] zeroinitializer }>, i16 45, i16 4, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qhs_lpass_core\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_lpass_lpi\00", [18 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_lpass_mpu\00", [18 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qhs_lpass_top\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qns_sysnoc\00", [21 x i8] zeroinitializer }, align 32
@qns_sysnoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.177, <{ i16, [127 x i16] }> <{ i16 22, [127 x i16] zeroinitializer }>, i16 574, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srvc_niu_aml_noc\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"srvc_niu_lpass_agnoc\00", [43 x i8] zeroinitializer }, align 32
@mc_virt_nodes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @llcc_mc, ptr @ebi, ptr @llcc_mc_disp, ptr @ebi_disp], [16 x i8] zeroinitializer }, align 32
@mc_virt_bcms = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @bcm_acv, ptr @bcm_mc0, ptr @bcm_acv_disp, ptr @bcm_mc0_disp], [16 x i8] zeroinitializer }, align 32
@ebi = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.183, [128 x i16] zeroinitializer, i16 512, i16 0, i16 4, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@ebi_disp = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.186, [128 x i16] zeroinitializer, i16 1512, i16 0, i16 4, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"llcc_mc\00", [24 x i8] zeroinitializer }, align 32
@llcc_mc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.181, <{ i16, [127 x i16] }> <{ i16 512, [127 x i16] zeroinitializer }>, i16 3, i16 1, i16 4, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ebi\00", [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"llcc_mc_disp\00", [19 x i8] zeroinitializer }, align 32
@llcc_mc_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.184, <{ i16, [127 x i16] }> <{ i16 1512, [127 x i16] zeroinitializer }>, i16 1000, i16 1, i16 4, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ebi_disp\00", [23 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACV\00", [28 x i8] zeroinitializer }, align 32
@bcm_acv = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.187, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @ebi] }>, [52 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MC0\00", [28 x i8] zeroinitializer }, align 32
@bcm_mc0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.189, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @ebi] }>, [52 x i8] zeroinitializer }, align 32
@bcm_acv_disp = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.187, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @ebi_disp] }>, [52 x i8] zeroinitializer }, align 32
@bcm_mc0_disp = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.189, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @ebi_disp] }>, [52 x i8] zeroinitializer }, align 32
@mmss_noc_nodes = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @qnm_camnoc_hf, ptr @qnm_camnoc_icp, ptr @qnm_camnoc_sf, ptr @qnm_mdp, ptr @qnm_mnoc_cfg, ptr @qnm_rot, ptr @qnm_vapss_hcp, ptr @qnm_video, ptr @qnm_video_cv_cpu, ptr @qnm_video_cvp, ptr @qnm_video_v_cpu, ptr @qns_mem_noc_hf, ptr @qns_mem_noc_sf, ptr @srvc_mnoc, ptr @qnm_mdp_disp, ptr @qnm_rot_disp, ptr @qns_mem_noc_hf_disp, ptr @qns_mem_noc_sf_disp], [56 x i8] zeroinitializer }, align 32
@mmss_noc_bcms = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @bcm_mm0, ptr @bcm_mm1, ptr @bcm_mm0_disp, ptr @bcm_mm1_disp], [16 x i8] zeroinitializer }, align 32
@srvc_mnoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.219, [128 x i16] zeroinitializer, i16 584, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_camnoc_hf\00", [18 x i8] zeroinitializer }, align 32
@qnm_camnoc_hf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.193, <{ i16, [127 x i16] }> <{ i16 566, [127 x i16] zeroinitializer }>, i16 16, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qnm_camnoc_icp\00", [17 x i8] zeroinitializer }, align 32
@qnm_camnoc_icp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.195, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 17, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_camnoc_sf\00", [18 x i8] zeroinitializer }, align 32
@qnm_camnoc_sf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.197, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 18, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qnm_mdp\00", [24 x i8] zeroinitializer }, align 32
@qnm_mdp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.199, <{ i16, [127 x i16] }> <{ i16 566, [127 x i16] zeroinitializer }>, i16 23, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnm_mnoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@qnm_mnoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.201, <{ i16, [127 x i16] }> <{ i16 584, [127 x i16] zeroinitializer }>, i16 25, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qnm_rot\00", [24 x i8] zeroinitializer }, align 32
@qnm_rot = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.203, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 31, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_vapss_hcp\00", [18 x i8] zeroinitializer }, align 32
@qnm_vapss_hcp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.205, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 35, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qnm_video\00", [22 x i8] zeroinitializer }, align 32
@qnm_video = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.207, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 36, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qnm_video_cv_cpu\00", [47 x i8] zeroinitializer }, align 32
@qnm_video_cv_cpu = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.209, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 37, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_video_cvp\00", [18 x i8] zeroinitializer }, align 32
@qnm_video_cvp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.211, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 38, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qnm_video_v_cpu\00", [16 x i8] zeroinitializer }, align 32
@qnm_video_v_cpu = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.213, <{ i16, [127 x i16] }> <{ i16 567, [127 x i16] zeroinitializer }>, i16 39, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qns_mem_noc_hf\00", [17 x i8] zeroinitializer }, align 32
@qns_mem_noc_hf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.215, <{ i16, [127 x i16] }> <{ i16 26, [127 x i16] zeroinitializer }>, i16 566, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qns_mem_noc_sf\00", [17 x i8] zeroinitializer }, align 32
@qns_mem_noc_sf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.217, <{ i16, [127 x i16] }> <{ i16 27, [127 x i16] zeroinitializer }>, i16 567, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"srvc_mnoc\00", [22 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnm_mdp_disp\00", [19 x i8] zeroinitializer }, align 32
@qnm_mdp_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.220, <{ i16, [127 x i16] }> <{ i16 1514, [127 x i16] zeroinitializer }>, i16 1001, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnm_rot_disp\00", [19 x i8] zeroinitializer }, align 32
@qnm_rot_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.222, <{ i16, [127 x i16] }> <{ i16 1515, [127 x i16] zeroinitializer }>, i16 1005, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qns_mem_noc_hf_disp\00", [44 x i8] zeroinitializer }, align 32
@qns_mem_noc_hf_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.224, <{ i16, [127 x i16] }> <{ i16 1002, [127 x i16] zeroinitializer }>, i16 1514, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qns_mem_noc_sf_disp\00", [44 x i8] zeroinitializer }, align 32
@qns_mem_noc_sf_disp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.226, <{ i16, [127 x i16] }> <{ i16 1003, [127 x i16] zeroinitializer }>, i16 1515, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MM0\00", [28 x i8] zeroinitializer }, align 32
@bcm_mm0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.228, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qns_mem_noc_hf] }>, [52 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MM1\00", [28 x i8] zeroinitializer }, align 32
@bcm_mm1 = internal global { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [12 x ptr] }, [40 x i8] } { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [12 x ptr] } { ptr @.str.230, i32 0, i32 0, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 12, [12 x ptr] [ptr @qnm_camnoc_hf, ptr @qnm_camnoc_icp, ptr @qnm_camnoc_sf, ptr @qnm_mdp, ptr @qnm_mnoc_cfg, ptr @qnm_rot, ptr @qnm_vapss_hcp, ptr @qnm_video, ptr @qnm_video_cv_cpu, ptr @qnm_video_cvp, ptr @qnm_video_v_cpu, ptr @qns_mem_noc_sf] }, [40 x i8] zeroinitializer }, align 32
@bcm_mm0_disp = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.228, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qns_mem_noc_hf_disp] }>, [52 x i8] zeroinitializer }, align 32
@bcm_mm1_disp = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [3 x ptr] }>, [44 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [3 x ptr] }> <{ ptr @.str.230, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 3, [3 x ptr] [ptr @qnm_mdp_disp, ptr @qnm_rot_disp, ptr @qns_mem_noc_sf_disp] }>, [44 x i8] zeroinitializer }, align 32
@nsp_noc_nodes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @qhm_nsp_noc_config, ptr @qxm_nsp, ptr @qns_nsp_gemnoc, ptr @service_nsp_noc], [16 x i8] zeroinitializer }, align 32
@nsp_noc_bcms = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @bcm_co0], [28 x i8] zeroinitializer }, align 32
@service_nsp_noc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.240, [128 x i16] zeroinitializer, i16 580, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qhm_nsp_noc_config\00", [45 x i8] zeroinitializer }, align 32
@qhm_nsp_noc_config = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.234, <{ i16, [127 x i16] }> <{ i16 580, [127 x i16] zeroinitializer }>, i16 6, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qxm_nsp\00", [24 x i8] zeroinitializer }, align 32
@qxm_nsp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.236, <{ i16, [127 x i16] }> <{ i16 569, [127 x i16] zeroinitializer }>, i16 46, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qns_nsp_gemnoc\00", [17 x i8] zeroinitializer }, align 32
@qns_nsp_gemnoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.238, <{ i16, [127 x i16] }> <{ i16 28, [127 x i16] zeroinitializer }>, i16 569, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"service_nsp_noc\00", [16 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CO0\00", [28 x i8] zeroinitializer }, align 32
@bcm_co0 = internal global { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [2 x ptr] }, [48 x i8] } { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [2 x ptr] } { ptr @.str.241, i32 0, i32 0, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, [2 x ptr] [ptr @qxm_nsp, ptr @qns_nsp_gemnoc] }, [48 x i8] zeroinitializer }, align 32
@pcie_anoc_nodes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @qnm_pcie_anoc_cfg, ptr @xm_pcie3_0, ptr @xm_pcie3_1, ptr @qns_pcie_mem_noc, ptr @srvc_pcie_aggre_noc], [44 x i8] zeroinitializer }, align 32
@pcie_anoc_bcms = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @bcm_sn7], [28 x i8] zeroinitializer }, align 32
@srvc_pcie_aggre_noc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.251, [128 x i16] zeroinitializer, i16 587, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qnm_pcie_anoc_cfg\00", [46 x i8] zeroinitializer }, align 32
@qnm_pcie_anoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.243, <{ i16, [127 x i16] }> <{ i16 587, [127 x i16] zeroinitializer }>, i16 30, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xm_pcie3_0\00", [21 x i8] zeroinitializer }, align 32
@xm_pcie3_0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.245, <{ i16, [127 x i16] }> <{ i16 572, [127 x i16] zeroinitializer }>, i16 51, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xm_pcie3_1\00", [21 x i8] zeroinitializer }, align 32
@xm_pcie3_1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.247, <{ i16, [127 x i16] }> <{ i16 572, [127 x i16] zeroinitializer }>, i16 52, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qns_pcie_mem_noc\00", [47 x i8] zeroinitializer }, align 32
@qns_pcie_mem_noc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.249, <{ i16, [127 x i16] }> <{ i16 29, [127 x i16] zeroinitializer }>, i16 572, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"srvc_pcie_aggre_noc\00", [44 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN7\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn7 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.252, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qns_pcie_mem_noc] }>, [52 x i8] zeroinitializer }, align 32
@system_noc_nodes = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @qhm_gic, ptr @qnm_aggre1_noc, ptr @qnm_aggre2_noc, ptr @qnm_lpass_noc, ptr @qnm_snoc_cfg, ptr @qxm_pimem, ptr @xm_gic, ptr @qns_gemnoc_gc, ptr @qns_gemnoc_sf, ptr @srvc_snoc], [56 x i8] zeroinitializer }, align 32
@system_noc_bcms = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @bcm_sn0, ptr @bcm_sn1, ptr @bcm_sn2, ptr @bcm_sn3, ptr @bcm_sn4], [44 x i8] zeroinitializer }, align 32
@srvc_snoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.272, [128 x i16] zeroinitializer, i16 588, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qhm_gic\00", [24 x i8] zeroinitializer }, align 32
@qhm_gic = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.254, <{ i16, [127 x i16] }> <{ i16 564, [127 x i16] zeroinitializer }>, i16 5, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qnm_aggre1_noc\00", [17 x i8] zeroinitializer }, align 32
@qnm_aggre1_noc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.256, <{ i16, [127 x i16] }> <{ i16 564, [127 x i16] zeroinitializer }>, i16 14, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qnm_aggre2_noc\00", [17 x i8] zeroinitializer }, align 32
@qnm_aggre2_noc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.258, <{ i16, [127 x i16] }> <{ i16 564, [127 x i16] zeroinitializer }>, i16 15, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qnm_lpass_noc\00", [18 x i8] zeroinitializer }, align 32
@qnm_lpass_noc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.260, <{ i16, [127 x i16] }> <{ i16 564, [127 x i16] zeroinitializer }>, i16 22, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnm_snoc_cfg\00", [19 x i8] zeroinitializer }, align 32
@qnm_snoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.262, <{ i16, [127 x i16] }> <{ i16 588, [127 x i16] zeroinitializer }>, i16 32, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qxm_pimem\00", [22 x i8] zeroinitializer }, align 32
@qxm_pimem = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.264, <{ i16, [127 x i16] }> <{ i16 563, [127 x i16] zeroinitializer }>, i16 47, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xm_gic\00", [25 x i8] zeroinitializer }, align 32
@xm_gic = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.266, <{ i16, [127 x i16] }> <{ i16 563, [127 x i16] zeroinitializer }>, i16 50, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qns_gemnoc_gc\00", [18 x i8] zeroinitializer }, align 32
@qns_gemnoc_gc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.268, <{ i16, [127 x i16] }> <{ i16 33, [127 x i16] zeroinitializer }>, i16 563, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qns_gemnoc_sf\00", [18 x i8] zeroinitializer }, align 32
@qns_gemnoc_sf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.270, <{ i16, [127 x i16] }> <{ i16 34, [127 x i16] zeroinitializer }>, i16 564, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"srvc_snoc\00", [22 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN0\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.273, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 1, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qns_gemnoc_sf] }>, [52 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN1\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn1 = internal global { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [4 x ptr] }, [40 x i8] } { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [4 x ptr] } { ptr @.str.275, i32 0, i32 0, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4, [4 x ptr] [ptr @qhm_gic, ptr @qxm_pimem, ptr @xm_gic, ptr @qns_gemnoc_gc] }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN2\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn2 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.277, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qnm_aggre1_noc] }>, [52 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN3\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn3 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.279, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qnm_aggre2_noc] }>, [52 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN4\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn4 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.281, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @qnm_lpass_noc] }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.283 = private unnamed_addr constant [12 x i8] c"qnoc_driver\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1965, i32 31 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1969, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant [14 x i8] c"qnoc_of_match\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1938, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1891, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"sm8450_aggre1_noc\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1543, i32 29 }
@___asan_gen_.313 = private unnamed_addr constant [18 x i8] c"sm8450_aggre2_noc\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1570, i32 29 }
@___asan_gen_.316 = private unnamed_addr constant [16 x i8] c"sm8450_clk_virt\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1592, i32 29 }
@___asan_gen_.319 = private unnamed_addr constant [18 x i8] c"sm8450_config_noc\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1661, i32 29 }
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"sm8450_gem_noc\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1696, i32 29 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"sm8450_lpass_ag_noc\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1718, i32 29 }
@___asan_gen_.328 = private unnamed_addr constant [15 x i8] c"sm8450_mc_virt\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1739, i32 29 }
@___asan_gen_.331 = private unnamed_addr constant [16 x i8] c"sm8450_mmss_noc\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1774, i32 29 }
@___asan_gen_.334 = private unnamed_addr constant [15 x i8] c"sm8450_nsp_noc\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1792, i32 29 }
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"sm8450_pcie_anoc\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1811, i32 29 }
@___asan_gen_.340 = private unnamed_addr constant [18 x i8] c"sm8450_system_noc\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1839, i32 29 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"aggre1_noc_nodes\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1532, i32 30 }
@___asan_gen_.346 = private unnamed_addr constant [16 x i8] c"aggre1_noc_bcms\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1529, i32 29 }
@___asan_gen_.349 = private unnamed_addr constant [16 x i8] c"srvc_aggre1_noc\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 643, i32 29 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 19, i32 10 }
@___asan_gen_.355 = private unnamed_addr constant [9 x i8] c"qhm_qspi\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 18, i32 29 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 28, i32 10 }
@___asan_gen_.361 = private unnamed_addr constant [9 x i8] c"qhm_qup1\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 27, i32 29 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 37, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant [14 x i8] c"qnm_a1noc_cfg\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 36, i32 29 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 46, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant [8 x i8] c"xm_sdc4\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 45, i32 29 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 55, i32 10 }
@___asan_gen_.379 = private unnamed_addr constant [11 x i8] c"xm_ufs_mem\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 54, i32 29 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 64, i32 10 }
@___asan_gen_.385 = private unnamed_addr constant [10 x i8] c"xm_usb3_0\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 63, i32 29 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 635, i32 10 }
@___asan_gen_.391 = private unnamed_addr constant [15 x i8] c"qns_a1noc_snoc\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 634, i32 29 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 644, i32 10 }
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"aggre2_noc_nodes\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1554, i32 30 }
@___asan_gen_.400 = private unnamed_addr constant [16 x i8] c"aggre2_noc_bcms\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1550, i32 29 }
@___asan_gen_.403 = private unnamed_addr constant [16 x i8] c"srvc_aggre2_noc\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 660, i32 29 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 73, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant [13 x i8] c"qhm_qdss_bam\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 72, i32 29 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 82, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant [9 x i8] c"qhm_qup0\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 81, i32 29 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 91, i32 10 }
@___asan_gen_.421 = private unnamed_addr constant [9 x i8] c"qhm_qup2\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 90, i32 29 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 100, i32 10 }
@___asan_gen_.427 = private unnamed_addr constant [14 x i8] c"qnm_a2noc_cfg\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 99, i32 29 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 109, i32 10 }
@___asan_gen_.433 = private unnamed_addr constant [11 x i8] c"qxm_crypto\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 108, i32 29 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 118, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant [8 x i8] c"qxm_ipa\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 117, i32 29 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 127, i32 10 }
@___asan_gen_.445 = private unnamed_addr constant [16 x i8] c"qxm_sensorss_q6\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 126, i32 29 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 136, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant [7 x i8] c"qxm_sp\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 135, i32 29 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 145, i32 10 }
@___asan_gen_.457 = private unnamed_addr constant [14 x i8] c"xm_qdss_etr_0\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 144, i32 29 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 154, i32 10 }
@___asan_gen_.463 = private unnamed_addr constant [14 x i8] c"xm_qdss_etr_1\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 153, i32 29 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 163, i32 10 }
@___asan_gen_.469 = private unnamed_addr constant [8 x i8] c"xm_sdc2\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 162, i32 29 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 652, i32 10 }
@___asan_gen_.475 = private unnamed_addr constant [15 x i8] c"qns_a2noc_snoc\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 651, i32 29 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 661, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1344, i32 10 }
@___asan_gen_.484 = private unnamed_addr constant [8 x i8] c"bcm_ce0\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1343, i32 28 }
@___asan_gen_.487 = private unnamed_addr constant [15 x i8] c"clk_virt_nodes\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1583, i32 30 }
@___asan_gen_.490 = private unnamed_addr constant [14 x i8] c"clk_virt_bcms\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1577, i32 29 }
@___asan_gen_.493 = private unnamed_addr constant [16 x i8] c"qup0_core_slave\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 668, i32 29 }
@___asan_gen_.496 = private unnamed_addr constant [16 x i8] c"qup1_core_slave\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 676, i32 29 }
@___asan_gen_.499 = private unnamed_addr constant [16 x i8] c"qup2_core_slave\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 684, i32 29 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 172, i32 10 }
@___asan_gen_.505 = private unnamed_addr constant [17 x i8] c"qup0_core_master\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 171, i32 29 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 181, i32 10 }
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"qup1_core_master\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 180, i32 29 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 190, i32 10 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"qup2_core_master\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 189, i32 29 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 669, i32 10 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 677, i32 10 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 685, i32 10 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1415, i32 10 }
@___asan_gen_.532 = private unnamed_addr constant [9 x i8] c"bcm_qup0\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1414, i32 28 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1423, i32 10 }
@___asan_gen_.538 = private unnamed_addr constant [9 x i8] c"bcm_qup1\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1422, i32 28 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1431, i32 10 }
@___asan_gen_.544 = private unnamed_addr constant [9 x i8] c"bcm_qup2\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1430, i32 28 }
@___asan_gen_.547 = private unnamed_addr constant [17 x i8] c"config_noc_nodes\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1603, i32 30 }
@___asan_gen_.550 = private unnamed_addr constant [16 x i8] c"config_noc_bcms\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1599, i32 29 }
@___asan_gen_.553 = private unnamed_addr constant [13 x i8] c"qhs_ahb2phy0\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 692, i32 29 }
@___asan_gen_.556 = private unnamed_addr constant [13 x i8] c"qhs_ahb2phy1\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 700, i32 29 }
@___asan_gen_.559 = private unnamed_addr constant [9 x i8] c"qhs_aoss\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 708, i32 29 }
@___asan_gen_.562 = private unnamed_addr constant [15 x i8] c"qhs_camera_cfg\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 716, i32 29 }
@___asan_gen_.565 = private unnamed_addr constant [12 x i8] c"qhs_clk_ctl\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 724, i32 29 }
@___asan_gen_.568 = private unnamed_addr constant [16 x i8] c"qhs_compute_cfg\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 732, i32 29 }
@___asan_gen_.571 = private unnamed_addr constant [11 x i8] c"qhs_cpr_cx\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 741, i32 29 }
@___asan_gen_.574 = private unnamed_addr constant [13 x i8] c"qhs_cpr_mmcx\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 749, i32 29 }
@___asan_gen_.577 = private unnamed_addr constant [12 x i8] c"qhs_cpr_mxa\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 757, i32 29 }
@___asan_gen_.580 = private unnamed_addr constant [12 x i8] c"qhs_cpr_mxc\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 765, i32 29 }
@___asan_gen_.583 = private unnamed_addr constant [16 x i8] c"qhs_crypto0_cfg\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 773, i32 29 }
@___asan_gen_.586 = private unnamed_addr constant [12 x i8] c"qhs_cx_rdpm\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 781, i32 29 }
@___asan_gen_.589 = private unnamed_addr constant [16 x i8] c"qhs_display_cfg\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 789, i32 29 }
@___asan_gen_.592 = private unnamed_addr constant [14 x i8] c"qhs_gpuss_cfg\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 797, i32 29 }
@___asan_gen_.595 = private unnamed_addr constant [13 x i8] c"qhs_imem_cfg\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 805, i32 29 }
@___asan_gen_.598 = private unnamed_addr constant [8 x i8] c"qhs_ipa\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 813, i32 29 }
@___asan_gen_.601 = private unnamed_addr constant [15 x i8] c"qhs_ipc_router\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 821, i32 29 }
@___asan_gen_.604 = private unnamed_addr constant [14 x i8] c"qhs_lpass_cfg\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 829, i32 29 }
@___asan_gen_.607 = private unnamed_addr constant [12 x i8] c"qhs_mss_cfg\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 838, i32 29 }
@___asan_gen_.610 = private unnamed_addr constant [12 x i8] c"qhs_mx_rdpm\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 846, i32 29 }
@___asan_gen_.613 = private unnamed_addr constant [14 x i8] c"qhs_pcie0_cfg\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 854, i32 29 }
@___asan_gen_.616 = private unnamed_addr constant [14 x i8] c"qhs_pcie1_cfg\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 862, i32 29 }
@___asan_gen_.619 = private unnamed_addr constant [8 x i8] c"qhs_pdm\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 870, i32 29 }
@___asan_gen_.622 = private unnamed_addr constant [14 x i8] c"qhs_pimem_cfg\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 878, i32 29 }
@___asan_gen_.625 = private unnamed_addr constant [9 x i8] c"qhs_prng\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 886, i32 29 }
@___asan_gen_.628 = private unnamed_addr constant [13 x i8] c"qhs_qdss_cfg\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 894, i32 29 }
@___asan_gen_.631 = private unnamed_addr constant [9 x i8] c"qhs_qspi\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 902, i32 29 }
@___asan_gen_.634 = private unnamed_addr constant [9 x i8] c"qhs_qup0\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 910, i32 29 }
@___asan_gen_.637 = private unnamed_addr constant [9 x i8] c"qhs_qup1\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 918, i32 29 }
@___asan_gen_.640 = private unnamed_addr constant [9 x i8] c"qhs_qup2\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 926, i32 29 }
@___asan_gen_.643 = private unnamed_addr constant [9 x i8] c"qhs_sdc2\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 934, i32 29 }
@___asan_gen_.646 = private unnamed_addr constant [9 x i8] c"qhs_sdc4\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 942, i32 29 }
@___asan_gen_.649 = private unnamed_addr constant [13 x i8] c"qhs_spss_cfg\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 950, i32 29 }
@___asan_gen_.652 = private unnamed_addr constant [9 x i8] c"qhs_tcsr\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 958, i32 29 }
@___asan_gen_.655 = private unnamed_addr constant [9 x i8] c"qhs_tlmm\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 966, i32 29 }
@___asan_gen_.658 = private unnamed_addr constant [12 x i8] c"qhs_tme_cfg\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 974, i32 29 }
@___asan_gen_.661 = private unnamed_addr constant [16 x i8] c"qhs_ufs_mem_cfg\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 982, i32 29 }
@___asan_gen_.664 = private unnamed_addr constant [11 x i8] c"qhs_usb3_0\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 990, i32 29 }
@___asan_gen_.667 = private unnamed_addr constant [14 x i8] c"qhs_venus_cfg\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 998, i32 29 }
@___asan_gen_.670 = private unnamed_addr constant [20 x i8] c"qhs_vsense_ctrl_cfg\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1006, i32 29 }
@___asan_gen_.673 = private unnamed_addr constant [14 x i8] c"qns_ddrss_cfg\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1032, i32 29 }
@___asan_gen_.676 = private unnamed_addr constant [9 x i8] c"qxs_imem\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1068, i32 29 }
@___asan_gen_.679 = private unnamed_addr constant [10 x i8] c"qxs_pimem\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1076, i32 29 }
@___asan_gen_.682 = private unnamed_addr constant [10 x i8] c"srvc_cnoc\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1084, i32 29 }
@___asan_gen_.685 = private unnamed_addr constant [10 x i8] c"xs_pcie_0\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1092, i32 29 }
@___asan_gen_.688 = private unnamed_addr constant [10 x i8] c"xs_pcie_1\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1100, i32 29 }
@___asan_gen_.691 = private unnamed_addr constant [12 x i8] c"xs_qdss_stm\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1108, i32 29 }
@___asan_gen_.694 = private unnamed_addr constant [15 x i8] c"xs_sys_tcu_cfg\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1116, i32 29 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 199, i32 10 }
@___asan_gen_.700 = private unnamed_addr constant [16 x i8] c"qnm_gemnoc_cnoc\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 198, i32 29 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 233, i32 10 }
@___asan_gen_.706 = private unnamed_addr constant [16 x i8] c"qnm_gemnoc_pcie\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 232, i32 29 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 693, i32 10 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 701, i32 10 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 709, i32 10 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 717, i32 10 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 725, i32 10 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 733, i32 10 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 742, i32 10 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 750, i32 10 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 758, i32 10 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 766, i32 10 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 774, i32 10 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 782, i32 10 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 790, i32 10 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 798, i32 10 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 806, i32 10 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 814, i32 10 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 822, i32 10 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 830, i32 10 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 839, i32 10 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 847, i32 10 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 855, i32 10 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 863, i32 10 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 871, i32 10 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 879, i32 10 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 887, i32 10 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 895, i32 10 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 903, i32 10 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 911, i32 10 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 919, i32 10 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 927, i32 10 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 935, i32 10 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 943, i32 10 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 951, i32 10 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 959, i32 10 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 967, i32 10 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 975, i32 10 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 983, i32 10 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 991, i32 10 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 999, i32 10 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1007, i32 10 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1015, i32 10 }
@___asan_gen_.832 = private unnamed_addr constant [15 x i8] c"qns_a1_noc_cfg\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1014, i32 29 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1024, i32 10 }
@___asan_gen_.838 = private unnamed_addr constant [15 x i8] c"qns_a2_noc_cfg\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1023, i32 29 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1033, i32 10 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1042, i32 10 }
@___asan_gen_.847 = private unnamed_addr constant [13 x i8] c"qns_mnoc_cfg\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1041, i32 29 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1051, i32 10 }
@___asan_gen_.853 = private unnamed_addr constant [18 x i8] c"qns_pcie_anoc_cfg\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1050, i32 29 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1060, i32 10 }
@___asan_gen_.859 = private unnamed_addr constant [13 x i8] c"qns_snoc_cfg\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1059, i32 29 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1069, i32 10 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1077, i32 10 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1085, i32 10 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1093, i32 10 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1101, i32 10 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1109, i32 10 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1117, i32 10 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1350, i32 10 }
@___asan_gen_.886 = private unnamed_addr constant [8 x i8] c"bcm_cn0\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1349, i32 28 }
@___asan_gen_.889 = private unnamed_addr constant [14 x i8] c"gem_noc_nodes\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1675, i32 30 }
@___asan_gen_.892 = private unnamed_addr constant [13 x i8] c"gem_noc_bcms\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1668, i32 29 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 242, i32 10 }
@___asan_gen_.898 = private unnamed_addr constant [12 x i8] c"alm_gpu_tcu\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 241, i32 29 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 251, i32 10 }
@___asan_gen_.904 = private unnamed_addr constant [12 x i8] c"alm_sys_tcu\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 250, i32 29 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 260, i32 10 }
@___asan_gen_.910 = private unnamed_addr constant [9 x i8] c"chm_apps\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 259, i32 29 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 270, i32 10 }
@___asan_gen_.916 = private unnamed_addr constant [8 x i8] c"qnm_gpu\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 269, i32 29 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 279, i32 10 }
@___asan_gen_.922 = private unnamed_addr constant [9 x i8] c"qnm_mdsp\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 278, i32 29 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 289, i32 10 }
@___asan_gen_.928 = private unnamed_addr constant [12 x i8] c"qnm_mnoc_hf\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 288, i32 29 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 298, i32 10 }
@___asan_gen_.934 = private unnamed_addr constant [12 x i8] c"qnm_mnoc_sf\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 297, i32 29 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 307, i32 10 }
@___asan_gen_.940 = private unnamed_addr constant [15 x i8] c"qnm_nsp_gemnoc\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 306, i32 29 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 316, i32 10 }
@___asan_gen_.946 = private unnamed_addr constant [9 x i8] c"qnm_pcie\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 315, i32 29 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 325, i32 10 }
@___asan_gen_.952 = private unnamed_addr constant [12 x i8] c"qnm_snoc_gc\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 324, i32 29 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 334, i32 10 }
@___asan_gen_.958 = private unnamed_addr constant [12 x i8] c"qnm_snoc_sf\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 333, i32 29 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1125, i32 10 }
@___asan_gen_.964 = private unnamed_addr constant [17 x i8] c"qns_gem_noc_cnoc\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1124, i32 29 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1134, i32 10 }
@___asan_gen_.970 = private unnamed_addr constant [9 x i8] c"qns_llcc\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1133, i32 29 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1143, i32 10 }
@___asan_gen_.976 = private unnamed_addr constant [9 x i8] c"qns_pcie\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1142, i32 29 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 581, i32 10 }
@___asan_gen_.982 = private unnamed_addr constant [17 x i8] c"qnm_mnoc_hf_disp\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 580, i32 29 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 590, i32 10 }
@___asan_gen_.988 = private unnamed_addr constant [17 x i8] c"qnm_mnoc_sf_disp\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 589, i32 29 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 599, i32 10 }
@___asan_gen_.994 = private unnamed_addr constant [14 x i8] c"qnm_pcie_disp\00", align 1
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 598, i32 29 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1303, i32 10 }
@___asan_gen_.1000 = private unnamed_addr constant [14 x i8] c"qns_llcc_disp\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1302, i32 29 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1439, i32 10 }
@___asan_gen_.1006 = private unnamed_addr constant [8 x i8] c"bcm_sh0\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1438, i32 28 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1446, i32 10 }
@___asan_gen_.1012 = private unnamed_addr constant [8 x i8] c"bcm_sh1\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1445, i32 28 }
@___asan_gen_.1015 = private unnamed_addr constant [13 x i8] c"bcm_sh0_disp\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1517, i32 28 }
@___asan_gen_.1018 = private unnamed_addr constant [13 x i8] c"bcm_sh1_disp\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1523, i32 28 }
@___asan_gen_.1021 = private unnamed_addr constant [19 x i8] c"lpass_ag_noc_nodes\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1706, i32 30 }
@___asan_gen_.1024 = private unnamed_addr constant [18 x i8] c"lpass_ag_noc_bcms\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1703, i32 29 }
@___asan_gen_.1027 = private unnamed_addr constant [15 x i8] c"qhs_lpass_core\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1151, i32 29 }
@___asan_gen_.1030 = private unnamed_addr constant [14 x i8] c"qhs_lpass_lpi\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1159, i32 29 }
@___asan_gen_.1033 = private unnamed_addr constant [14 x i8] c"qhs_lpass_mpu\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1167, i32 29 }
@___asan_gen_.1036 = private unnamed_addr constant [14 x i8] c"qhs_lpass_top\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1175, i32 29 }
@___asan_gen_.1039 = private unnamed_addr constant [17 x i8] c"srvc_niu_aml_noc\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1192, i32 29 }
@___asan_gen_.1042 = private unnamed_addr constant [21 x i8] c"srvc_niu_lpass_agnoc\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1200, i32 29 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 344, i32 10 }
@___asan_gen_.1048 = private unnamed_addr constant [15 x i8] c"qhm_config_noc\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 343, i32 29 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 355, i32 10 }
@___asan_gen_.1054 = private unnamed_addr constant [14 x i8] c"qxm_lpass_dsp\00", align 1
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 354, i32 29 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1152, i32 10 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1160, i32 10 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1168, i32 10 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1176, i32 10 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1184, i32 10 }
@___asan_gen_.1072 = private unnamed_addr constant [11 x i8] c"qns_sysnoc\00", align 1
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1183, i32 29 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1193, i32 10 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1201, i32 10 }
@___asan_gen_.1081 = private unnamed_addr constant [14 x i8] c"mc_virt_nodes\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1732, i32 30 }
@___asan_gen_.1084 = private unnamed_addr constant [13 x i8] c"mc_virt_bcms\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1725, i32 29 }
@___asan_gen_.1087 = private unnamed_addr constant [4 x i8] c"ebi\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1208, i32 29 }
@___asan_gen_.1090 = private unnamed_addr constant [9 x i8] c"ebi_disp\00", align 1
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1311, i32 29 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 365, i32 10 }
@___asan_gen_.1096 = private unnamed_addr constant [8 x i8] c"llcc_mc\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 364, i32 29 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1209, i32 10 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 608, i32 10 }
@___asan_gen_.1105 = private unnamed_addr constant [13 x i8] c"llcc_mc_disp\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 607, i32 29 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1312, i32 10 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1338, i32 10 }
@___asan_gen_.1114 = private unnamed_addr constant [8 x i8] c"bcm_acv\00", align 1
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1337, i32 28 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1390, i32 10 }
@___asan_gen_.1120 = private unnamed_addr constant [8 x i8] c"bcm_mc0\00", align 1
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1389, i32 28 }
@___asan_gen_.1123 = private unnamed_addr constant [13 x i8] c"bcm_acv_disp\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1492, i32 28 }
@___asan_gen_.1126 = private unnamed_addr constant [13 x i8] c"bcm_mc0_disp\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1498, i32 28 }
@___asan_gen_.1129 = private unnamed_addr constant [15 x i8] c"mmss_noc_nodes\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1753, i32 30 }
@___asan_gen_.1132 = private unnamed_addr constant [14 x i8] c"mmss_noc_bcms\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1746, i32 29 }
@___asan_gen_.1135 = private unnamed_addr constant [10 x i8] c"srvc_mnoc\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1234, i32 29 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 374, i32 10 }
@___asan_gen_.1141 = private unnamed_addr constant [14 x i8] c"qnm_camnoc_hf\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 373, i32 29 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 383, i32 10 }
@___asan_gen_.1147 = private unnamed_addr constant [15 x i8] c"qnm_camnoc_icp\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 382, i32 29 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 392, i32 10 }
@___asan_gen_.1153 = private unnamed_addr constant [14 x i8] c"qnm_camnoc_sf\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 391, i32 29 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 401, i32 10 }
@___asan_gen_.1159 = private unnamed_addr constant [8 x i8] c"qnm_mdp\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 400, i32 29 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 410, i32 10 }
@___asan_gen_.1165 = private unnamed_addr constant [13 x i8] c"qnm_mnoc_cfg\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 409, i32 29 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 419, i32 10 }
@___asan_gen_.1171 = private unnamed_addr constant [8 x i8] c"qnm_rot\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 418, i32 29 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 428, i32 10 }
@___asan_gen_.1177 = private unnamed_addr constant [14 x i8] c"qnm_vapss_hcp\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 427, i32 29 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 437, i32 10 }
@___asan_gen_.1183 = private unnamed_addr constant [10 x i8] c"qnm_video\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 436, i32 29 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 446, i32 10 }
@___asan_gen_.1189 = private unnamed_addr constant [17 x i8] c"qnm_video_cv_cpu\00", align 1
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 445, i32 29 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 455, i32 10 }
@___asan_gen_.1195 = private unnamed_addr constant [14 x i8] c"qnm_video_cvp\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 454, i32 29 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 464, i32 10 }
@___asan_gen_.1201 = private unnamed_addr constant [16 x i8] c"qnm_video_v_cpu\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 463, i32 29 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1217, i32 10 }
@___asan_gen_.1207 = private unnamed_addr constant [15 x i8] c"qns_mem_noc_hf\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1216, i32 29 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1226, i32 10 }
@___asan_gen_.1213 = private unnamed_addr constant [15 x i8] c"qns_mem_noc_sf\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1225, i32 29 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1235, i32 10 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 617, i32 10 }
@___asan_gen_.1222 = private unnamed_addr constant [13 x i8] c"qnm_mdp_disp\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 616, i32 29 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 626, i32 10 }
@___asan_gen_.1228 = private unnamed_addr constant [13 x i8] c"qnm_rot_disp\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 625, i32 29 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1320, i32 10 }
@___asan_gen_.1234 = private unnamed_addr constant [20 x i8] c"qns_mem_noc_hf_disp\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1319, i32 29 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1329, i32 10 }
@___asan_gen_.1240 = private unnamed_addr constant [20 x i8] c"qns_mem_noc_sf_disp\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1328, i32 29 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1397, i32 10 }
@___asan_gen_.1246 = private unnamed_addr constant [8 x i8] c"bcm_mm0\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1396, i32 28 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1404, i32 10 }
@___asan_gen_.1252 = private unnamed_addr constant [8 x i8] c"bcm_mm1\00", align 1
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1403, i32 28 }
@___asan_gen_.1255 = private unnamed_addr constant [13 x i8] c"bcm_mm0_disp\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1504, i32 28 }
@___asan_gen_.1258 = private unnamed_addr constant [13 x i8] c"bcm_mm1_disp\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1510, i32 28 }
@___asan_gen_.1261 = private unnamed_addr constant [14 x i8] c"nsp_noc_nodes\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1785, i32 30 }
@___asan_gen_.1264 = private unnamed_addr constant [13 x i8] c"nsp_noc_bcms\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1781, i32 29 }
@___asan_gen_.1267 = private unnamed_addr constant [16 x i8] c"service_nsp_noc\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1251, i32 29 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 473, i32 10 }
@___asan_gen_.1273 = private unnamed_addr constant [19 x i8] c"qhm_nsp_noc_config\00", align 1
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 472, i32 29 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 482, i32 10 }
@___asan_gen_.1279 = private unnamed_addr constant [8 x i8] c"qxm_nsp\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 481, i32 29 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1243, i32 10 }
@___asan_gen_.1285 = private unnamed_addr constant [15 x i8] c"qns_nsp_gemnoc\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1242, i32 29 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1252, i32 10 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1384, i32 10 }
@___asan_gen_.1294 = private unnamed_addr constant [8 x i8] c"bcm_co0\00", align 1
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1383, i32 28 }
@___asan_gen_.1297 = private unnamed_addr constant [16 x i8] c"pcie_anoc_nodes\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1803, i32 30 }
@___asan_gen_.1300 = private unnamed_addr constant [15 x i8] c"pcie_anoc_bcms\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1799, i32 29 }
@___asan_gen_.1303 = private unnamed_addr constant [20 x i8] c"srvc_pcie_aggre_noc\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1268, i32 29 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 491, i32 10 }
@___asan_gen_.1309 = private unnamed_addr constant [18 x i8] c"qnm_pcie_anoc_cfg\00", align 1
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 490, i32 29 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 500, i32 10 }
@___asan_gen_.1315 = private unnamed_addr constant [11 x i8] c"xm_pcie3_0\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 499, i32 29 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 509, i32 10 }
@___asan_gen_.1321 = private unnamed_addr constant [11 x i8] c"xm_pcie3_1\00", align 1
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 508, i32 29 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1260, i32 10 }
@___asan_gen_.1327 = private unnamed_addr constant [17 x i8] c"qns_pcie_mem_noc\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1259, i32 29 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1269, i32 10 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1487, i32 10 }
@___asan_gen_.1336 = private unnamed_addr constant [8 x i8] c"bcm_sn7\00", align 1
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1486, i32 28 }
@___asan_gen_.1339 = private unnamed_addr constant [17 x i8] c"system_noc_nodes\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1826, i32 30 }
@___asan_gen_.1342 = private unnamed_addr constant [16 x i8] c"system_noc_bcms\00", align 1
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1818, i32 29 }
@___asan_gen_.1345 = private unnamed_addr constant [10 x i8] c"srvc_snoc\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1294, i32 29 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 518, i32 10 }
@___asan_gen_.1351 = private unnamed_addr constant [8 x i8] c"qhm_gic\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 517, i32 29 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 527, i32 10 }
@___asan_gen_.1357 = private unnamed_addr constant [15 x i8] c"qnm_aggre1_noc\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 526, i32 29 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 536, i32 10 }
@___asan_gen_.1363 = private unnamed_addr constant [15 x i8] c"qnm_aggre2_noc\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 535, i32 29 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 545, i32 10 }
@___asan_gen_.1369 = private unnamed_addr constant [14 x i8] c"qnm_lpass_noc\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 544, i32 29 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 554, i32 10 }
@___asan_gen_.1375 = private unnamed_addr constant [13 x i8] c"qnm_snoc_cfg\00", align 1
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 553, i32 29 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 563, i32 10 }
@___asan_gen_.1381 = private unnamed_addr constant [10 x i8] c"qxm_pimem\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 562, i32 29 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 572, i32 10 }
@___asan_gen_.1387 = private unnamed_addr constant [7 x i8] c"xm_gic\00", align 1
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 571, i32 29 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1277, i32 10 }
@___asan_gen_.1393 = private unnamed_addr constant [14 x i8] c"qns_gemnoc_gc\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1276, i32 29 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1286, i32 10 }
@___asan_gen_.1399 = private unnamed_addr constant [14 x i8] c"qns_gemnoc_sf\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1285, i32 29 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1295, i32 10 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1455, i32 10 }
@___asan_gen_.1408 = private unnamed_addr constant [8 x i8] c"bcm_sn0\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1454, i32 28 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1462, i32 10 }
@___asan_gen_.1414 = private unnamed_addr constant [8 x i8] c"bcm_sn1\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1461, i32 28 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1469, i32 10 }
@___asan_gen_.1420 = private unnamed_addr constant [8 x i8] c"bcm_sn2\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1468, i32 28 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1475, i32 10 }
@___asan_gen_.1426 = private unnamed_addr constant [8 x i8] c"bcm_sn3\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1474, i32 28 }
@___asan_gen_.1429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1481, i32 10 }
@___asan_gen_.1432 = private unnamed_addr constant [8 x i8] c"bcm_sn4\00", align 1
@___asan_gen_.1433 = private constant [38 x i8] c"../drivers/interconnect/qcom/sm8450.c\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1433, i32 1480, i32 28 }
@llvm.compiler.used = appending global [391 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_qnoc_driver_exit, ptr @__initcall__kmod_qnoc_sm8450__170_1978_qnoc_driver_init1, ptr @qnoc_driver_exit, ptr @qnoc_probe._entry, ptr @qnoc_probe._entry_ptr, ptr @qnoc_driver, ptr @.str, ptr @qnoc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sm8450_aggre1_noc, ptr @sm8450_aggre2_noc, ptr @sm8450_clk_virt, ptr @sm8450_config_noc, ptr @sm8450_gem_noc, ptr @sm8450_lpass_ag_noc, ptr @sm8450_mc_virt, ptr @sm8450_mmss_noc, ptr @sm8450_nsp_noc, ptr @sm8450_pcie_anoc, ptr @sm8450_system_noc, ptr @aggre1_noc_nodes, ptr @aggre1_noc_bcms, ptr @srvc_aggre1_noc, ptr @.str.6, ptr @qhm_qspi, ptr @.str.8, ptr @qhm_qup1, ptr @.str.10, ptr @qnm_a1noc_cfg, ptr @.str.12, ptr @xm_sdc4, ptr @.str.14, ptr @xm_ufs_mem, ptr @.str.16, ptr @xm_usb3_0, ptr @.str.18, ptr @qns_a1noc_snoc, ptr @.str.20, ptr @aggre2_noc_nodes, ptr @aggre2_noc_bcms, ptr @srvc_aggre2_noc, ptr @.str.21, ptr @qhm_qdss_bam, ptr @.str.23, ptr @qhm_qup0, ptr @.str.25, ptr @qhm_qup2, ptr @.str.27, ptr @qnm_a2noc_cfg, ptr @.str.29, ptr @qxm_crypto, ptr @.str.31, ptr @qxm_ipa, ptr @.str.33, ptr @qxm_sensorss_q6, ptr @.str.35, ptr @qxm_sp, ptr @.str.37, ptr @xm_qdss_etr_0, ptr @.str.39, ptr @xm_qdss_etr_1, ptr @.str.41, ptr @xm_sdc2, ptr @.str.43, ptr @qns_a2noc_snoc, ptr @.str.45, ptr @.str.46, ptr @bcm_ce0, ptr @clk_virt_nodes, ptr @clk_virt_bcms, ptr @qup0_core_slave, ptr @qup1_core_slave, ptr @qup2_core_slave, ptr @.str.48, ptr @qup0_core_master, ptr @.str.50, ptr @qup1_core_master, ptr @.str.52, ptr @qup2_core_master, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @bcm_qup0, ptr @.str.59, ptr @bcm_qup1, ptr @.str.61, ptr @bcm_qup2, ptr @config_noc_nodes, ptr @config_noc_bcms, ptr @qhs_ahb2phy0, ptr @qhs_ahb2phy1, ptr @qhs_aoss, ptr @qhs_camera_cfg, ptr @qhs_clk_ctl, ptr @qhs_compute_cfg, ptr @qhs_cpr_cx, ptr @qhs_cpr_mmcx, ptr @qhs_cpr_mxa, ptr @qhs_cpr_mxc, ptr @qhs_crypto0_cfg, ptr @qhs_cx_rdpm, ptr @qhs_display_cfg, ptr @qhs_gpuss_cfg, ptr @qhs_imem_cfg, ptr @qhs_ipa, ptr @qhs_ipc_router, ptr @qhs_lpass_cfg, ptr @qhs_mss_cfg, ptr @qhs_mx_rdpm, ptr @qhs_pcie0_cfg, ptr @qhs_pcie1_cfg, ptr @qhs_pdm, ptr @qhs_pimem_cfg, ptr @qhs_prng, ptr @qhs_qdss_cfg, ptr @qhs_qspi, ptr @qhs_qup0, ptr @qhs_qup1, ptr @qhs_qup2, ptr @qhs_sdc2, ptr @qhs_sdc4, ptr @qhs_spss_cfg, ptr @qhs_tcsr, ptr @qhs_tlmm, ptr @qhs_tme_cfg, ptr @qhs_ufs_mem_cfg, ptr @qhs_usb3_0, ptr @qhs_venus_cfg, ptr @qhs_vsense_ctrl_cfg, ptr @qns_ddrss_cfg, ptr @qxs_imem, ptr @qxs_pimem, ptr @srvc_cnoc, ptr @xs_pcie_0, ptr @xs_pcie_1, ptr @xs_qdss_stm, ptr @xs_sys_tcu_cfg, ptr @.str.63, ptr @qnm_gemnoc_cnoc, ptr @.str.65, ptr @qnm_gemnoc_pcie, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @qns_a1_noc_cfg, ptr @.str.109, ptr @qns_a2_noc_cfg, ptr @.str.111, ptr @.str.112, ptr @qns_mnoc_cfg, ptr @.str.114, ptr @qns_pcie_anoc_cfg, ptr @.str.116, ptr @qns_snoc_cfg, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @bcm_cn0, ptr @gem_noc_nodes, ptr @gem_noc_bcms, ptr @.str.127, ptr @alm_gpu_tcu, ptr @.str.129, ptr @alm_sys_tcu, ptr @.str.131, ptr @chm_apps, ptr @.str.133, ptr @qnm_gpu, ptr @.str.135, ptr @qnm_mdsp, ptr @.str.137, ptr @qnm_mnoc_hf, ptr @.str.139, ptr @qnm_mnoc_sf, ptr @.str.141, ptr @qnm_nsp_gemnoc, ptr @.str.143, ptr @qnm_pcie, ptr @.str.145, ptr @qnm_snoc_gc, ptr @.str.147, ptr @qnm_snoc_sf, ptr @.str.149, ptr @qns_gem_noc_cnoc, ptr @.str.151, ptr @qns_llcc, ptr @.str.153, ptr @qns_pcie, ptr @.str.155, ptr @qnm_mnoc_hf_disp, ptr @.str.157, ptr @qnm_mnoc_sf_disp, ptr @.str.159, ptr @qnm_pcie_disp, ptr @.str.161, ptr @qns_llcc_disp, ptr @.str.163, ptr @bcm_sh0, ptr @.str.165, ptr @bcm_sh1, ptr @bcm_sh0_disp, ptr @bcm_sh1_disp, ptr @lpass_ag_noc_nodes, ptr @lpass_ag_noc_bcms, ptr @qhs_lpass_core, ptr @qhs_lpass_lpi, ptr @qhs_lpass_mpu, ptr @qhs_lpass_top, ptr @srvc_niu_aml_noc, ptr @srvc_niu_lpass_agnoc, ptr @.str.169, ptr @qhm_config_noc, ptr @.str.171, ptr @qxm_lpass_dsp, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @qns_sysnoc, ptr @.str.179, ptr @.str.180, ptr @mc_virt_nodes, ptr @mc_virt_bcms, ptr @ebi, ptr @ebi_disp, ptr @.str.181, ptr @llcc_mc, ptr @.str.183, ptr @.str.184, ptr @llcc_mc_disp, ptr @.str.186, ptr @.str.187, ptr @bcm_acv, ptr @.str.189, ptr @bcm_mc0, ptr @bcm_acv_disp, ptr @bcm_mc0_disp, ptr @mmss_noc_nodes, ptr @mmss_noc_bcms, ptr @srvc_mnoc, ptr @.str.193, ptr @qnm_camnoc_hf, ptr @.str.195, ptr @qnm_camnoc_icp, ptr @.str.197, ptr @qnm_camnoc_sf, ptr @.str.199, ptr @qnm_mdp, ptr @.str.201, ptr @qnm_mnoc_cfg, ptr @.str.203, ptr @qnm_rot, ptr @.str.205, ptr @qnm_vapss_hcp, ptr @.str.207, ptr @qnm_video, ptr @.str.209, ptr @qnm_video_cv_cpu, ptr @.str.211, ptr @qnm_video_cvp, ptr @.str.213, ptr @qnm_video_v_cpu, ptr @.str.215, ptr @qns_mem_noc_hf, ptr @.str.217, ptr @qns_mem_noc_sf, ptr @.str.219, ptr @.str.220, ptr @qnm_mdp_disp, ptr @.str.222, ptr @qnm_rot_disp, ptr @.str.224, ptr @qns_mem_noc_hf_disp, ptr @.str.226, ptr @qns_mem_noc_sf_disp, ptr @.str.228, ptr @bcm_mm0, ptr @.str.230, ptr @bcm_mm1, ptr @bcm_mm0_disp, ptr @bcm_mm1_disp, ptr @nsp_noc_nodes, ptr @nsp_noc_bcms, ptr @service_nsp_noc, ptr @.str.234, ptr @qhm_nsp_noc_config, ptr @.str.236, ptr @qxm_nsp, ptr @.str.238, ptr @qns_nsp_gemnoc, ptr @.str.240, ptr @.str.241, ptr @bcm_co0, ptr @pcie_anoc_nodes, ptr @pcie_anoc_bcms, ptr @srvc_pcie_aggre_noc, ptr @.str.243, ptr @qnm_pcie_anoc_cfg, ptr @.str.245, ptr @xm_pcie3_0, ptr @.str.247, ptr @xm_pcie3_1, ptr @.str.249, ptr @qns_pcie_mem_noc, ptr @.str.251, ptr @.str.252, ptr @bcm_sn7, ptr @system_noc_nodes, ptr @system_noc_bcms, ptr @srvc_snoc, ptr @.str.254, ptr @qhm_gic, ptr @.str.256, ptr @qnm_aggre1_noc, ptr @.str.258, ptr @qnm_aggre2_noc, ptr @.str.260, ptr @qnm_lpass_noc, ptr @.str.262, ptr @qnm_snoc_cfg, ptr @.str.264, ptr @qxm_pimem, ptr @.str.266, ptr @xm_gic, ptr @.str.268, ptr @qns_gemnoc_gc, ptr @.str.270, ptr @qns_gemnoc_sf, ptr @.str.272, ptr @.str.273, ptr @bcm_sn0, ptr @.str.275, ptr @bcm_sn1, ptr @.str.277, ptr @bcm_sn2, ptr @.str.279, ptr @bcm_sn3, ptr @.str.281, ptr @bcm_sn4], section "llvm.metadata"
@0 = internal global [384 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_of_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_aggre1_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_aggre2_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_clk_virt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_config_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_gem_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_lpass_ag_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_mc_virt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_mmss_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_nsp_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_pcie_anoc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_system_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre1_noc_nodes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre1_noc_bcms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_aggre1_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_qspi to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_qup1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_a1noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_sdc4 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_ufs_mem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_usb3_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_a1noc_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre2_noc_nodes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre2_noc_bcms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_aggre2_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_qdss_bam to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_qup0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_qup2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_a2noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxm_crypto to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxm_ipa to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxm_sensorss_q6 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxm_sp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_qdss_etr_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_qdss_etr_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_sdc2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_a2noc_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_ce0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_virt_nodes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_virt_bcms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup0_core_slave to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup1_core_slave to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup2_core_slave to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup0_core_master to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup1_core_master to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qup2_core_master to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qup0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qup1 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qup2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_noc_nodes to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_noc_bcms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_ahb2phy0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_ahb2phy1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_aoss to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_camera_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_clk_ctl to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_compute_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_cpr_cx to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_cpr_mmcx to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_cpr_mxa to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_cpr_mxc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_crypto0_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_cx_rdpm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_display_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_gpuss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_imem_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_ipa to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_ipc_router to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_lpass_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_mss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_mx_rdpm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_pcie0_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_pcie1_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_pdm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_pimem_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_prng to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_qdss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_qspi to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_qup0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_qup1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_qup2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_sdc2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_sdc4 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_spss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_tcsr to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_tlmm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_tme_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_ufs_mem_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_usb3_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_venus_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_vsense_ctrl_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_ddrss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxs_imem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxs_pimem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_cnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_pcie_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_pcie_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_qdss_stm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xs_sys_tcu_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_gemnoc_cnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_gemnoc_pcie to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_a1_noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_a2_noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_mnoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_pcie_anoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_snoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_cn0 to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_noc_nodes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_noc_bcms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alm_gpu_tcu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alm_sys_tcu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chm_apps to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_gpu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mdsp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mnoc_hf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mnoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_nsp_gemnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_pcie to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_snoc_gc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_snoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_gem_noc_cnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_llcc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_pcie to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mnoc_hf_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mnoc_sf_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_pcie_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_llcc_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sh0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sh1 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sh0_disp to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sh1_disp to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_ag_noc_nodes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpass_ag_noc_bcms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_lpass_core to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_lpass_lpi to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_lpass_mpu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhs_lpass_top to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_niu_aml_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_niu_lpass_agnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_config_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxm_lpass_dsp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_sysnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_virt_nodes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_virt_bcms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebi to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebi_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcc_mc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llcc_mc_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_acv to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mc0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_acv_disp to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mc0_disp to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmss_noc_nodes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmss_noc_bcms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_mnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_camnoc_hf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_camnoc_icp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_camnoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mdp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mnoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_rot to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_vapss_hcp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_video to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_video_cv_cpu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_video_cvp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_video_v_cpu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_mem_noc_hf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_mem_noc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_mdp_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_rot_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_mem_noc_hf_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_mem_noc_sf_disp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mm0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mm1 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mm0_disp to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mm1_disp to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_noc_nodes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_noc_bcms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_nsp_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_nsp_noc_config to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxm_nsp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_nsp_gemnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_co0 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_anoc_nodes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_anoc_bcms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_pcie_aggre_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_pcie_anoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_pcie3_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_pcie3_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_pcie_mem_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn7 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_noc_nodes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_noc_bcms to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvc_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qhm_gic to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_aggre1_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_aggre2_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_lpass_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnm_snoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxm_pimem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xm_gic to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_gemnoc_gc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qns_gemnoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn1 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn3 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn4 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qnoc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qnoc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qnoc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qnoc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnoc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %if.end

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %num_nodes1 = getelementptr inbounds %struct.qcom_icc_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_nodes1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_nodes1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup76_crit_edge, label %if.end6

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

if.end6:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 68) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end6.cleanup76_crit_edge, label %devm_kcalloc.exit, !prof !782

if.end6.cleanup76_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

devm_kcalloc.exit:                                ; preds = %if.end6
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #5
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %devm_kcalloc.exit.cleanup76_crit_edge, label %if.end11

devm_kcalloc.exit.cleanup76_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup76

if.end11:                                         ; preds = %devm_kcalloc.exit
  %dev14 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev14, align 4
  %set = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @qcom_icc_set, ptr %set, align 4
  %pre_aggregate = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %pre_aggregate to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @qcom_icc_pre_aggregate, ptr %pre_aggregate, align 4
  %aggregate = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %aggregate to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @qcom_icc_aggregate, ptr %aggregate, align 4
  %xlate_extended = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %xlate_extended to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @qcom_icc_xlate_extended, ptr %xlate_extended, align 4
  %nodes15 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %nodes15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %nodes15, ptr %nodes15, align 4
  %prev.i = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %nodes15, ptr %prev.i, align 4
  %data16 = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %data16, align 4
  %dev18 = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev18, align 4
  %bcms = getelementptr inbounds %struct.qcom_icc_desc, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %bcms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bcms, align 4
  %bcms19 = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %bcms19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %bcms19, align 4
  %num_bcms = getelementptr inbounds %struct.qcom_icc_desc, ptr %call, i32 0, i32 3
  %19 = ptrtoint ptr %num_bcms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_bcms, align 4
  %num_bcms20 = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %num_bcms20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_bcms20, align 4
  %call22 = tail call ptr @of_bcm_voter_get(ptr noundef %dev, ptr noundef null) #5
  %voter = getelementptr inbounds %struct.qcom_icc_provider, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %voter to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call22, ptr %voter, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call22 to i32
  br label %cleanup76

if.end28:                                         ; preds = %if.end11
  %call29 = tail call i32 @icc_provider_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end28
  %24 = ptrtoint ptr %num_bcms20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_bcms20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp155.not = icmp eq i32 %25, 0
  br i1 %cmp155.not, label %for.cond.preheader.for.cond38.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond38.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup76

for.cond38.preheader:                             ; preds = %for.body.for.cond38.preheader_crit_edge, %for.cond.preheader.for.cond38.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp39161.not = icmp eq i32 %3, 0
  br i1 %cmp39161.not, label %for.cond38.preheader.for.end72_crit_edge, label %for.cond38.preheader.for.body40_crit_edge

for.cond38.preheader.for.body40_crit_edge:        ; preds = %for.cond38.preheader
  br label %for.body40

for.cond38.preheader.for.end72_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end72

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0156 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %26 = ptrtoint ptr %bcms19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bcms19, align 4
  %arrayidx = getelementptr ptr, ptr %27, i32 %i.0156
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %call37 = tail call i32 @qcom_icc_bcm_init(ptr noundef %29, ptr noundef %dev) #5
  %inc = add nuw i32 %i.0156, 1
  %30 = ptrtoint ptr %num_bcms20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_bcms20, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond38.preheader_crit_edge

for.body.for.cond38.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond38.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body40:                                       ; preds = %for.inc70.for.body40_crit_edge, %for.cond38.preheader.for.body40_crit_edge
  %i.1162 = phi i32 [ %inc71, %for.inc70.for.body40_crit_edge ], [ 0, %for.cond38.preheader.for.body40_crit_edge ]
  %arrayidx41 = getelementptr ptr, ptr %1, i32 %i.1162
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %33, null
  br i1 %tobool42.not, label %for.body40.for.inc70_crit_edge, label %if.end44

for.body40.for.inc70_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc70

if.end44:                                         ; preds = %for.body40
  %id = getelementptr inbounds %struct.qcom_icc_node, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %id, align 4
  %conv = zext i16 %35 to i32
  %call46 = tail call ptr @icc_node_create(i32 noundef %conv) #5
  %cmp.i149 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %err, label %if.end50

if.end50:                                         ; preds = %if.end44
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx41, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %name52 = getelementptr inbounds %struct.icc_node, ptr %call46, i32 0, i32 1
  %40 = ptrtoint ptr %name52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %name52, align 4
  %41 = load ptr, ptr %arrayidx41, align 4
  %data54 = getelementptr inbounds %struct.icc_node, ptr %call46, i32 0, i32 14
  %42 = ptrtoint ptr %data54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %data54, align 4
  tail call void @icc_node_add(ptr noundef %call46, ptr noundef nonnull %call.i) #5
  %43 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx41, align 4
  %num_links157 = getelementptr inbounds %struct.qcom_icc_node, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %num_links157 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %num_links157, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp58159.not = icmp eq i16 %46, 0
  br i1 %cmp58159.not, label %if.end50.for.end67_crit_edge, label %if.end50.for.body60_crit_edge

if.end50.for.body60_crit_edge:                    ; preds = %if.end50
  br label %for.body60

if.end50.for.end67_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end67

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %if.end50.for.body60_crit_edge
  %47 = phi ptr [ %51, %for.body60.for.body60_crit_edge ], [ %44, %if.end50.for.body60_crit_edge ]
  %j.0160 = phi i32 [ %inc66, %for.body60.for.body60_crit_edge ], [ 0, %if.end50.for.body60_crit_edge ]
  %arrayidx62 = getelementptr %struct.qcom_icc_node, ptr %47, i32 0, i32 1, i32 %j.0160
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx62, align 2
  %conv63 = zext i16 %49 to i32
  %call64 = tail call i32 @icc_link_create(ptr noundef %call46, i32 noundef %conv63) #5
  %inc66 = add nuw nsw i32 %j.0160, 1
  %50 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx41, align 4
  %num_links = getelementptr inbounds %struct.qcom_icc_node, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %num_links to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_links, align 2
  %conv57 = zext i16 %53 to i32
  %cmp58 = icmp ult i32 %inc66, %conv57
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %for.body60.for.end67_crit_edge

for.body60.for.end67_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end67

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body60

for.end67:                                        ; preds = %for.body60.for.end67_crit_edge, %if.end50.for.end67_crit_edge
  %arrayidx69 = getelementptr %struct.icc_onecell_data, ptr %call5.i.i, i32 0, i32 1, i32 %i.1162
  %54 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call46, ptr %arrayidx69, align 4
  br label %for.inc70

for.inc70:                                        ; preds = %for.end67, %for.body40.for.inc70_crit_edge
  %inc71 = add nuw i32 %i.1162, 1
  %exitcond.not = icmp eq i32 %inc71, %3
  br i1 %exitcond.not, label %for.inc70.for.end72_crit_edge, label %for.inc70.for.body40_crit_edge

for.inc70.for.body40_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40

for.inc70.for.end72_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end72

for.end72:                                        ; preds = %for.inc70.for.end72_crit_edge, %for.cond38.preheader.for.end72_crit_edge
  %55 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %3, ptr %call5.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup76

err:                                              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %call46 to i32
  %call74 = tail call i32 @icc_nodes_remove(ptr noundef nonnull %call.i) #5
  %call75 = tail call i32 @icc_provider_del(ptr noundef nonnull %call.i) #5
  br label %cleanup76

cleanup76:                                        ; preds = %err, %for.end72, %do.end, %if.then25, %devm_kcalloc.exit.cleanup76_crit_edge, %if.end6.cleanup76_crit_edge, %if.end.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.0 = phi i32 [ %23, %if.then25 ], [ %call29, %do.end ], [ %57, %err ], [ 0, %for.end72 ], [ -22, %entry.cleanup76_crit_edge ], [ -12, %if.end.cleanup76_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup76_crit_edge ], [ -12, %if.end6.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qnoc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @icc_nodes_remove(ptr noundef %1) #5
  %call3 = tail call i32 @icc_provider_del(ptr noundef %1) #5
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_icc_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_icc_pre_aggregate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_icc_aggregate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_icc_xlate_extended(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_bcm_voter_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_icc_bcm_init(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 384)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 384)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771}
!llvm.module.flags = !{!773, !774, !775, !776, !777, !778, !779, !780}
!llvm.ident = !{!781}

!0 = !{ptr @__initcall__kmod_qnoc_sm8450__170_1978_qnoc_driver_init1, !1, !"__initcall__kmod_qnoc_sm8450__170_1978_qnoc_driver_init1", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1978, i32 1}
!2 = !{ptr @__exitcall_qnoc_driver_exit, !3, !"__exitcall_qnoc_driver_exit", i1 false, i1 false}
!3 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1984, i32 1}
!4 = !{ptr @__UNIQUE_ID_description171, !5, !"__UNIQUE_ID_description171", i1 false, i1 false}
!5 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1986, i32 1}
!6 = !{ptr @__UNIQUE_ID_file172, !7, !"__UNIQUE_ID_file172", i1 false, i1 false}
!7 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1987, i32 1}
!8 = !{ptr @__UNIQUE_ID_license173, !7, !"__UNIQUE_ID_license173", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1969, i32 11}
!11 = !{ptr @qnoc_driver, !12, !"qnoc_driver", i1 false, i1 false}
!12 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1965, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1891, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @qnoc_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @qnoc_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @qnoc_of_match, !22, !"qnoc_of_match", i1 false, i1 false}
!22 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1938, i32 34}
!23 = !{ptr @sm8450_aggre1_noc, !24, !"sm8450_aggre1_noc", i1 false, i1 false}
!24 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1543, i32 29}
!25 = !{ptr @aggre1_noc_nodes, !26, !"aggre1_noc_nodes", i1 false, i1 false}
!26 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1532, i32 30}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 19, i32 10}
!29 = !{ptr @qhm_qspi, !30, !"qhm_qspi", i1 false, i1 false}
!30 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 18, i32 29}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 28, i32 10}
!33 = !{ptr @qhm_qup1, !34, !"qhm_qup1", i1 false, i1 false}
!34 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 27, i32 29}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 37, i32 10}
!37 = !{ptr @qnm_a1noc_cfg, !38, !"qnm_a1noc_cfg", i1 false, i1 false}
!38 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 36, i32 29}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 46, i32 10}
!41 = !{ptr @xm_sdc4, !42, !"xm_sdc4", i1 false, i1 false}
!42 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 45, i32 29}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 55, i32 10}
!45 = !{ptr @xm_ufs_mem, !46, !"xm_ufs_mem", i1 false, i1 false}
!46 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 54, i32 29}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 64, i32 10}
!49 = !{ptr @xm_usb3_0, !50, !"xm_usb3_0", i1 false, i1 false}
!50 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 63, i32 29}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 635, i32 10}
!53 = !{ptr @qns_a1noc_snoc, !54, !"qns_a1noc_snoc", i1 false, i1 false}
!54 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 634, i32 29}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 644, i32 10}
!57 = !{ptr @srvc_aggre1_noc, !58, !"srvc_aggre1_noc", i1 false, i1 false}
!58 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 643, i32 29}
!59 = !{ptr @aggre1_noc_bcms, !60, !"aggre1_noc_bcms", i1 false, i1 false}
!60 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1529, i32 29}
!61 = !{ptr @sm8450_aggre2_noc, !62, !"sm8450_aggre2_noc", i1 false, i1 false}
!62 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1570, i32 29}
!63 = !{ptr @aggre2_noc_nodes, !64, !"aggre2_noc_nodes", i1 false, i1 false}
!64 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1554, i32 30}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 73, i32 10}
!67 = !{ptr @qhm_qdss_bam, !68, !"qhm_qdss_bam", i1 false, i1 false}
!68 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 72, i32 29}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 82, i32 10}
!71 = !{ptr @qhm_qup0, !72, !"qhm_qup0", i1 false, i1 false}
!72 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 81, i32 29}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 91, i32 10}
!75 = !{ptr @qhm_qup2, !76, !"qhm_qup2", i1 false, i1 false}
!76 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 90, i32 29}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 100, i32 10}
!79 = !{ptr @qnm_a2noc_cfg, !80, !"qnm_a2noc_cfg", i1 false, i1 false}
!80 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 99, i32 29}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 109, i32 10}
!83 = !{ptr @qxm_crypto, !84, !"qxm_crypto", i1 false, i1 false}
!84 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 108, i32 29}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 118, i32 10}
!87 = !{ptr @qxm_ipa, !88, !"qxm_ipa", i1 false, i1 false}
!88 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 117, i32 29}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 127, i32 10}
!91 = !{ptr @qxm_sensorss_q6, !92, !"qxm_sensorss_q6", i1 false, i1 false}
!92 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 126, i32 29}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 136, i32 10}
!95 = !{ptr @qxm_sp, !96, !"qxm_sp", i1 false, i1 false}
!96 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 135, i32 29}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 145, i32 10}
!99 = !{ptr @xm_qdss_etr_0, !100, !"xm_qdss_etr_0", i1 false, i1 false}
!100 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 144, i32 29}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 154, i32 10}
!103 = !{ptr @xm_qdss_etr_1, !104, !"xm_qdss_etr_1", i1 false, i1 false}
!104 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 153, i32 29}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 163, i32 10}
!107 = !{ptr @xm_sdc2, !108, !"xm_sdc2", i1 false, i1 false}
!108 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 162, i32 29}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 652, i32 10}
!111 = !{ptr @qns_a2noc_snoc, !112, !"qns_a2noc_snoc", i1 false, i1 false}
!112 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 651, i32 29}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 661, i32 10}
!115 = !{ptr @srvc_aggre2_noc, !116, !"srvc_aggre2_noc", i1 false, i1 false}
!116 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 660, i32 29}
!117 = !{ptr @aggre2_noc_bcms, !118, !"aggre2_noc_bcms", i1 false, i1 false}
!118 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1550, i32 29}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1344, i32 10}
!121 = !{ptr @bcm_ce0, !122, !"bcm_ce0", i1 false, i1 false}
!122 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1343, i32 28}
!123 = !{ptr @sm8450_clk_virt, !124, !"sm8450_clk_virt", i1 false, i1 false}
!124 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1592, i32 29}
!125 = !{ptr @clk_virt_nodes, !126, !"clk_virt_nodes", i1 false, i1 false}
!126 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1583, i32 30}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 172, i32 10}
!129 = !{ptr @qup0_core_master, !130, !"qup0_core_master", i1 false, i1 false}
!130 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 171, i32 29}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 181, i32 10}
!133 = !{ptr @qup1_core_master, !134, !"qup1_core_master", i1 false, i1 false}
!134 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 180, i32 29}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 190, i32 10}
!137 = !{ptr @qup2_core_master, !138, !"qup2_core_master", i1 false, i1 false}
!138 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 189, i32 29}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 669, i32 10}
!141 = !{ptr @qup0_core_slave, !142, !"qup0_core_slave", i1 false, i1 false}
!142 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 668, i32 29}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 677, i32 10}
!145 = !{ptr @qup1_core_slave, !146, !"qup1_core_slave", i1 false, i1 false}
!146 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 676, i32 29}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 685, i32 10}
!149 = !{ptr @qup2_core_slave, !150, !"qup2_core_slave", i1 false, i1 false}
!150 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 684, i32 29}
!151 = !{ptr @clk_virt_bcms, !152, !"clk_virt_bcms", i1 false, i1 false}
!152 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1577, i32 29}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1415, i32 10}
!155 = !{ptr @bcm_qup0, !156, !"bcm_qup0", i1 false, i1 false}
!156 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1414, i32 28}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1423, i32 10}
!159 = !{ptr @bcm_qup1, !160, !"bcm_qup1", i1 false, i1 false}
!160 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1422, i32 28}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1431, i32 10}
!163 = !{ptr @bcm_qup2, !164, !"bcm_qup2", i1 false, i1 false}
!164 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1430, i32 28}
!165 = !{ptr @sm8450_config_noc, !166, !"sm8450_config_noc", i1 false, i1 false}
!166 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1661, i32 29}
!167 = !{ptr @config_noc_nodes, !168, !"config_noc_nodes", i1 false, i1 false}
!168 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1603, i32 30}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 199, i32 10}
!171 = !{ptr @qnm_gemnoc_cnoc, !172, !"qnm_gemnoc_cnoc", i1 false, i1 false}
!172 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 198, i32 29}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 233, i32 10}
!175 = !{ptr @qnm_gemnoc_pcie, !176, !"qnm_gemnoc_pcie", i1 false, i1 false}
!176 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 232, i32 29}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 693, i32 10}
!179 = !{ptr @qhs_ahb2phy0, !180, !"qhs_ahb2phy0", i1 false, i1 false}
!180 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 692, i32 29}
!181 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 701, i32 10}
!183 = !{ptr @qhs_ahb2phy1, !184, !"qhs_ahb2phy1", i1 false, i1 false}
!184 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 700, i32 29}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 709, i32 10}
!187 = !{ptr @qhs_aoss, !188, !"qhs_aoss", i1 false, i1 false}
!188 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 708, i32 29}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 717, i32 10}
!191 = !{ptr @qhs_camera_cfg, !192, !"qhs_camera_cfg", i1 false, i1 false}
!192 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 716, i32 29}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 725, i32 10}
!195 = !{ptr @qhs_clk_ctl, !196, !"qhs_clk_ctl", i1 false, i1 false}
!196 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 724, i32 29}
!197 = !{ptr @.str.72, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 733, i32 10}
!199 = !{ptr @qhs_compute_cfg, !200, !"qhs_compute_cfg", i1 false, i1 false}
!200 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 732, i32 29}
!201 = !{ptr @.str.73, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 742, i32 10}
!203 = !{ptr @qhs_cpr_cx, !204, !"qhs_cpr_cx", i1 false, i1 false}
!204 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 741, i32 29}
!205 = !{ptr @.str.74, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 750, i32 10}
!207 = !{ptr @qhs_cpr_mmcx, !208, !"qhs_cpr_mmcx", i1 false, i1 false}
!208 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 749, i32 29}
!209 = !{ptr @.str.75, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 758, i32 10}
!211 = !{ptr @qhs_cpr_mxa, !212, !"qhs_cpr_mxa", i1 false, i1 false}
!212 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 757, i32 29}
!213 = !{ptr @.str.76, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 766, i32 10}
!215 = !{ptr @qhs_cpr_mxc, !216, !"qhs_cpr_mxc", i1 false, i1 false}
!216 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 765, i32 29}
!217 = !{ptr @.str.77, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 774, i32 10}
!219 = !{ptr @qhs_crypto0_cfg, !220, !"qhs_crypto0_cfg", i1 false, i1 false}
!220 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 773, i32 29}
!221 = !{ptr @.str.78, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 782, i32 10}
!223 = !{ptr @qhs_cx_rdpm, !224, !"qhs_cx_rdpm", i1 false, i1 false}
!224 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 781, i32 29}
!225 = !{ptr @.str.79, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 790, i32 10}
!227 = !{ptr @qhs_display_cfg, !228, !"qhs_display_cfg", i1 false, i1 false}
!228 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 789, i32 29}
!229 = !{ptr @.str.80, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 798, i32 10}
!231 = !{ptr @qhs_gpuss_cfg, !232, !"qhs_gpuss_cfg", i1 false, i1 false}
!232 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 797, i32 29}
!233 = !{ptr @.str.81, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 806, i32 10}
!235 = !{ptr @qhs_imem_cfg, !236, !"qhs_imem_cfg", i1 false, i1 false}
!236 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 805, i32 29}
!237 = !{ptr @.str.82, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 814, i32 10}
!239 = !{ptr @qhs_ipa, !240, !"qhs_ipa", i1 false, i1 false}
!240 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 813, i32 29}
!241 = !{ptr @.str.83, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 822, i32 10}
!243 = !{ptr @qhs_ipc_router, !244, !"qhs_ipc_router", i1 false, i1 false}
!244 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 821, i32 29}
!245 = !{ptr @.str.84, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 830, i32 10}
!247 = !{ptr @qhs_lpass_cfg, !248, !"qhs_lpass_cfg", i1 false, i1 false}
!248 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 829, i32 29}
!249 = !{ptr @.str.85, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 839, i32 10}
!251 = !{ptr @qhs_mss_cfg, !252, !"qhs_mss_cfg", i1 false, i1 false}
!252 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 838, i32 29}
!253 = !{ptr @.str.86, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 847, i32 10}
!255 = !{ptr @qhs_mx_rdpm, !256, !"qhs_mx_rdpm", i1 false, i1 false}
!256 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 846, i32 29}
!257 = !{ptr @.str.87, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 855, i32 10}
!259 = !{ptr @qhs_pcie0_cfg, !260, !"qhs_pcie0_cfg", i1 false, i1 false}
!260 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 854, i32 29}
!261 = !{ptr @.str.88, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 863, i32 10}
!263 = !{ptr @qhs_pcie1_cfg, !264, !"qhs_pcie1_cfg", i1 false, i1 false}
!264 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 862, i32 29}
!265 = !{ptr @.str.89, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 871, i32 10}
!267 = !{ptr @qhs_pdm, !268, !"qhs_pdm", i1 false, i1 false}
!268 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 870, i32 29}
!269 = !{ptr @.str.90, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 879, i32 10}
!271 = !{ptr @qhs_pimem_cfg, !272, !"qhs_pimem_cfg", i1 false, i1 false}
!272 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 878, i32 29}
!273 = !{ptr @.str.91, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 887, i32 10}
!275 = !{ptr @qhs_prng, !276, !"qhs_prng", i1 false, i1 false}
!276 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 886, i32 29}
!277 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 895, i32 10}
!279 = !{ptr @qhs_qdss_cfg, !280, !"qhs_qdss_cfg", i1 false, i1 false}
!280 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 894, i32 29}
!281 = !{ptr @.str.93, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 903, i32 10}
!283 = !{ptr @qhs_qspi, !284, !"qhs_qspi", i1 false, i1 false}
!284 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 902, i32 29}
!285 = !{ptr @.str.94, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 911, i32 10}
!287 = !{ptr @qhs_qup0, !288, !"qhs_qup0", i1 false, i1 false}
!288 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 910, i32 29}
!289 = !{ptr @.str.95, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 919, i32 10}
!291 = !{ptr @qhs_qup1, !292, !"qhs_qup1", i1 false, i1 false}
!292 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 918, i32 29}
!293 = !{ptr @.str.96, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 927, i32 10}
!295 = !{ptr @qhs_qup2, !296, !"qhs_qup2", i1 false, i1 false}
!296 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 926, i32 29}
!297 = !{ptr @.str.97, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 935, i32 10}
!299 = !{ptr @qhs_sdc2, !300, !"qhs_sdc2", i1 false, i1 false}
!300 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 934, i32 29}
!301 = !{ptr @.str.98, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 943, i32 10}
!303 = !{ptr @qhs_sdc4, !304, !"qhs_sdc4", i1 false, i1 false}
!304 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 942, i32 29}
!305 = !{ptr @.str.99, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 951, i32 10}
!307 = !{ptr @qhs_spss_cfg, !308, !"qhs_spss_cfg", i1 false, i1 false}
!308 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 950, i32 29}
!309 = !{ptr @.str.100, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 959, i32 10}
!311 = !{ptr @qhs_tcsr, !312, !"qhs_tcsr", i1 false, i1 false}
!312 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 958, i32 29}
!313 = !{ptr @.str.101, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 967, i32 10}
!315 = !{ptr @qhs_tlmm, !316, !"qhs_tlmm", i1 false, i1 false}
!316 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 966, i32 29}
!317 = !{ptr @.str.102, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 975, i32 10}
!319 = !{ptr @qhs_tme_cfg, !320, !"qhs_tme_cfg", i1 false, i1 false}
!320 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 974, i32 29}
!321 = !{ptr @.str.103, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 983, i32 10}
!323 = !{ptr @qhs_ufs_mem_cfg, !324, !"qhs_ufs_mem_cfg", i1 false, i1 false}
!324 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 982, i32 29}
!325 = !{ptr @.str.104, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 991, i32 10}
!327 = !{ptr @qhs_usb3_0, !328, !"qhs_usb3_0", i1 false, i1 false}
!328 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 990, i32 29}
!329 = !{ptr @.str.105, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 999, i32 10}
!331 = !{ptr @qhs_venus_cfg, !332, !"qhs_venus_cfg", i1 false, i1 false}
!332 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 998, i32 29}
!333 = !{ptr @.str.106, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1007, i32 10}
!335 = !{ptr @qhs_vsense_ctrl_cfg, !336, !"qhs_vsense_ctrl_cfg", i1 false, i1 false}
!336 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1006, i32 29}
!337 = !{ptr @.str.107, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1015, i32 10}
!339 = !{ptr @qns_a1_noc_cfg, !340, !"qns_a1_noc_cfg", i1 false, i1 false}
!340 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1014, i32 29}
!341 = !{ptr @.str.109, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1024, i32 10}
!343 = !{ptr @qns_a2_noc_cfg, !344, !"qns_a2_noc_cfg", i1 false, i1 false}
!344 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1023, i32 29}
!345 = !{ptr @.str.111, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1033, i32 10}
!347 = !{ptr @qns_ddrss_cfg, !348, !"qns_ddrss_cfg", i1 false, i1 false}
!348 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1032, i32 29}
!349 = !{ptr @.str.112, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1042, i32 10}
!351 = !{ptr @qns_mnoc_cfg, !352, !"qns_mnoc_cfg", i1 false, i1 false}
!352 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1041, i32 29}
!353 = !{ptr @.str.114, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1051, i32 10}
!355 = !{ptr @qns_pcie_anoc_cfg, !356, !"qns_pcie_anoc_cfg", i1 false, i1 false}
!356 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1050, i32 29}
!357 = !{ptr @.str.116, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1060, i32 10}
!359 = !{ptr @qns_snoc_cfg, !360, !"qns_snoc_cfg", i1 false, i1 false}
!360 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1059, i32 29}
!361 = !{ptr @.str.118, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1069, i32 10}
!363 = !{ptr @qxs_imem, !364, !"qxs_imem", i1 false, i1 false}
!364 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1068, i32 29}
!365 = !{ptr @.str.119, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1077, i32 10}
!367 = !{ptr @qxs_pimem, !368, !"qxs_pimem", i1 false, i1 false}
!368 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1076, i32 29}
!369 = !{ptr @.str.120, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1085, i32 10}
!371 = !{ptr @srvc_cnoc, !372, !"srvc_cnoc", i1 false, i1 false}
!372 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1084, i32 29}
!373 = !{ptr @.str.121, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1093, i32 10}
!375 = !{ptr @xs_pcie_0, !376, !"xs_pcie_0", i1 false, i1 false}
!376 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1092, i32 29}
!377 = !{ptr @.str.122, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1101, i32 10}
!379 = !{ptr @xs_pcie_1, !380, !"xs_pcie_1", i1 false, i1 false}
!380 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1100, i32 29}
!381 = !{ptr @.str.123, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1109, i32 10}
!383 = !{ptr @xs_qdss_stm, !384, !"xs_qdss_stm", i1 false, i1 false}
!384 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1108, i32 29}
!385 = !{ptr @.str.124, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1117, i32 10}
!387 = !{ptr @xs_sys_tcu_cfg, !388, !"xs_sys_tcu_cfg", i1 false, i1 false}
!388 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1116, i32 29}
!389 = !{ptr @config_noc_bcms, !390, !"config_noc_bcms", i1 false, i1 false}
!390 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1599, i32 29}
!391 = !{ptr @.str.125, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1350, i32 10}
!393 = !{ptr @bcm_cn0, !394, !"bcm_cn0", i1 false, i1 false}
!394 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1349, i32 28}
!395 = !{ptr @sm8450_gem_noc, !396, !"sm8450_gem_noc", i1 false, i1 false}
!396 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1696, i32 29}
!397 = !{ptr @gem_noc_nodes, !398, !"gem_noc_nodes", i1 false, i1 false}
!398 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1675, i32 30}
!399 = !{ptr @.str.127, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 242, i32 10}
!401 = !{ptr @alm_gpu_tcu, !402, !"alm_gpu_tcu", i1 false, i1 false}
!402 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 241, i32 29}
!403 = !{ptr @.str.129, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 251, i32 10}
!405 = !{ptr @alm_sys_tcu, !406, !"alm_sys_tcu", i1 false, i1 false}
!406 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 250, i32 29}
!407 = !{ptr @.str.131, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 260, i32 10}
!409 = !{ptr @chm_apps, !410, !"chm_apps", i1 false, i1 false}
!410 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 259, i32 29}
!411 = !{ptr @.str.133, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 270, i32 10}
!413 = !{ptr @qnm_gpu, !414, !"qnm_gpu", i1 false, i1 false}
!414 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 269, i32 29}
!415 = !{ptr @.str.135, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 279, i32 10}
!417 = !{ptr @qnm_mdsp, !418, !"qnm_mdsp", i1 false, i1 false}
!418 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 278, i32 29}
!419 = !{ptr @.str.137, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 289, i32 10}
!421 = !{ptr @qnm_mnoc_hf, !422, !"qnm_mnoc_hf", i1 false, i1 false}
!422 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 288, i32 29}
!423 = !{ptr @.str.139, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 298, i32 10}
!425 = !{ptr @qnm_mnoc_sf, !426, !"qnm_mnoc_sf", i1 false, i1 false}
!426 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 297, i32 29}
!427 = !{ptr @.str.141, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 307, i32 10}
!429 = !{ptr @qnm_nsp_gemnoc, !430, !"qnm_nsp_gemnoc", i1 false, i1 false}
!430 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 306, i32 29}
!431 = !{ptr @.str.143, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 316, i32 10}
!433 = !{ptr @qnm_pcie, !434, !"qnm_pcie", i1 false, i1 false}
!434 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 315, i32 29}
!435 = !{ptr @.str.145, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 325, i32 10}
!437 = !{ptr @qnm_snoc_gc, !438, !"qnm_snoc_gc", i1 false, i1 false}
!438 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 324, i32 29}
!439 = !{ptr @.str.147, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 334, i32 10}
!441 = !{ptr @qnm_snoc_sf, !442, !"qnm_snoc_sf", i1 false, i1 false}
!442 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 333, i32 29}
!443 = !{ptr @.str.149, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1125, i32 10}
!445 = !{ptr @qns_gem_noc_cnoc, !446, !"qns_gem_noc_cnoc", i1 false, i1 false}
!446 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1124, i32 29}
!447 = !{ptr @.str.151, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1134, i32 10}
!449 = !{ptr @qns_llcc, !450, !"qns_llcc", i1 false, i1 false}
!450 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1133, i32 29}
!451 = !{ptr @.str.153, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1143, i32 10}
!453 = !{ptr @qns_pcie, !454, !"qns_pcie", i1 false, i1 false}
!454 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1142, i32 29}
!455 = !{ptr @.str.155, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 581, i32 10}
!457 = !{ptr @qnm_mnoc_hf_disp, !458, !"qnm_mnoc_hf_disp", i1 false, i1 false}
!458 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 580, i32 29}
!459 = !{ptr @.str.157, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 590, i32 10}
!461 = !{ptr @qnm_mnoc_sf_disp, !462, !"qnm_mnoc_sf_disp", i1 false, i1 false}
!462 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 589, i32 29}
!463 = !{ptr @.str.159, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 599, i32 10}
!465 = !{ptr @qnm_pcie_disp, !466, !"qnm_pcie_disp", i1 false, i1 false}
!466 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 598, i32 29}
!467 = !{ptr @.str.161, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1303, i32 10}
!469 = !{ptr @qns_llcc_disp, !470, !"qns_llcc_disp", i1 false, i1 false}
!470 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1302, i32 29}
!471 = !{ptr @gem_noc_bcms, !472, !"gem_noc_bcms", i1 false, i1 false}
!472 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1668, i32 29}
!473 = !{ptr @.str.163, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1439, i32 10}
!475 = !{ptr @bcm_sh0, !476, !"bcm_sh0", i1 false, i1 false}
!476 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1438, i32 28}
!477 = !{ptr @.str.165, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1446, i32 10}
!479 = !{ptr @bcm_sh1, !480, !"bcm_sh1", i1 false, i1 false}
!480 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1445, i32 28}
!481 = !{ptr @bcm_sh0_disp, !482, !"bcm_sh0_disp", i1 false, i1 false}
!482 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1517, i32 28}
!483 = !{ptr @bcm_sh1_disp, !484, !"bcm_sh1_disp", i1 false, i1 false}
!484 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1523, i32 28}
!485 = !{ptr @sm8450_lpass_ag_noc, !486, !"sm8450_lpass_ag_noc", i1 false, i1 false}
!486 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1718, i32 29}
!487 = !{ptr @lpass_ag_noc_nodes, !488, !"lpass_ag_noc_nodes", i1 false, i1 false}
!488 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1706, i32 30}
!489 = !{ptr @.str.169, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 344, i32 10}
!491 = !{ptr @qhm_config_noc, !492, !"qhm_config_noc", i1 false, i1 false}
!492 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 343, i32 29}
!493 = !{ptr @.str.171, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 355, i32 10}
!495 = !{ptr @qxm_lpass_dsp, !496, !"qxm_lpass_dsp", i1 false, i1 false}
!496 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 354, i32 29}
!497 = !{ptr @.str.173, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1152, i32 10}
!499 = !{ptr @qhs_lpass_core, !500, !"qhs_lpass_core", i1 false, i1 false}
!500 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1151, i32 29}
!501 = !{ptr @.str.174, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1160, i32 10}
!503 = !{ptr @qhs_lpass_lpi, !504, !"qhs_lpass_lpi", i1 false, i1 false}
!504 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1159, i32 29}
!505 = !{ptr @.str.175, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1168, i32 10}
!507 = !{ptr @qhs_lpass_mpu, !508, !"qhs_lpass_mpu", i1 false, i1 false}
!508 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1167, i32 29}
!509 = !{ptr @.str.176, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1176, i32 10}
!511 = !{ptr @qhs_lpass_top, !512, !"qhs_lpass_top", i1 false, i1 false}
!512 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1175, i32 29}
!513 = !{ptr @.str.177, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1184, i32 10}
!515 = !{ptr @qns_sysnoc, !516, !"qns_sysnoc", i1 false, i1 false}
!516 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1183, i32 29}
!517 = !{ptr @.str.179, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1193, i32 10}
!519 = !{ptr @srvc_niu_aml_noc, !520, !"srvc_niu_aml_noc", i1 false, i1 false}
!520 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1192, i32 29}
!521 = !{ptr @.str.180, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1201, i32 10}
!523 = !{ptr @srvc_niu_lpass_agnoc, !524, !"srvc_niu_lpass_agnoc", i1 false, i1 false}
!524 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1200, i32 29}
!525 = !{ptr @lpass_ag_noc_bcms, !526, !"lpass_ag_noc_bcms", i1 false, i1 false}
!526 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1703, i32 29}
!527 = !{ptr @sm8450_mc_virt, !528, !"sm8450_mc_virt", i1 false, i1 false}
!528 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1739, i32 29}
!529 = !{ptr @mc_virt_nodes, !530, !"mc_virt_nodes", i1 false, i1 false}
!530 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1732, i32 30}
!531 = !{ptr @.str.181, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 365, i32 10}
!533 = !{ptr @llcc_mc, !534, !"llcc_mc", i1 false, i1 false}
!534 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 364, i32 29}
!535 = !{ptr @.str.183, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1209, i32 10}
!537 = !{ptr @ebi, !538, !"ebi", i1 false, i1 false}
!538 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1208, i32 29}
!539 = !{ptr @.str.184, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 608, i32 10}
!541 = !{ptr @llcc_mc_disp, !542, !"llcc_mc_disp", i1 false, i1 false}
!542 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 607, i32 29}
!543 = !{ptr @.str.186, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1312, i32 10}
!545 = !{ptr @ebi_disp, !546, !"ebi_disp", i1 false, i1 false}
!546 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1311, i32 29}
!547 = !{ptr @mc_virt_bcms, !548, !"mc_virt_bcms", i1 false, i1 false}
!548 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1725, i32 29}
!549 = !{ptr @.str.187, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1338, i32 10}
!551 = !{ptr @bcm_acv, !552, !"bcm_acv", i1 false, i1 false}
!552 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1337, i32 28}
!553 = !{ptr @.str.189, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1390, i32 10}
!555 = !{ptr @bcm_mc0, !556, !"bcm_mc0", i1 false, i1 false}
!556 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1389, i32 28}
!557 = !{ptr @bcm_acv_disp, !558, !"bcm_acv_disp", i1 false, i1 false}
!558 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1492, i32 28}
!559 = !{ptr @bcm_mc0_disp, !560, !"bcm_mc0_disp", i1 false, i1 false}
!560 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1498, i32 28}
!561 = !{ptr @sm8450_mmss_noc, !562, !"sm8450_mmss_noc", i1 false, i1 false}
!562 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1774, i32 29}
!563 = !{ptr @mmss_noc_nodes, !564, !"mmss_noc_nodes", i1 false, i1 false}
!564 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1753, i32 30}
!565 = !{ptr @.str.193, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 374, i32 10}
!567 = !{ptr @qnm_camnoc_hf, !568, !"qnm_camnoc_hf", i1 false, i1 false}
!568 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 373, i32 29}
!569 = !{ptr @.str.195, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 383, i32 10}
!571 = !{ptr @qnm_camnoc_icp, !572, !"qnm_camnoc_icp", i1 false, i1 false}
!572 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 382, i32 29}
!573 = !{ptr @.str.197, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 392, i32 10}
!575 = !{ptr @qnm_camnoc_sf, !576, !"qnm_camnoc_sf", i1 false, i1 false}
!576 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 391, i32 29}
!577 = !{ptr @.str.199, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 401, i32 10}
!579 = !{ptr @qnm_mdp, !580, !"qnm_mdp", i1 false, i1 false}
!580 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 400, i32 29}
!581 = !{ptr @.str.201, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 410, i32 10}
!583 = !{ptr @qnm_mnoc_cfg, !584, !"qnm_mnoc_cfg", i1 false, i1 false}
!584 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 409, i32 29}
!585 = !{ptr @.str.203, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 419, i32 10}
!587 = !{ptr @qnm_rot, !588, !"qnm_rot", i1 false, i1 false}
!588 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 418, i32 29}
!589 = !{ptr @.str.205, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 428, i32 10}
!591 = !{ptr @qnm_vapss_hcp, !592, !"qnm_vapss_hcp", i1 false, i1 false}
!592 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 427, i32 29}
!593 = !{ptr @.str.207, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 437, i32 10}
!595 = !{ptr @qnm_video, !596, !"qnm_video", i1 false, i1 false}
!596 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 436, i32 29}
!597 = !{ptr @.str.209, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 446, i32 10}
!599 = !{ptr @qnm_video_cv_cpu, !600, !"qnm_video_cv_cpu", i1 false, i1 false}
!600 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 445, i32 29}
!601 = !{ptr @.str.211, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 455, i32 10}
!603 = !{ptr @qnm_video_cvp, !604, !"qnm_video_cvp", i1 false, i1 false}
!604 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 454, i32 29}
!605 = !{ptr @.str.213, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 464, i32 10}
!607 = !{ptr @qnm_video_v_cpu, !608, !"qnm_video_v_cpu", i1 false, i1 false}
!608 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 463, i32 29}
!609 = !{ptr @.str.215, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1217, i32 10}
!611 = !{ptr @qns_mem_noc_hf, !612, !"qns_mem_noc_hf", i1 false, i1 false}
!612 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1216, i32 29}
!613 = !{ptr @.str.217, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1226, i32 10}
!615 = !{ptr @qns_mem_noc_sf, !616, !"qns_mem_noc_sf", i1 false, i1 false}
!616 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1225, i32 29}
!617 = !{ptr @.str.219, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1235, i32 10}
!619 = !{ptr @srvc_mnoc, !620, !"srvc_mnoc", i1 false, i1 false}
!620 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1234, i32 29}
!621 = !{ptr @.str.220, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 617, i32 10}
!623 = !{ptr @qnm_mdp_disp, !624, !"qnm_mdp_disp", i1 false, i1 false}
!624 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 616, i32 29}
!625 = !{ptr @.str.222, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 626, i32 10}
!627 = !{ptr @qnm_rot_disp, !628, !"qnm_rot_disp", i1 false, i1 false}
!628 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 625, i32 29}
!629 = !{ptr @.str.224, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1320, i32 10}
!631 = !{ptr @qns_mem_noc_hf_disp, !632, !"qns_mem_noc_hf_disp", i1 false, i1 false}
!632 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1319, i32 29}
!633 = !{ptr @.str.226, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1329, i32 10}
!635 = !{ptr @qns_mem_noc_sf_disp, !636, !"qns_mem_noc_sf_disp", i1 false, i1 false}
!636 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1328, i32 29}
!637 = !{ptr @mmss_noc_bcms, !638, !"mmss_noc_bcms", i1 false, i1 false}
!638 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1746, i32 29}
!639 = !{ptr @.str.228, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1397, i32 10}
!641 = !{ptr @bcm_mm0, !642, !"bcm_mm0", i1 false, i1 false}
!642 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1396, i32 28}
!643 = !{ptr @.str.230, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1404, i32 10}
!645 = !{ptr @bcm_mm1, !646, !"bcm_mm1", i1 false, i1 false}
!646 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1403, i32 28}
!647 = !{ptr @bcm_mm0_disp, !648, !"bcm_mm0_disp", i1 false, i1 false}
!648 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1504, i32 28}
!649 = !{ptr @bcm_mm1_disp, !650, !"bcm_mm1_disp", i1 false, i1 false}
!650 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1510, i32 28}
!651 = !{ptr @sm8450_nsp_noc, !652, !"sm8450_nsp_noc", i1 false, i1 false}
!652 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1792, i32 29}
!653 = !{ptr @nsp_noc_nodes, !654, !"nsp_noc_nodes", i1 false, i1 false}
!654 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1785, i32 30}
!655 = !{ptr @.str.234, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 473, i32 10}
!657 = !{ptr @qhm_nsp_noc_config, !658, !"qhm_nsp_noc_config", i1 false, i1 false}
!658 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 472, i32 29}
!659 = !{ptr @.str.236, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 482, i32 10}
!661 = !{ptr @qxm_nsp, !662, !"qxm_nsp", i1 false, i1 false}
!662 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 481, i32 29}
!663 = !{ptr @.str.238, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1243, i32 10}
!665 = !{ptr @qns_nsp_gemnoc, !666, !"qns_nsp_gemnoc", i1 false, i1 false}
!666 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1242, i32 29}
!667 = !{ptr @.str.240, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1252, i32 10}
!669 = !{ptr @service_nsp_noc, !670, !"service_nsp_noc", i1 false, i1 false}
!670 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1251, i32 29}
!671 = !{ptr @nsp_noc_bcms, !672, !"nsp_noc_bcms", i1 false, i1 false}
!672 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1781, i32 29}
!673 = !{ptr @.str.241, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1384, i32 10}
!675 = !{ptr @bcm_co0, !676, !"bcm_co0", i1 false, i1 false}
!676 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1383, i32 28}
!677 = !{ptr @sm8450_pcie_anoc, !678, !"sm8450_pcie_anoc", i1 false, i1 false}
!678 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1811, i32 29}
!679 = !{ptr @pcie_anoc_nodes, !680, !"pcie_anoc_nodes", i1 false, i1 false}
!680 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1803, i32 30}
!681 = !{ptr @.str.243, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 491, i32 10}
!683 = !{ptr @qnm_pcie_anoc_cfg, !684, !"qnm_pcie_anoc_cfg", i1 false, i1 false}
!684 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 490, i32 29}
!685 = !{ptr @.str.245, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 500, i32 10}
!687 = !{ptr @xm_pcie3_0, !688, !"xm_pcie3_0", i1 false, i1 false}
!688 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 499, i32 29}
!689 = !{ptr @.str.247, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 509, i32 10}
!691 = !{ptr @xm_pcie3_1, !692, !"xm_pcie3_1", i1 false, i1 false}
!692 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 508, i32 29}
!693 = !{ptr @.str.249, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1260, i32 10}
!695 = !{ptr @qns_pcie_mem_noc, !696, !"qns_pcie_mem_noc", i1 false, i1 false}
!696 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1259, i32 29}
!697 = !{ptr @.str.251, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1269, i32 10}
!699 = !{ptr @srvc_pcie_aggre_noc, !700, !"srvc_pcie_aggre_noc", i1 false, i1 false}
!700 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1268, i32 29}
!701 = !{ptr @pcie_anoc_bcms, !702, !"pcie_anoc_bcms", i1 false, i1 false}
!702 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1799, i32 29}
!703 = !{ptr @.str.252, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1487, i32 10}
!705 = !{ptr @bcm_sn7, !706, !"bcm_sn7", i1 false, i1 false}
!706 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1486, i32 28}
!707 = !{ptr @sm8450_system_noc, !708, !"sm8450_system_noc", i1 false, i1 false}
!708 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1839, i32 29}
!709 = !{ptr @system_noc_nodes, !710, !"system_noc_nodes", i1 false, i1 false}
!710 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1826, i32 30}
!711 = !{ptr @.str.254, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 518, i32 10}
!713 = !{ptr @qhm_gic, !714, !"qhm_gic", i1 false, i1 false}
!714 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 517, i32 29}
!715 = !{ptr @.str.256, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 527, i32 10}
!717 = !{ptr @qnm_aggre1_noc, !718, !"qnm_aggre1_noc", i1 false, i1 false}
!718 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 526, i32 29}
!719 = !{ptr @.str.258, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 536, i32 10}
!721 = !{ptr @qnm_aggre2_noc, !722, !"qnm_aggre2_noc", i1 false, i1 false}
!722 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 535, i32 29}
!723 = !{ptr @.str.260, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 545, i32 10}
!725 = !{ptr @qnm_lpass_noc, !726, !"qnm_lpass_noc", i1 false, i1 false}
!726 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 544, i32 29}
!727 = !{ptr @.str.262, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 554, i32 10}
!729 = !{ptr @qnm_snoc_cfg, !730, !"qnm_snoc_cfg", i1 false, i1 false}
!730 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 553, i32 29}
!731 = !{ptr @.str.264, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 563, i32 10}
!733 = !{ptr @qxm_pimem, !734, !"qxm_pimem", i1 false, i1 false}
!734 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 562, i32 29}
!735 = !{ptr @.str.266, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 572, i32 10}
!737 = !{ptr @xm_gic, !738, !"xm_gic", i1 false, i1 false}
!738 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 571, i32 29}
!739 = !{ptr @.str.268, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1277, i32 10}
!741 = !{ptr @qns_gemnoc_gc, !742, !"qns_gemnoc_gc", i1 false, i1 false}
!742 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1276, i32 29}
!743 = !{ptr @.str.270, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1286, i32 10}
!745 = !{ptr @qns_gemnoc_sf, !746, !"qns_gemnoc_sf", i1 false, i1 false}
!746 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1285, i32 29}
!747 = !{ptr @.str.272, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1295, i32 10}
!749 = !{ptr @srvc_snoc, !750, !"srvc_snoc", i1 false, i1 false}
!750 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1294, i32 29}
!751 = !{ptr @system_noc_bcms, !752, !"system_noc_bcms", i1 false, i1 false}
!752 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1818, i32 29}
!753 = !{ptr @.str.273, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1455, i32 10}
!755 = !{ptr @bcm_sn0, !756, !"bcm_sn0", i1 false, i1 false}
!756 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1454, i32 28}
!757 = !{ptr @.str.275, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1462, i32 10}
!759 = !{ptr @bcm_sn1, !760, !"bcm_sn1", i1 false, i1 false}
!760 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1461, i32 28}
!761 = !{ptr @.str.277, !762, !"<string literal>", i1 false, i1 false}
!762 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1469, i32 10}
!763 = !{ptr @bcm_sn2, !764, !"bcm_sn2", i1 false, i1 false}
!764 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1468, i32 28}
!765 = !{ptr @.str.279, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1475, i32 10}
!767 = !{ptr @bcm_sn3, !768, !"bcm_sn3", i1 false, i1 false}
!768 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1474, i32 28}
!769 = !{ptr @.str.281, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1481, i32 10}
!771 = !{ptr @bcm_sn4, !772, !"bcm_sn4", i1 false, i1 false}
!772 = !{!"../drivers/interconnect/qcom/sm8450.c", i32 1480, i32 28}
!773 = !{i32 1, !"wchar_size", i32 2}
!774 = !{i32 1, !"min_enum_size", i32 4}
!775 = !{i32 8, !"branch-target-enforcement", i32 0}
!776 = !{i32 8, !"sign-return-address", i32 0}
!777 = !{i32 8, !"sign-return-address-all", i32 0}
!778 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!779 = !{i32 7, !"uwtable", i32 1}
!780 = !{i32 7, !"frame-pointer", i32 2}
!781 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!782 = !{!"branch_weights", i32 1, i32 2000}
