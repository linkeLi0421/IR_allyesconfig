; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_mp_global_t = type { [256 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.brcmf_join_pref_params = type { i8, i8, i8, i8 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.brcmf_rev_info_le = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.brcmf_bus = type { %union.anon.128, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.128 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_dload_data_le = type { i16, i16, i32, i32, [1 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.131 }
%union.anon.131 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.brcmfmac_platform_data = type { ptr, ptr, ptr, i32, [0 x %struct.brcmfmac_pd_device] }
%struct.brcmfmac_pd_device = type { i32, i32, i32, i32, ptr, %union.anon.133 }
%union.anon.133 = type { %struct.brcmfmac_sdio_pd }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__UNIQUE_ID_author354 = internal constant [37 x i8] c"brcmfmac.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [66 x i8] c"brcmfmac.description=Broadcom 802.11 wireless LAN fullmac driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [72 x i8] c"brcmfmac.file=drivers/net/wireless/broadcom/brcm80211/brcmfmac/brcmfmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [30 x i8] c"brcmfmac.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_txglomsz = internal constant [18 x i8] c"brcmfmac.txglomsz\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@brcmf_sdiod_txglomsz = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_txglomsz = internal constant %struct.kernel_param { ptr @__param_str_txglomsz, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_sdiod_txglomsz } }, section "__param", align 4
@__UNIQUE_ID_txglomsztype358 = internal constant [31 x i8] c"brcmfmac.parmtype=txglomsz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_txglomsz359 = internal constant [59 x i8] c"brcmfmac.parm=txglomsz:Maximum tx packet chain size [SDIO]\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"brcmfmac.debug\00", align 1
@brcmf_msg_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_msg_level } }, section "__param", align 4
@__UNIQUE_ID_debugtype360 = internal constant [28 x i8] c"brcmfmac.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug361 = internal constant [42 x i8] c"brcmfmac.parm=debug:Level of debug output\00", section ".modinfo", align 1
@__param_str_p2pon = internal constant [15 x i8] c"brcmfmac.p2pon\00", align 1
@brcmf_p2p_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_p2pon = internal constant %struct.kernel_param { ptr @__param_str_p2pon, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_p2p_enable } }, section "__param", align 4
@__UNIQUE_ID_p2pontype362 = internal constant [28 x i8] c"brcmfmac.parmtype=p2pon:int\00", section ".modinfo", align 1
@__UNIQUE_ID_p2pon363 = internal constant [63 x i8] c"brcmfmac.parm=p2pon:Enable legacy p2p management functionality\00", section ".modinfo", align 1
@__param_str_feature_disable = internal constant [25 x i8] c"brcmfmac.feature_disable\00", align 1
@brcmf_feature_disable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_feature_disable = internal constant %struct.kernel_param { ptr @__param_str_feature_disable, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_feature_disable } }, section "__param", align 4
@__UNIQUE_ID_feature_disabletype364 = internal constant [38 x i8] c"brcmfmac.parmtype=feature_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_feature_disable365 = internal constant [47 x i8] c"brcmfmac.parm=feature_disable:Disable features\00", section ".modinfo", align 1
@__param_str_alternative_fw_path = internal constant [29 x i8] c"brcmfmac.alternative_fw_path\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_alternative_fw_path = internal constant %struct.kparam_string { i32 256, ptr @brcmf_firmware_path }, align 4
@__param_alternative_fw_path = internal constant %struct.kernel_param { ptr @__param_str_alternative_fw_path, ptr null, ptr @param_ops_string, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_alternative_fw_path } }, section "__param", align 4
@__UNIQUE_ID_alternative_fw_pathtype366 = internal constant [45 x i8] c"brcmfmac.parmtype=alternative_fw_path:string\00", section ".modinfo", align 1
@__UNIQUE_ID_alternative_fw_path367 = internal constant [60 x i8] c"brcmfmac.parm=alternative_fw_path:Alternative firmware path\00", section ".modinfo", align 1
@__param_str_fcmode = internal constant [16 x i8] c"brcmfmac.fcmode\00", align 1
@brcmf_fcmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fcmode = internal constant %struct.kernel_param { ptr @__param_str_fcmode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_fcmode } }, section "__param", align 4
@__UNIQUE_ID_fcmodetype368 = internal constant [29 x i8] c"brcmfmac.parmtype=fcmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fcmode369 = internal constant [61 x i8] c"brcmfmac.parm=fcmode:Mode of firmware signalled flow control\00", section ".modinfo", align 1
@__param_str_roamoff = internal constant [17 x i8] c"brcmfmac.roamoff\00", align 1
@brcmf_roamoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_roamoff = internal constant %struct.kernel_param { ptr @__param_str_roamoff, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_roamoff } }, section "__param", align 4
@__UNIQUE_ID_roamofftype370 = internal constant [30 x i8] c"brcmfmac.parmtype=roamoff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_roamoff371 = internal constant [57 x i8] c"brcmfmac.parm=roamoff:Do not use internal roaming engine\00", section ".modinfo", align 1
@__param_str_iapp = internal constant [14 x i8] c"brcmfmac.iapp\00", align 1
@brcmf_iapp_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_iapp = internal constant %struct.kernel_param { ptr @__param_str_iapp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_iapp_enable } }, section "__param", align 4
@__UNIQUE_ID_iapptype372 = internal constant [27 x i8] c"brcmfmac.parmtype=iapp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_iapp373 = internal constant [88 x i8] c"brcmfmac.parm=iapp:Enable partial support for the obsoleted Inter-Access Point Protocol\00", section ".modinfo", align 1
@__param_str_ignore_probe_fail = internal constant [27 x i8] c"brcmfmac.ignore_probe_fail\00", align 1
@brcmf_ignore_probe_fail = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ignore_probe_fail = internal constant %struct.kernel_param { ptr @__param_str_ignore_probe_fail, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @brcmf_ignore_probe_fail } }, section "__param", align 4
@__UNIQUE_ID_ignore_probe_failtype374 = internal constant [40 x i8] c"brcmfmac.parmtype=ignore_probe_fail:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_probe_fail375 = internal constant [67 x i8] c"brcmfmac.parm=ignore_probe_fail:always succeed probe for debugging\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"join_pref\00", [22 x i8] zeroinitializer }, align 32
@brcmf_c_set_joinpref_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 99, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Set join_pref error (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"brcmf_c_set_joinpref_default\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_c_set_joinpref_default._entry_ptr = internal global ptr @brcmf_c_set_joinpref_default._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cur_etheraddr\00", [18 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Retrieving cur_etheraddr failed, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcmf_c_preinit_dcmds\00", [42 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr = internal global ptr @brcmf_c_preinit_dcmds._entry, section ".printk_index", align 4
@brcmf_c_preinit_dcmds._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: retrieving revision info failed, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.11 = internal global ptr @brcmf_c_preinit_dcmds._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 255, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: download CLM blob file failed, %d\0A\00", [57 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.15 = internal global ptr @brcmf_c_preinit_dcmds._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ver\00", [28 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Retrieving version information failed, %d\0A\00", [49 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.19 = internal global ptr @brcmf_c_preinit_dcmds._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Firmware: %s %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clmver\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"retrieving clmver failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CLM version = %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpc\00", [28 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: failed setting mpc\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.28 = internal global ptr @brcmf_c_preinit_dcmds._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event_msgs\00", [21 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Get event_msgs error (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.32 = internal global ptr @brcmf_c_preinit_dcmds._entry.30, section ".printk_index", align 4
@brcmf_c_preinit_dcmds._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.3, i32 315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Set event_msgs error (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.35 = internal global ptr @brcmf_c_preinit_dcmds._entry.33, section ".printk_index", align 4
@brcmf_c_preinit_dcmds._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.8, ptr @.str.3, i32 324, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: BRCMF_C_SET_SCAN_CHANNEL_TIME error (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.38 = internal global ptr @brcmf_c_preinit_dcmds._entry.36, section ".printk_index", align 4
@brcmf_c_preinit_dcmds._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.8, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: BRCMF_C_SET_SCAN_UNASSOC_TIME error (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@brcmf_c_preinit_dcmds._entry_ptr.41 = internal global ptr @brcmf_c_preinit_dcmds._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"txbf\00", [27 x i8] zeroinitializer }, align 32
@__brcmf_dbg.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmfmac\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__brcmf_dbg\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %pV\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmfmac: %s %pV\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_get_module_param = private unnamed_addr constant [23 x i8] c"brcmf_get_module_param\00", align 1
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enter, bus=%d, chip=%d, rev=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmfmac_pdata = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Platform data for device found\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmf_pd = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @brcmf_common_pd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.43, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_brcmfmac__377_515_brcmfmac_module_init6 = internal global ptr @brcmfmac_module_init, section ".initcall6.init", align 4
@__exitcall_brcmfmac_module_exit = internal global ptr @brcmfmac_module_exit, section ".exitcall.exit", align 4
@brcmf_mp_global = dso_local global { %struct.brcmf_mp_global_t, [64 x i8] } zeroinitializer, align 32
@brcmf_firmware_path = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@__func__.brcmf_c_process_clm_blob = private unnamed_addr constant [25 x i8] c"brcmf_c_process_clm_blob\00", align 1
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".clm_blob\00", [22 x i8] zeroinitializer }, align 32
@brcmf_c_process_clm_blob._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.brcmf_c_process_clm_blob, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: get CLM blob file name failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@brcmf_c_process_clm_blob._entry_ptr = internal global ptr @brcmf_c_process_clm_blob._entry, section ".printk_index", align 4
@.str.52 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"no clm_blob available (err=%d), device may have limited channels available\0A\00", [52 x i8] zeroinitializer }, align 32
@brcmf_c_process_clm_blob._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.brcmf_c_process_clm_blob, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: clmload (%zu byte file) failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@brcmf_c_process_clm_blob._entry_ptr.55 = internal global ptr @brcmf_c_process_clm_blob._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clmload_status\00", [17 x i8] zeroinitializer }, align 32
@brcmf_c_process_clm_blob._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.brcmf_c_process_clm_blob, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: get clmload_status failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmf_c_process_clm_blob._entry_ptr.59 = internal global ptr @brcmf_c_process_clm_blob._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clmload_status=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clmload\00", [24 x i8] zeroinitializer }, align 32
@__tracepoint_brcmf_dbg = external dso_local global %struct.tracepoint, align 4
@.str.62 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", [34 x i8] zeroinitializer }, align 32
@trace_brcmf_dbg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.brcmf_common_pd_remove = private unnamed_addr constant [23 x i8] c"brcmf_common_pd_remove\00", align 1
@__func__.brcmfmac_module_init = private unnamed_addr constant [21 x i8] c"brcmfmac_module_init\00", align 1
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No platform data available.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_common_pd_probe = private unnamed_addr constant [22 x i8] c"brcmf_common_pd_probe\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"brcmf_sdiod_txglomsz\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 36, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"brcmf_msg_level\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 41, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"brcmf_p2p_enable\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 45, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"brcmf_feature_disable\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 49, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"brcmf_fcmode\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 58, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"brcmf_roamoff\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 62, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"brcmf_iapp_enable\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 66, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"brcmf_ignore_probe_fail\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 72, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 96, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 99, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 206, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 209, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 221, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 222, i32 25 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 255, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 261, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 263, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 268, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 271, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 279, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 281, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 292, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 296, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 298, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 305, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 308, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 315, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 323, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 332, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 338, i32 37 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 373, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 404, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"brcmfmac_pdata\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 77, i32 39 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 432, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant [9 x i8] c"brcmf_pd\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 479, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"brcmf_mp_global\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 78, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"brcmf_firmware_path\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 53, i32 13 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 134, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 137, i32 34 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 139, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 145, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 176, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 179, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 181, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 183, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 115, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant [65 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 47, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 108, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [61 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 493, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_alternative_fw_path367, ptr @__UNIQUE_ID_alternative_fw_pathtype366, ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_debug361, ptr @__UNIQUE_ID_debugtype360, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_fcmode369, ptr @__UNIQUE_ID_fcmodetype368, ptr @__UNIQUE_ID_feature_disable365, ptr @__UNIQUE_ID_feature_disabletype364, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_iapp373, ptr @__UNIQUE_ID_iapptype372, ptr @__UNIQUE_ID_ignore_probe_fail375, ptr @__UNIQUE_ID_ignore_probe_failtype374, ptr @__UNIQUE_ID_license357, ptr @__UNIQUE_ID_p2pon363, ptr @__UNIQUE_ID_p2pontype362, ptr @__UNIQUE_ID_roamoff371, ptr @__UNIQUE_ID_roamofftype370, ptr @__UNIQUE_ID_txglomsz359, ptr @__UNIQUE_ID_txglomsztype358, ptr @__exitcall_brcmfmac_module_exit, ptr @__initcall__kmod_brcmfmac__377_515_brcmfmac_module_init6, ptr @__param_alternative_fw_path, ptr @__param_debug, ptr @__param_fcmode, ptr @__param_feature_disable, ptr @__param_iapp, ptr @__param_ignore_probe_fail, ptr @__param_p2pon, ptr @__param_roamoff, ptr @__param_txglomsz, ptr @brcmf_c_preinit_dcmds._entry, ptr @brcmf_c_preinit_dcmds._entry.13, ptr @brcmf_c_preinit_dcmds._entry.17, ptr @brcmf_c_preinit_dcmds._entry.26, ptr @brcmf_c_preinit_dcmds._entry.30, ptr @brcmf_c_preinit_dcmds._entry.33, ptr @brcmf_c_preinit_dcmds._entry.36, ptr @brcmf_c_preinit_dcmds._entry.39, ptr @brcmf_c_preinit_dcmds._entry.9, ptr @brcmf_c_preinit_dcmds._entry_ptr, ptr @brcmf_c_preinit_dcmds._entry_ptr.11, ptr @brcmf_c_preinit_dcmds._entry_ptr.15, ptr @brcmf_c_preinit_dcmds._entry_ptr.19, ptr @brcmf_c_preinit_dcmds._entry_ptr.28, ptr @brcmf_c_preinit_dcmds._entry_ptr.32, ptr @brcmf_c_preinit_dcmds._entry_ptr.35, ptr @brcmf_c_preinit_dcmds._entry_ptr.38, ptr @brcmf_c_preinit_dcmds._entry_ptr.41, ptr @brcmf_c_process_clm_blob._entry, ptr @brcmf_c_process_clm_blob._entry.53, ptr @brcmf_c_process_clm_blob._entry.57, ptr @brcmf_c_process_clm_blob._entry_ptr, ptr @brcmf_c_process_clm_blob._entry_ptr.55, ptr @brcmf_c_process_clm_blob._entry_ptr.59, ptr @brcmf_c_set_joinpref_default._entry, ptr @brcmf_c_set_joinpref_default._entry_ptr, ptr @brcmfmac_module_exit, ptr @brcmf_sdiod_txglomsz, ptr @brcmf_msg_level, ptr @brcmf_p2p_enable, ptr @brcmf_feature_disable, ptr @brcmf_fcmode, ptr @brcmf_roamoff, ptr @brcmf_iapp_enable, ptr @brcmf_ignore_probe_fail, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @brcmfmac_pdata, ptr @.str.48, ptr @brcmf_pd, ptr @brcmf_mp_global, ptr @brcmf_firmware_path, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_sdiod_txglomsz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_msg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_p2p_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_feature_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fcmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_roamoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_iapp_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_ignore_probe_fail to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_set_joinpref_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_preinit_dcmds._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmfmac_pdata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_pd to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_mp_global to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_firmware_path to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_process_clm_blob._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_process_clm_blob._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_c_process_clm_blob._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_c_set_joinpref_default(ptr noundef %ifp) local_unnamed_addr #0 align 64 {
entry:
  %join_pref_params = alloca [2 x %struct.brcmf_join_pref_params], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %join_pref_params) #12
  %2 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %join_pref_params, i32 0, i32 1
  %3 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %join_pref_params, i32 0, i32 2
  %4 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %join_pref_params, i32 0, i32 3
  %5 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %join_pref_params to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %join_pref_params, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %5, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %8, align 1
  %call = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str, ptr noundef nonnull %join_pref_params, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %join_pref_params) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_c_preinit_dcmds(ptr noundef %ifp) local_unnamed_addr #0 align 64 {
entry:
  %join_pref_params.i = alloca [2 x %struct.brcmf_join_pref_params], align 1
  %clm.i = alloca ptr, align 4
  %clm_name.i = alloca [320 x i8], align 1
  %status.i = alloca i32, align 4
  %eventmask = alloca [18 x i8], align 1
  %buf = alloca [256 x i8], align 1
  %revinfo = alloca %struct.brcmf_rev_info_le, align 4
  %ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %eventmask) #12
  %2 = getelementptr inbounds [18 x i8], ptr %eventmask, i32 0, i32 6
  %3 = call ptr @memset(ptr %eventmask, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #12
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %revinfo) #12
  %4 = call ptr @memset(ptr %revinfo, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #12
  %mac_addr = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 8
  %call = tail call i32 @brcmf_fil_iovar_data_get(ptr noundef %ifp, ptr noundef nonnull @.str.6, ptr noundef %mac_addr, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call) #15
  br label %done

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ifp, align 4
  %mac = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 7
  %9 = call ptr @memcpy(ptr %mac, ptr %mac_addr, i32 6)
  %10 = load ptr, ptr %ifp, align 4
  %wiphy10 = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %wiphy10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy10, align 4
  %perm_addr = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 1
  %mac13 = getelementptr inbounds %struct.brcmf_pub, ptr %10, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %perm_addr, ptr %mac13, i32 6)
  %14 = load ptr, ptr %ifp, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %revinfo17 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18
  %call18 = call i32 @brcmf_fil_cmd_data_get(ptr noundef %ifp, i32 noundef 98, ptr noundef nonnull %revinfo, i32 noundef 68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end24, label %if.else

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy25 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %wiphy25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy25, align 4
  %dev26 = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %call18) #15
  %chipname = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 11
  %call30 = call i32 @strlcpy(ptr noundef %chipname, ptr noundef nonnull @.str.12, i32 noundef 12) #12
  br label %if.end51

if.else:                                          ; preds = %if.end
  %19 = ptrtoint ptr %revinfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %revinfo, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %vendorid31 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %vendorid31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %vendorid31, align 4
  %deviceid = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 1
  %23 = ptrtoint ptr %deviceid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %deviceid, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %deviceid32 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 2
  %26 = ptrtoint ptr %deviceid32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %deviceid32, align 4
  %radiorev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 2
  %27 = ptrtoint ptr %radiorev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %radiorev, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %radiorev33 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 3
  %30 = ptrtoint ptr %radiorev33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %radiorev33, align 4
  %corerev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 4
  %31 = ptrtoint ptr %corerev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %corerev, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %corerev34 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 4
  %34 = ptrtoint ptr %corerev34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %corerev34, align 4
  %boardid = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 5
  %35 = ptrtoint ptr %boardid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %boardid, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %boardid35 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 5
  %38 = ptrtoint ptr %boardid35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %boardid35, align 4
  %boardvendor = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 6
  %39 = ptrtoint ptr %boardvendor to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %boardvendor, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %boardvendor36 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 6
  %42 = ptrtoint ptr %boardvendor36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %boardvendor36, align 4
  %boardrev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 7
  %43 = ptrtoint ptr %boardrev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %boardrev, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %boardrev37 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 7
  %46 = ptrtoint ptr %boardrev37 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %boardrev37, align 4
  %driverrev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 8
  %47 = ptrtoint ptr %driverrev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %driverrev, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %driverrev38 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 8
  %50 = ptrtoint ptr %driverrev38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %driverrev38, align 4
  %ucoderev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 9
  %51 = ptrtoint ptr %ucoderev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ucoderev, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %ucoderev39 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 9
  %54 = ptrtoint ptr %ucoderev39 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ucoderev39, align 4
  %bus40 = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 10
  %55 = ptrtoint ptr %bus40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bus40, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %bus41 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 10
  %58 = ptrtoint ptr %bus41 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %bus41, align 4
  %phytype = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 12
  %59 = ptrtoint ptr %phytype to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %phytype, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %phytype42 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 12
  %62 = ptrtoint ptr %phytype42 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %phytype42, align 4
  %phyrev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 13
  %63 = ptrtoint ptr %phyrev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phyrev, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  %phyrev43 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 13
  %66 = ptrtoint ptr %phyrev43 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %phyrev43, align 4
  %anarev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 14
  %67 = ptrtoint ptr %anarev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %anarev, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %anarev44 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 14
  %70 = ptrtoint ptr %anarev44 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %anarev44, align 4
  %chippkg = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 15
  %71 = ptrtoint ptr %chippkg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chippkg, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72)
  %chippkg45 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 15
  %74 = ptrtoint ptr %chippkg45 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %chippkg45, align 4
  %nvramrev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 16
  %75 = ptrtoint ptr %nvramrev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nvramrev, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %nvramrev46 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 16
  %78 = ptrtoint ptr %nvramrev46 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %nvramrev46, align 4
  %chip = getelementptr inbounds %struct.brcmf_bus, ptr %16, i32 0, i32 7
  %79 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not = icmp eq i32 %80, 0
  br i1 %tobool.not, label %if.then47, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %chipnum = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 11
  %81 = ptrtoint ptr %chipnum to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chipnum, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %84 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %chip, align 4
  %chiprev = getelementptr inbounds %struct.brcmf_rev_info_le, ptr %revinfo, i32 0, i32 3
  %85 = ptrtoint ptr %chiprev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chiprev, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %chiprev49 = getelementptr inbounds %struct.brcmf_bus, ptr %16, i32 0, i32 8
  %88 = ptrtoint ptr %chiprev49 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %chiprev49, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.else.if.end51_crit_edge, %do.end24
  %89 = ptrtoint ptr %revinfo17 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call18, ptr %revinfo17, align 4
  %chip52 = getelementptr inbounds %struct.brcmf_bus, ptr %16, i32 0, i32 7
  %90 = ptrtoint ptr %chip52 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chip52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool53.not = icmp eq i32 %91, 0
  br i1 %tobool53.not, label %if.end51.if.end60_crit_edge, label %if.then54

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %chiprev56 = getelementptr inbounds %struct.brcmf_bus, ptr %16, i32 0, i32 8
  %92 = ptrtoint ptr %chiprev56 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %chiprev56, align 4
  %chipname57 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 11
  %call59 = call ptr @brcmf_chip_name(i32 noundef %91, i32 noundef %93, ptr noundef %chipname57, i32 noundef 12) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.end51.if.end60_crit_edge
  %94 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ifp, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clm.i) #12
  %98 = ptrtoint ptr %clm.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %clm.i, align 4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %clm_name.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #12
  %99 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %status.i, align 4, !annotation !220
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, ptr noundef nonnull @.str.49) #12
  %100 = call ptr @memset(ptr %clm_name.i, i32 0, i32 320)
  %ops.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %97, i32 0, i32 11
  %101 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i, align 4
  %get_fwname.i.i = getelementptr inbounds %struct.brcmf_bus_ops, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %get_fwname.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %get_fwname.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.brcmf_bus, ptr %97, i32 0, i32 2
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i, align 4
  %call.i.i = call i32 %104(ptr noundef %106, ptr noundef nonnull @.str.50, ptr noundef nonnull %clm_name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %95, i32 0, i32 2
  %107 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %108, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, i32 noundef %call.i.i) #15
  br label %brcmf_c_process_clm_blob.exit

