; ModuleID = '/llk/IR_all_yes/drivers/interconnect/qcom/sc8180x.c_pt.bc'
source_filename = "../drivers/interconnect/qcom/sc8180x.c"
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

@__initcall__kmod_qnoc_sc8180x__170_623_qnoc_driver_init6 = internal global ptr @qnoc_driver_init, section ".initcall6.init", align 4
@qnoc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qnoc_probe, ptr @qnoc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qnoc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qnoc_driver_exit = internal global ptr @qnoc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [53 x i8] c"qnoc_sc8180x.description=Qualcomm sc8180x NoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [57 x i8] c"qnoc_sc8180x.file=drivers/interconnect/qcom/qnoc-sc8180x\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [28 x i8] c"qnoc_sc8180x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qnoc-sc8180x\00", [19 x i8] zeroinitializer }, align 32
@qnoc_of_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-aggre1-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_aggre1_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-aggre2-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_aggre2_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-camnoc-virt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_camnoc_virt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-compute-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_compute_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-config-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_config_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-dc-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_dc_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-gem-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_gem_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-ipa-virt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_ipa_virt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-mc-virt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_mc_virt }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-mmss-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_mmss_noc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-system-noc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_system_noc }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@qnoc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error adding interconnect provider\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qnoc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/interconnect/qcom/sc8180x.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qnoc_probe._entry_ptr = internal global ptr @qnoc_probe._entry, section ".printk_index", align 4
@sc8180x_aggre1_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @aggre1_noc_nodes, i32 9, ptr @aggre1_noc_bcms, i32 3 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_aggre2_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @aggre2_noc_nodes, i32 21, ptr @aggre2_noc_bcms, i32 3 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_camnoc_virt = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @camnoc_virt_nodes, i32 4, ptr @camnoc_virt_bcms, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_compute_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @compute_noc_nodes, i32 2, ptr @compute_noc_bcms, i32 2 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_config_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @config_noc_nodes, i32 57, ptr @config_noc_bcms, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_dc_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @dc_noc_nodes, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_gem_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @gem_noc_nodes, i32 18, ptr @gem_noc_bcms, i32 3 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_ipa_virt = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @ipa_virt_nodes, i32 2, ptr @ipa_virt_bcms, i32 1 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_mc_virt = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @mc_virt_nodes, i32 2, ptr @mc_virt_bcms, i32 2 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_mmss_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @mmss_noc_nodes, i32 13, ptr @mmss_noc_bcms, i32 3 }, [16 x i8] zeroinitializer }, align 32
@sc8180x_system_noc = internal constant { %struct.qcom_icc_desc, [16 x i8] } { %struct.qcom_icc_desc { ptr @system_noc_nodes, i32 19, ptr @system_noc_bcms, i32 9 }, [16 x i8] zeroinitializer }, align 32
@aggre1_noc_nodes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @mas_qhm_a1noc_cfg, ptr @mas_xm_ufs_card, ptr @mas_xm_ufs_g4, ptr @mas_xm_ufs_mem, ptr @mas_xm_usb3_0, ptr @mas_xm_usb3_1, ptr @mas_xm_usb3_2, ptr @slv_qns_a1noc_snoc, ptr @slv_srvc_aggre1_noc], [60 x i8] zeroinitializer }, align 32
@aggre1_noc_bcms = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bcm_sn3, ptr @bcm_ce0, ptr @bcm_qup0], [20 x i8] zeroinitializer }, align 32
@slv_srvc_aggre1_noc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.22, [128 x i16] zeroinitializer, i16 69, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mas_qhm_a1noc_cfg\00", [46 x i8] zeroinitializer }, align 32
@mas_qhm_a1noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.6, <{ i16, [127 x i16] }> <{ i16 69, [127 x i16] zeroinitializer }>, i16 1, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_xm_ufs_card\00", [16 x i8] zeroinitializer }, align 32
@mas_xm_ufs_card = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.8, <{ i16, [127 x i16] }> <{ i16 68, [127 x i16] zeroinitializer }>, i16 2, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_xm_ufs_g4\00", [18 x i8] zeroinitializer }, align 32
@mas_xm_ufs_g4 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.10, <{ i16, [127 x i16] }> <{ i16 68, [127 x i16] zeroinitializer }>, i16 3, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_xm_ufs_mem\00", [17 x i8] zeroinitializer }, align 32
@mas_xm_ufs_mem = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.12, <{ i16, [127 x i16] }> <{ i16 68, [127 x i16] zeroinitializer }>, i16 4, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_xm_usb3_0\00", [18 x i8] zeroinitializer }, align 32
@mas_xm_usb3_0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.14, <{ i16, [127 x i16] }> <{ i16 68, [127 x i16] zeroinitializer }>, i16 5, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_xm_usb3_1\00", [18 x i8] zeroinitializer }, align 32
@mas_xm_usb3_1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.16, <{ i16, [127 x i16] }> <{ i16 68, [127 x i16] zeroinitializer }>, i16 6, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_xm_usb3_2\00", [18 x i8] zeroinitializer }, align 32
@mas_xm_usb3_2 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.18, <{ i16, [127 x i16] }> <{ i16 68, [127 x i16] zeroinitializer }>, i16 7, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qns_a1noc_snoc\00", [45 x i8] zeroinitializer }, align 32
@slv_qns_a1noc_snoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.20, <{ i16, [127 x i16] }> <{ i16 57, [127 x i16] zeroinitializer }>, i16 68, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_srvc_aggre1_noc\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN3\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn3 = internal global { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [2 x ptr] }, [48 x i8] } { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [2 x ptr] } { ptr @.str.23, i32 0, i32 0, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 2, [2 x ptr] [ptr @slv_srvc_aggre1_noc, ptr @slv_qns_cnoc] }, [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qns_cnoc\00", [19 x i8] zeroinitializer }, align 32
@slv_qns_cnoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.25, <{ i16, [127 x i16] }> <{ i16 30, [127 x i16] zeroinitializer }>, i16 145, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CE0\00", [28 x i8] zeroinitializer }, align 32
@bcm_ce0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.27, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @mas_qxm_crypto] }>, [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_qxm_crypto\00", [17 x i8] zeroinitializer }, align 32
@mas_qxm_crypto = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.29, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 16, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QUP0\00", [27 x i8] zeroinitializer }, align 32
@bcm_qup0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [3 x ptr] }>, [44 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [3 x ptr] }> <{ ptr @.str.31, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 3, [3 x ptr] [ptr @mas_qhm_qup0, ptr @mas_qhm_qup1, ptr @mas_qhm_qup2] }>, [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qhm_qup0\00", [19 x i8] zeroinitializer }, align 32
@mas_qhm_qup0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.33, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 12, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qhm_qup1\00", [19 x i8] zeroinitializer }, align 32
@mas_qhm_qup1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.35, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 13, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qhm_qup2\00", [19 x i8] zeroinitializer }, align 32
@mas_qhm_qup2 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.37, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 14, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@aggre2_noc_nodes = internal global { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @mas_qhm_a2noc_cfg, ptr @mas_qhm_qdss_bam, ptr @mas_qhm_qspi, ptr @mas_qhm_qspi1, ptr @mas_qhm_qup0, ptr @mas_qhm_qup1, ptr @mas_qhm_qup2, ptr @mas_qhm_sensorss_ahb, ptr @mas_qxm_crypto, ptr @mas_qxm_ipa, ptr @mas_xm_emac, ptr @mas_xm_pcie3_0, ptr @mas_xm_pcie3_1, ptr @mas_xm_pcie3_2, ptr @mas_xm_pcie3_3, ptr @mas_xm_qdss_etr, ptr @mas_xm_sdc2, ptr @mas_xm_sdc4, ptr @slv_qns_a2noc_snoc, ptr @slv_qns_pcie_mem_noc, ptr @slv_srvc_aggre2_noc], [44 x i8] zeroinitializer }, align 32
@aggre2_noc_bcms = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bcm_sn14, ptr @bcm_ce0, ptr @bcm_qup0], [20 x i8] zeroinitializer }, align 32
@slv_srvc_aggre2_noc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.71, [128 x i16] zeroinitializer, i16 72, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mas_qhm_a2noc_cfg\00", [46 x i8] zeroinitializer }, align 32
@mas_qhm_a2noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.39, <{ i16, [127 x i16] }> <{ i16 72, [127 x i16] zeroinitializer }>, i16 8, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mas_qhm_qdss_bam\00", [47 x i8] zeroinitializer }, align 32
@mas_qhm_qdss_bam = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.41, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 9, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qhm_qspi\00", [19 x i8] zeroinitializer }, align 32
@mas_qhm_qspi = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.43, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 10, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_qhm_qspi1\00", [18 x i8] zeroinitializer }, align 32
@mas_qhm_qspi1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.45, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 11, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mas_qhm_sensorss_ahb\00", [43 x i8] zeroinitializer }, align 32
@mas_qhm_sensorss_ahb = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.47, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 15, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_qxm_ipa\00", [20 x i8] zeroinitializer }, align 32
@mas_qxm_ipa = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.49, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 17, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_xm_emac\00", [20 x i8] zeroinitializer }, align 32
@mas_xm_emac = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.51, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 18, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_xm_pcie3_0\00", [17 x i8] zeroinitializer }, align 32
@mas_xm_pcie3_0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.53, <{ i16, [127 x i16] }> <{ i16 71, [127 x i16] zeroinitializer }>, i16 19, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_xm_pcie3_1\00", [17 x i8] zeroinitializer }, align 32
@mas_xm_pcie3_1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.55, <{ i16, [127 x i16] }> <{ i16 71, [127 x i16] zeroinitializer }>, i16 20, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_xm_pcie3_2\00", [17 x i8] zeroinitializer }, align 32
@mas_xm_pcie3_2 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.57, <{ i16, [127 x i16] }> <{ i16 71, [127 x i16] zeroinitializer }>, i16 21, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_xm_pcie3_3\00", [17 x i8] zeroinitializer }, align 32
@mas_xm_pcie3_3 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.59, <{ i16, [127 x i16] }> <{ i16 71, [127 x i16] zeroinitializer }>, i16 22, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_xm_qdss_etr\00", [16 x i8] zeroinitializer }, align 32
@mas_xm_qdss_etr = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.61, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 23, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_xm_sdc2\00", [20 x i8] zeroinitializer }, align 32
@mas_xm_sdc2 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.63, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 24, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_xm_sdc4\00", [20 x i8] zeroinitializer }, align 32
@mas_xm_sdc4 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.65, <{ i16, [127 x i16] }> <{ i16 70, [127 x i16] zeroinitializer }>, i16 25, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qns_a2noc_snoc\00", [45 x i8] zeroinitializer }, align 32
@slv_qns_a2noc_snoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.67, <{ i16, [127 x i16] }> <{ i16 58, [127 x i16] zeroinitializer }>, i16 70, i16 1, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slv_qns_pcie_mem_noc\00", [43 x i8] zeroinitializer }, align 32
@slv_qns_pcie_mem_noc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.69, <{ i16, [127 x i16] }> <{ i16 40, [127 x i16] zeroinitializer }>, i16 71, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_srvc_aggre2_noc\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SN14\00", [27 x i8] zeroinitializer }, align 32
@bcm_sn14 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.72, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qns_pcie_mem_noc] }>, [52 x i8] zeroinitializer }, align 32
@camnoc_virt_nodes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mas_qxm_camnoc_hf0_uncomp, ptr @mas_qxm_camnoc_hf1_uncomp, ptr @mas_qxm_camnoc_sf_uncomp, ptr @slv_qns_camnoc_uncomp], [16 x i8] zeroinitializer }, align 32
@camnoc_virt_bcms = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @bcm_mm1], [28 x i8] zeroinitializer }, align 32
@slv_qns_camnoc_uncomp = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.80, [128 x i16] zeroinitializer, i16 73, i16 0, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mas_qxm_camnoc_hf0_uncomp\00", [38 x i8] zeroinitializer }, align 32
@mas_qxm_camnoc_hf0_uncomp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.74, <{ i16, [127 x i16] }> <{ i16 73, [127 x i16] zeroinitializer }>, i16 26, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mas_qxm_camnoc_hf1_uncomp\00", [38 x i8] zeroinitializer }, align 32
@mas_qxm_camnoc_hf1_uncomp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.76, <{ i16, [127 x i16] }> <{ i16 73, [127 x i16] zeroinitializer }>, i16 27, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mas_qxm_camnoc_sf_uncomp\00", [39 x i8] zeroinitializer }, align 32
@mas_qxm_camnoc_sf_uncomp = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.78, <{ i16, [127 x i16] }> <{ i16 73, [127 x i16] zeroinitializer }>, i16 28, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"slv_qns_camnoc_uncomp\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MM1\00", [28 x i8] zeroinitializer }, align 32
@bcm_mm1 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [7 x ptr] }>, [60 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [7 x ptr] }> <{ ptr @.str.81, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 7, [7 x ptr] [ptr @mas_qxm_camnoc_hf0_uncomp, ptr @mas_qxm_camnoc_hf1_uncomp, ptr @mas_qxm_camnoc_sf_uncomp, ptr @mas_qxm_camnoc_hf0, ptr @mas_qxm_camnoc_hf1, ptr @mas_qxm_mdp0, ptr @mas_qxm_mdp1] }>, [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_qxm_camnoc_hf0\00", [45 x i8] zeroinitializer }, align 32
@mas_qxm_camnoc_hf0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.83, <{ i16, [127 x i16] }> <{ i16 142, [127 x i16] zeroinitializer }>, i16 47, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_qxm_camnoc_hf1\00", [45 x i8] zeroinitializer }, align 32
@mas_qxm_camnoc_hf1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.85, <{ i16, [127 x i16] }> <{ i16 142, [127 x i16] zeroinitializer }>, i16 48, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qxm_mdp0\00", [19 x i8] zeroinitializer }, align 32
@mas_qxm_mdp0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.87, <{ i16, [127 x i16] }> <{ i16 142, [127 x i16] zeroinitializer }>, i16 50, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qxm_mdp1\00", [19 x i8] zeroinitializer }, align 32
@mas_qxm_mdp1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.89, <{ i16, [127 x i16] }> <{ i16 142, [127 x i16] zeroinitializer }>, i16 51, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@compute_noc_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mas_qnm_npu, ptr @slv_qns_cdsp_mem_noc], [24 x i8] zeroinitializer }, align 32
@compute_noc_bcms = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bcm_co0, ptr @bcm_co2], [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_qnm_npu\00", [20 x i8] zeroinitializer }, align 32
@mas_qnm_npu = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.91, <{ i16, [127 x i16] }> <{ i16 74, [127 x i16] zeroinitializer }>, i16 29, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slv_qns_cdsp_mem_noc\00", [43 x i8] zeroinitializer }, align 32
@slv_qns_cdsp_mem_noc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.93, <{ i16, [127 x i16] }> <{ i16 36, [127 x i16] zeroinitializer }>, i16 74, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CO0\00", [28 x i8] zeroinitializer }, align 32
@bcm_co0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.95, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qns_cdsp_mem_noc] }>, [52 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CO2\00", [28 x i8] zeroinitializer }, align 32
@bcm_co2 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.97, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @mas_qnm_npu] }>, [52 x i8] zeroinitializer }, align 32
@config_noc_nodes = internal global { [57 x ptr], [60 x i8] } { [57 x ptr] [ptr @mas_qnm_snoc, ptr @slv_qhs_a1_noc_cfg, ptr @slv_qhs_a2_noc_cfg, ptr @slv_qhs_ahb2phy_refgen_center, ptr @slv_qhs_ahb2phy_refgen_east, ptr @slv_qhs_ahb2phy_refgen_west, ptr @slv_qhs_ahb2phy_south, ptr @slv_qhs_aop, ptr @slv_qhs_aoss, ptr @slv_qhs_camera_cfg, ptr @slv_qhs_clk_ctl, ptr @slv_qhs_compute_dsp, ptr @slv_qhs_cpr_cx, ptr @slv_qhs_cpr_mmcx, ptr @slv_qhs_cpr_mx, ptr @slv_qhs_crypto0_cfg, ptr @slv_qhs_ddrss_cfg, ptr @slv_qhs_display_cfg, ptr @slv_qhs_emac_cfg, ptr @slv_qhs_glm, ptr @slv_qhs_gpuss_cfg, ptr @slv_qhs_imem_cfg, ptr @slv_qhs_ipa, ptr @slv_qhs_mnoc_cfg, ptr @slv_qhs_npu_cfg, ptr @slv_qhs_pcie0_cfg, ptr @slv_qhs_pcie1_cfg, ptr @slv_qhs_pcie2_cfg, ptr @slv_qhs_pcie3_cfg, ptr @slv_qhs_pdm, ptr @slv_qhs_pimem_cfg, ptr @slv_qhs_prng, ptr @slv_qhs_qdss_cfg, ptr @slv_qhs_qspi_0, ptr @slv_qhs_qspi_1, ptr @slv_qhs_qupv3_east0, ptr @slv_qhs_qupv3_east1, ptr @slv_qhs_qupv3_west, ptr @slv_qhs_sdc2, ptr @slv_qhs_sdc4, ptr @slv_qhs_security, ptr @slv_qhs_snoc_cfg, ptr @slv_qhs_spss_cfg, ptr @slv_qhs_tcsr, ptr @slv_qhs_tlmm_east, ptr @slv_qhs_tlmm_south, ptr @slv_qhs_tlmm_west, ptr @slv_qhs_tsif, ptr @slv_qhs_ufs_card_cfg, ptr @slv_qhs_ufs_mem0_cfg, ptr @slv_qhs_ufs_mem1_cfg, ptr @slv_qhs_usb3_0, ptr @slv_qhs_usb3_1, ptr @slv_qhs_usb3_2, ptr @slv_qhs_venus_cfg, ptr @slv_qhs_vsense_ctrl_cfg, ptr @slv_srvc_cnoc], [60 x i8] zeroinitializer }, align 32
@config_noc_bcms = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @bcm_cn0], [28 x i8] zeroinitializer }, align 32
@slv_qhs_ahb2phy_refgen_center = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.105, [128 x i16] zeroinitializer, i16 77, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_ahb2phy_refgen_east = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.106, [128 x i16] zeroinitializer, i16 78, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_ahb2phy_refgen_west = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.107, [128 x i16] zeroinitializer, i16 79, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_ahb2phy_south = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.108, [128 x i16] zeroinitializer, i16 80, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_aop = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.109, [128 x i16] zeroinitializer, i16 81, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_aoss = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.110, [128 x i16] zeroinitializer, i16 82, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_camera_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.111, [128 x i16] zeroinitializer, i16 83, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_clk_ctl = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.112, [128 x i16] zeroinitializer, i16 84, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_compute_dsp = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.113, [128 x i16] zeroinitializer, i16 85, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_cpr_cx = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.114, [128 x i16] zeroinitializer, i16 86, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_cpr_mmcx = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.115, [128 x i16] zeroinitializer, i16 87, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_cpr_mx = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.116, [128 x i16] zeroinitializer, i16 88, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_crypto0_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.117, [128 x i16] zeroinitializer, i16 89, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_display_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.120, [128 x i16] zeroinitializer, i16 91, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_emac_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.121, [128 x i16] zeroinitializer, i16 92, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_glm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.122, [128 x i16] zeroinitializer, i16 93, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_gpuss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.123, [128 x i16] zeroinitializer, i16 94, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_imem_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.124, [128 x i16] zeroinitializer, i16 95, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_ipa = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.125, [128 x i16] zeroinitializer, i16 96, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_npu_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.128, [128 x i16] zeroinitializer, i16 98, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_pcie0_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.129, [128 x i16] zeroinitializer, i16 99, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_pcie1_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.130, [128 x i16] zeroinitializer, i16 100, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_pcie2_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.131, [128 x i16] zeroinitializer, i16 101, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_pcie3_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.132, [128 x i16] zeroinitializer, i16 102, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_pdm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.133, [128 x i16] zeroinitializer, i16 103, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_pimem_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.134, [128 x i16] zeroinitializer, i16 104, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_prng = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.135, [128 x i16] zeroinitializer, i16 105, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_qdss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.136, [128 x i16] zeroinitializer, i16 106, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_qspi_0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.137, [128 x i16] zeroinitializer, i16 107, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_qspi_1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.138, [128 x i16] zeroinitializer, i16 108, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_qupv3_east0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.139, [128 x i16] zeroinitializer, i16 109, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_qupv3_east1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.140, [128 x i16] zeroinitializer, i16 110, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_qupv3_west = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.141, [128 x i16] zeroinitializer, i16 111, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_sdc2 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.142, [128 x i16] zeroinitializer, i16 112, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_sdc4 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.143, [128 x i16] zeroinitializer, i16 113, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_security = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.144, [128 x i16] zeroinitializer, i16 114, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_spss_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.147, [128 x i16] zeroinitializer, i16 116, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_tcsr = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.148, [128 x i16] zeroinitializer, i16 117, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_tlmm_east = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.149, [128 x i16] zeroinitializer, i16 118, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_tlmm_south = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.150, [128 x i16] zeroinitializer, i16 119, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_tlmm_west = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.151, [128 x i16] zeroinitializer, i16 120, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_tsif = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.152, [128 x i16] zeroinitializer, i16 121, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_ufs_card_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.153, [128 x i16] zeroinitializer, i16 122, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_ufs_mem0_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.154, [128 x i16] zeroinitializer, i16 123, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_ufs_mem1_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.155, [128 x i16] zeroinitializer, i16 124, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_usb3_0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.156, [128 x i16] zeroinitializer, i16 125, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_usb3_1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.157, [128 x i16] zeroinitializer, i16 126, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_usb3_2 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.158, [128 x i16] zeroinitializer, i16 127, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_venus_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.159, [128 x i16] zeroinitializer, i16 128, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qhs_vsense_ctrl_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.160, [128 x i16] zeroinitializer, i16 129, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_srvc_cnoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.161, [128 x i16] zeroinitializer, i16 130, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qnm_snoc\00", [19 x i8] zeroinitializer }, align 32
@mas_qnm_snoc = internal global { { ptr, <{ [56 x i16], [72 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ [56 x i16], [72 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.99, <{ [56 x i16], [72 x i16] }> <{ [56 x i16] [i16 119, i16 85, i16 116, i16 83, i16 113, i16 77, i16 112, i16 101, i16 97, i16 92, i16 107, i16 108, i16 118, i16 115, i16 78, i16 93, i16 103, i16 100, i16 76, i16 106, i16 91, i16 117, i16 123, i16 90, i16 99, i16 109, i16 110, i16 98, i16 89, i16 94, i16 128, i16 121, i16 96, i16 84, i16 114, i16 81, i16 79, i16 80, i16 130, i16 122, i16 126, i16 127, i16 102, i16 86, i16 120, i16 75, i16 82, i16 105, i16 129, i16 111, i16 125, i16 87, i16 104, i16 124, i16 88, i16 95], [72 x i16] zeroinitializer }>, i16 30, i16 56, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qhs_a1_noc_cfg\00", [45 x i8] zeroinitializer }, align 32
@slv_qhs_a1_noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.101, <{ i16, [127 x i16] }> <{ i16 1, [127 x i16] zeroinitializer }>, i16 75, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qhs_a2_noc_cfg\00", [45 x i8] zeroinitializer }, align 32
@slv_qhs_a2_noc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.103, <{ i16, [127 x i16] }> <{ i16 8, [127 x i16] zeroinitializer }>, i16 76, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"slv_qhs_ahb2phy_refgen_center\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"slv_qhs_ahb2phy_refgen_east\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"slv_qhs_ahb2phy_refgen_west\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"slv_qhs_ahb2phy_south\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_qhs_aop\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_aoss\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qhs_camera_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_qhs_clk_ctl\00", [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_qhs_compute_dsp\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_cpr_cx\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_cpr_mmcx\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_cpr_mx\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_qhs_crypto0_cfg\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_ddrss_cfg\00", [46 x i8] zeroinitializer }, align 32
@slv_qhs_ddrss_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.118, <{ i16, [127 x i16] }> <{ i16 31, [127 x i16] zeroinitializer }>, i16 90, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_qhs_display_cfg\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_emac_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_qhs_glm\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_gpuss_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_imem_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_qhs_ipa\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_mnoc_cfg\00", [47 x i8] zeroinitializer }, align 32
@slv_qhs_mnoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.126, <{ i16, [127 x i16] }> <{ i16 46, [127 x i16] zeroinitializer }>, i16 97, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_qhs_npu_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_pcie0_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_pcie1_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_pcie2_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_pcie3_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_qhs_pdm\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_pimem_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_prng\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_qdss_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_qspi_0\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_qspi_1\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_qhs_qupv3_east0\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slv_qhs_qupv3_east1\00", [44 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qhs_qupv3_west\00", [45 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_sdc2\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_sdc4\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_security\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_snoc_cfg\00", [47 x i8] zeroinitializer }, align 32
@slv_qhs_snoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.145, <{ i16, [127 x i16] }> <{ i16 56, [127 x i16] zeroinitializer }>, i16 115, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qhs_spss_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_tcsr\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_tlmm_east\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qhs_tlmm_south\00", [45 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_tlmm_west\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_tsif\00", [19 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slv_qhs_ufs_card_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slv_qhs_ufs_mem0_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slv_qhs_ufs_mem1_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_usb3_0\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_usb3_1\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_usb3_2\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qhs_venus_cfg\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"slv_qhs_vsense_ctrl_cfg\00", [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_srvc_cnoc\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CN0\00", [28 x i8] zeroinitializer }, align 32
@bcm_cn0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [57 x ptr] }>, [84 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [57 x ptr] }> <{ ptr @.str.162, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 57, [57 x ptr] [ptr @mas_qnm_snoc, ptr @slv_qhs_a1_noc_cfg, ptr @slv_qhs_a2_noc_cfg, ptr @slv_qhs_ahb2phy_refgen_center, ptr @slv_qhs_ahb2phy_refgen_east, ptr @slv_qhs_ahb2phy_refgen_west, ptr @slv_qhs_ahb2phy_south, ptr @slv_qhs_aop, ptr @slv_qhs_aoss, ptr @slv_qhs_camera_cfg, ptr @slv_qhs_clk_ctl, ptr @slv_qhs_compute_dsp, ptr @slv_qhs_cpr_cx, ptr @slv_qhs_cpr_mmcx, ptr @slv_qhs_cpr_mx, ptr @slv_qhs_crypto0_cfg, ptr @slv_qhs_ddrss_cfg, ptr @slv_qhs_display_cfg, ptr @slv_qhs_emac_cfg, ptr @slv_qhs_glm, ptr @slv_qhs_gpuss_cfg, ptr @slv_qhs_imem_cfg, ptr @slv_qhs_ipa, ptr @slv_qhs_mnoc_cfg, ptr @slv_qhs_npu_cfg, ptr @slv_qhs_pcie0_cfg, ptr @slv_qhs_pcie1_cfg, ptr @slv_qhs_pcie2_cfg, ptr @slv_qhs_pcie3_cfg, ptr @slv_qhs_pdm, ptr @slv_qhs_pimem_cfg, ptr @slv_qhs_prng, ptr @slv_qhs_qdss_cfg, ptr @slv_qhs_qspi_0, ptr @slv_qhs_qspi_1, ptr @slv_qhs_qupv3_east0, ptr @slv_qhs_qupv3_east1, ptr @slv_qhs_qupv3_west, ptr @slv_qhs_sdc2, ptr @slv_qhs_sdc4, ptr @slv_qhs_security, ptr @slv_qhs_snoc_cfg, ptr @slv_qhs_spss_cfg, ptr @slv_qhs_tcsr, ptr @slv_qhs_tlmm_east, ptr @slv_qhs_tlmm_south, ptr @slv_qhs_tlmm_west, ptr @slv_qhs_tsif, ptr @slv_qhs_ufs_card_cfg, ptr @slv_qhs_ufs_mem0_cfg, ptr @slv_qhs_ufs_mem1_cfg, ptr @slv_qhs_usb3_0, ptr @slv_qhs_usb3_1, ptr @slv_qhs_usb3_2, ptr @slv_qhs_venus_cfg, ptr @slv_qhs_vsense_ctrl_cfg, ptr @slv_srvc_cnoc] }>, [84 x i8] zeroinitializer }, align 32
@dc_noc_nodes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mas_qhm_cnoc_dc_noc, ptr @slv_qhs_gemnoc, ptr @slv_qhs_llcc], [20 x i8] zeroinitializer }, align 32
@slv_qhs_llcc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.168, [128 x i16] zeroinitializer, i16 132, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mas_qhm_cnoc_dc_noc\00", [44 x i8] zeroinitializer }, align 32
@mas_qhm_cnoc_dc_noc = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.164, <{ i16, i16, [126 x i16] }> <{ i16 132, i16 131, [126 x i16] zeroinitializer }>, i16 31, i16 2, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slv_qhs_gemnoc\00", [17 x i8] zeroinitializer }, align 32
@slv_qhs_gemnoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.166, <{ i16, [127 x i16] }> <{ i16 35, [127 x i16] zeroinitializer }>, i16 131, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_llcc\00", [19 x i8] zeroinitializer }, align 32
@gem_noc_nodes = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @mas_acm_apps, ptr @mas_acm_gpu_tcu, ptr @mas_acm_sys_tcu, ptr @mas_qhm_gemnoc_cfg, ptr @mas_qnm_cmpnoc, ptr @mas_qnm_gpu, ptr @mas_qnm_mnoc_hf, ptr @mas_qnm_mnoc_sf, ptr @mas_qnm_pcie, ptr @mas_qnm_snoc_gc, ptr @mas_qnm_snoc_sf, ptr @mas_qxm_ecc, ptr @slv_qhs_mdsp_ms_mpu_cfg, ptr @slv_qns_ecc, ptr @slv_qns_gem_noc_snoc, ptr @slv_qns_llcc, ptr @slv_srvc_gemnoc, ptr @slv_srvc_gemnoc1], [56 x i8] zeroinitializer }, align 32
@gem_noc_bcms = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bcm_sh0, ptr @bcm_sh2, ptr @bcm_sh3], [20 x i8] zeroinitializer }, align 32
@slv_qhs_mdsp_ms_mpu_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.193, [128 x i16] zeroinitializer, i16 133, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qns_ecc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.194, [128 x i16] zeroinitializer, i16 134, i16 0, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_srvc_gemnoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.199, [128 x i16] zeroinitializer, i16 137, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_srvc_gemnoc1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.200, [128 x i16] zeroinitializer, i16 138, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_acm_apps\00", [19 x i8] zeroinitializer }, align 32
@mas_acm_apps = internal global { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.169, <{ i16, i16, i16, [125 x i16] }> <{ i16 134, i16 136, i16 135, [125 x i16] zeroinitializer }>, i16 32, i16 3, i16 4, i16 64, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_acm_gpu_tcu\00", [16 x i8] zeroinitializer }, align 32
@mas_acm_gpu_tcu = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.171, <{ i16, i16, [126 x i16] }> <{ i16 136, i16 135, [126 x i16] zeroinitializer }>, i16 33, i16 2, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_acm_sys_tcu\00", [16 x i8] zeroinitializer }, align 32
@mas_acm_sys_tcu = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.173, <{ i16, i16, [126 x i16] }> <{ i16 136, i16 135, [126 x i16] zeroinitializer }>, i16 34, i16 2, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_qhm_gemnoc_cfg\00", [45 x i8] zeroinitializer }, align 32
@mas_qhm_gemnoc_cfg = internal global { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.175, <{ i16, i16, i16, [125 x i16] }> <{ i16 138, i16 137, i16 133, [125 x i16] zeroinitializer }>, i16 35, i16 3, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_qnm_cmpnoc\00", [17 x i8] zeroinitializer }, align 32
@mas_qnm_cmpnoc = internal global { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, [125 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.177, <{ i16, i16, i16, [125 x i16] }> <{ i16 134, i16 136, i16 135, [125 x i16] zeroinitializer }>, i16 36, i16 3, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_qnm_gpu\00", [20 x i8] zeroinitializer }, align 32
@mas_qnm_gpu = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.179, <{ i16, i16, [126 x i16] }> <{ i16 136, i16 135, [126 x i16] zeroinitializer }>, i16 37, i16 2, i16 4, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_qnm_mnoc_hf\00", [16 x i8] zeroinitializer }, align 32
@mas_qnm_mnoc_hf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.181, <{ i16, [127 x i16] }> <{ i16 136, [127 x i16] zeroinitializer }>, i16 38, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_qnm_mnoc_sf\00", [16 x i8] zeroinitializer }, align 32
@mas_qnm_mnoc_sf = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.183, <{ i16, i16, [126 x i16] }> <{ i16 136, i16 135, [126 x i16] zeroinitializer }>, i16 39, i16 2, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mas_qnm_pcie\00", [19 x i8] zeroinitializer }, align 32
@mas_qnm_pcie = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.185, <{ i16, i16, [126 x i16] }> <{ i16 136, i16 135, [126 x i16] zeroinitializer }>, i16 40, i16 2, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_qnm_snoc_gc\00", [16 x i8] zeroinitializer }, align 32
@mas_qnm_snoc_gc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.187, <{ i16, [127 x i16] }> <{ i16 136, [127 x i16] zeroinitializer }>, i16 41, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mas_qnm_snoc_sf\00", [16 x i8] zeroinitializer }, align 32
@mas_qnm_snoc_sf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.189, <{ i16, [127 x i16] }> <{ i16 136, [127 x i16] zeroinitializer }>, i16 42, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_qxm_ecc\00", [20 x i8] zeroinitializer }, align 32
@mas_qxm_ecc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.191, <{ i16, [127 x i16] }> <{ i16 136, [127 x i16] zeroinitializer }>, i16 43, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"slv_qhs_mdsp_ms_mpu_cfg\00", [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slv_qns_ecc\00", [20 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slv_qns_gem_noc_snoc\00", [43 x i8] zeroinitializer }, align 32
@slv_qns_gem_noc_snoc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.195, <{ i16, [127 x i16] }> <{ i16 59, [127 x i16] zeroinitializer }>, i16 135, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qns_llcc\00", [19 x i8] zeroinitializer }, align 32
@slv_qns_llcc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.197, <{ i16, [127 x i16] }> <{ i16 45, [127 x i16] zeroinitializer }>, i16 136, i16 1, i16 8, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_srvc_gemnoc\00", [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_srvc_gemnoc1\00", [47 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SH0\00", [28 x i8] zeroinitializer }, align 32
@bcm_sh0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.201, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qns_llcc] }>, [52 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SH2\00", [28 x i8] zeroinitializer }, align 32
@bcm_sh2 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.203, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qns_gem_noc_snoc] }>, [52 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SH3\00", [28 x i8] zeroinitializer }, align 32
@bcm_sh3 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.205, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @mas_acm_apps] }>, [52 x i8] zeroinitializer }, align 32
@ipa_virt_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mas_ipa_core_master, ptr @slv_ipa_core_slave], [24 x i8] zeroinitializer }, align 32
@ipa_virt_bcms = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @bcm_ip0], [28 x i8] zeroinitializer }, align 32
@slv_ipa_core_slave = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.209, [128 x i16] zeroinitializer, i16 139, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mas_ipa_core_master\00", [44 x i8] zeroinitializer }, align 32
@mas_ipa_core_master = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.207, <{ i16, [127 x i16] }> <{ i16 139, [127 x i16] zeroinitializer }>, i16 44, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_ipa_core_slave\00", [45 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IP0\00", [28 x i8] zeroinitializer }, align 32
@bcm_ip0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.210, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_ipa_core_slave] }>, [52 x i8] zeroinitializer }, align 32
@mc_virt_nodes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mas_llcc_mc, ptr @slv_ebi], [24 x i8] zeroinitializer }, align 32
@mc_virt_bcms = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bcm_mc0, ptr @bcm_acv], [24 x i8] zeroinitializer }, align 32
@slv_ebi = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.214, [128 x i16] zeroinitializer, i16 140, i16 0, i16 8, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_llcc_mc\00", [20 x i8] zeroinitializer }, align 32
@mas_llcc_mc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.212, <{ i16, [127 x i16] }> <{ i16 140, [127 x i16] zeroinitializer }>, i16 45, i16 1, i16 8, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slv_ebi\00", [24 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MC0\00", [28 x i8] zeroinitializer }, align 32
@bcm_mc0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.215, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_ebi] }>, [52 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACV\00", [28 x i8] zeroinitializer }, align 32
@bcm_acv = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.217, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_ebi] }>, [52 x i8] zeroinitializer }, align 32
@mmss_noc_nodes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @mas_qhm_mnoc_cfg, ptr @mas_qxm_camnoc_hf0, ptr @mas_qxm_camnoc_hf1, ptr @mas_qxm_camnoc_sf, ptr @mas_qxm_mdp0, ptr @mas_qxm_mdp1, ptr @mas_qxm_rot, ptr @mas_qxm_venus0, ptr @mas_qxm_venus1, ptr @mas_qxm_venus_arm9, ptr @slv_qns2_mem_noc, ptr @slv_qns_mem_noc_hf, ptr @slv_srvc_mnoc], [44 x i8] zeroinitializer }, align 32
@mmss_noc_bcms = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bcm_mm0, ptr @bcm_mm1, ptr @bcm_mm2], [20 x i8] zeroinitializer }, align 32
@slv_srvc_mnoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.235, [128 x i16] zeroinitializer, i16 143, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mas_qhm_mnoc_cfg\00", [47 x i8] zeroinitializer }, align 32
@mas_qhm_mnoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.219, <{ i16, [127 x i16] }> <{ i16 143, [127 x i16] zeroinitializer }>, i16 46, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mas_qxm_camnoc_sf\00", [46 x i8] zeroinitializer }, align 32
@mas_qxm_camnoc_sf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.221, <{ i16, [127 x i16] }> <{ i16 141, [127 x i16] zeroinitializer }>, i16 49, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mas_qxm_rot\00", [20 x i8] zeroinitializer }, align 32
@mas_qxm_rot = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.223, <{ i16, [127 x i16] }> <{ i16 141, [127 x i16] zeroinitializer }>, i16 52, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_qxm_venus0\00", [17 x i8] zeroinitializer }, align 32
@mas_qxm_venus0 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.225, <{ i16, [127 x i16] }> <{ i16 141, [127 x i16] zeroinitializer }>, i16 53, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_qxm_venus1\00", [17 x i8] zeroinitializer }, align 32
@mas_qxm_venus1 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.227, <{ i16, [127 x i16] }> <{ i16 141, [127 x i16] zeroinitializer }>, i16 54, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_qxm_venus_arm9\00", [45 x i8] zeroinitializer }, align 32
@mas_qxm_venus_arm9 = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.229, <{ i16, [127 x i16] }> <{ i16 141, [127 x i16] zeroinitializer }>, i16 55, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slv_qns2_mem_noc\00", [47 x i8] zeroinitializer }, align 32
@slv_qns2_mem_noc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.231, <{ i16, [127 x i16] }> <{ i16 39, [127 x i16] zeroinitializer }>, i16 141, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_qns_mem_noc_hf\00", [45 x i8] zeroinitializer }, align 32
@slv_qns_mem_noc_hf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.233, <{ i16, [127 x i16] }> <{ i16 38, [127 x i16] zeroinitializer }>, i16 142, i16 1, i16 2, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_srvc_mnoc\00", [18 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MM0\00", [28 x i8] zeroinitializer }, align 32
@bcm_mm0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.236, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qns_mem_noc_hf] }>, [52 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MM2\00", [28 x i8] zeroinitializer }, align 32
@bcm_mm2 = internal global { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [6 x ptr] }, [32 x i8] } { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [6 x ptr] } { ptr @.str.238, i32 0, i32 0, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 6, [6 x ptr] [ptr @mas_qxm_camnoc_sf, ptr @mas_qxm_rot, ptr @mas_qxm_venus0, ptr @mas_qxm_venus1, ptr @mas_qxm_venus_arm9, ptr @slv_qns2_mem_noc] }, [32 x i8] zeroinitializer }, align 32
@system_noc_nodes = internal global { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @mas_qhm_snoc_cfg, ptr @mas_qnm_aggre1_noc, ptr @mas_qnm_aggre2_noc, ptr @mas_qnm_gemnoc, ptr @mas_qxm_pimem, ptr @mas_xm_gic, ptr @slv_qhs_apss, ptr @slv_qns_cnoc, ptr @slv_qns_gemnoc_gc, ptr @slv_qns_gemnoc_sf, ptr @slv_qxs_imem, ptr @slv_qxs_pimem, ptr @slv_srvc_snoc, ptr null, ptr null, ptr null, ptr null, ptr @slv_xs_qdss_stm, ptr @slv_xs_sys_tcu_cfg], [52 x i8] zeroinitializer }, align 32
@system_noc_bcms = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @bcm_sn0, ptr @bcm_sn1, ptr @bcm_sn2, ptr @bcm_sn3, ptr @bcm_sn4, ptr @bcm_sn8, ptr @bcm_sn9, ptr @bcm_sn11, ptr @bcm_sn15], [60 x i8] zeroinitializer }, align 32
@slv_qhs_apss = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.252, [128 x i16] zeroinitializer, i16 144, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qxs_imem = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.257, [128 x i16] zeroinitializer, i16 148, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_qxs_pimem = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.258, [128 x i16] zeroinitializer, i16 149, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_srvc_snoc = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.259, [128 x i16] zeroinitializer, i16 150, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_xs_qdss_stm = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.260, [128 x i16] zeroinitializer, i16 155, i16 0, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_xs_sys_tcu_cfg = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.261, [128 x i16] zeroinitializer, i16 156, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mas_qhm_snoc_cfg\00", [47 x i8] zeroinitializer }, align 32
@mas_qhm_snoc_cfg = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.240, <{ i16, [127 x i16] }> <{ i16 150, [127 x i16] zeroinitializer }>, i16 56, i16 1, i16 1, i16 4, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_qnm_aggre1_noc\00", [45 x i8] zeroinitializer }, align 32
@mas_qnm_aggre1_noc = internal global { { ptr, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.242, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }> <{ i16 147, i16 149, i16 148, i16 144, i16 145, i16 155, [122 x i16] zeroinitializer }>, i16 57, i16 6, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mas_qnm_aggre2_noc\00", [45 x i8] zeroinitializer }, align 32
@mas_qnm_aggre2_noc = internal global { { ptr, <{ [11 x i16], [117 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ [11 x i16], [117 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.244, <{ [11 x i16], [117 x i16] }> <{ [11 x i16] [i16 147, i16 149, i16 154, i16 148, i16 144, i16 153, i16 145, i16 151, i16 152, i16 156, i16 155], [117 x i16] zeroinitializer }>, i16 58, i16 11, i16 1, i16 16, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mas_qnm_gemnoc\00", [17 x i8] zeroinitializer }, align 32
@mas_qnm_gemnoc = internal global { { ptr, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.246, <{ i16, i16, i16, i16, i16, i16, [122 x i16] }> <{ i16 149, i16 148, i16 144, i16 145, i16 156, i16 155, [122 x i16] zeroinitializer }>, i16 59, i16 6, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mas_qxm_pimem\00", [18 x i8] zeroinitializer }, align 32
@mas_qxm_pimem = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.248, <{ i16, i16, [126 x i16] }> <{ i16 146, i16 148, [126 x i16] zeroinitializer }>, i16 60, i16 2, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mas_xm_gic\00", [21 x i8] zeroinitializer }, align 32
@mas_xm_gic = internal global { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, i16, [126 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.250, <{ i16, i16, [126 x i16] }> <{ i16 146, i16 148, [126 x i16] zeroinitializer }>, i16 61, i16 2, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qhs_apss\00", [19 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qns_gemnoc_gc\00", [46 x i8] zeroinitializer }, align 32
@slv_qns_gemnoc_gc = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.253, <{ i16, [127 x i16] }> <{ i16 41, [127 x i16] zeroinitializer }>, i16 146, i16 1, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slv_qns_gemnoc_sf\00", [46 x i8] zeroinitializer }, align 32
@slv_qns_gemnoc_sf = internal global { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }, [80 x i8] } { { ptr, <{ i16, [127 x i16] }>, i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 } { ptr @.str.255, <{ i16, [127 x i16] }> <{ i16 42, [127 x i16] zeroinitializer }>, i16 147, i16 1, i16 1, i16 32, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv_qxs_imem\00", [19 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_qxs_pimem\00", [18 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_srvc_snoc\00", [18 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"slv_xs_qdss_stm\00", [16 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slv_xs_sys_tcu_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN0\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn0 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.262, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qns_gemnoc_sf] }>, [52 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN1\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn1 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.264, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qxs_imem] }>, [52 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN2\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn2 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.266, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qns_gemnoc_gc] }>, [52 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN4\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn4 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.268, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @slv_qxs_pimem] }>, [52 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN8\00", [28 x i8] zeroinitializer }, align 32
@slv_xs_pcie_0 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.272, [128 x i16] zeroinitializer, i16 151, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_xs_pcie_1 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.273, [128 x i16] zeroinitializer, i16 152, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_xs_pcie_2 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.274, [128 x i16] zeroinitializer, i16 153, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@slv_xs_pcie_3 = internal global { %struct.qcom_icc_node, [80 x i8] } { %struct.qcom_icc_node { ptr @.str.275, [128 x i16] zeroinitializer, i16 154, i16 0, i16 1, i16 8, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x ptr] zeroinitializer, i32 0 }, [80 x i8] zeroinitializer }, align 32
@bcm_sn8 = internal global { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [4 x ptr] }, [40 x i8] } { { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [4 x ptr] } { ptr @.str.270, i32 0, i32 0, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4, [4 x ptr] [ptr @slv_xs_pcie_0, ptr @slv_xs_pcie_1, ptr @slv_xs_pcie_2, ptr @slv_xs_pcie_3] }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_xs_pcie_0\00", [18 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_xs_pcie_1\00", [18 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_xs_pcie_2\00", [18 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slv_xs_pcie_3\00", [18 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SN9\00", [28 x i8] zeroinitializer }, align 32
@bcm_sn9 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.276, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @mas_qnm_aggre1_noc] }>, [52 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SN11\00", [27 x i8] zeroinitializer }, align 32
@bcm_sn11 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.278, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @mas_qnm_aggre2_noc] }>, [52 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SN15\00", [27 x i8] zeroinitializer }, align 32
@bcm_sn15 = internal global { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }>, [52 x i8] } { <{ ptr, i32, i32, [4 x i8], [3 x i64], [3 x i64], i64, i8, i8, [2 x i8], %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [1 x ptr] }> <{ ptr @.str.280, i32 0, i32 0, [4 x i8] undef, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, i64 0, i8 0, i8 0, [2 x i8] undef, %struct.bcm_db zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 1, [1 x ptr] [ptr @mas_qnm_gemnoc] }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.282 = private unnamed_addr constant [12 x i8] c"qnoc_driver\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 614, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 618, i32 11 }
@___asan_gen_.288 = private unnamed_addr constant [14 x i8] c"qnoc_of_match\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 598, i32 34 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 551, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [19 x i8] c"sc8180x_aggre1_noc\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 431, i32 35 }
@___asan_gen_.312 = private unnamed_addr constant [19 x i8] c"sc8180x_aggre2_noc\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 438, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c"sc8180x_camnoc_virt\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 445, i32 35 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c"sc8180x_compute_noc\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 452, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant [19 x i8] c"sc8180x_config_noc\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 459, i32 35 }
@___asan_gen_.324 = private unnamed_addr constant [15 x i8] c"sc8180x_dc_noc\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 466, i32 35 }
@___asan_gen_.327 = private unnamed_addr constant [16 x i8] c"sc8180x_gem_noc\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 471, i32 35 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"sc8180x_ipa_virt\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 478, i32 35 }
@___asan_gen_.333 = private unnamed_addr constant [16 x i8] c"sc8180x_mc_virt\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 485, i32 35 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"sc8180x_mmss_noc\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 492, i32 35 }
@___asan_gen_.339 = private unnamed_addr constant [19 x i8] c"sc8180x_system_noc\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 499, i32 35 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"aggre1_noc_nodes\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 252, i32 30 }
@___asan_gen_.345 = private unnamed_addr constant [16 x i8] c"aggre1_noc_bcms\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 194, i32 29 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c"slv_srvc_aggre1_noc\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [18 x i8] c"mas_qhm_a1noc_cfg\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 18, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [16 x i8] c"mas_xm_ufs_card\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 19, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant [14 x i8] c"mas_xm_ufs_g4\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 20, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant [15 x i8] c"mas_xm_ufs_mem\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 21, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant [14 x i8] c"mas_xm_usb3_0\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 22, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant [14 x i8] c"mas_xm_usb3_1\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 23, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant [14 x i8] c"mas_xm_usb3_2\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 24, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant [19 x i8] c"slv_qns_a1noc_snoc\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 79, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 80, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant [8 x i8] c"bcm_sn3\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 186, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant [13 x i8] c"slv_qns_cnoc\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 156, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant [8 x i8] c"bcm_ce0\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 174, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant [15 x i8] c"mas_qxm_crypto\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 33, i32 1 }
@___asan_gen_.429 = private unnamed_addr constant [9 x i8] c"bcm_qup0\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 177, i32 1 }
@___asan_gen_.435 = private unnamed_addr constant [13 x i8] c"mas_qhm_qup0\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 29, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant [13 x i8] c"mas_qhm_qup1\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 30, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [13 x i8] c"mas_qhm_qup2\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 31, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"aggre2_noc_nodes\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 264, i32 30 }
@___asan_gen_.453 = private unnamed_addr constant [16 x i8] c"aggre2_noc_bcms\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 200, i32 29 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c"slv_srvc_aggre2_noc\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [18 x i8] c"mas_qhm_a2noc_cfg\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 25, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant [17 x i8] c"mas_qhm_qdss_bam\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 26, i32 1 }
@___asan_gen_.474 = private unnamed_addr constant [13 x i8] c"mas_qhm_qspi\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 27, i32 1 }
@___asan_gen_.480 = private unnamed_addr constant [14 x i8] c"mas_qhm_qspi1\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 28, i32 1 }
@___asan_gen_.486 = private unnamed_addr constant [21 x i8] c"mas_qhm_sensorss_ahb\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 32, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant [12 x i8] c"mas_qxm_ipa\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 34, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant [12 x i8] c"mas_xm_emac\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 35, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant [15 x i8] c"mas_xm_pcie3_0\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 36, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant [15 x i8] c"mas_xm_pcie3_1\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 37, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant [15 x i8] c"mas_xm_pcie3_2\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 38, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant [15 x i8] c"mas_xm_pcie3_3\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 39, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant [16 x i8] c"mas_xm_qdss_etr\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 40, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant [12 x i8] c"mas_xm_sdc2\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 41, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant [12 x i8] c"mas_xm_sdc4\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 42, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant [19 x i8] c"slv_qns_a2noc_snoc\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 81, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant [21 x i8] c"slv_qns_pcie_mem_noc\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 82, i32 1 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 83, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant [9 x i8] c"bcm_sn14\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 191, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant [18 x i8] c"camnoc_virt_nodes\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 288, i32 30 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"camnoc_virt_bcms\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 206, i32 29 }
@___asan_gen_.570 = private unnamed_addr constant [22 x i8] c"slv_qns_camnoc_uncomp\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [26 x i8] c"mas_qxm_camnoc_hf0_uncomp\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 43, i32 1 }
@___asan_gen_.582 = private unnamed_addr constant [26 x i8] c"mas_qxm_camnoc_hf1_uncomp\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 44, i32 1 }
@___asan_gen_.588 = private unnamed_addr constant [25 x i8] c"mas_qxm_camnoc_sf_uncomp\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 45, i32 1 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 84, i32 1 }
@___asan_gen_.597 = private unnamed_addr constant [8 x i8] c"bcm_mm1\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 176, i32 1 }
@___asan_gen_.603 = private unnamed_addr constant [19 x i8] c"mas_qxm_camnoc_hf0\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 64, i32 1 }
@___asan_gen_.609 = private unnamed_addr constant [19 x i8] c"mas_qxm_camnoc_hf1\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 65, i32 1 }
@___asan_gen_.615 = private unnamed_addr constant [13 x i8] c"mas_qxm_mdp0\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 67, i32 1 }
@___asan_gen_.621 = private unnamed_addr constant [13 x i8] c"mas_qxm_mdp1\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 68, i32 1 }
@___asan_gen_.624 = private unnamed_addr constant [18 x i8] c"compute_noc_nodes\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 295, i32 30 }
@___asan_gen_.627 = private unnamed_addr constant [17 x i8] c"compute_noc_bcms\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 210, i32 29 }
@___asan_gen_.633 = private unnamed_addr constant [12 x i8] c"mas_qnm_npu\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 46, i32 1 }
@___asan_gen_.639 = private unnamed_addr constant [21 x i8] c"slv_qns_cdsp_mem_noc\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 85, i32 1 }
@___asan_gen_.645 = private unnamed_addr constant [8 x i8] c"bcm_co0\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 173, i32 1 }
@___asan_gen_.651 = private unnamed_addr constant [8 x i8] c"bcm_co2\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 184, i32 1 }
@___asan_gen_.654 = private unnamed_addr constant [17 x i8] c"config_noc_nodes\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 300, i32 30 }
@___asan_gen_.657 = private unnamed_addr constant [16 x i8] c"config_noc_bcms\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 215, i32 29 }
@___asan_gen_.660 = private unnamed_addr constant [30 x i8] c"slv_qhs_ahb2phy_refgen_center\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [28 x i8] c"slv_qhs_ahb2phy_refgen_east\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [28 x i8] c"slv_qhs_ahb2phy_refgen_west\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [22 x i8] c"slv_qhs_ahb2phy_south\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [12 x i8] c"slv_qhs_aop\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [13 x i8] c"slv_qhs_aoss\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [19 x i8] c"slv_qhs_camera_cfg\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [16 x i8] c"slv_qhs_clk_ctl\00", align 1
@___asan_gen_.684 = private unnamed_addr constant [20 x i8] c"slv_qhs_compute_dsp\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [15 x i8] c"slv_qhs_cpr_cx\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [17 x i8] c"slv_qhs_cpr_mmcx\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [15 x i8] c"slv_qhs_cpr_mx\00", align 1
@___asan_gen_.696 = private unnamed_addr constant [20 x i8] c"slv_qhs_crypto0_cfg\00", align 1
@___asan_gen_.699 = private unnamed_addr constant [20 x i8] c"slv_qhs_display_cfg\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [17 x i8] c"slv_qhs_emac_cfg\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [12 x i8] c"slv_qhs_glm\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [18 x i8] c"slv_qhs_gpuss_cfg\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [17 x i8] c"slv_qhs_imem_cfg\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [12 x i8] c"slv_qhs_ipa\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [16 x i8] c"slv_qhs_npu_cfg\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [18 x i8] c"slv_qhs_pcie0_cfg\00", align 1
@___asan_gen_.723 = private unnamed_addr constant [18 x i8] c"slv_qhs_pcie1_cfg\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [18 x i8] c"slv_qhs_pcie2_cfg\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [18 x i8] c"slv_qhs_pcie3_cfg\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [12 x i8] c"slv_qhs_pdm\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [18 x i8] c"slv_qhs_pimem_cfg\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [13 x i8] c"slv_qhs_prng\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [17 x i8] c"slv_qhs_qdss_cfg\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [15 x i8] c"slv_qhs_qspi_0\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [15 x i8] c"slv_qhs_qspi_1\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [20 x i8] c"slv_qhs_qupv3_east0\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [20 x i8] c"slv_qhs_qupv3_east1\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [19 x i8] c"slv_qhs_qupv3_west\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [13 x i8] c"slv_qhs_sdc2\00", align 1
@___asan_gen_.762 = private unnamed_addr constant [13 x i8] c"slv_qhs_sdc4\00", align 1
@___asan_gen_.765 = private unnamed_addr constant [17 x i8] c"slv_qhs_security\00", align 1
@___asan_gen_.768 = private unnamed_addr constant [17 x i8] c"slv_qhs_spss_cfg\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [13 x i8] c"slv_qhs_tcsr\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [18 x i8] c"slv_qhs_tlmm_east\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [19 x i8] c"slv_qhs_tlmm_south\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [18 x i8] c"slv_qhs_tlmm_west\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [13 x i8] c"slv_qhs_tsif\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [21 x i8] c"slv_qhs_ufs_card_cfg\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [21 x i8] c"slv_qhs_ufs_mem0_cfg\00", align 1
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c"slv_qhs_ufs_mem1_cfg\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [15 x i8] c"slv_qhs_usb3_0\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [15 x i8] c"slv_qhs_usb3_1\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [15 x i8] c"slv_qhs_usb3_2\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [18 x i8] c"slv_qhs_venus_cfg\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [24 x i8] c"slv_qhs_vsense_ctrl_cfg\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [14 x i8] c"slv_srvc_cnoc\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [13 x i8] c"mas_qnm_snoc\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 47, i32 1 }
@___asan_gen_.822 = private unnamed_addr constant [19 x i8] c"slv_qhs_a1_noc_cfg\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 86, i32 1 }
@___asan_gen_.828 = private unnamed_addr constant [19 x i8] c"slv_qhs_a2_noc_cfg\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 87, i32 1 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 88, i32 1 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 89, i32 1 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 90, i32 1 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 91, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 92, i32 1 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 93, i32 1 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 94, i32 1 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 95, i32 1 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 96, i32 1 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 97, i32 1 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 98, i32 1 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 99, i32 1 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 100, i32 1 }
@___asan_gen_.873 = private unnamed_addr constant [18 x i8] c"slv_qhs_ddrss_cfg\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 101, i32 1 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 102, i32 1 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 103, i32 1 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 104, i32 1 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 105, i32 1 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 106, i32 1 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 107, i32 1 }
@___asan_gen_.897 = private unnamed_addr constant [17 x i8] c"slv_qhs_mnoc_cfg\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 108, i32 1 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 109, i32 1 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 110, i32 1 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 111, i32 1 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 112, i32 1 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 113, i32 1 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 114, i32 1 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 115, i32 1 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 116, i32 1 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 117, i32 1 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 118, i32 1 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 119, i32 1 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 120, i32 1 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 121, i32 1 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 122, i32 1 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 123, i32 1 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 124, i32 1 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 125, i32 1 }
@___asan_gen_.954 = private unnamed_addr constant [17 x i8] c"slv_qhs_snoc_cfg\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 126, i32 1 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 127, i32 1 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 128, i32 1 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 129, i32 1 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 130, i32 1 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 131, i32 1 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 132, i32 1 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 133, i32 1 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 134, i32 1 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 135, i32 1 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 136, i32 1 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 137, i32 1 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 138, i32 1 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 139, i32 1 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 140, i32 1 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 141, i32 1 }
@___asan_gen_.1005 = private unnamed_addr constant [8 x i8] c"bcm_cn0\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 175, i32 1 }
@___asan_gen_.1008 = private unnamed_addr constant [13 x i8] c"dc_noc_nodes\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 360, i32 30 }
@___asan_gen_.1011 = private unnamed_addr constant [13 x i8] c"slv_qhs_llcc\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant [20 x i8] c"mas_qhm_cnoc_dc_noc\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 48, i32 1 }
@___asan_gen_.1023 = private unnamed_addr constant [15 x i8] c"slv_qhs_gemnoc\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 142, i32 1 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 143, i32 1 }
@___asan_gen_.1029 = private unnamed_addr constant [14 x i8] c"gem_noc_nodes\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 366, i32 30 }
@___asan_gen_.1032 = private unnamed_addr constant [13 x i8] c"gem_noc_bcms\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 219, i32 29 }
@___asan_gen_.1035 = private unnamed_addr constant [24 x i8] c"slv_qhs_mdsp_ms_mpu_cfg\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant [12 x i8] c"slv_qns_ecc\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant [16 x i8] c"slv_srvc_gemnoc\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant [17 x i8] c"slv_srvc_gemnoc1\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant [13 x i8] c"mas_acm_apps\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 49, i32 1 }
@___asan_gen_.1056 = private unnamed_addr constant [16 x i8] c"mas_acm_gpu_tcu\00", align 1
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 50, i32 1 }
@___asan_gen_.1062 = private unnamed_addr constant [16 x i8] c"mas_acm_sys_tcu\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 51, i32 1 }
@___asan_gen_.1068 = private unnamed_addr constant [19 x i8] c"mas_qhm_gemnoc_cfg\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 52, i32 1 }
@___asan_gen_.1074 = private unnamed_addr constant [15 x i8] c"mas_qnm_cmpnoc\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 53, i32 1 }
@___asan_gen_.1080 = private unnamed_addr constant [12 x i8] c"mas_qnm_gpu\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 54, i32 1 }
@___asan_gen_.1086 = private unnamed_addr constant [16 x i8] c"mas_qnm_mnoc_hf\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 55, i32 1 }
@___asan_gen_.1092 = private unnamed_addr constant [16 x i8] c"mas_qnm_mnoc_sf\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 56, i32 1 }
@___asan_gen_.1098 = private unnamed_addr constant [13 x i8] c"mas_qnm_pcie\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 57, i32 1 }
@___asan_gen_.1104 = private unnamed_addr constant [16 x i8] c"mas_qnm_snoc_gc\00", align 1
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 58, i32 1 }
@___asan_gen_.1110 = private unnamed_addr constant [16 x i8] c"mas_qnm_snoc_sf\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 59, i32 1 }
@___asan_gen_.1116 = private unnamed_addr constant [12 x i8] c"mas_qxm_ecc\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 60, i32 1 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 144, i32 1 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 145, i32 1 }
@___asan_gen_.1128 = private unnamed_addr constant [21 x i8] c"slv_qns_gem_noc_snoc\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 146, i32 1 }
@___asan_gen_.1134 = private unnamed_addr constant [13 x i8] c"slv_qns_llcc\00", align 1
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 147, i32 1 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 148, i32 1 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 149, i32 1 }
@___asan_gen_.1146 = private unnamed_addr constant [8 x i8] c"bcm_sh0\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 171, i32 1 }
@___asan_gen_.1152 = private unnamed_addr constant [8 x i8] c"bcm_sh2\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 178, i32 1 }
@___asan_gen_.1158 = private unnamed_addr constant [8 x i8] c"bcm_sh3\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 180, i32 1 }
@___asan_gen_.1161 = private unnamed_addr constant [15 x i8] c"ipa_virt_nodes\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 387, i32 30 }
@___asan_gen_.1164 = private unnamed_addr constant [14 x i8] c"ipa_virt_bcms\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 225, i32 29 }
@___asan_gen_.1167 = private unnamed_addr constant [19 x i8] c"slv_ipa_core_slave\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant [20 x i8] c"mas_ipa_core_master\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 61, i32 1 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 150, i32 1 }
@___asan_gen_.1182 = private unnamed_addr constant [8 x i8] c"bcm_ip0\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 185, i32 1 }
@___asan_gen_.1185 = private unnamed_addr constant [14 x i8] c"mc_virt_nodes\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 392, i32 30 }
@___asan_gen_.1188 = private unnamed_addr constant [13 x i8] c"mc_virt_bcms\00", align 1
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 229, i32 29 }
@___asan_gen_.1191 = private unnamed_addr constant [8 x i8] c"slv_ebi\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant [12 x i8] c"mas_llcc_mc\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 62, i32 1 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 151, i32 1 }
@___asan_gen_.1206 = private unnamed_addr constant [8 x i8] c"bcm_mc0\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 170, i32 1 }
@___asan_gen_.1212 = private unnamed_addr constant [8 x i8] c"bcm_acv\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 169, i32 1 }
@___asan_gen_.1215 = private unnamed_addr constant [15 x i8] c"mmss_noc_nodes\00", align 1
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 397, i32 30 }
@___asan_gen_.1218 = private unnamed_addr constant [14 x i8] c"mmss_noc_bcms\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 234, i32 29 }
@___asan_gen_.1221 = private unnamed_addr constant [14 x i8] c"slv_srvc_mnoc\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant [17 x i8] c"mas_qhm_mnoc_cfg\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 63, i32 1 }
@___asan_gen_.1233 = private unnamed_addr constant [18 x i8] c"mas_qxm_camnoc_sf\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 66, i32 1 }
@___asan_gen_.1239 = private unnamed_addr constant [12 x i8] c"mas_qxm_rot\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 69, i32 1 }
@___asan_gen_.1245 = private unnamed_addr constant [15 x i8] c"mas_qxm_venus0\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 70, i32 1 }
@___asan_gen_.1251 = private unnamed_addr constant [15 x i8] c"mas_qxm_venus1\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 71, i32 1 }
@___asan_gen_.1257 = private unnamed_addr constant [19 x i8] c"mas_qxm_venus_arm9\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 72, i32 1 }
@___asan_gen_.1263 = private unnamed_addr constant [17 x i8] c"slv_qns2_mem_noc\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 152, i32 1 }
@___asan_gen_.1269 = private unnamed_addr constant [19 x i8] c"slv_qns_mem_noc_hf\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 153, i32 1 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 154, i32 1 }
@___asan_gen_.1278 = private unnamed_addr constant [8 x i8] c"bcm_mm0\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 172, i32 1 }
@___asan_gen_.1284 = private unnamed_addr constant [8 x i8] c"bcm_mm2\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 179, i32 1 }
@___asan_gen_.1287 = private unnamed_addr constant [17 x i8] c"system_noc_nodes\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 413, i32 30 }
@___asan_gen_.1290 = private unnamed_addr constant [16 x i8] c"system_noc_bcms\00", align 1
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 240, i32 29 }
@___asan_gen_.1293 = private unnamed_addr constant [13 x i8] c"slv_qhs_apss\00", align 1
@___asan_gen_.1296 = private unnamed_addr constant [13 x i8] c"slv_qxs_imem\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant [14 x i8] c"slv_qxs_pimem\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant [14 x i8] c"slv_srvc_snoc\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant [16 x i8] c"slv_xs_qdss_stm\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant [19 x i8] c"slv_xs_sys_tcu_cfg\00", align 1
@___asan_gen_.1314 = private unnamed_addr constant [17 x i8] c"mas_qhm_snoc_cfg\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 73, i32 1 }
@___asan_gen_.1320 = private unnamed_addr constant [19 x i8] c"mas_qnm_aggre1_noc\00", align 1
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 74, i32 1 }
@___asan_gen_.1326 = private unnamed_addr constant [19 x i8] c"mas_qnm_aggre2_noc\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 75, i32 1 }
@___asan_gen_.1332 = private unnamed_addr constant [15 x i8] c"mas_qnm_gemnoc\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 76, i32 1 }
@___asan_gen_.1338 = private unnamed_addr constant [14 x i8] c"mas_qxm_pimem\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 77, i32 1 }
@___asan_gen_.1344 = private unnamed_addr constant [11 x i8] c"mas_xm_gic\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 78, i32 1 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 155, i32 1 }
@___asan_gen_.1353 = private unnamed_addr constant [18 x i8] c"slv_qns_gemnoc_gc\00", align 1
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 157, i32 1 }
@___asan_gen_.1359 = private unnamed_addr constant [18 x i8] c"slv_qns_gemnoc_sf\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 158, i32 1 }
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 159, i32 1 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 160, i32 1 }
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 161, i32 1 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 166, i32 1 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 167, i32 1 }
@___asan_gen_.1380 = private unnamed_addr constant [8 x i8] c"bcm_sn0\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 181, i32 1 }
@___asan_gen_.1386 = private unnamed_addr constant [8 x i8] c"bcm_sn1\00", align 1
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 182, i32 1 }
@___asan_gen_.1392 = private unnamed_addr constant [8 x i8] c"bcm_sn2\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 183, i32 1 }
@___asan_gen_.1398 = private unnamed_addr constant [8 x i8] c"bcm_sn4\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 187, i32 1 }
@___asan_gen_.1404 = private unnamed_addr constant [14 x i8] c"slv_xs_pcie_0\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant [14 x i8] c"slv_xs_pcie_1\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant [14 x i8] c"slv_xs_pcie_2\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant [14 x i8] c"slv_xs_pcie_3\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant [8 x i8] c"bcm_sn8\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 188, i32 1 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 162, i32 1 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 163, i32 1 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 164, i32 1 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 165, i32 1 }
@___asan_gen_.1434 = private unnamed_addr constant [8 x i8] c"bcm_sn9\00", align 1
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 189, i32 1 }
@___asan_gen_.1440 = private unnamed_addr constant [9 x i8] c"bcm_sn11\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 190, i32 1 }
@___asan_gen_.1443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1446 = private unnamed_addr constant [9 x i8] c"bcm_sn15\00", align 1
@___asan_gen_.1447 = private constant [39 x i8] c"../drivers/interconnect/qcom/sc8180x.c\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1447, i32 192, i32 1 }
@llvm.compiler.used = appending global [396 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_qnoc_driver_exit, ptr @__initcall__kmod_qnoc_sc8180x__170_623_qnoc_driver_init6, ptr @qnoc_driver_exit, ptr @qnoc_probe._entry, ptr @qnoc_probe._entry_ptr, ptr @qnoc_driver, ptr @.str, ptr @qnoc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sc8180x_aggre1_noc, ptr @sc8180x_aggre2_noc, ptr @sc8180x_camnoc_virt, ptr @sc8180x_compute_noc, ptr @sc8180x_config_noc, ptr @sc8180x_dc_noc, ptr @sc8180x_gem_noc, ptr @sc8180x_ipa_virt, ptr @sc8180x_mc_virt, ptr @sc8180x_mmss_noc, ptr @sc8180x_system_noc, ptr @aggre1_noc_nodes, ptr @aggre1_noc_bcms, ptr @slv_srvc_aggre1_noc, ptr @.str.6, ptr @mas_qhm_a1noc_cfg, ptr @.str.8, ptr @mas_xm_ufs_card, ptr @.str.10, ptr @mas_xm_ufs_g4, ptr @.str.12, ptr @mas_xm_ufs_mem, ptr @.str.14, ptr @mas_xm_usb3_0, ptr @.str.16, ptr @mas_xm_usb3_1, ptr @.str.18, ptr @mas_xm_usb3_2, ptr @.str.20, ptr @slv_qns_a1noc_snoc, ptr @.str.22, ptr @.str.23, ptr @bcm_sn3, ptr @.str.25, ptr @slv_qns_cnoc, ptr @.str.27, ptr @bcm_ce0, ptr @.str.29, ptr @mas_qxm_crypto, ptr @.str.31, ptr @bcm_qup0, ptr @.str.33, ptr @mas_qhm_qup0, ptr @.str.35, ptr @mas_qhm_qup1, ptr @.str.37, ptr @mas_qhm_qup2, ptr @aggre2_noc_nodes, ptr @aggre2_noc_bcms, ptr @slv_srvc_aggre2_noc, ptr @.str.39, ptr @mas_qhm_a2noc_cfg, ptr @.str.41, ptr @mas_qhm_qdss_bam, ptr @.str.43, ptr @mas_qhm_qspi, ptr @.str.45, ptr @mas_qhm_qspi1, ptr @.str.47, ptr @mas_qhm_sensorss_ahb, ptr @.str.49, ptr @mas_qxm_ipa, ptr @.str.51, ptr @mas_xm_emac, ptr @.str.53, ptr @mas_xm_pcie3_0, ptr @.str.55, ptr @mas_xm_pcie3_1, ptr @.str.57, ptr @mas_xm_pcie3_2, ptr @.str.59, ptr @mas_xm_pcie3_3, ptr @.str.61, ptr @mas_xm_qdss_etr, ptr @.str.63, ptr @mas_xm_sdc2, ptr @.str.65, ptr @mas_xm_sdc4, ptr @.str.67, ptr @slv_qns_a2noc_snoc, ptr @.str.69, ptr @slv_qns_pcie_mem_noc, ptr @.str.71, ptr @.str.72, ptr @bcm_sn14, ptr @camnoc_virt_nodes, ptr @camnoc_virt_bcms, ptr @slv_qns_camnoc_uncomp, ptr @.str.74, ptr @mas_qxm_camnoc_hf0_uncomp, ptr @.str.76, ptr @mas_qxm_camnoc_hf1_uncomp, ptr @.str.78, ptr @mas_qxm_camnoc_sf_uncomp, ptr @.str.80, ptr @.str.81, ptr @bcm_mm1, ptr @.str.83, ptr @mas_qxm_camnoc_hf0, ptr @.str.85, ptr @mas_qxm_camnoc_hf1, ptr @.str.87, ptr @mas_qxm_mdp0, ptr @.str.89, ptr @mas_qxm_mdp1, ptr @compute_noc_nodes, ptr @compute_noc_bcms, ptr @.str.91, ptr @mas_qnm_npu, ptr @.str.93, ptr @slv_qns_cdsp_mem_noc, ptr @.str.95, ptr @bcm_co0, ptr @.str.97, ptr @bcm_co2, ptr @config_noc_nodes, ptr @config_noc_bcms, ptr @slv_qhs_ahb2phy_refgen_center, ptr @slv_qhs_ahb2phy_refgen_east, ptr @slv_qhs_ahb2phy_refgen_west, ptr @slv_qhs_ahb2phy_south, ptr @slv_qhs_aop, ptr @slv_qhs_aoss, ptr @slv_qhs_camera_cfg, ptr @slv_qhs_clk_ctl, ptr @slv_qhs_compute_dsp, ptr @slv_qhs_cpr_cx, ptr @slv_qhs_cpr_mmcx, ptr @slv_qhs_cpr_mx, ptr @slv_qhs_crypto0_cfg, ptr @slv_qhs_display_cfg, ptr @slv_qhs_emac_cfg, ptr @slv_qhs_glm, ptr @slv_qhs_gpuss_cfg, ptr @slv_qhs_imem_cfg, ptr @slv_qhs_ipa, ptr @slv_qhs_npu_cfg, ptr @slv_qhs_pcie0_cfg, ptr @slv_qhs_pcie1_cfg, ptr @slv_qhs_pcie2_cfg, ptr @slv_qhs_pcie3_cfg, ptr @slv_qhs_pdm, ptr @slv_qhs_pimem_cfg, ptr @slv_qhs_prng, ptr @slv_qhs_qdss_cfg, ptr @slv_qhs_qspi_0, ptr @slv_qhs_qspi_1, ptr @slv_qhs_qupv3_east0, ptr @slv_qhs_qupv3_east1, ptr @slv_qhs_qupv3_west, ptr @slv_qhs_sdc2, ptr @slv_qhs_sdc4, ptr @slv_qhs_security, ptr @slv_qhs_spss_cfg, ptr @slv_qhs_tcsr, ptr @slv_qhs_tlmm_east, ptr @slv_qhs_tlmm_south, ptr @slv_qhs_tlmm_west, ptr @slv_qhs_tsif, ptr @slv_qhs_ufs_card_cfg, ptr @slv_qhs_ufs_mem0_cfg, ptr @slv_qhs_ufs_mem1_cfg, ptr @slv_qhs_usb3_0, ptr @slv_qhs_usb3_1, ptr @slv_qhs_usb3_2, ptr @slv_qhs_venus_cfg, ptr @slv_qhs_vsense_ctrl_cfg, ptr @slv_srvc_cnoc, ptr @.str.99, ptr @mas_qnm_snoc, ptr @.str.101, ptr @slv_qhs_a1_noc_cfg, ptr @.str.103, ptr @slv_qhs_a2_noc_cfg, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @slv_qhs_ddrss_cfg, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @slv_qhs_mnoc_cfg, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @slv_qhs_snoc_cfg, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @bcm_cn0, ptr @dc_noc_nodes, ptr @slv_qhs_llcc, ptr @.str.164, ptr @mas_qhm_cnoc_dc_noc, ptr @.str.166, ptr @slv_qhs_gemnoc, ptr @.str.168, ptr @gem_noc_nodes, ptr @gem_noc_bcms, ptr @slv_qhs_mdsp_ms_mpu_cfg, ptr @slv_qns_ecc, ptr @slv_srvc_gemnoc, ptr @slv_srvc_gemnoc1, ptr @.str.169, ptr @mas_acm_apps, ptr @.str.171, ptr @mas_acm_gpu_tcu, ptr @.str.173, ptr @mas_acm_sys_tcu, ptr @.str.175, ptr @mas_qhm_gemnoc_cfg, ptr @.str.177, ptr @mas_qnm_cmpnoc, ptr @.str.179, ptr @mas_qnm_gpu, ptr @.str.181, ptr @mas_qnm_mnoc_hf, ptr @.str.183, ptr @mas_qnm_mnoc_sf, ptr @.str.185, ptr @mas_qnm_pcie, ptr @.str.187, ptr @mas_qnm_snoc_gc, ptr @.str.189, ptr @mas_qnm_snoc_sf, ptr @.str.191, ptr @mas_qxm_ecc, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @slv_qns_gem_noc_snoc, ptr @.str.197, ptr @slv_qns_llcc, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @bcm_sh0, ptr @.str.203, ptr @bcm_sh2, ptr @.str.205, ptr @bcm_sh3, ptr @ipa_virt_nodes, ptr @ipa_virt_bcms, ptr @slv_ipa_core_slave, ptr @.str.207, ptr @mas_ipa_core_master, ptr @.str.209, ptr @.str.210, ptr @bcm_ip0, ptr @mc_virt_nodes, ptr @mc_virt_bcms, ptr @slv_ebi, ptr @.str.212, ptr @mas_llcc_mc, ptr @.str.214, ptr @.str.215, ptr @bcm_mc0, ptr @.str.217, ptr @bcm_acv, ptr @mmss_noc_nodes, ptr @mmss_noc_bcms, ptr @slv_srvc_mnoc, ptr @.str.219, ptr @mas_qhm_mnoc_cfg, ptr @.str.221, ptr @mas_qxm_camnoc_sf, ptr @.str.223, ptr @mas_qxm_rot, ptr @.str.225, ptr @mas_qxm_venus0, ptr @.str.227, ptr @mas_qxm_venus1, ptr @.str.229, ptr @mas_qxm_venus_arm9, ptr @.str.231, ptr @slv_qns2_mem_noc, ptr @.str.233, ptr @slv_qns_mem_noc_hf, ptr @.str.235, ptr @.str.236, ptr @bcm_mm0, ptr @.str.238, ptr @bcm_mm2, ptr @system_noc_nodes, ptr @system_noc_bcms, ptr @slv_qhs_apss, ptr @slv_qxs_imem, ptr @slv_qxs_pimem, ptr @slv_srvc_snoc, ptr @slv_xs_qdss_stm, ptr @slv_xs_sys_tcu_cfg, ptr @.str.240, ptr @mas_qhm_snoc_cfg, ptr @.str.242, ptr @mas_qnm_aggre1_noc, ptr @.str.244, ptr @mas_qnm_aggre2_noc, ptr @.str.246, ptr @mas_qnm_gemnoc, ptr @.str.248, ptr @mas_qxm_pimem, ptr @.str.250, ptr @mas_xm_gic, ptr @.str.252, ptr @.str.253, ptr @slv_qns_gemnoc_gc, ptr @.str.255, ptr @slv_qns_gemnoc_sf, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @bcm_sn0, ptr @.str.264, ptr @bcm_sn1, ptr @.str.266, ptr @bcm_sn2, ptr @.str.268, ptr @bcm_sn4, ptr @.str.270, ptr @slv_xs_pcie_0, ptr @slv_xs_pcie_1, ptr @slv_xs_pcie_2, ptr @slv_xs_pcie_3, ptr @bcm_sn8, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @bcm_sn9, ptr @.str.278, ptr @bcm_sn11, ptr @.str.280, ptr @bcm_sn15], section "llvm.metadata"
@0 = internal global [389 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_of_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnoc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_aggre1_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_aggre2_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_camnoc_virt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_compute_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_config_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_dc_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_gem_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_ipa_virt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_mc_virt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_mmss_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_system_noc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre1_noc_nodes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre1_noc_bcms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_srvc_aggre1_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_a1noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_ufs_card to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_ufs_g4 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_ufs_mem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_usb3_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_usb3_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_usb3_2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_a1noc_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn3 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_cnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_ce0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_crypto to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_qup0 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_qup0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_qup1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_qup2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre2_noc_nodes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aggre2_noc_bcms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_srvc_aggre2_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_a2noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_qdss_bam to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_qspi to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_qspi1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_sensorss_ahb to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_ipa to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_emac to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_pcie3_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_pcie3_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_pcie3_2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_pcie3_3 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_qdss_etr to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_sdc2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_sdc4 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_a2noc_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_pcie_mem_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn14 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camnoc_virt_nodes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camnoc_virt_bcms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_camnoc_uncomp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_camnoc_hf0_uncomp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_camnoc_hf1_uncomp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_camnoc_sf_uncomp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mm1 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_camnoc_hf0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_camnoc_hf1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_mdp0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_mdp1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compute_noc_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compute_noc_bcms to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_npu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_cdsp_mem_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_co0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_co2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_noc_nodes to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_noc_bcms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ahb2phy_refgen_center to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ahb2phy_refgen_east to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ahb2phy_refgen_west to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ahb2phy_south to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_aop to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_aoss to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_camera_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_clk_ctl to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_compute_dsp to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_cpr_cx to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_cpr_mmcx to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_cpr_mx to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_crypto0_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_display_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_emac_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_glm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_gpuss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_imem_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ipa to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_npu_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_pcie0_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_pcie1_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_pcie2_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_pcie3_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_pdm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_pimem_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_prng to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_qdss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_qspi_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_qspi_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_qupv3_east0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_qupv3_east1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_qupv3_west to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_sdc2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_sdc4 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_security to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_spss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_tcsr to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_tlmm_east to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_tlmm_south to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_tlmm_west to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_tsif to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ufs_card_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ufs_mem0_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ufs_mem1_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_usb3_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_usb3_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_usb3_2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_venus_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_vsense_ctrl_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_srvc_cnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_a1_noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_a2_noc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_ddrss_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_mnoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_snoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_cn0 to i32), i32 332, i32 416, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_noc_nodes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_llcc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_cnoc_dc_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_gemnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_noc_nodes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_noc_bcms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_mdsp_ms_mpu_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_ecc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_srvc_gemnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_srvc_gemnoc1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_acm_apps to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_acm_gpu_tcu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_acm_sys_tcu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_gemnoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_cmpnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_gpu to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_mnoc_hf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_mnoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_pcie to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_snoc_gc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_snoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_ecc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_gem_noc_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_llcc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sh0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sh2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sh3 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_virt_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_virt_bcms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ipa_core_slave to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_ipa_core_master to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_ip0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_virt_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_virt_bcms to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_ebi to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_llcc_mc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mc0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_acv to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmss_noc_nodes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmss_noc_bcms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_srvc_mnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_mnoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_camnoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_rot to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_venus0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_venus1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_venus_arm9 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns2_mem_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_mem_noc_hf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mm0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_mm2 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_noc_nodes to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_noc_bcms to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qhs_apss to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qxs_imem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qxs_pimem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_srvc_snoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_xs_qdss_stm to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_xs_sys_tcu_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qhm_snoc_cfg to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_aggre1_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_aggre2_noc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qnm_gemnoc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_qxm_pimem to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mas_xm_gic to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_gemnoc_gc to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_qns_gemnoc_sf to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn0 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn1 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn4 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_xs_pcie_0 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_xs_pcie_1 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_xs_pcie_2 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slv_xs_pcie_3 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn8 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn9 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn11 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_sn15 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }]
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
  br i1 %5, label %if.end6.cleanup76_crit_edge, label %devm_kcalloc.exit, !prof !617

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
  %xlate = getelementptr inbounds %struct.icc_provider, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @of_icc_xlate_onecell, ptr %xlate, align 4
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
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_icc_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_icc_pre_aggregate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_icc_aggregate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_xlate_onecell(ptr noundef, ptr noundef) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 389)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 389)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !138, !139, !141, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176, !178, !179, !181, !182, !184, !186, !187, !189, !190, !192, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !341, !343, !344, !346, !347, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !369, !370, !372, !374, !376, !377, !379, !380, !382, !383, !385, !387, !389, !390, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !419, !420, !422, !423, !425, !426, !428, !429, !431, !432, !434, !435, !437, !438, !440, !441, !443, !445, !446, !448, !449, !451, !452, !454, !456, !458, !459, !461, !462, !464, !466, !467, !469, !471, !473, !474, !476, !477, !479, !481, !482, !484, !485, !487, !489, !491, !492, !494, !495, !497, !498, !500, !501, !503, !504, !506, !507, !509, !510, !512, !513, !515, !516, !518, !520, !521, !523, !524, !526, !528, !530, !531, !533, !534, !536, !537, !539, !540, !542, !543, !545, !546, !548, !549, !551, !552, !554, !555, !557, !558, !560, !561, !563, !564, !566, !567, !569, !570, !572, !574, !575, !577, !578, !580, !581, !583, !584, !586, !587, !589, !590, !592, !593, !595, !596, !598, !599, !601, !602, !604, !605, !607}
!llvm.module.flags = !{!608, !609, !610, !611, !612, !613, !614, !615}
!llvm.ident = !{!616}

