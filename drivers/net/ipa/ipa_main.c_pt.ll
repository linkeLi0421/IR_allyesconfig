; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_main.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipa_data = type { i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipa_qsb_data = type { i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@ipa_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IPA driver setup completed successfully\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipa_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/ipa/ipa_main.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_setup._entry_ptr = internal global ptr @ipa_setup._entry, section ".printk_index", align 4
@__initcall__kmod_ipa__349_870_ipa_driver_init6 = internal global ptr @ipa_driver_init, section ".initcall6.init", align 4
@ipa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ipa_probe, ptr @ipa_remove, ptr @ipa_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ipa_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipa_attribute_groups, ptr @ipa_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ipa_driver_exit = internal global ptr @ipa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file350 = internal constant [29 x i8] c"ipa.file=drivers/net/ipa/ipa\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [19 x i8] c"ipa.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [54 x i8] c"ipa.description=Qualcomm IP Accelerator device driver\00", section ".modinfo", align 1
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipa\00", [28 x i8] zeroinitializer }, align 32
@ipa_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-ipa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipa_data_v3_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-ipa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipa_data_v3_5_1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-ipa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipa_data_v4_2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-ipa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipa_data_v4_5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-ipa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipa_data_v4_9 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-ipa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipa_data_v4_11 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ipa_attribute_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @ipa_attribute_group, ptr @ipa_feature_attribute_group, ptr @ipa_modem_attribute_group, ptr null], [16 x i8] zeroinitializer }, align 32
@ipa_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@ipa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 677, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"matched hardware not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipa_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ipa_probe._entry_ptr = internal global ptr @ipa_probe._entry, section ".printk_index", align 4
@ipa_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 682, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid IPA version\0A\00", [43 x i8] zeroinitializer }, align 32
@ipa_probe._entry_ptr.11 = internal global ptr @ipa_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"modem-init\00", [21 x i8] zeroinitializer }, align 32
@ipa_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 750, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IPA driver initialized\00", [41 x i8] zeroinitializer }, align 32
@ipa_probe._entry_ptr.15 = internal global ptr @ipa_probe._entry.13, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 501, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DT error getting \22memory-region\22 property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipa_firmware_load\00", [46 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry_ptr = internal global ptr @ipa_firmware_load._entry, section ".printk_index", align 4
@ipa_firmware_load._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 509, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error %d getting \22memory-region\22 resource\0A\00", [53 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry_ptr.22 = internal global ptr @ipa_firmware_load._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@ipa_firmware_load.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.24, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error %d getting \22firmware-name\22 resource\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipa_fws.mdt\00", [20 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 523, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error %d requesting \22%s\22\0A\00", [38 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry_ptr.28 = internal global ptr @ipa_firmware_load._entry.26, section ".printk_index", align 4
@ipa_firmware_load._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 531, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to remap firmware memory\0A\00", [63 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry_ptr.31 = internal global ptr @ipa_firmware_load._entry.29, section ".printk_index", align 4
@ipa_firmware_load._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 538, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error %d loading \22%s\22\0A\00", [41 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry_ptr.34 = internal global ptr @ipa_firmware_load._entry.32, section ".printk_index", align 4
@ipa_firmware_load._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.2, i32 540, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error %d authenticating \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@ipa_firmware_load._entry_ptr.37 = internal global ptr @ipa_firmware_load._entry.35, section ".printk_index", align 4
@ipa_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 848, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"shutdown: remove returned %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipa_shutdown\00", [19 x i8] zeroinitializer }, align 32
@ipa_shutdown._entry_ptr = internal global ptr @ipa_shutdown._entry, section ".printk_index", align 4
@ipa_data_v3_1 = external dso_local constant %struct.ipa_data, align 4
@ipa_data_v3_5_1 = external dso_local constant %struct.ipa_data, align 4
@ipa_data_v4_2 = external dso_local constant %struct.ipa_data, align 4
@ipa_data_v4_5 = external dso_local constant %struct.ipa_data, align 4
@ipa_data_v4_9 = external dso_local constant %struct.ipa_data, align 4
@ipa_data_v4_11 = external dso_local constant %struct.ipa_data, align 4
@ipa_attribute_group = external dso_local constant %struct.attribute_group, align 4
@ipa_feature_attribute_group = external dso_local constant %struct.attribute_group, align 4
@ipa_modem_attribute_group = external dso_local constant %struct.attribute_group, align 4
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 145, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"ipa_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 858, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 863, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"ipa_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 549, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"ipa_attribute_groups\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 851, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 677, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 682, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 687, i32 51 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 750, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 87, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 499, i32 40 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 501, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 508, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 514, i32 46 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 516, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 518, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 523, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 531, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 538, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 540, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [30 x i8] c"../drivers/net/ipa/ipa_main.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 848, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_ipa_driver_exit, ptr @__initcall__kmod_ipa__349_870_ipa_driver_init6, ptr @ipa_driver_exit, ptr @ipa_firmware_load._entry, ptr @ipa_firmware_load._entry.20, ptr @ipa_firmware_load._entry.26, ptr @ipa_firmware_load._entry.29, ptr @ipa_firmware_load._entry.32, ptr @ipa_firmware_load._entry.35, ptr @ipa_firmware_load._entry_ptr, ptr @ipa_firmware_load._entry_ptr.22, ptr @ipa_firmware_load._entry_ptr.28, ptr @ipa_firmware_load._entry_ptr.31, ptr @ipa_firmware_load._entry_ptr.34, ptr @ipa_firmware_load._entry_ptr.37, ptr @ipa_probe._entry, ptr @ipa_probe._entry.13, ptr @ipa_probe._entry.9, ptr @ipa_probe._entry_ptr, ptr @ipa_probe._entry_ptr.11, ptr @ipa_probe._entry_ptr.15, ptr @ipa_setup._entry, ptr @ipa_setup._entry_ptr, ptr @ipa_shutdown._entry, ptr @ipa_shutdown._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ipa_driver, ptr @.str.5, ptr @ipa_match, ptr @ipa_attribute_groups, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @init_completion.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_attribute_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_firmware_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_firmware_load._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_firmware_load._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_firmware_load._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_firmware_load._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_firmware_load._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_setup(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call i32 @gsi_setup(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ipa_power_setup(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_gsi_teardown_crit_edge

if.end.err_gsi_teardown_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gsi_teardown

if.end5:                                          ; preds = %if.end
  tail call void @ipa_endpoint_setup(ptr noundef %ipa) #9
  %name_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 35
  %2 = ptrtoint ptr %name_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name_map, align 4
  %call6 = tail call i32 @ipa_endpoint_enable_one(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_endpoint_teardown_crit_edge

if.end5.err_endpoint_teardown_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_endpoint_teardown

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @ipa_mem_setup(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.err_command_disable_crit_edge

if.end9.err_command_disable_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_command_disable

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @ipa_table_setup(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_command_disable_crit_edge

if.end13.err_command_disable_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_command_disable

if.end17:                                         ; preds = %if.end13
  %arrayidx19 = getelementptr %struct.ipa, ptr %ipa, i32 0, i32 35, i32 1
  %4 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx19, align 4
  %call20 = tail call i32 @ipa_endpoint_enable_one(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end17.err_command_disable_crit_edge

if.end17.err_command_disable_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_command_disable

if.end23:                                         ; preds = %if.end17
  %endpoint_id = getelementptr inbounds %struct.ipa_endpoint, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %endpoint_id, align 4
  tail call void @ipa_endpoint_default_route_set(ptr noundef %ipa, i32 noundef %7) #9
  %call24 = tail call i32 @ipa_qmi_setup(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %err_default_route_clear

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %setup_complete = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 36
  %8 = ptrtoint ptr %setup_complete to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %setup_complete, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str) #12
  br label %cleanup

err_default_route_clear:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ipa_endpoint_default_route_clear(ptr noundef %ipa) #9
  tail call void @ipa_endpoint_disable_one(ptr noundef %5) #9
  br label %err_command_disable

err_command_disable:                              ; preds = %err_default_route_clear, %if.end17.err_command_disable_crit_edge, %if.end13.err_command_disable_crit_edge, %if.end9.err_command_disable_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end9.err_command_disable_crit_edge ], [ %call14, %if.end13.err_command_disable_crit_edge ], [ %call20, %if.end17.err_command_disable_crit_edge ], [ %call24, %err_default_route_clear ]
  tail call void @ipa_endpoint_disable_one(ptr noundef %3) #9
  br label %err_endpoint_teardown

err_endpoint_teardown:                            ; preds = %err_command_disable, %if.end5.err_endpoint_teardown_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.err_endpoint_teardown_crit_edge ], [ %ret.0, %err_command_disable ]
  tail call void @ipa_endpoint_teardown(ptr noundef %ipa) #9
  tail call void @ipa_power_teardown(ptr noundef %ipa) #9
  br label %err_gsi_teardown

err_gsi_teardown:                                 ; preds = %err_endpoint_teardown, %if.end.err_gsi_teardown_crit_edge
  %ret.2 = phi i32 [ %call2, %if.end.err_gsi_teardown_crit_edge ], [ %ret.1, %err_endpoint_teardown ]
  tail call void @gsi_teardown(ptr noundef %ipa) #9
  br label %cleanup

cleanup:                                          ; preds = %err_gsi_teardown, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_gsi_teardown ], [ 0, %if.end27 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_power_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_endpoint_enable_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_mem_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_table_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_default_route_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_qmi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_default_route_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_disable_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_power_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ipa_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipa_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ipa_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %1)
  %switch.i = icmp ult i32 %1, 11
  br i1 %switch.i, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i, null
  br i1 %tobool.i, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  %call11 = tail call zeroext i1 @qcom_scm_is_available() #9
  br i1 %call11, label %if.then10.if.end14_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then10.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %power_data = getelementptr inbounds %struct.ipa_data, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %power_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_data, align 4
  %call15 = tail call ptr @ipa_power_init(ptr noundef %dev1, ptr noundef %5) #9
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 20224, i32 noundef 3520, i32 noundef 3) #13
  %tobool21.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool21.not, label %if.end19.err_power_exit_crit_edge, label %if.end23

if.end19.err_power_exit_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_power_exit

if.end23:                                         ; preds = %if.end19
  %pdev24 = getelementptr inbounds %struct.ipa, ptr %call1.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %pdev24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev24, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i.i.i, ptr %driver_data.i, align 4
  %power25 = getelementptr inbounds %struct.ipa, ptr %call1.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %power25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %power25, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %version27 = getelementptr inbounds %struct.ipa, ptr %call1.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %version27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %version27, align 128
  %completion = getelementptr inbounds %struct.ipa, ptr %call1.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion, align 8
  %wait.i = getelementptr inbounds %struct.ipa, ptr %call1.i.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #9
  %call28 = tail call i32 @ipa_reg_init(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.err_kfree_ipa_crit_edge

if.end23.err_kfree_ipa_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree_ipa

if.end31:                                         ; preds = %if.end23
  %mem_data = getelementptr inbounds %struct.ipa_data, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %mem_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem_data, align 4
  %call32 = tail call i32 @ipa_mem_init(ptr noundef nonnull %call1.i.i.i, ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.err_reg_exit_crit_edge

if.end31.err_reg_exit_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_reg_exit

if.end35:                                         ; preds = %if.end31
  %16 = ptrtoint ptr %version27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version27, align 128
  %endpoint_count = getelementptr inbounds %struct.ipa_data, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %endpoint_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint_count, align 4
  %endpoint_data = getelementptr inbounds %struct.ipa_data, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %endpoint_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endpoint_data, align 4
  %call37 = tail call i32 @gsi_init(ptr noundef nonnull %call1.i.i.i, ptr noundef %pdev, i32 noundef %17, i32 noundef %19, ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.err_mem_exit_crit_edge

if.end35.err_mem_exit_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_mem_exit

if.end40:                                         ; preds = %if.end35
  %22 = ptrtoint ptr %endpoint_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %endpoint_count, align 4
  %24 = ptrtoint ptr %endpoint_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %endpoint_data, align 4
  %call43 = tail call i32 @ipa_endpoint_init(ptr noundef nonnull %call1.i.i.i, i32 noundef %23, ptr noundef %25) #9
  %filter_map = getelementptr inbounds %struct.ipa, ptr %call1.i.i.i, i32 0, i32 29
  %26 = ptrtoint ptr %filter_map to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call43, ptr %filter_map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool45.not = icmp eq i32 %call43, 0
  br i1 %tobool45.not, label %if.end40.err_gsi_exit_crit_edge, label %if.end47

if.end40.err_gsi_exit_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gsi_exit

if.end47:                                         ; preds = %if.end40
  %call48 = tail call i32 @ipa_table_init(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.err_endpoint_exit_crit_edge

if.end47.err_endpoint_exit_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_endpoint_exit

if.end51:                                         ; preds = %if.end47
  %call53 = tail call i32 @ipa_smp2p_init(ptr noundef nonnull %call1.i.i.i, i1 noundef zeroext %tobool.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.err_table_exit_crit_edge

if.end51.err_table_exit_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_table_exit

if.end56:                                         ; preds = %if.end51
  %call.i171 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp = icmp slt i32 %call.i171, 0
  br i1 %cmp, label %do.end69, label %if.end84.critedge, !prof !91

do.end69:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 743, i32 noundef 9, ptr noundef null) #9
  br label %err_power_put

if.end84.critedge:                                ; preds = %if.end56
  %call85 = tail call fastcc i32 @ipa_config(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %do.end91, label %if.end84.critedge.err_power_put_crit_edge

if.end84.critedge.err_power_put_crit_edge:        ; preds = %if.end84.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_power_put

do.end91:                                         ; preds = %if.end84.critedge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14) #12
  br i1 %tobool.i, label %do.end91.done_crit_edge, label %if.end94

do.end91.done_crit_edge:                          ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end94:                                         ; preds = %do.end91
  %call95 = tail call fastcc i32 @ipa_firmware_load(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.err_deconfig_crit_edge

if.end94.err_deconfig_crit_edge:                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_deconfig

if.end98:                                         ; preds = %if.end94
  %call99 = tail call i32 @ipa_setup(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end98.done_crit_edge, label %if.end98.err_deconfig_crit_edge

if.end98.err_deconfig_crit_edge:                  ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_deconfig

if.end98.done_crit_edge:                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

done:                                             ; preds = %if.end98.done_crit_edge, %do.end91.done_crit_edge
  %call.i172 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i172, ptr %last_busy.i, align 8
  %call.i173 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #9
  br label %cleanup

err_deconfig:                                     ; preds = %if.end98.err_deconfig_crit_edge, %if.end94.err_deconfig_crit_edge
  %ret.0 = phi i32 [ %call95, %if.end94.err_deconfig_crit_edge ], [ %call99, %if.end98.err_deconfig_crit_edge ]
  tail call fastcc void @ipa_deconfig(ptr noundef nonnull %call1.i.i.i)
  br label %err_power_put

err_power_put:                                    ; preds = %err_deconfig, %if.end84.critedge.err_power_put_crit_edge, %do.end69
  %ret.1 = phi i32 [ %call85, %if.end84.critedge.err_power_put_crit_edge ], [ %ret.0, %err_deconfig ], [ %call.i171, %do.end69 ]
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  tail call void @ipa_smp2p_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_table_exit

err_table_exit:                                   ; preds = %err_power_put, %if.end51.err_table_exit_crit_edge
  %ret.2 = phi i32 [ %call53, %if.end51.err_table_exit_crit_edge ], [ %ret.1, %err_power_put ]
  tail call void @ipa_table_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_endpoint_exit

err_endpoint_exit:                                ; preds = %err_table_exit, %if.end47.err_endpoint_exit_crit_edge
  %ret.3 = phi i32 [ %call48, %if.end47.err_endpoint_exit_crit_edge ], [ %ret.2, %err_table_exit ]
  tail call void @ipa_endpoint_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_gsi_exit

err_gsi_exit:                                     ; preds = %err_endpoint_exit, %if.end40.err_gsi_exit_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_endpoint_exit ], [ -22, %if.end40.err_gsi_exit_crit_edge ]
  tail call void @gsi_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_mem_exit

err_mem_exit:                                     ; preds = %err_gsi_exit, %if.end35.err_mem_exit_crit_edge
  %ret.5 = phi i32 [ %call37, %if.end35.err_mem_exit_crit_edge ], [ %ret.4, %err_gsi_exit ]
  tail call void @ipa_mem_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_reg_exit

err_reg_exit:                                     ; preds = %err_mem_exit, %if.end31.err_reg_exit_crit_edge
  %ret.6 = phi i32 [ %call32, %if.end31.err_reg_exit_crit_edge ], [ %ret.5, %err_mem_exit ]
  tail call void @ipa_reg_exit(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_kfree_ipa

err_kfree_ipa:                                    ; preds = %err_reg_exit, %if.end23.err_kfree_ipa_crit_edge
  %ret.7 = phi i32 [ %call28, %if.end23.err_kfree_ipa_crit_edge ], [ %ret.6, %err_reg_exit ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %err_power_exit

err_power_exit:                                   ; preds = %err_kfree_ipa, %if.end19.err_power_exit_crit_edge
  %ret.8 = phi i32 [ %ret.7, %err_kfree_ipa ], [ -12, %if.end19.err_power_exit_crit_edge ]
  tail call void @ipa_power_exit(ptr noundef %call15) #9
  br label %cleanup

cleanup:                                          ; preds = %err_power_exit, %done, %if.then17, %if.then10.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %6, %if.then17 ], [ %ret.8, %err_power_exit ], [ 0, %done ], [ -22, %do.end6 ], [ -19, %do.end ], [ -517, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power1 = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power1, align 4
  tail call void @ipa_smp2p_irq_disable_setup(ptr noundef %1) #9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end25.critedge, !prof !91

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 811, i32 noundef 9, ptr noundef null) #9
  br label %out_power_put

if.end25.critedge:                                ; preds = %entry
  %setup_complete = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %setup_complete to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %setup_complete, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool26.not = icmp eq i8 %5, 0
  br i1 %tobool26.not, label %if.end25.critedge.if.end36_crit_edge, label %if.then27

if.end25.critedge.if.end36_crit_edge:             ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %if.end25.critedge
  %call28 = tail call i32 @ipa_modem_stop(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call28)
  %cmp29 = icmp eq i32 %call28, -16
  br i1 %cmp29, label %if.then30, label %if.then27.if.end32_crit_edge

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %call31 = tail call i32 @ipa_modem_stop(ptr noundef %1) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then27.if.end32_crit_edge
  %ret.0 = phi i32 [ %call31, %if.then30 ], [ %call28, %if.then27.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool33.not = icmp eq i32 %ret.0, 0
  br i1 %tobool33.not, label %if.end35, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %setup_complete to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %setup_complete, align 4
  tail call void @ipa_qmi_teardown(ptr noundef %1) #9
  tail call void @ipa_endpoint_default_route_clear(ptr noundef %1) #9
  %name_map.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 35
  %arrayidx.i = getelementptr %struct.ipa, ptr %1, i32 0, i32 35, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void @ipa_endpoint_disable_one(ptr noundef %8) #9
  %9 = ptrtoint ptr %name_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name_map.i, align 4
  tail call void @ipa_endpoint_disable_one(ptr noundef %10) #9
  tail call void @ipa_endpoint_teardown(ptr noundef %1) #9
  tail call void @ipa_power_teardown(ptr noundef %1) #9
  tail call void @gsi_teardown(ptr noundef %1) #9
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end25.critedge.if.end36_crit_edge
  tail call void @ipa_modem_deconfig(ptr noundef %1) #9
  tail call void @ipa_endpoint_deconfig(ptr noundef %1) #9
  tail call void @ipa_uc_deconfig(ptr noundef %1) #9
  %interrupt.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interrupt.i, align 32
  tail call void @ipa_interrupt_deconfig(ptr noundef %12) #9
  %13 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %interrupt.i, align 32
  tail call void @ipa_mem_deconfig(ptr noundef %1) #9
  %version.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp.i.i.i.i.i = icmp ugt i32 %15, 5
  %..i.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 576, i32 544
  %reg_virt.i.i.i.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %reg_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_virt.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 %..i.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 256) #9, !srcloc !94
  br label %out_power_put

out_power_put:                                    ; preds = %if.end36, %do.end
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !96
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %out_power_put.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

out_power_put.pm_runtime_put_noidle.exit_crit_edge: ; preds = %out_power_put
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %out_power_put
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %out_power_put.pm_runtime_put_noidle.exit_crit_edge
  tail call void @ipa_smp2p_exit(ptr noundef %1) #9
  tail call void @ipa_table_exit(ptr noundef %1) #9
  tail call void @ipa_endpoint_exit(ptr noundef %1) #9
  tail call void @gsi_exit(ptr noundef %1) #9
  tail call void @ipa_mem_exit(ptr noundef %1) #9
  tail call void @ipa_reg_exit(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  tail call void @ipa_power_exit(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ %ret.0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ipa_remove(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_power_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_reg_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_mem_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_endpoint_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_table_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_smp2p_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipa_config(ptr noundef %ipa, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %version1.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %0 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.i = icmp ult i32 %1, 7
  br i1 %cmp.i, label %if.end.i, label %entry.if.end.i.i_crit_edge

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end.i:                                         ; preds = %entry
  %backward_compat.i = getelementptr inbounds %struct.ipa_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %backward_compat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %backward_compat.i, align 4
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %4 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #9, !srcloc !94
  %7 = add nsw i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %if.end13.thread.i, label %if.end13.i

if.end13.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 508
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #9, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %12 = and i32 %11, -1048577
  %13 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %14, i32 508
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %12) #9, !srcloc !94
  br label %if.then14.i

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp9.i = icmp eq i32 %1, 1
  br i1 %cmp9.i, label %if.end13.i.if.then14.i_crit_edge, label %if.end13.i.if.end17.i_crit_edge

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.end13.i.if.then14.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end13.i.if.then14.i_crit_edge, %if.end13.thread.i
  %val.069.i = phi i32 [ 805306368, %if.end13.thread.i ], [ 8, %if.end13.i.if.then14.i_crit_edge ]
  %15 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.069.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %17) #9, !srcloc !94
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end13.i.if.end17.i_crit_edge
  %18 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load i32, ptr %version1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i)
  %cmp.i.i = icmp ult i32 %.pr.i, 4
  br i1 %cmp.i.i, label %if.end17.i.ipa_hardware_config_comp.exit.i_crit_edge, label %if.end17.i.if.end.i.i_crit_edge

if.end17.i.if.end.i.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.end17.i.ipa_hardware_config_comp.exit.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_hardware_config_comp.exit.i

if.end.i.i:                                       ; preds = %if.end17.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %reg_virt.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %19 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 60
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !98
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  %23 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %version1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp2.i.i = icmp eq i32 %24, 4
  %and5.i.i = and i32 %22, -66017
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp7.i.i = icmp ult i32 %24, 7
  %or.i.i = or i32 %22, 32768
  %spec.select.i.i = select i1 %cmp7.i.i, i32 %or.i.i, i32 %22
  %val.0.i.i = select i1 %cmp2.i.i, i32 %and5.i.i, i32 %spec.select.i.i
  %or13.i.i = or i32 %val.0.i.i, 384
  %25 = ptrtoint ptr %reg_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_virt.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %26, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or13.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 %27) #9, !srcloc !94
  br label %ipa_hardware_config_comp.exit.i

ipa_hardware_config_comp.exit.i:                  ; preds = %if.end.i.i, %if.end17.i.ipa_hardware_config_comp.exit.i_crit_edge
  %qsb_data.i.i = getelementptr inbounds %struct.ipa_data, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %qsb_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %qsb_data.i.i, align 4
  %qsb_count.i.i = getelementptr inbounds %struct.ipa_data, ptr %data, i32 0, i32 2
  %30 = ptrtoint ptr %qsb_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qsb_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i55.i = icmp ugt i32 %31, 1
  %arrayidx2.i.i = getelementptr %struct.ipa_qsb_data, ptr %29, i32 1
  %data1.0.i.i = select i1 %cmp.i55.i, ptr %arrayidx2.i.i, ptr inttoptr (i32 -1 to ptr)
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %29, align 1
  %34 = and i8 %33, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp4.i.i = icmp ugt i32 %31, 1
  br i1 %cmp4.i.i, label %u32_encode_bits.exit66.i.i, label %ipa_hardware_config_comp.exit.i.if.end10.i.i_crit_edge

ipa_hardware_config_comp.exit.i.if.end10.i.i_crit_edge: ; preds = %ipa_hardware_config_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

u32_encode_bits.exit66.i.i:                       ; preds = %ipa_hardware_config_comp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %data1.0.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data1.0.i.i, align 1
  %37 = shl i8 %36, 4
  %or111.i.i = or i8 %37, %34
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %u32_encode_bits.exit66.i.i, %ipa_hardware_config_comp.exit.i.if.end10.i.i_crit_edge
  %val.0.in.i.i = phi i8 [ %or111.i.i, %u32_encode_bits.exit66.i.i ], [ %34, %ipa_hardware_config_comp.exit.i.if.end10.i.i_crit_edge ]
  %val.0.i57.i = zext i8 %val.0.in.i.i to i32
  %reg_virt.i58.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %38 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %39, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %40 = shl nuw i32 %val.0.i57.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %40) #9, !srcloc !94
  %max_reads.i.i = getelementptr inbounds %struct.ipa_qsb_data, ptr %29, i32 0, i32 1
  %41 = ptrtoint ptr %max_reads.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %max_reads.i.i, align 1
  %43 = and i8 %42, 15
  %conv8.i76.i.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %version1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp13.i.i = icmp ugt i32 %45, 3
  br i1 %cmp13.i.i, label %if.then15.i.i, label %if.end10.i.i.if.end19.i.i_crit_edge

if.end10.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

if.then15.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_reads_beats.i.i = getelementptr inbounds %struct.ipa_qsb_data, ptr %29, i32 0, i32 2
  %46 = ptrtoint ptr %max_reads_beats.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_reads_beats.i.i, align 1
  %conv2.i84.i.i = zext i8 %47 to i32
  %mul.i86.i.i = shl nuw nsw i32 %conv2.i84.i.i, 16
  %or18.i.i = or i32 %mul.i86.i.i, %conv8.i76.i.i
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then15.i.i, %if.end10.i.i.if.end19.i.i_crit_edge
  %val.1.i.i = phi i32 [ %or18.i.i, %if.then15.i.i ], [ %conv8.i76.i.i, %if.end10.i.i.if.end19.i.i_crit_edge ]
  %48 = ptrtoint ptr %qsb_count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qsb_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp21.i.i = icmp ugt i32 %49, 1
  br i1 %cmp21.i.i, label %u32_encode_bits.exit99.i.i, label %if.end19.i.i.ipa_hardware_config_qsb.exit.i_crit_edge

if.end19.i.i.ipa_hardware_config_qsb.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_hardware_config_qsb.exit.i

u32_encode_bits.exit99.i.i:                       ; preds = %if.end19.i.i
  %max_reads24.i.i = getelementptr inbounds %struct.ipa_qsb_data, ptr %data1.0.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %max_reads24.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %max_reads24.i.i, align 1
  %52 = shl i8 %51, 4
  %conv8.i98.i.i = zext i8 %52 to i32
  %or27.i.i = or i32 %val.1.i.i, %conv8.i98.i.i
  %53 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %version1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp29.i.i = icmp ugt i32 %54, 3
  br i1 %cmp29.i.i, label %if.then31.i.i, label %u32_encode_bits.exit99.i.i.ipa_hardware_config_qsb.exit.i_crit_edge

u32_encode_bits.exit99.i.i.ipa_hardware_config_qsb.exit.i_crit_edge: ; preds = %u32_encode_bits.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_hardware_config_qsb.exit.i

if.then31.i.i:                                    ; preds = %u32_encode_bits.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_reads_beats32.i.i = getelementptr inbounds %struct.ipa_qsb_data, ptr %data1.0.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %max_reads_beats32.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %max_reads_beats32.i.i, align 1
  %conv2.i106.i.i = zext i8 %56 to i32
  %mul.i108.i.i = shl nuw i32 %conv2.i106.i.i, 24
  %or35.i.i = or i32 %mul.i108.i.i, %or27.i.i
  br label %ipa_hardware_config_qsb.exit.i

ipa_hardware_config_qsb.exit.i:                   ; preds = %if.then31.i.i, %u32_encode_bits.exit99.i.i.ipa_hardware_config_qsb.exit.i_crit_edge, %if.end19.i.i.ipa_hardware_config_qsb.exit.i_crit_edge
  %val.2.i.i = phi i32 [ %or35.i.i, %if.then31.i.i ], [ %or27.i.i, %u32_encode_bits.exit99.i.i.ipa_hardware_config_qsb.exit.i_crit_edge ], [ %val.1.i.i, %if.end19.i.i.ipa_hardware_config_qsb.exit.i_crit_edge ]
  %57 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %58, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %59 = tail call i32 @llvm.bswap.i32(i32 %val.2.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i.i, i32 %59) #9, !srcloc !94
  %60 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_virt.i58.i, align 4
  br i1 %cmp.i, label %if.end25.i, label %if.end25.thread.i

if.end25.thread.i:                                ; preds = %ipa_hardware_config_qsb.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i62.i = getelementptr i8, ptr %61, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 0) #9, !srcloc !94
  %62 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %63, i32 588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 -1911678976) #9, !srcloc !94
  %64 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %65, i32 596
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 587268096) #9, !srcloc !94
  %66 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %67, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 -1090519040) #9, !srcloc !94
  %68 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %69, i32 592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 -1090518912) #9, !srcloc !94
  br label %ipa_hardware_config.exit

if.end25.i:                                       ; preds = %ipa_hardware_config_qsb.exit.i
  %add.ptr23.i = getelementptr i8, ptr %61, i32 496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 -268435456) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp26.i = icmp eq i32 %1, 6
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.ipa_hardware_config.exit_crit_edge

if.end25.i.ipa_hardware_config.exit_crit_edge:    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipa_hardware_config.exit

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %71, i32 328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 0) #9, !srcloc !94
  br label %ipa_hardware_config.exit

ipa_hardware_config.exit:                         ; preds = %if.then27.i, %if.end25.i.ipa_hardware_config.exit_crit_edge, %if.end25.thread.i
  %72 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %version1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %73)
  %cmp.i.i.i.i = icmp ugt i32 %73, 5
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 576, i32 544
  %74 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %75, i32 %..i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65536) #9, !srcloc !94
  %call = tail call i32 @ipa_mem_config(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %ipa_hardware_config.exit.err_hardware_deconfig_crit_edge

ipa_hardware_config.exit.err_hardware_deconfig_crit_edge: ; preds = %ipa_hardware_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_hardware_deconfig

if.end:                                           ; preds = %ipa_hardware_config.exit
  %call1 = tail call ptr @ipa_interrupt_config(ptr noundef %ipa) #9
  %interrupt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 10
  %76 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call1, ptr %interrupt, align 32
  %cmp.i45 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %call1 to i32
  br label %err_mem_deconfig

if.end8:                                          ; preds = %if.end
  tail call void @ipa_uc_config(ptr noundef %ipa) #9
  %call9 = tail call i32 @ipa_endpoint_config(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_uc_deconfig_crit_edge

if.end8.err_uc_deconfig_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uc_deconfig

if.end12:                                         ; preds = %if.end8
  tail call void @ipa_table_config(ptr noundef %ipa) #9
  %resource_data = getelementptr inbounds %struct.ipa_data, ptr %data, i32 0, i32 6
  %78 = ptrtoint ptr %resource_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %resource_data, align 4
  %call13 = tail call i32 @ipa_resource_config(ptr noundef %ipa, ptr noundef %79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.err_endpoint_deconfig_crit_edge

if.end12.err_endpoint_deconfig_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_endpoint_deconfig

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @ipa_modem_config(ptr noundef %ipa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end16.err_endpoint_deconfig_crit_edge

if.end16.err_endpoint_deconfig_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_endpoint_deconfig

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_endpoint_deconfig:                            ; preds = %if.end16.err_endpoint_deconfig_crit_edge, %if.end12.err_endpoint_deconfig_crit_edge
  %ret.0 = phi i32 [ %call13, %if.end12.err_endpoint_deconfig_crit_edge ], [ %call17, %if.end16.err_endpoint_deconfig_crit_edge ]
  tail call void @ipa_endpoint_deconfig(ptr noundef %ipa) #9
  br label %err_uc_deconfig

err_uc_deconfig:                                  ; preds = %err_endpoint_deconfig, %if.end8.err_uc_deconfig_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end8.err_uc_deconfig_crit_edge ], [ %ret.0, %err_endpoint_deconfig ]
  tail call void @ipa_uc_deconfig(ptr noundef %ipa) #9
  %80 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_deconfig(ptr noundef %81) #9
  br label %err_mem_deconfig

err_mem_deconfig:                                 ; preds = %err_uc_deconfig, %if.then4
  %ret.2 = phi i32 [ %77, %if.then4 ], [ %ret.1, %err_uc_deconfig ]
  %82 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %interrupt, align 32
  tail call void @ipa_mem_deconfig(ptr noundef %ipa) #9
  br label %err_hardware_deconfig

err_hardware_deconfig:                            ; preds = %err_mem_deconfig, %ipa_hardware_config.exit.err_hardware_deconfig_crit_edge
  %ret.3 = phi i32 [ %call, %ipa_hardware_config.exit.err_hardware_deconfig_crit_edge ], [ %ret.2, %err_mem_deconfig ]
  %83 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %version1.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %84)
  %cmp.i.i.i.i46 = icmp ugt i32 %84, 5
  %..i.i.i.i47 = select i1 %cmp.i.i.i.i46, i32 576, i32 544
  %85 = ptrtoint ptr %reg_virt.i58.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_virt.i58.i, align 4
  %add.ptr.i.i.i48 = getelementptr i8, ptr %86, i32 %..i.i.i.i47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i48, i32 256) #9, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %err_hardware_deconfig, %if.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_hardware_deconfig ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipa_firmware_load(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %fw = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  %path = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path) #9
  %3 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !100
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call1 = call i32 @of_address_to_resource(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %res) #9
  call void @of_node_put(ptr noundef nonnull %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call1) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call9 = call i32 @of_property_read_string(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef nonnull %path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.if.end21_crit_edge, label %do.body12

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body12:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipa_firmware_load.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipa_firmware_load, %if.then17)) #9
          to label %do.end20 [label %if.then17], !srcloc !101

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipa_firmware_load.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call9) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body12
  %11 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.25, ptr %path, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end7.if.end21_crit_edge
  %12 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path, align 4
  %call22 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %13, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call22, ptr noundef %15) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %res, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %19
  %call30 = call ptr @memremap(i32 noundef %17, i32 noundef %add.i, i32 noundef 4) #9
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %out_release_firmware