if.end.i:                                         ; preds = %if.end60
  %109 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i.i, align 4
  %call11.i = call i32 @firmware_request_nowarn(ptr noundef nonnull %clm.i, ptr noundef nonnull %clm_name.i, ptr noundef %110) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end17.i, label %brcmf_c_process_clm_blob.exit.thread

brcmf_c_process_clm_blob.exit.thread:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, ptr noundef nonnull @.str.52, i32 noundef %call11.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #12
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %clm_name.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clm.i) #12
  br label %if.end72

if.end17.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %111 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %111, i32 noundef 3520, i32 noundef 1415) #16
  %tobool19.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool19.not.i, label %if.end17.i.done.i_crit_edge, label %if.end21.i

if.end17.i.done.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %done.i

if.end21.i:                                       ; preds = %if.end17.i
  %112 = ptrtoint ptr %clm.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clm.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %data.i = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %call7.i.i.i, i32 0, i32 4
  %dload_type.i.i = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %call7.i.i.i, i32 0, i32 1
  %len3.i.i = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %call7.i.i.i, i32 0, i32 2
  %crc.i.i = getelementptr inbounds %struct.brcmf_dload_data_le, ptr %call7.i.i.i, i32 0, i32 3
  br label %do.body22.i

do.body22.i:                                      ; preds = %land.rhs.i.do.body22.i_crit_edge, %if.end21.i
  %datalen.0.i = phi i32 [ %115, %if.end21.i ], [ %sub.i, %land.rhs.i.do.body22.i_crit_edge ]
  %cumulative_len.0.i = phi i32 [ 0, %if.end21.i ], [ %add.i, %land.rhs.i.do.body22.i_crit_edge ]
  %dl_flag.0.i = phi i16 [ 2, %if.end21.i ], [ %130, %land.rhs.i.do.body22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1400, i32 %datalen.0.i)
  %cmp.i = icmp ugt i32 %datalen.0.i, 1400
  %116 = or i16 %dl_flag.0.i, 4
  %117 = call i32 @llvm.umin.i32(i32 %datalen.0.i, i32 1400) #12
  %dl_flag.1.i = select i1 %cmp.i, i16 %dl_flag.0.i, i16 %116
  %118 = ptrtoint ptr %clm.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clm.i, align 4
  %data27.i = getelementptr inbounds %struct.firmware, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %data27.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data27.i, align 4
  %add.ptr.i = getelementptr i8, ptr %121, i32 %cumulative_len.0.i
  %122 = call ptr @memcpy(ptr %data.i, ptr %add.ptr.i, i32 %117)
  %123 = or i16 %dl_flag.1.i, 4096
  %124 = call i16 @llvm.bswap.i16(i16 %123) #12
  %125 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %call7.i.i.i, align 8
  %126 = ptrtoint ptr %dload_type.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 512, ptr %dload_type.i.i, align 2
  %127 = call i32 @llvm.bswap.i32(i32 %117) #12
  %128 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %len3.i.i, align 4
  %129 = ptrtoint ptr %crc.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %crc.i.i, align 8
  %sub.i.i = add nuw nsw i32 %117, 15
  %call.i103.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.61, ptr noundef nonnull %call7.i.i.i, i32 noundef %sub.i.i) #12
  %sub.i = sub i32 %datalen.0.i, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp32.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp32.not.i, label %do.end36.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body22.i
  %add.i = add i32 %cumulative_len.0.i, %117
  %130 = and i16 %dl_flag.1.i, -3
  %cond.i = icmp eq i32 %call.i103.i, 0
  br i1 %cond.i, label %land.rhs.i.do.body22.i_crit_edge, label %land.rhs.i.do.end42.i_crit_edge