!0 = !{ptr @__initcall__kmod_qnoc_sc8180x__170_623_qnoc_driver_init6, !1, !"__initcall__kmod_qnoc_sc8180x__170_623_qnoc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 623, i32 1}
!2 = !{ptr @__exitcall_qnoc_driver_exit, !1, !"__exitcall_qnoc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 625, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 626, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 618, i32 11}
!10 = !{ptr @qnoc_driver, !11, !"qnoc_driver", i1 false, i1 false}
!11 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 614, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 551, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @qnoc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @qnoc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @qnoc_of_match, !21, !"qnoc_of_match", i1 false, i1 false}
!21 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 598, i32 34}
!22 = !{ptr @sc8180x_aggre1_noc, !23, !"sc8180x_aggre1_noc", i1 false, i1 false}
!23 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 431, i32 35}
!24 = !{ptr @aggre1_noc_nodes, !25, !"aggre1_noc_nodes", i1 false, i1 false}
!25 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 252, i32 30}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 18, i32 1}
!28 = !{ptr @mas_qhm_a1noc_cfg, !27, !"mas_qhm_a1noc_cfg", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 19, i32 1}
!31 = !{ptr @mas_xm_ufs_card, !30, !"mas_xm_ufs_card", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 20, i32 1}
!34 = !{ptr @mas_xm_ufs_g4, !33, !"mas_xm_ufs_g4", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 21, i32 1}
!37 = !{ptr @mas_xm_ufs_mem, !36, !"mas_xm_ufs_mem", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 22, i32 1}
!40 = !{ptr @mas_xm_usb3_0, !39, !"mas_xm_usb3_0", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 23, i32 1}
!43 = !{ptr @mas_xm_usb3_1, !42, !"mas_xm_usb3_1", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 24, i32 1}
!46 = !{ptr @mas_xm_usb3_2, !45, !"mas_xm_usb3_2", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 79, i32 1}
!49 = !{ptr @slv_qns_a1noc_snoc, !48, !"slv_qns_a1noc_snoc", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 80, i32 1}
!52 = !{ptr @slv_srvc_aggre1_noc, !51, !"slv_srvc_aggre1_noc", i1 false, i1 false}
!53 = !{ptr @aggre1_noc_bcms, !54, !"aggre1_noc_bcms", i1 false, i1 false}
!54 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 194, i32 29}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 186, i32 1}
!57 = !{ptr @bcm_sn3, !56, !"bcm_sn3", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 156, i32 1}
!60 = !{ptr @slv_qns_cnoc, !59, !"slv_qns_cnoc", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 174, i32 1}
!63 = !{ptr @bcm_ce0, !62, !"bcm_ce0", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 33, i32 1}
!66 = !{ptr @mas_qxm_crypto, !65, !"mas_qxm_crypto", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 177, i32 1}
!69 = !{ptr @bcm_qup0, !68, !"bcm_qup0", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 29, i32 1}
!72 = !{ptr @mas_qhm_qup0, !71, !"mas_qhm_qup0", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 30, i32 1}
!75 = !{ptr @mas_qhm_qup1, !74, !"mas_qhm_qup1", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 31, i32 1}
!78 = !{ptr @mas_qhm_qup2, !77, !"mas_qhm_qup2", i1 false, i1 false}
!79 = !{ptr @sc8180x_aggre2_noc, !80, !"sc8180x_aggre2_noc", i1 false, i1 false}
!80 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 438, i32 35}
!81 = !{ptr @aggre2_noc_nodes, !82, !"aggre2_noc_nodes", i1 false, i1 false}
!82 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 264, i32 30}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 25, i32 1}
!85 = !{ptr @mas_qhm_a2noc_cfg, !84, !"mas_qhm_a2noc_cfg", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 26, i32 1}
!88 = !{ptr @mas_qhm_qdss_bam, !87, !"mas_qhm_qdss_bam", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 27, i32 1}
!91 = !{ptr @mas_qhm_qspi, !90, !"mas_qhm_qspi", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 28, i32 1}
!94 = !{ptr @mas_qhm_qspi1, !93, !"mas_qhm_qspi1", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 32, i32 1}
!97 = !{ptr @mas_qhm_sensorss_ahb, !96, !"mas_qhm_sensorss_ahb", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 34, i32 1}
!100 = !{ptr @mas_qxm_ipa, !99, !"mas_qxm_ipa", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 35, i32 1}
!103 = !{ptr @mas_xm_emac, !102, !"mas_xm_emac", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 36, i32 1}
!106 = !{ptr @mas_xm_pcie3_0, !105, !"mas_xm_pcie3_0", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 37, i32 1}
!109 = !{ptr @mas_xm_pcie3_1, !108, !"mas_xm_pcie3_1", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 38, i32 1}
!112 = !{ptr @mas_xm_pcie3_2, !111, !"mas_xm_pcie3_2", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 39, i32 1}
!115 = !{ptr @mas_xm_pcie3_3, !114, !"mas_xm_pcie3_3", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 40, i32 1}
!118 = !{ptr @mas_xm_qdss_etr, !117, !"mas_xm_qdss_etr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 41, i32 1}
!121 = !{ptr @mas_xm_sdc2, !120, !"mas_xm_sdc2", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 42, i32 1}
!124 = !{ptr @mas_xm_sdc4, !123, !"mas_xm_sdc4", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 81, i32 1}
!127 = !{ptr @slv_qns_a2noc_snoc, !126, !"slv_qns_a2noc_snoc", i1 false, i1 false}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 82, i32 1}
!130 = !{ptr @slv_qns_pcie_mem_noc, !129, !"slv_qns_pcie_mem_noc", i1 false, i1 false}
!131 = !{ptr @.str.71, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 83, i32 1}
!133 = !{ptr @slv_srvc_aggre2_noc, !132, !"slv_srvc_aggre2_noc", i1 false, i1 false}
!134 = !{ptr @aggre2_noc_bcms, !135, !"aggre2_noc_bcms", i1 false, i1 false}
!135 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 200, i32 29}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 191, i32 1}
!138 = !{ptr @bcm_sn14, !137, !"bcm_sn14", i1 false, i1 false}
!139 = !{ptr @sc8180x_camnoc_virt, !140, !"sc8180x_camnoc_virt", i1 false, i1 false}
!140 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 445, i32 35}
!141 = !{ptr @camnoc_virt_nodes, !142, !"camnoc_virt_nodes", i1 false, i1 false}
!142 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 288, i32 30}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 43, i32 1}
!145 = !{ptr @mas_qxm_camnoc_hf0_uncomp, !144, !"mas_qxm_camnoc_hf0_uncomp", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 44, i32 1}
!148 = !{ptr @mas_qxm_camnoc_hf1_uncomp, !147, !"mas_qxm_camnoc_hf1_uncomp", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 45, i32 1}
!151 = !{ptr @mas_qxm_camnoc_sf_uncomp, !150, !"mas_qxm_camnoc_sf_uncomp", i1 false, i1 false}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 84, i32 1}
!154 = !{ptr @slv_qns_camnoc_uncomp, !153, !"slv_qns_camnoc_uncomp", i1 false, i1 false}
!155 = !{ptr @camnoc_virt_bcms, !156, !"camnoc_virt_bcms", i1 false, i1 false}
!156 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 206, i32 29}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 176, i32 1}
!159 = !{ptr @bcm_mm1, !158, !"bcm_mm1", i1 false, i1 false}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 64, i32 1}
!162 = !{ptr @mas_qxm_camnoc_hf0, !161, !"mas_qxm_camnoc_hf0", i1 false, i1 false}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 65, i32 1}
!165 = !{ptr @mas_qxm_camnoc_hf1, !164, !"mas_qxm_camnoc_hf1", i1 false, i1 false}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 67, i32 1}
!168 = !{ptr @mas_qxm_mdp0, !167, !"mas_qxm_mdp0", i1 false, i1 false}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 68, i32 1}
!171 = !{ptr @mas_qxm_mdp1, !170, !"mas_qxm_mdp1", i1 false, i1 false}
!172 = !{ptr @sc8180x_compute_noc, !173, !"sc8180x_compute_noc", i1 false, i1 false}
!173 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 452, i32 35}
!174 = !{ptr @compute_noc_nodes, !175, !"compute_noc_nodes", i1 false, i1 false}
!175 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 295, i32 30}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 46, i32 1}
!178 = !{ptr @mas_qnm_npu, !177, !"mas_qnm_npu", i1 false, i1 false}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 85, i32 1}
!181 = !{ptr @slv_qns_cdsp_mem_noc, !180, !"slv_qns_cdsp_mem_noc", i1 false, i1 false}
!182 = !{ptr @compute_noc_bcms, !183, !"compute_noc_bcms", i1 false, i1 false}
!183 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 210, i32 29}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 173, i32 1}
!186 = !{ptr @bcm_co0, !185, !"bcm_co0", i1 false, i1 false}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 184, i32 1}
!189 = !{ptr @bcm_co2, !188, !"bcm_co2", i1 false, i1 false}
!190 = !{ptr @sc8180x_config_noc, !191, !"sc8180x_config_noc", i1 false, i1 false}
!191 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 459, i32 35}
!192 = !{ptr @config_noc_nodes, !193, !"config_noc_nodes", i1 false, i1 false}
!193 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 300, i32 30}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 47, i32 1}
!196 = !{ptr @mas_qnm_snoc, !195, !"mas_qnm_snoc", i1 false, i1 false}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 86, i32 1}
!199 = !{ptr @slv_qhs_a1_noc_cfg, !198, !"slv_qhs_a1_noc_cfg", i1 false, i1 false}
!200 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 87, i32 1}
!202 = !{ptr @slv_qhs_a2_noc_cfg, !201, !"slv_qhs_a2_noc_cfg", i1 false, i1 false}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 88, i32 1}
!205 = !{ptr @slv_qhs_ahb2phy_refgen_center, !204, !"slv_qhs_ahb2phy_refgen_center", i1 false, i1 false}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 89, i32 1}
!208 = !{ptr @slv_qhs_ahb2phy_refgen_east, !207, !"slv_qhs_ahb2phy_refgen_east", i1 false, i1 false}
!209 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 90, i32 1}
!211 = !{ptr @slv_qhs_ahb2phy_refgen_west, !210, !"slv_qhs_ahb2phy_refgen_west", i1 false, i1 false}
!212 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 91, i32 1}
!214 = !{ptr @slv_qhs_ahb2phy_south, !213, !"slv_qhs_ahb2phy_south", i1 false, i1 false}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 92, i32 1}
!217 = !{ptr @slv_qhs_aop, !216, !"slv_qhs_aop", i1 false, i1 false}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 93, i32 1}
!220 = !{ptr @slv_qhs_aoss, !219, !"slv_qhs_aoss", i1 false, i1 false}
!221 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 94, i32 1}
!223 = !{ptr @slv_qhs_camera_cfg, !222, !"slv_qhs_camera_cfg", i1 false, i1 false}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 95, i32 1}
!226 = !{ptr @slv_qhs_clk_ctl, !225, !"slv_qhs_clk_ctl", i1 false, i1 false}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 96, i32 1}
!229 = !{ptr @slv_qhs_compute_dsp, !228, !"slv_qhs_compute_dsp", i1 false, i1 false}
!230 = !{ptr @.str.114, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 97, i32 1}
!232 = !{ptr @slv_qhs_cpr_cx, !231, !"slv_qhs_cpr_cx", i1 false, i1 false}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 98, i32 1}
!235 = !{ptr @slv_qhs_cpr_mmcx, !234, !"slv_qhs_cpr_mmcx", i1 false, i1 false}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 99, i32 1}
!238 = !{ptr @slv_qhs_cpr_mx, !237, !"slv_qhs_cpr_mx", i1 false, i1 false}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 100, i32 1}
!241 = !{ptr @slv_qhs_crypto0_cfg, !240, !"slv_qhs_crypto0_cfg", i1 false, i1 false}
!242 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 101, i32 1}
!244 = !{ptr @slv_qhs_ddrss_cfg, !243, !"slv_qhs_ddrss_cfg", i1 false, i1 false}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 102, i32 1}
!247 = !{ptr @slv_qhs_display_cfg, !246, !"slv_qhs_display_cfg", i1 false, i1 false}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 103, i32 1}
!250 = !{ptr @slv_qhs_emac_cfg, !249, !"slv_qhs_emac_cfg", i1 false, i1 false}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 104, i32 1}
!253 = !{ptr @slv_qhs_glm, !252, !"slv_qhs_glm", i1 false, i1 false}
!254 = !{ptr @.str.123, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 105, i32 1}
!256 = !{ptr @slv_qhs_gpuss_cfg, !255, !"slv_qhs_gpuss_cfg", i1 false, i1 false}
!257 = !{ptr @.str.124, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 106, i32 1}
!259 = !{ptr @slv_qhs_imem_cfg, !258, !"slv_qhs_imem_cfg", i1 false, i1 false}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 107, i32 1}
!262 = !{ptr @slv_qhs_ipa, !261, !"slv_qhs_ipa", i1 false, i1 false}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 108, i32 1}
!265 = !{ptr @slv_qhs_mnoc_cfg, !264, !"slv_qhs_mnoc_cfg", i1 false, i1 false}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 109, i32 1}
!268 = !{ptr @slv_qhs_npu_cfg, !267, !"slv_qhs_npu_cfg", i1 false, i1 false}
!269 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 110, i32 1}
!271 = !{ptr @slv_qhs_pcie0_cfg, !270, !"slv_qhs_pcie0_cfg", i1 false, i1 false}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 111, i32 1}
!274 = !{ptr @slv_qhs_pcie1_cfg, !273, !"slv_qhs_pcie1_cfg", i1 false, i1 false}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 112, i32 1}
!277 = !{ptr @slv_qhs_pcie2_cfg, !276, !"slv_qhs_pcie2_cfg", i1 false, i1 false}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 113, i32 1}
!280 = !{ptr @slv_qhs_pcie3_cfg, !279, !"slv_qhs_pcie3_cfg", i1 false, i1 false}
!281 = !{ptr @.str.133, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 114, i32 1}
!283 = !{ptr @slv_qhs_pdm, !282, !"slv_qhs_pdm", i1 false, i1 false}
!284 = !{ptr @.str.134, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 115, i32 1}
!286 = !{ptr @slv_qhs_pimem_cfg, !285, !"slv_qhs_pimem_cfg", i1 false, i1 false}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 116, i32 1}
!289 = !{ptr @slv_qhs_prng, !288, !"slv_qhs_prng", i1 false, i1 false}
!290 = !{ptr @.str.136, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 117, i32 1}
!292 = !{ptr @slv_qhs_qdss_cfg, !291, !"slv_qhs_qdss_cfg", i1 false, i1 false}
!293 = !{ptr @.str.137, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 118, i32 1}
!295 = !{ptr @slv_qhs_qspi_0, !294, !"slv_qhs_qspi_0", i1 false, i1 false}
!296 = !{ptr @.str.138, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 119, i32 1}
!298 = !{ptr @slv_qhs_qspi_1, !297, !"slv_qhs_qspi_1", i1 false, i1 false}
!299 = !{ptr @.str.139, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 120, i32 1}
!301 = !{ptr @slv_qhs_qupv3_east0, !300, !"slv_qhs_qupv3_east0", i1 false, i1 false}
!302 = !{ptr @.str.140, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 121, i32 1}
!304 = !{ptr @slv_qhs_qupv3_east1, !303, !"slv_qhs_qupv3_east1", i1 false, i1 false}
!305 = !{ptr @.str.141, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 122, i32 1}
!307 = !{ptr @slv_qhs_qupv3_west, !306, !"slv_qhs_qupv3_west", i1 false, i1 false}
!308 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 123, i32 1}
!310 = !{ptr @slv_qhs_sdc2, !309, !"slv_qhs_sdc2", i1 false, i1 false}
!311 = !{ptr @.str.143, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 124, i32 1}
!313 = !{ptr @slv_qhs_sdc4, !312, !"slv_qhs_sdc4", i1 false, i1 false}
!314 = !{ptr @.str.144, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 125, i32 1}
!316 = !{ptr @slv_qhs_security, !315, !"slv_qhs_security", i1 false, i1 false}
!317 = !{ptr @.str.145, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 126, i32 1}
!319 = !{ptr @slv_qhs_snoc_cfg, !318, !"slv_qhs_snoc_cfg", i1 false, i1 false}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 127, i32 1}
!322 = !{ptr @slv_qhs_spss_cfg, !321, !"slv_qhs_spss_cfg", i1 false, i1 false}
!323 = !{ptr @.str.148, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 128, i32 1}
!325 = !{ptr @slv_qhs_tcsr, !324, !"slv_qhs_tcsr", i1 false, i1 false}
!326 = !{ptr @.str.149, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 129, i32 1}
!328 = !{ptr @slv_qhs_tlmm_east, !327, !"slv_qhs_tlmm_east", i1 false, i1 false}
!329 = !{ptr @.str.150, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 130, i32 1}
!331 = !{ptr @slv_qhs_tlmm_south, !330, !"slv_qhs_tlmm_south", i1 false, i1 false}
!332 = !{ptr @.str.151, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 131, i32 1}
!334 = !{ptr @slv_qhs_tlmm_west, !333, !"slv_qhs_tlmm_west", i1 false, i1 false}
!335 = !{ptr @.str.152, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 132, i32 1}
!337 = !{ptr @slv_qhs_tsif, !336, !"slv_qhs_tsif", i1 false, i1 false}
!338 = !{ptr @.str.153, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 133, i32 1}
!340 = !{ptr @slv_qhs_ufs_card_cfg, !339, !"slv_qhs_ufs_card_cfg", i1 false, i1 false}
!341 = !{ptr @.str.154, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 134, i32 1}
!343 = !{ptr @slv_qhs_ufs_mem0_cfg, !342, !"slv_qhs_ufs_mem0_cfg", i1 false, i1 false}
!344 = !{ptr @.str.155, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 135, i32 1}
!346 = !{ptr @slv_qhs_ufs_mem1_cfg, !345, !"slv_qhs_ufs_mem1_cfg", i1 false, i1 false}
!347 = !{ptr @.str.156, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 136, i32 1}
!349 = !{ptr @slv_qhs_usb3_0, !348, !"slv_qhs_usb3_0", i1 false, i1 false}
!350 = !{ptr @.str.157, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 137, i32 1}
!352 = !{ptr @slv_qhs_usb3_1, !351, !"slv_qhs_usb3_1", i1 false, i1 false}
!353 = !{ptr @.str.158, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 138, i32 1}
!355 = !{ptr @slv_qhs_usb3_2, !354, !"slv_qhs_usb3_2", i1 false, i1 false}
!356 = !{ptr @.str.159, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 139, i32 1}
!358 = !{ptr @slv_qhs_venus_cfg, !357, !"slv_qhs_venus_cfg", i1 false, i1 false}
!359 = !{ptr @.str.160, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 140, i32 1}
!361 = !{ptr @slv_qhs_vsense_ctrl_cfg, !360, !"slv_qhs_vsense_ctrl_cfg", i1 false, i1 false}
!362 = !{ptr @.str.161, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 141, i32 1}
!364 = !{ptr @slv_srvc_cnoc, !363, !"slv_srvc_cnoc", i1 false, i1 false}
!365 = !{ptr @config_noc_bcms, !366, !"config_noc_bcms", i1 false, i1 false}
!366 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 215, i32 29}
!367 = !{ptr @.str.162, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 175, i32 1}
!369 = !{ptr @bcm_cn0, !368, !"bcm_cn0", i1 false, i1 false}
!370 = !{ptr @sc8180x_dc_noc, !371, !"sc8180x_dc_noc", i1 false, i1 false}
!371 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 466, i32 35}
!372 = !{ptr @dc_noc_nodes, !373, !"dc_noc_nodes", i1 false, i1 false}
!373 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 360, i32 30}
!374 = !{ptr @.str.164, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 48, i32 1}
!376 = !{ptr @mas_qhm_cnoc_dc_noc, !375, !"mas_qhm_cnoc_dc_noc", i1 false, i1 false}
!377 = !{ptr @.str.166, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 142, i32 1}
!379 = !{ptr @slv_qhs_gemnoc, !378, !"slv_qhs_gemnoc", i1 false, i1 false}
!380 = !{ptr @.str.168, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 143, i32 1}
!382 = !{ptr @slv_qhs_llcc, !381, !"slv_qhs_llcc", i1 false, i1 false}
!383 = !{ptr @sc8180x_gem_noc, !384, !"sc8180x_gem_noc", i1 false, i1 false}
!384 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 471, i32 35}
!385 = !{ptr @gem_noc_nodes, !386, !"gem_noc_nodes", i1 false, i1 false}
!386 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 366, i32 30}
!387 = !{ptr @.str.169, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 49, i32 1}
!389 = !{ptr @mas_acm_apps, !388, !"mas_acm_apps", i1 false, i1 false}
!390 = !{ptr @.str.171, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 50, i32 1}
!392 = !{ptr @mas_acm_gpu_tcu, !391, !"mas_acm_gpu_tcu", i1 false, i1 false}
!393 = !{ptr @.str.173, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 51, i32 1}
!395 = !{ptr @mas_acm_sys_tcu, !394, !"mas_acm_sys_tcu", i1 false, i1 false}
!396 = !{ptr @.str.175, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 52, i32 1}
!398 = !{ptr @mas_qhm_gemnoc_cfg, !397, !"mas_qhm_gemnoc_cfg", i1 false, i1 false}
!399 = !{ptr @.str.177, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 53, i32 1}
!401 = !{ptr @mas_qnm_cmpnoc, !400, !"mas_qnm_cmpnoc", i1 false, i1 false}
!402 = !{ptr @.str.179, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 54, i32 1}
!404 = !{ptr @mas_qnm_gpu, !403, !"mas_qnm_gpu", i1 false, i1 false}
!405 = !{ptr @.str.181, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 55, i32 1}
!407 = !{ptr @mas_qnm_mnoc_hf, !406, !"mas_qnm_mnoc_hf", i1 false, i1 false}
!408 = !{ptr @.str.183, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 56, i32 1}
!410 = !{ptr @mas_qnm_mnoc_sf, !409, !"mas_qnm_mnoc_sf", i1 false, i1 false}
!411 = !{ptr @.str.185, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 57, i32 1}
!413 = !{ptr @mas_qnm_pcie, !412, !"mas_qnm_pcie", i1 false, i1 false}
!414 = !{ptr @.str.187, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 58, i32 1}
!416 = !{ptr @mas_qnm_snoc_gc, !415, !"mas_qnm_snoc_gc", i1 false, i1 false}
!417 = !{ptr @.str.189, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 59, i32 1}
!419 = !{ptr @mas_qnm_snoc_sf, !418, !"mas_qnm_snoc_sf", i1 false, i1 false}
!420 = !{ptr @.str.191, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 60, i32 1}
!422 = !{ptr @mas_qxm_ecc, !421, !"mas_qxm_ecc", i1 false, i1 false}
!423 = !{ptr @.str.193, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 144, i32 1}
!425 = !{ptr @slv_qhs_mdsp_ms_mpu_cfg, !424, !"slv_qhs_mdsp_ms_mpu_cfg", i1 false, i1 false}
!426 = !{ptr @.str.194, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 145, i32 1}
!428 = !{ptr @slv_qns_ecc, !427, !"slv_qns_ecc", i1 false, i1 false}
!429 = !{ptr @.str.195, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 146, i32 1}
!431 = !{ptr @slv_qns_gem_noc_snoc, !430, !"slv_qns_gem_noc_snoc", i1 false, i1 false}
!432 = !{ptr @.str.197, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 147, i32 1}
!434 = !{ptr @slv_qns_llcc, !433, !"slv_qns_llcc", i1 false, i1 false}
!435 = !{ptr @.str.199, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 148, i32 1}
!437 = !{ptr @slv_srvc_gemnoc, !436, !"slv_srvc_gemnoc", i1 false, i1 false}
!438 = !{ptr @.str.200, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 149, i32 1}
!440 = !{ptr @slv_srvc_gemnoc1, !439, !"slv_srvc_gemnoc1", i1 false, i1 false}
!441 = !{ptr @gem_noc_bcms, !442, !"gem_noc_bcms", i1 false, i1 false}
!442 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 219, i32 29}
!443 = !{ptr @.str.201, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 171, i32 1}
!445 = !{ptr @bcm_sh0, !444, !"bcm_sh0", i1 false, i1 false}
!446 = !{ptr @.str.203, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 178, i32 1}
!448 = !{ptr @bcm_sh2, !447, !"bcm_sh2", i1 false, i1 false}
!449 = !{ptr @.str.205, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 180, i32 1}
!451 = !{ptr @bcm_sh3, !450, !"bcm_sh3", i1 false, i1 false}
!452 = !{ptr @sc8180x_ipa_virt, !453, !"sc8180x_ipa_virt", i1 false, i1 false}
!453 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 478, i32 35}
!454 = !{ptr @ipa_virt_nodes, !455, !"ipa_virt_nodes", i1 false, i1 false}
!455 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 387, i32 30}
!456 = !{ptr @.str.207, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 61, i32 1}
!458 = !{ptr @mas_ipa_core_master, !457, !"mas_ipa_core_master", i1 false, i1 false}
!459 = !{ptr @.str.209, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 150, i32 1}
!461 = !{ptr @slv_ipa_core_slave, !460, !"slv_ipa_core_slave", i1 false, i1 false}
!462 = !{ptr @ipa_virt_bcms, !463, !"ipa_virt_bcms", i1 false, i1 false}
!463 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 225, i32 29}
!464 = !{ptr @.str.210, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 185, i32 1}
!466 = !{ptr @bcm_ip0, !465, !"bcm_ip0", i1 false, i1 false}
!467 = !{ptr @sc8180x_mc_virt, !468, !"sc8180x_mc_virt", i1 false, i1 false}
!468 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 485, i32 35}
!469 = !{ptr @mc_virt_nodes, !470, !"mc_virt_nodes", i1 false, i1 false}
!470 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 392, i32 30}
!471 = !{ptr @.str.212, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 62, i32 1}
!473 = !{ptr @mas_llcc_mc, !472, !"mas_llcc_mc", i1 false, i1 false}
!474 = !{ptr @.str.214, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 151, i32 1}
!476 = !{ptr @slv_ebi, !475, !"slv_ebi", i1 false, i1 false}
!477 = !{ptr @mc_virt_bcms, !478, !"mc_virt_bcms", i1 false, i1 false}
!478 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 229, i32 29}
!479 = !{ptr @.str.215, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 170, i32 1}
!481 = !{ptr @bcm_mc0, !480, !"bcm_mc0", i1 false, i1 false}
!482 = !{ptr @.str.217, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 169, i32 1}
!484 = !{ptr @bcm_acv, !483, !"bcm_acv", i1 false, i1 false}
!485 = !{ptr @sc8180x_mmss_noc, !486, !"sc8180x_mmss_noc", i1 false, i1 false}
!486 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 492, i32 35}
!487 = !{ptr @mmss_noc_nodes, !488, !"mmss_noc_nodes", i1 false, i1 false}
!488 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 397, i32 30}
!489 = !{ptr @.str.219, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 63, i32 1}
!491 = !{ptr @mas_qhm_mnoc_cfg, !490, !"mas_qhm_mnoc_cfg", i1 false, i1 false}
!492 = !{ptr @.str.221, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 66, i32 1}
!494 = !{ptr @mas_qxm_camnoc_sf, !493, !"mas_qxm_camnoc_sf", i1 false, i1 false}
!495 = !{ptr @.str.223, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 69, i32 1}
!497 = !{ptr @mas_qxm_rot, !496, !"mas_qxm_rot", i1 false, i1 false}
!498 = !{ptr @.str.225, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 70, i32 1}
!500 = !{ptr @mas_qxm_venus0, !499, !"mas_qxm_venus0", i1 false, i1 false}
!501 = !{ptr @.str.227, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 71, i32 1}
!503 = !{ptr @mas_qxm_venus1, !502, !"mas_qxm_venus1", i1 false, i1 false}
!504 = !{ptr @.str.229, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 72, i32 1}
!506 = !{ptr @mas_qxm_venus_arm9, !505, !"mas_qxm_venus_arm9", i1 false, i1 false}
!507 = !{ptr @.str.231, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 152, i32 1}
!509 = !{ptr @slv_qns2_mem_noc, !508, !"slv_qns2_mem_noc", i1 false, i1 false}
!510 = !{ptr @.str.233, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 153, i32 1}
!512 = !{ptr @slv_qns_mem_noc_hf, !511, !"slv_qns_mem_noc_hf", i1 false, i1 false}
!513 = !{ptr @.str.235, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 154, i32 1}
!515 = !{ptr @slv_srvc_mnoc, !514, !"slv_srvc_mnoc", i1 false, i1 false}
!516 = !{ptr @mmss_noc_bcms, !517, !"mmss_noc_bcms", i1 false, i1 false}
!517 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 234, i32 29}
!518 = !{ptr @.str.236, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 172, i32 1}
!520 = !{ptr @bcm_mm0, !519, !"bcm_mm0", i1 false, i1 false}
!521 = !{ptr @.str.238, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 179, i32 1}
!523 = !{ptr @bcm_mm2, !522, !"bcm_mm2", i1 false, i1 false}
!524 = !{ptr @sc8180x_system_noc, !525, !"sc8180x_system_noc", i1 false, i1 false}
!525 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 499, i32 35}
!526 = !{ptr @system_noc_nodes, !527, !"system_noc_nodes", i1 false, i1 false}
!527 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 413, i32 30}
!528 = !{ptr @.str.240, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 73, i32 1}
!530 = !{ptr @mas_qhm_snoc_cfg, !529, !"mas_qhm_snoc_cfg", i1 false, i1 false}
!531 = !{ptr @.str.242, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 74, i32 1}
!533 = !{ptr @mas_qnm_aggre1_noc, !532, !"mas_qnm_aggre1_noc", i1 false, i1 false}
!534 = !{ptr @.str.244, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 75, i32 1}
!536 = !{ptr @mas_qnm_aggre2_noc, !535, !"mas_qnm_aggre2_noc", i1 false, i1 false}
!537 = !{ptr @.str.246, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 76, i32 1}
!539 = !{ptr @mas_qnm_gemnoc, !538, !"mas_qnm_gemnoc", i1 false, i1 false}
!540 = !{ptr @.str.248, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 77, i32 1}
!542 = !{ptr @mas_qxm_pimem, !541, !"mas_qxm_pimem", i1 false, i1 false}
!543 = !{ptr @.str.250, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 78, i32 1}
!545 = !{ptr @mas_xm_gic, !544, !"mas_xm_gic", i1 false, i1 false}
!546 = !{ptr @.str.252, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 155, i32 1}
!548 = !{ptr @slv_qhs_apss, !547, !"slv_qhs_apss", i1 false, i1 false}
!549 = !{ptr @.str.253, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 157, i32 1}
!551 = !{ptr @slv_qns_gemnoc_gc, !550, !"slv_qns_gemnoc_gc", i1 false, i1 false}
!552 = !{ptr @.str.255, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 158, i32 1}
!554 = !{ptr @slv_qns_gemnoc_sf, !553, !"slv_qns_gemnoc_sf", i1 false, i1 false}
!555 = !{ptr @.str.257, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 159, i32 1}
!557 = !{ptr @slv_qxs_imem, !556, !"slv_qxs_imem", i1 false, i1 false}
!558 = !{ptr @.str.258, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 160, i32 1}
!560 = !{ptr @slv_qxs_pimem, !559, !"slv_qxs_pimem", i1 false, i1 false}
!561 = !{ptr @.str.259, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 161, i32 1}
!563 = !{ptr @slv_srvc_snoc, !562, !"slv_srvc_snoc", i1 false, i1 false}
!564 = !{ptr @.str.260, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 166, i32 1}
!566 = !{ptr @slv_xs_qdss_stm, !565, !"slv_xs_qdss_stm", i1 false, i1 false}
!567 = !{ptr @.str.261, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 167, i32 1}
!569 = !{ptr @slv_xs_sys_tcu_cfg, !568, !"slv_xs_sys_tcu_cfg", i1 false, i1 false}
!570 = !{ptr @system_noc_bcms, !571, !"system_noc_bcms", i1 false, i1 false}
!571 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 240, i32 29}
!572 = !{ptr @.str.262, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 181, i32 1}
!574 = !{ptr @bcm_sn0, !573, !"bcm_sn0", i1 false, i1 false}
!575 = !{ptr @.str.264, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 182, i32 1}
!577 = !{ptr @bcm_sn1, !576, !"bcm_sn1", i1 false, i1 false}
!578 = !{ptr @.str.266, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 183, i32 1}
!580 = !{ptr @bcm_sn2, !579, !"bcm_sn2", i1 false, i1 false}
!581 = !{ptr @.str.268, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 187, i32 1}
!583 = !{ptr @bcm_sn4, !582, !"bcm_sn4", i1 false, i1 false}
!584 = !{ptr @.str.270, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 188, i32 1}
!586 = !{ptr @bcm_sn8, !585, !"bcm_sn8", i1 false, i1 false}
!587 = !{ptr @.str.272, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 162, i32 1}
!589 = !{ptr @slv_xs_pcie_0, !588, !"slv_xs_pcie_0", i1 false, i1 false}
!590 = !{ptr @.str.273, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 163, i32 1}
!592 = !{ptr @slv_xs_pcie_1, !591, !"slv_xs_pcie_1", i1 false, i1 false}
!593 = !{ptr @.str.274, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 164, i32 1}
!595 = !{ptr @slv_xs_pcie_2, !594, !"slv_xs_pcie_2", i1 false, i1 false}
!596 = !{ptr @.str.275, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 165, i32 1}
!598 = !{ptr @slv_xs_pcie_3, !597, !"slv_xs_pcie_3", i1 false, i1 false}
!599 = !{ptr @.str.276, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 189, i32 1}
!601 = !{ptr @bcm_sn9, !600, !"bcm_sn9", i1 false, i1 false}
!602 = !{ptr @.str.278, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 190, i32 1}
!604 = !{ptr @bcm_sn11, !603, !"bcm_sn11", i1 false, i1 false}
!605 = !{ptr @.str.280, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/interconnect/qcom/sc8180x.c", i32 192, i32 1}
!607 = !{ptr @bcm_sn15, !606, !"bcm_sn15", i1 false, i1 false}
!608 = !{i32 1, !"wchar_size", i32 2}
!609 = !{i32 1, !"min_enum_size", i32 4}
!610 = !{i32 8, !"branch-target-enforcement", i32 0}
!611 = !{i32 8, !"sign-return-address", i32 0}
!612 = !{i32 8, !"sign-return-address-all", i32 0}
!613 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!614 = !{i32 7, !"uwtable", i32 1}
!615 = !{i32 7, !"frame-pointer", i32 2}
!616 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!617 = !{!"branch_weights", i32 1, i32 2000}