if.end36:                                         ; preds = %if.end28
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %22 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %path, align 4
  %call37 = call i32 @qcom_mdt_load(ptr noundef %dev, ptr noundef %21, ptr noundef %23, i32 noundef 15, ptr noundef nonnull %call30, i32 noundef %17, i32 noundef %add.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call37, ptr noundef %25) #12
  br label %if.end50

if.else:                                          ; preds = %if.end36
  %call43 = call i32 @qcom_scm_pas_auth_and_reset(i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.else.if.end50_crit_edge, label %do.end48

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call43, ptr noundef %27) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %if.else.if.end50_crit_edge, %do.end42
  %ret.0 = phi i32 [ %call37, %do.end42 ], [ %call43, %do.end48 ], [ 0, %if.else.if.end50_crit_edge ]
  call void @memunmap(ptr noundef nonnull %call30) #9
  br label %out_release_firmware

out_release_firmware:                             ; preds = %if.end50, %do.end35
  %ret.1 = phi i32 [ %ret.0, %if.end50 ], [ -12, %do.end35 ]
  %28 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %out_release_firmware, %do.end27, %do.end6, %do.end
  %retval.0 = phi i32 [ %call1, %do.end6 ], [ %call22, %do.end27 ], [ %ret.1, %out_release_firmware ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipa_deconfig(ptr noundef %ipa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipa_modem_deconfig(ptr noundef %ipa) #9
  tail call void @ipa_endpoint_deconfig(ptr noundef %ipa) #9
  tail call void @ipa_uc_deconfig(ptr noundef %ipa) #9
  %interrupt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 10
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_deconfig(ptr noundef %1) #9
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %interrupt, align 32
  tail call void @ipa_mem_deconfig(ptr noundef %ipa) #9
  %version.i.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %3 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.i.i.i.i = icmp ugt i32 %4, 5
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 576, i32 544
  %reg_virt.i.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %5 = ptrtoint ptr %reg_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_virt.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %..i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 256) #9, !srcloc !94
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !96
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_smp2p_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_table_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_reg_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_power_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_mem_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_interrupt_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_uc_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_endpoint_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_table_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_resource_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_modem_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_endpoint_deconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_uc_deconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_deconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_mem_deconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_modem_deconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_smp2p_irq_disable_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_modem_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_qmi_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_main.c", i32 145, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipa_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ipa_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_ipa__349_870_ipa_driver_init6, !9, !"__initcall__kmod_ipa__349_870_ipa_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/ipa/ipa_main.c", i32 870, i32 1}
!10 = !{ptr @__exitcall_ipa_driver_exit, !9, !"__exitcall_ipa_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_file350, !12, !"__UNIQUE_ID_file350", i1 false, i1 false}
!12 = !{!"../drivers/net/ipa/ipa_main.c", i32 872, i32 1}
!13 = !{ptr @__UNIQUE_ID_license351, !12, !"__UNIQUE_ID_license351", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_description352, !15, !"__UNIQUE_ID_description352", i1 false, i1 false}
!15 = !{!"../drivers/net/ipa/ipa_main.c", i32 873, i32 1}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ipa/ipa_main.c", i32 863, i32 12}
!18 = !{ptr @ipa_driver, !19, !"ipa_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/ipa/ipa_main.c", i32 858, i32 31}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ipa/ipa_main.c", i32 677, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ipa_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @ipa_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ipa/ipa_main.c", i32 682, i32 3}
!28 = !{ptr @ipa_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ipa_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ipa/ipa_main.c", i32 687, i32 51}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ipa/ipa_main.c", i32 750, i32 2}
!34 = !{ptr @ipa_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipa_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @init_completion.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/completion.h", i32 87, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ipa/ipa_main.c", i32 499, i32 40}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ipa/ipa_main.c", i32 501, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ipa_firmware_load._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ipa_firmware_load._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ipa/ipa_main.c", i32 508, i32 3}
!48 = !{ptr @ipa_firmware_load._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ipa_firmware_load._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ipa/ipa_main.c", i32 514, i32 46}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ipa/ipa_main.c", i32 516, i32 3}
!54 = !{ptr @ipa_firmware_load.__UNIQUE_ID_ddebug338, !53, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ipa/ipa_main.c", i32 518, i32 10}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ipa/ipa_main.c", i32 523, i32 3}
!59 = !{ptr @ipa_firmware_load._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ipa_firmware_load._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ipa/ipa_main.c", i32 531, i32 3}
!63 = !{ptr @ipa_firmware_load._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ipa_firmware_load._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ipa/ipa_main.c", i32 538, i32 3}
!67 = !{ptr @ipa_firmware_load._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ipa_firmware_load._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ipa/ipa_main.c", i32 540, i32 3}
!71 = !{ptr @ipa_firmware_load._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ipa_firmware_load._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ipa/ipa_main.c", i32 848, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ipa_shutdown._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ipa_shutdown._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ipa_match, !79, !"ipa_match", i1 false, i1 false}
!79 = !{!"../drivers/net/ipa/ipa_main.c", i32 549, i32 34}
!80 = !{ptr @ipa_attribute_groups, !81, !"ipa_attribute_groups", i1 false, i1 false}
!81 = !{!"../drivers/net/ipa/ipa_main.c", i32 851, i32 38}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i8 0, i8 2}
!93 = !{i64 2152363317}
!94 = !{i64 4821195}
!95 = !{i64 2148140963}
!96 = !{i64 516884, i64 516909, i64 516931, i64 516947, i64 516959, i64 516979, i64 517003, i64 517019, i64 517031}
!97 = !{i64 2148141151}
!98 = !{i64 4821613}
!99 = !{i64 2152361962}
!100 = !{!"auto-init"}
!101 = !{i64 2148766198, i64 2148766203, i64 2148766216, i64 2148766260, i64 2148766294, i64 2148766315}