land.rhs.i.do.end42.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i

land.rhs.i.do.body22.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body22.i

do.end36.i:                                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool37.not.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool37.not.i, label %do.end36.i.if.end64.i_crit_edge, label %do.end36.i.do.end42.i_crit_edge

do.end36.i.do.end42.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42.i

do.end36.i.if.end64.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

do.end42.i:                                       ; preds = %do.end36.i.do.end42.i_crit_edge, %land.rhs.i.do.end42.i_crit_edge
  %wiphy43.i = getelementptr inbounds %struct.brcmf_pub, ptr %95, i32 0, i32 2
  %131 = ptrtoint ptr %wiphy43.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wiphy43.i, align 4
  %dev44.i = getelementptr inbounds %struct.wiphy, ptr %132, i32 0, i32 56
  %133 = ptrtoint ptr %clm.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %clm.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, i32 noundef %136, i32 noundef %call.i103.i) #15
  %call48.i = call i32 @brcmf_fil_iovar_int_get(ptr noundef %ifp, ptr noundef nonnull @.str.56, ptr noundef nonnull %status.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %do.body60.i, label %do.end54.i

do.end54.i:                                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %wiphy43.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wiphy43.i, align 4
  %dev56.i = getelementptr inbounds %struct.wiphy, ptr %138, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, i32 noundef %call48.i) #15
  br label %if.end64.i

do.body60.i:                                      ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %status.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_c_process_clm_blob, ptr noundef nonnull @.str.60, i32 noundef %140) #12
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.body60.i, %do.end54.i, %do.end36.i.if.end64.i_crit_edge
  %err.0.i = phi i32 [ 0, %do.end36.i.if.end64.i_crit_edge ], [ -5, %do.body60.i ], [ -5, %do.end54.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %done.i

done.i:                                           ; preds = %if.end64.i, %if.end17.i.done.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %if.end64.i ], [ -12, %if.end17.i.done.i_crit_edge ]
  %141 = ptrtoint ptr %clm.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %clm.i, align 4
  call void @release_firmware(ptr noundef %142) #12
  br label %brcmf_c_process_clm_blob.exit

brcmf_c_process_clm_blob.exit:                    ; preds = %done.i, %do.end6.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end6.i ], [ %err.1.i, %done.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #12
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %clm_name.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clm.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp62 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp62, label %do.end67, label %brcmf_c_process_clm_blob.exit.if.end72_crit_edge

brcmf_c_process_clm_blob.exit.if.end72_crit_edge: ; preds = %brcmf_c_process_clm_blob.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.end67:                                         ; preds = %brcmf_c_process_clm_blob.exit
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy68 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %143 = ptrtoint ptr %wiphy68 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %wiphy68, align 4
  %dev69 = getelementptr inbounds %struct.wiphy, ptr %144, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i) #15
  br label %done

if.end72:                                         ; preds = %brcmf_c_process_clm_blob.exit.if.end72_crit_edge, %brcmf_c_process_clm_blob.exit.thread
  %145 = call ptr @memset(ptr %buf, i32 0, i32 256)
  %call75 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %ifp, ptr noundef nonnull @.str.16, ptr noundef nonnull %buf, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end81, label %if.end86

do.end81:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy82 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %146 = ptrtoint ptr %wiphy82 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wiphy82, align 4
  %dev83 = getelementptr inbounds %struct.wiphy, ptr %147, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef %call75) #15
  br label %done

if.end86:                                         ; preds = %if.end72
  %148 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %buf, ptr %ptr, align 4
  %call88 = call ptr @strsep(ptr noundef nonnull %ptr, ptr noundef nonnull @.str.20) #12
  %chipname90 = getelementptr inbounds %struct.brcmf_pub, ptr %14, i32 0, i32 18, i32 11
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.21, ptr noundef %chipname90, ptr noundef nonnull %buf) #12
  %call96 = call ptr @strrchr(ptr noundef nonnull %buf, i32 noundef 32)
  %add.ptr = getelementptr i8, ptr %call96, i32 1
  %149 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr, ptr %ptr, align 4
  %150 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ifp, align 4
  %fwver = getelementptr inbounds %struct.brcmf_pub, ptr %151, i32 0, i32 6
  %call99 = call i32 @strlcpy(ptr noundef %fwver, ptr noundef %add.ptr, i32 noundef 32) #12
  %152 = call ptr @memset(ptr %buf, i32 0, i32 256)
  %call102 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %ifp, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.else108, label %do.body105

do.body105:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.23, i32 noundef %call102)
  br label %if.end117

if.else108:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ifp, align 4
  %clmver111 = getelementptr inbounds %struct.brcmf_pub, ptr %154, i32 0, i32 24
  %155 = call ptr @memcpy(ptr %clmver111, ptr %buf, i32 256)
  %call113 = call ptr @strreplace(ptr noundef nonnull %buf, i8 noundef zeroext 10, i8 noundef zeroext 32) #12
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.24, ptr noundef nonnull %buf)
  br label %if.end117

if.end117:                                        ; preds = %if.else108, %do.body105
  %call118 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.25, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end129, label %do.end124

do.end124:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy125 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %156 = ptrtoint ptr %wiphy125 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %wiphy125, align 4
  %dev126 = getelementptr inbounds %struct.wiphy, ptr %157, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.8) #15
  br label %done

if.end129:                                        ; preds = %if.end117
  %158 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %join_pref_params.i) #12
  %160 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %join_pref_params.i, i32 0, i32 1
  %161 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %join_pref_params.i, i32 0, i32 2
  %162 = getelementptr inbounds %struct.brcmf_join_pref_params, ptr %join_pref_params.i, i32 0, i32 3
  %163 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params.i, i32 0, i32 1
  %164 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params.i, i32 0, i32 1, i32 1
  %165 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params.i, i32 0, i32 1, i32 2
  %166 = getelementptr inbounds [2 x %struct.brcmf_join_pref_params], ptr %join_pref_params.i, i32 0, i32 1, i32 3
  %167 = ptrtoint ptr %join_pref_params.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 4, ptr %join_pref_params.i, align 1
  %168 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 2, ptr %160, align 1
  %169 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 8, ptr %161, align 1
  %170 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %162, align 1
  %171 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %163, align 1
  %172 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %164, align 1
  %173 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %165, align 1
  %174 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %166, align 1
  %call.i = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str, ptr noundef nonnull %join_pref_params.i, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i257 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i257, label %if.end129.brcmf_c_set_joinpref_default.exit_crit_edge, label %do.end.i

if.end129.brcmf_c_set_joinpref_default.exit_crit_edge: ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_c_set_joinpref_default.exit

do.end.i:                                         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy.i258 = getelementptr inbounds %struct.brcmf_pub, ptr %159, i32 0, i32 2
  %175 = ptrtoint ptr %wiphy.i258 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %wiphy.i258, align 4
  %dev.i259 = getelementptr inbounds %struct.wiphy, ptr %176, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i259, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call.i) #15
  br label %brcmf_c_set_joinpref_default.exit

brcmf_c_set_joinpref_default.exit:                ; preds = %do.end.i, %if.end129.brcmf_c_set_joinpref_default.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %join_pref_params.i) #12
  %call131 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %ifp, ptr noundef nonnull @.str.29, ptr noundef nonnull %eventmask, i32 noundef 18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end142, label %do.end137

do.end137:                                        ; preds = %brcmf_c_set_joinpref_default.exit
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy138 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %177 = ptrtoint ptr %wiphy138 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wiphy138, align 4
  %dev139 = getelementptr inbounds %struct.wiphy, ptr %178, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev139, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8, i32 noundef %call131) #15
  br label %done

if.end142:                                        ; preds = %brcmf_c_set_joinpref_default.exit
  %179 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %2, align 1
  %181 = or i8 %180, 64
  store i8 %181, ptr %2, align 1
  %call146 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef nonnull @.str.29, ptr noundef nonnull %eventmask, i32 noundef 18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end157, label %do.end152

do.end152:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy153 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %182 = ptrtoint ptr %wiphy153 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wiphy153, align 4
  %dev154 = getelementptr inbounds %struct.wiphy, ptr %183, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.8, i32 noundef %call146) #15
  br label %done

if.end157:                                        ; preds = %if.end142
  %call158 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %ifp, i32 noundef 185, i32 noundef 40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end169, label %do.end164

do.end164:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy165 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %184 = ptrtoint ptr %wiphy165 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wiphy165, align 4
  %dev166 = getelementptr inbounds %struct.wiphy, ptr %185, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev166, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.8, i32 noundef %call158) #15
  br label %done

if.end169:                                        ; preds = %if.end157
  %call170 = call i32 @brcmf_fil_cmd_int_set(ptr noundef %ifp, i32 noundef 187, i32 noundef 40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end181, label %do.end176

do.end176:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #14
  %wiphy177 = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %186 = ptrtoint ptr %wiphy177 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wiphy177, align 4
  %dev178 = getelementptr inbounds %struct.wiphy, ptr %187, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev178, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef %call170) #15
  br label %done

if.end181:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #14
  %call182 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %ifp, ptr noundef nonnull @.str.42, i32 noundef 1) #12
  br label %done

done:                                             ; preds = %if.end181, %do.end176, %do.end164, %do.end152, %do.end137, %do.end124, %do.end81, %do.end67, %do.end
  %err.0 = phi i32 [ %call, %do.end ], [ %retval.0.i, %do.end67 ], [ %call75, %do.end81 ], [ %call118, %do.end124 ], [ %call131, %do.end137 ], [ %call146, %do.end152 ], [ %call158, %do.end164 ], [ %call170, %do.end176 ], [ 0, %if.end181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %revinfo) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %eventmask) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_data_get(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_name(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__brcmf_dbg(i32 noundef %level, ptr noundef %func, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #12
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %1 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt, ptr %vaf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !220
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %4 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %4, %level
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__brcmf_dbg.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__brcmf_dbg, %if.end8)) #12
          to label %if.then7 [label %if.end8], !srcloc !221

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__brcmf_dbg.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.46, ptr noundef %func, ptr noundef nonnull %vaf) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %entry.if.end8_crit_edge
  call fastcc void @trace_brcmf_dbg(i32 noundef %level, ptr noundef %func, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_cmd_int_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcmf_dbg(i32 noundef %level, ptr noundef %func, ptr noundef %vaf) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_dbg, i32 0, i32 1), ptr blockaddress(@trace_brcmf_dbg, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !221

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !210) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !222

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !210) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !223
  %call42 = tail call i32 @__traceiter_brcmf_dbg(ptr noundef null, i32 noundef %level, ptr noundef %func, ptr noundef %vaf) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !224
  %13 = tail call i32 @llvm.read_register.i32(metadata !210) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !210) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !222

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !210) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !225
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_dbg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_dbg, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_brcmf_dbg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_brcmf_dbg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.62, i32 noundef 63, ptr noundef nonnull @.str.63) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !226
  %31 = tail call i32 @llvm.read_register.i32(metadata !210) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_get_module_param(ptr noundef %dev, i32 noundef %bus_type, i32 noundef %chip, i32 noundef %chiprev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_get_module_param, ptr noundef nonnull @.str.47, i32 noundef %bus_type, i32 noundef %chip, i32 noundef %chiprev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 56) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @brcmf_p2p_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1 = icmp ne i32 %1, 0
  %frombool = zext i1 %tobool1 to i8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %call7.i.i, align 8
  %3 = load i32, ptr @brcmf_feature_disable, align 4
  %feature_disable = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %feature_disable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %feature_disable, align 4
  %5 = load i32, ptr @brcmf_fcmode, align 4
  %fcmode = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %fcmode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fcmode, align 8
  %7 = load i32, ptr @brcmf_roamoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3 = icmp ne i32 %7, 0
  %roamoff = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 3
  %frombool6 = zext i1 %tobool3 to i8
  %8 = ptrtoint ptr %roamoff to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool6, ptr %roamoff, align 4
  %9 = load i32, ptr @brcmf_iapp_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7 = icmp ne i32 %9, 0
  %iapp = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 4
  %frombool10 = zext i1 %tobool7 to i8
  %10 = ptrtoint ptr %iapp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool10, ptr %iapp, align 1
  %11 = load i32, ptr @brcmf_ignore_probe_fail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11 = icmp ne i32 %11, 0
  %ignore_probe_fail = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 5
  %frombool14 = zext i1 %tobool11 to i8
  %12 = ptrtoint ptr %ignore_probe_fail to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool14, ptr %ignore_probe_fail, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bus_type)
  %cmp = icmp eq i32 %bus_type, 0
  br i1 %cmp, label %if.then15, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = load i32, ptr @brcmf_sdiod_txglomsz, align 4
  %bus = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bus, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  %15 = load ptr, ptr @brcmfmac_pdata, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end16.if.then41_crit_edge, label %for.cond.preheader

if.end16.if.then41_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

for.cond.preheader:                               ; preds = %if.end16
  %device_count = getelementptr inbounds %struct.brcmfmac_platform_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %device_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1975 = icmp sgt i32 %17, 0
  br i1 %cmp1975, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.then41_crit_edge

for.cond.preheader.if.then41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.076 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bus_type20 = getelementptr %struct.brcmfmac_platform_data, ptr %15, i32 0, i32 4, i32 %i.076, i32 2
  %18 = ptrtoint ptr %bus_type20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_type20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %bus_type)
  %cmp21 = icmp eq i32 %19, %bus_type
  br i1 %cmp21, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.brcmfmac_platform_data, ptr %15, i32 0, i32 4, i32 %i.076
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %chip)
  %cmp22 = icmp eq i32 %21, %chip
  br i1 %cmp22, label %land.lhs.true23, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true
  %rev = getelementptr %struct.brcmfmac_platform_data, ptr %15, i32 0, i32 4, i32 %i.076, i32 1
  %22 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %chiprev)
  %cmp24 = icmp eq i32 %23, %chiprev
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp26 = icmp eq i32 %23, -1
  %or.cond = or i1 %cmp24, %cmp26
  br i1 %or.cond, label %do.body28, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body28:                                        ; preds = %land.lhs.true23
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_get_module_param, ptr noundef nonnull @.str.48)
  %country_codes = getelementptr %struct.brcmfmac_platform_data, ptr %15, i32 0, i32 4, i32 %i.076, i32 4
  %24 = ptrtoint ptr %country_codes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %country_codes, align 4
  %country_codes31 = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %country_codes31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %country_codes31, align 8
  %27 = ptrtoint ptr %bus_type20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus_type20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp33 = icmp eq i32 %28, 0
  br i1 %cmp33, label %if.then34, label %do.body28.cleanup_crit_edge

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  %bus35 = getelementptr inbounds %struct.brcmf_mp_device, ptr %call7.i.i, i32 0, i32 8
  %bus36 = getelementptr %struct.brcmfmac_platform_data, ptr %15, i32 0, i32 4, i32 %i.076, i32 5
  %29 = call ptr @memcpy(ptr %bus35, ptr %bus36, i32 32)
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true23.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.if.then41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.then41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.then41:                                        ; preds = %for.inc.if.then41_crit_edge, %for.cond.preheader.if.then41_crit_edge, %if.end16.if.then41_crit_edge
  tail call void @brcmf_of_probe(ptr noundef %dev, i32 noundef %bus_type, ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then34, %do.body28.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_of_probe(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_release_module_param(ptr noundef %module_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %module_param) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcmfmac_module_exit() #9 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @brcmf_core_exit() #15
  %0 = load ptr, ptr @brcmfmac_pdata, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmf_pd) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @brcmf_core_exit() local_unnamed_addr #3 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmfmac_module_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmf_pd, ptr noundef nonnull @brcmf_common_pd_probe, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call)
  %cmp = icmp eq i32 %call, -19
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmfmac_module_init, ptr noundef nonnull @.str.65)
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %call.i = tail call i32 @strlcpy(ptr noundef nonnull @brcmf_mp_global, ptr noundef nonnull @brcmf_firmware_path, i32 noundef 256) #12
  %0 = load ptr, ptr @brcmfmac_pdata, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.brcmf_mp_attach.exit_crit_edge, label %land.lhs.true.i

if.end.brcmf_mp_attach.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_mp_attach.exit

land.lhs.true.i:                                  ; preds = %if.end
  %fw_alternative_path.i = getelementptr inbounds %struct.brcmfmac_platform_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %fw_alternative_path.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_alternative_path.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.brcmf_mp_attach.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.brcmf_mp_attach.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_mp_attach.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %3 = load i8, ptr @brcmf_mp_global, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true2.i.brcmf_mp_attach.exit_crit_edge

land.lhs.true2.i.brcmf_mp_attach.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_mp_attach.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 @strlcpy(ptr noundef nonnull @brcmf_mp_global, ptr noundef nonnull %2, i32 noundef 256) #12
  br label %brcmf_mp_attach.exit

brcmf_mp_attach.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.brcmf_mp_attach.exit_crit_edge, %land.lhs.true.i.brcmf_mp_attach.exit_crit_edge, %if.end.brcmf_mp_attach.exit_crit_edge
  %call1 = tail call i32 @brcmf_core_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %brcmf_mp_attach.exit.if.end6_crit_edge, label %if.then2

brcmf_mp_attach.exit.if.end6_crit_edge:           ; preds = %brcmf_mp_attach.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %brcmf_mp_attach.exit
  %4 = load ptr, ptr @brcmfmac_pdata, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then4

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmf_pd) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge, %brcmf_mp_attach.exit.if.end6_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcmf_dbg(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_common_pd_remove(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_common_pd_remove, ptr noundef nonnull @.str.49)
  %0 = load ptr, ptr @brcmfmac_pdata, align 4
  %power_off = getelementptr inbounds %struct.brcmfmac_platform_data, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %power_off to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %power_off, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %2() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_common_pd_probe(ptr nocapture noundef readonly %pdev) #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_common_pd_probe, ptr noundef nonnull @.str.49)
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  store ptr %1, ptr @brcmfmac_pdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @brcmf_core_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !170, !171, !173, !175, !176, !177, !179, !181, !182, !183, !185, !187, !188, !189, !191, !193, !195, !196, !197, !198, !200, !201, !203, !205, !207, !208}
!llvm.named.register.sp = !{!210}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description355, !3, !"__UNIQUE_ID_description355", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file356, !5, !"__UNIQUE_ID_file356", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license357, !5, !"__UNIQUE_ID_license357", i1 false, i1 false}
!7 = !{ptr @__param_txglomsz, !8, !"__param_txglomsz", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 37, i32 1}
!9 = !{ptr @__UNIQUE_ID_txglomsztype358, !8, !"__UNIQUE_ID_txglomsztype358", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_txglomsz359, !11, !"__UNIQUE_ID_txglomsz359", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 38, i32 1}
!12 = !{ptr @__param_debug, !13, !"__param_debug", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 42, i32 1}
!14 = !{ptr @__UNIQUE_ID_debugtype360, !13, !"__UNIQUE_ID_debugtype360", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_debug361, !16, !"__UNIQUE_ID_debug361", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 43, i32 1}
!17 = !{ptr @__param_p2pon, !18, !"__param_p2pon", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 46, i32 1}
!19 = !{ptr @__UNIQUE_ID_p2pontype362, !18, !"__UNIQUE_ID_p2pontype362", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_p2pon363, !21, !"__UNIQUE_ID_p2pon363", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 47, i32 1}
!22 = !{ptr @__param_feature_disable, !23, !"__param_feature_disable", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 50, i32 1}
!24 = !{ptr @__UNIQUE_ID_feature_disabletype364, !23, !"__UNIQUE_ID_feature_disabletype364", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_feature_disable365, !26, !"__UNIQUE_ID_feature_disable365", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 51, i32 1}
!27 = !{ptr @__param_alternative_fw_path, !28, !"__param_alternative_fw_path", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 54, i32 1}
!29 = !{ptr @__UNIQUE_ID_alternative_fw_pathtype366, !28, !"__UNIQUE_ID_alternative_fw_pathtype366", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alternative_fw_path367, !31, !"__UNIQUE_ID_alternative_fw_path367", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 56, i32 1}
!32 = !{ptr @__param_fcmode, !33, !"__param_fcmode", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 59, i32 1}
!34 = !{ptr @__UNIQUE_ID_fcmodetype368, !33, !"__UNIQUE_ID_fcmodetype368", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_fcmode369, !36, !"__UNIQUE_ID_fcmode369", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 60, i32 1}
!37 = !{ptr @__param_roamoff, !38, !"__param_roamoff", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 63, i32 1}
!39 = !{ptr @__UNIQUE_ID_roamofftype370, !38, !"__UNIQUE_ID_roamofftype370", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_roamoff371, !41, !"__UNIQUE_ID_roamoff371", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 64, i32 1}
!42 = !{ptr @__param_iapp, !43, !"__param_iapp", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 67, i32 1}
!44 = !{ptr @__UNIQUE_ID_iapptype372, !43, !"__UNIQUE_ID_iapptype372", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_iapp373, !46, !"__UNIQUE_ID_iapp373", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 68, i32 1}
!47 = !{ptr @__param_ignore_probe_fail, !48, !"__param_ignore_probe_fail", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 73, i32 1}
!49 = !{ptr @__UNIQUE_ID_ignore_probe_failtype374, !48, !"__UNIQUE_ID_ignore_probe_failtype374", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_ignore_probe_fail375, !51, !"__UNIQUE_ID_ignore_probe_fail375", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 74, i32 1}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 96, i32 38}
!54 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 99, i32 3}
!56 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @brcmf_c_set_joinpref_default._entry, !55, !"_entry", i1 false, i1 false}
!61 = !{ptr @brcmf_c_set_joinpref_default._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 206, i32 38}
!64 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 209, i32 3}
!66 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @brcmf_c_preinit_dcmds._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.10, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 221, i32 3}
!71 = !{ptr @brcmf_c_preinit_dcmds._entry.9, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.11, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 222, i32 25}
!75 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 255, i32 3}
!77 = !{ptr @brcmf_c_preinit_dcmds._entry.13, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.15, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 261, i32 38}
!81 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 263, i32 3}
!83 = !{ptr @brcmf_c_preinit_dcmds._entry.17, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.19, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 268, i32 15}
!87 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 271, i32 2}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 279, i32 38}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 281, i32 3}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 292, i32 3}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 296, i32 37}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 298, i32 3}
!99 = !{ptr @brcmf_c_preinit_dcmds._entry.26, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.28, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 305, i32 38}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 308, i32 3}
!105 = !{ptr @brcmf_c_preinit_dcmds._entry.30, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.32, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 315, i32 3}
!109 = !{ptr @brcmf_c_preinit_dcmds._entry.33, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.35, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 323, i32 3}
!113 = !{ptr @brcmf_c_preinit_dcmds._entry.36, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.38, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 332, i32 3}
!117 = !{ptr @brcmf_c_preinit_dcmds._entry.39, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @brcmf_c_preinit_dcmds._entry_ptr.41, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 338, i32 37}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 373, i32 3}
!123 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @__brcmf_dbg.__UNIQUE_ID_ddebug376, !122, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!126 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @__func__.brcmf_get_module_param, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 404, i32 2}
!129 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 432, i32 5}
!132 = !{ptr @__initcall__kmod_brcmfmac__377_515_brcmfmac_module_init6, !133, !"__initcall__kmod_brcmfmac__377_515_brcmfmac_module_init6", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 515, i32 1}
!134 = !{ptr @__exitcall_brcmfmac_module_exit, !135, !"__exitcall_brcmfmac_module_exit", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 516, i32 1}
!136 = !{ptr @brcmf_msg_level, !137, !"brcmf_msg_level", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 41, i32 5}
!138 = !{ptr @brcmf_p2p_enable, !139, !"brcmf_p2p_enable", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 45, i32 12}
!140 = !{ptr @brcmf_feature_disable, !141, !"brcmf_feature_disable", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 49, i32 12}
!142 = !{ptr @brcmf_fcmode, !143, !"brcmf_fcmode", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 58, i32 12}
!144 = !{ptr @brcmf_roamoff, !145, !"brcmf_roamoff", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 62, i32 12}
!146 = !{ptr @brcmf_iapp_enable, !147, !"brcmf_iapp_enable", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 66, i32 12}
!148 = !{ptr @brcmf_ignore_probe_fail, !149, !"brcmf_ignore_probe_fail", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 72, i32 12}
!150 = !{ptr @brcmfmac_pdata, !151, !"brcmfmac_pdata", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 77, i32 39}
!152 = !{ptr @brcmf_mp_global, !153, !"brcmf_mp_global", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 78, i32 26}
!154 = !{ptr @__param_str_txglomsz, !8, !"__param_str_txglomsz", i1 false, i1 false}
!155 = !{ptr @brcmf_sdiod_txglomsz, !156, !"brcmf_sdiod_txglomsz", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 36, i32 12}
!157 = !{ptr @__param_str_debug, !13, !"__param_str_debug", i1 false, i1 false}
!158 = !{ptr @__param_str_p2pon, !18, !"__param_str_p2pon", i1 false, i1 false}
!159 = !{ptr @__param_str_feature_disable, !23, !"__param_str_feature_disable", i1 false, i1 false}
!160 = !{ptr @__param_str_alternative_fw_path, !28, !"__param_str_alternative_fw_path", i1 false, i1 false}
!161 = !{ptr @__param_string_alternative_fw_path, !28, !"__param_string_alternative_fw_path", i1 false, i1 false}
!162 = !{ptr @brcmf_firmware_path, !163, !"brcmf_firmware_path", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 53, i32 13}
!164 = !{ptr @__param_str_fcmode, !33, !"__param_str_fcmode", i1 false, i1 false}
!165 = !{ptr @__param_str_roamoff, !38, !"__param_str_roamoff", i1 false, i1 false}
!166 = !{ptr @__param_str_iapp, !43, !"__param_str_iapp", i1 false, i1 false}
!167 = !{ptr @__param_str_ignore_probe_fail, !48, !"__param_str_ignore_probe_fail", i1 false, i1 false}
!168 = !{ptr @__func__.brcmf_c_process_clm_blob, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 134, i32 2}
!170 = !{ptr @.str.49, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.50, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 137, i32 34}
!173 = !{ptr @.str.51, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 139, i32 3}
!175 = !{ptr @brcmf_c_process_clm_blob._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @brcmf_c_process_clm_blob._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.52, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 145, i32 3}
!179 = !{ptr @.str.54, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 176, i32 3}
!181 = !{ptr @brcmf_c_process_clm_blob._entry.53, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @brcmf_c_process_clm_blob._entry_ptr.55, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.56, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 179, i32 38}
!185 = !{ptr @.str.58, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 181, i32 4}
!187 = !{ptr @brcmf_c_process_clm_blob._entry.57, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @brcmf_c_process_clm_blob._entry_ptr.59, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 183, i32 4}
!191 = !{ptr @.str.61, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 115, i32 38}
!193 = distinct !{null, !194, !"__already_done", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h", i32 47, i32 1}
!195 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!196 = distinct !{null, !194, !"__warned", i1 false, i1 false}
!197 = !{ptr @.str.63, !194, !"<string literal>", i1 false, i1 false}
!198 = distinct !{null, !199, !"__already_done", i1 false, i1 false}
!199 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!200 = !{ptr @.str.64, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @brcmf_pd, !202, !"brcmf_pd", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 479, i32 31}
!203 = !{ptr @__func__.brcmf_common_pd_remove, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 471, i32 2}
!205 = !{ptr @__func__.brcmfmac_module_init, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 493, i32 3}
!207 = !{ptr @.str.65, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @__func__.brcmf_common_pd_probe, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/common.c", i32 459, i32 2}
!210 = !{!"sp"}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{!"auto-init"}
!221 = !{i64 2148703847, i64 2148703852, i64 2148703865, i64 2148703909, i64 2148703943, i64 2148703964}
!222 = !{!"branch_weights", i32 2000, i32 1}
!223 = !{i64 2157196563}
!224 = !{i64 2157196776}
!225 = !{i64 2149608975}
!226 = !{i64 2149610011}
