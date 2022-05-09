; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/smsm.c_pt.bc'
source_filename = "../drivers/soc/qcom/smsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qcom_smem_state_ops = type { ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.qcom_smsm = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.smsm_host = type { ptr, i32, i32 }
%struct.smsm_entry = type { ptr, ptr, [1 x i32], [1 x i32], [1 x i32], i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.anon.43 = type { i32, i32, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_smsm__188_638_qcom_smsm_driver_init6 = internal global ptr @qcom_smsm_driver_init, section ".initcall6.init", align 4
@qcom_smsm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_smsm_probe, ptr @qcom_smsm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_smsm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_smsm_driver_exit = internal global ptr @qcom_smsm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [61 x i8] c"smsm.description=Qualcomm Shared Memory State Machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [32 x i8] c"smsm.file=drivers/soc/qcom/smsm\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [20 x i8] c"smsm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-smsm\00", [22 x i8] zeroinitializer }, align 32
@qcom_smsm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,smsm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_smsm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&smsm->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"#qcom,smem-state-cells\00", [41 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 516, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no state entry\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_smsm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/soc/qcom/smsm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry_ptr = internal global ptr @qcom_smsm_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,local-host\00", [16 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 535, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to allocate shared state entry\0A\00", [57 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry_ptr.11 = internal global ptr @qcom_smsm_probe._entry.9, section ".printk_index", align 4
@qcom_smsm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 541, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to acquire shared state entry\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry_ptr.14 = internal global ptr @qcom_smsm_probe._entry.12, section ".printk_index", align 4
@qcom_smsm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 549, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to allocate smsm interrupt mask\0A\00", [56 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry_ptr.17 = internal global ptr @qcom_smsm_probe._entry.15, section ".printk_index", align 4
@qcom_smsm_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 555, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to acquire shared memory interrupt mask\0A\00", [48 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry_ptr.20 = internal global ptr @qcom_smsm_probe._entry.18, section ".printk_index", align 4
@smsm_state_ops = internal constant { %struct.qcom_smem_state_ops, [28 x i8] } { %struct.qcom_smem_state_ops { ptr @smsm_update_bits }, [28 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 566, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register qcom_smem_state\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry_ptr.23 = internal global ptr @qcom_smsm_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 577, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid reg of entry\0A\00", [42 x i8] zeroinitializer }, align 32
@qcom_smsm_probe._entry_ptr.28 = internal global ptr @qcom_smsm_probe._entry.26, section ".printk_index", align 4
@smsm_get_size_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 456, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to retrieve smsm size info\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsm_get_size_info\00", [45 x i8] zeroinitializer }, align 32
@smsm_get_size_info._entry_ptr = internal global ptr @smsm_get_size_info._entry, section ".printk_index", align 4
@smsm_get_size_info._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.5, i32 459, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no smsm size info, using defaults\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@smsm_get_size_info._entry_ptr.34 = internal global ptr @smsm_get_size_info._entry.31, section ".printk_index", align 4
@smsm_get_size_info.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.30, ptr @.str.5, ptr @.str.36, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smsm\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"found custom size of smsm: %d entries %d hosts\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,ipc-%d\00", [20 x i8] zeroinitializer }, align 32
@smsm_parse_ipc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 382, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no offset in %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smsm_parse_ipc\00", [17 x i8] zeroinitializer }, align 32
@smsm_parse_ipc._entry_ptr = internal global ptr @smsm_parse_ipc._entry, section ".printk_index", align 4
@smsm_parse_ipc._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 388, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no bit in %s\0A\00", [18 x i8] zeroinitializer }, align 32
@smsm_parse_ipc._entry_ptr.42 = internal global ptr @smsm_parse_ipc._entry.40, section ".printk_index", align 4
@smsm_inbound_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 410, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to parse smsm interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smsm_inbound_entry\00", [45 x i8] zeroinitializer }, align 32
@smsm_inbound_entry._entry_ptr = internal global ptr @smsm_inbound_entry._entry, section ".printk_index", align 4
@smsm_inbound_entry._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 419, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@smsm_inbound_entry._entry_ptr.47 = internal global ptr @smsm_inbound_entry._entry.45, section ".printk_index", align 4
@smsm_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @smsm_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@smsm_inbound_entry._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.5, i32 425, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add irq_domain\0A\00", [38 x i8] zeroinitializer }, align 32
@smsm_inbound_entry._entry_ptr.50 = internal global ptr @smsm_inbound_entry._entry.48, section ".printk_index", align 4
@smsm_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.35, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsm_mask_irq, ptr null, ptr @smsm_unmask_irq, ptr null, ptr null, ptr null, ptr @smsm_set_irq_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsm_get_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"qcom_smsm_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 630, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 634, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"qcom_smsm_of_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 624, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 491, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 512, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 516, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 521, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 535, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 541, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 549, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 555, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"smsm_state_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 186, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 566, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 572, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 575, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 577, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 456, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 459, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 468, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 371, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 382, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 388, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 410, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 419, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"smsm_irq_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 350, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 425, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"smsm_irq_chip\00", align 1
@___asan_gen_.202 = private constant [27 x i8] c"../drivers/soc/qcom/smsm.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 323, i32 24 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_qcom_smsm_driver_exit, ptr @__initcall__kmod_smsm__188_638_qcom_smsm_driver_init6, ptr @qcom_smsm_driver_exit, ptr @qcom_smsm_probe._entry, ptr @qcom_smsm_probe._entry.12, ptr @qcom_smsm_probe._entry.15, ptr @qcom_smsm_probe._entry.18, ptr @qcom_smsm_probe._entry.21, ptr @qcom_smsm_probe._entry.26, ptr @qcom_smsm_probe._entry.9, ptr @qcom_smsm_probe._entry_ptr, ptr @qcom_smsm_probe._entry_ptr.11, ptr @qcom_smsm_probe._entry_ptr.14, ptr @qcom_smsm_probe._entry_ptr.17, ptr @qcom_smsm_probe._entry_ptr.20, ptr @qcom_smsm_probe._entry_ptr.23, ptr @qcom_smsm_probe._entry_ptr.28, ptr @smsm_get_size_info._entry, ptr @smsm_get_size_info._entry.31, ptr @smsm_get_size_info._entry_ptr, ptr @smsm_get_size_info._entry_ptr.34, ptr @smsm_inbound_entry._entry, ptr @smsm_inbound_entry._entry.45, ptr @smsm_inbound_entry._entry.48, ptr @smsm_inbound_entry._entry_ptr, ptr @smsm_inbound_entry._entry_ptr.47, ptr @smsm_inbound_entry._entry_ptr.50, ptr @smsm_parse_ipc._entry, ptr @smsm_parse_ipc._entry.40, ptr @smsm_parse_ipc._entry_ptr, ptr @smsm_parse_ipc._entry_ptr.42, ptr @qcom_smsm_driver, ptr @.str, ptr @qcom_smsm_of_match, ptr @qcom_smsm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @smsm_state_ops, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @smsm_irq_ops, ptr @.str.49, ptr @smsm_irq_chip], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_state_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smsm_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_get_size_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_get_size_info._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_parse_ipc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_parse_ipc._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_inbound_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_inbound_entry._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_inbound_entry._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsm_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smsm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_smsm_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smsm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_smsm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smsm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %key.i = alloca [16 x i8], align 1
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @qcom_smsm_probe.__key, i16 noundef signext 3) #8
  %call5 = tail call fastcc i32 @smsm_get_size_info(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %num_entries = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_entries, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 32) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !110

devm_kcalloc.exit.thread:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %entries281 = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %entries281 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %entries281, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end8
  %6 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #8
  %entries = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %entries, align 4
  %tobool12.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool12.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end14

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %devm_kcalloc.exit
  %num_hosts = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_hosts, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 12) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit266.thread, label %devm_kcalloc.exit266, !prof !110

devm_kcalloc.exit266.thread:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %hosts284 = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %hosts284 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hosts284, align 4
  br label %cleanup

devm_kcalloc.exit266:                             ; preds = %if.end14
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i263 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #8
  %hosts = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %hosts to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i263, ptr %hosts, align 4
  %tobool18.not = icmp eq ptr %call5.i.i263, null
  br i1 %tobool18.not, label %devm_kcalloc.exit266.cleanup_crit_edge, label %if.end20

devm_kcalloc.exit266.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit266
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %devm_kcalloc.exit266
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call22 = tail call ptr @of_get_next_child(ptr noundef %16, ptr noundef null) #8
  %cmp.not302 = icmp eq ptr %call22, null
  br i1 %cmp.not302, label %if.end20.do.end34.critedge_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.do.end34.critedge_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end20.for.body_crit_edge
  %local_node.0303 = phi ptr [ %call29, %for.inc.for.body_crit_edge ], [ %call22, %if.end20.for.body_crit_edge ]
  %call23 = tail call ptr @of_find_property(ptr noundef nonnull %local_node.0303, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %tobool24.not = icmp eq ptr %call23, null
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  br i1 %tobool24.not, label %for.inc, label %if.end36

for.inc:                                          ; preds = %for.body
  %call29 = tail call ptr @of_get_next_child(ptr noundef %18, ptr noundef nonnull %local_node.0303) #8
  %cmp.not = icmp eq ptr %call29, null
  br i1 %cmp.not, label %for.inc.do.end34.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end34.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34.critedge

do.end34.critedge:                                ; preds = %for.inc.do.end34.critedge_crit_edge, %if.end20.do.end34.critedge_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end36:                                         ; preds = %for.body
  %local_host = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef %local_host, i32 noundef 1, i32 noundef 0) #8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %id, align 4
  %20 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_hosts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp42304.not = icmp eq i32 %21, 0
  br i1 %cmp42304.not, label %if.end36.for.end49_crit_edge, label %if.end36.for.body43_crit_edge

if.end36.for.body43_crit_edge:                    ; preds = %if.end36
  br label %for.body43

if.end36.for.end49_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

for.body43:                                       ; preds = %for.inc48.for.body43_crit_edge, %if.end36.for.body43_crit_edge
  %storemerge305 = phi i32 [ %inc, %for.inc48.for.body43_crit_edge ], [ 0, %if.end36.for.body43_crit_edge ]
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 8
  %26 = ptrtoint ptr %hosts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hosts, align 4
  %arrayidx.i = getelementptr %struct.smsm_host, ptr %27, i32 %storemerge305
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key.i) #8
  %28 = call ptr @memset(ptr %key.i, i32 255, i32 16)
  %call.i267 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %key.i, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %storemerge305) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %29 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i268 = call i32 @__of_parse_phandle_with_args(ptr noundef %25, ptr noundef nonnull %key.i, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268)
  %tobool.not.i.i = icmp eq i32 %call.i.i268, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %smsm_parse_ipc.exit.thread

of_parse_phandle.exit.i:                          ; preds = %for.body43
  %30 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.smsm_parse_ipc.exit.thread_crit_edge, label %if.end.i

of_parse_phandle.exit.i.smsm_parse_ipc.exit.thread_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsm_parse_ipc.exit.thread

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call3.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %31) #8
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3.i, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %smsm_parse_ipc.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i
  %ipc_offset.i = getelementptr %struct.smsm_host, ptr %27, i32 %storemerge305, i32 1
  %call11.i = call i32 @of_property_read_u32_index(ptr noundef %25, ptr noundef nonnull %key.i, i32 noundef 1, ptr noundef %ipc_offset.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp slt i32 %call11.i, 0
  br i1 %cmp.i, label %if.end9.i.smsm_parse_ipc.exit.thread289_crit_edge, label %if.end15.i

if.end9.i.smsm_parse_ipc.exit.thread289_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsm_parse_ipc.exit.thread289

if.end15.i:                                       ; preds = %if.end9.i
  %ipc_bit.i = getelementptr %struct.smsm_host, ptr %27, i32 %storemerge305, i32 2
  %call17.i = call i32 @of_property_read_u32_index(ptr noundef %25, ptr noundef nonnull %key.i, i32 noundef 2, ptr noundef %ipc_bit.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.smsm_parse_ipc.exit.thread289_crit_edge, label %if.end15.i.smsm_parse_ipc.exit.thread_crit_edge

if.end15.i.smsm_parse_ipc.exit.thread_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsm_parse_ipc.exit.thread

if.end15.i.smsm_parse_ipc.exit.thread289_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smsm_parse_ipc.exit.thread289

smsm_parse_ipc.exit.thread:                       ; preds = %if.end15.i.smsm_parse_ipc.exit.thread_crit_edge, %of_parse_phandle.exit.i.smsm_parse_ipc.exit.thread_crit_edge, %of_parse_phandle.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #8
  br label %for.inc48

smsm_parse_ipc.exit.thread289:                    ; preds = %if.end15.i.smsm_parse_ipc.exit.thread289_crit_edge, %if.end9.i.smsm_parse_ipc.exit.thread289_crit_edge
  %.str.38.sink = phi ptr [ @.str.38, %if.end9.i.smsm_parse_ipc.exit.thread289_crit_edge ], [ @.str.41, %if.end15.i.smsm_parse_ipc.exit.thread289_crit_edge ]
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull %.str.38.sink, ptr noundef nonnull %key.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #8
  br label %cleanup

smsm_parse_ipc.exit:                              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key.i) #8
  %cmp45 = icmp slt ptr %call3.i, null
  br i1 %cmp45, label %cleanup.loopexit, label %smsm_parse_ipc.exit.for.inc48_crit_edge

smsm_parse_ipc.exit.for.inc48_crit_edge:          ; preds = %smsm_parse_ipc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc48

for.inc48:                                        ; preds = %smsm_parse_ipc.exit.for.inc48_crit_edge, %smsm_parse_ipc.exit.thread
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %id, align 4
  %37 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_hosts, align 4
  %cmp42 = icmp ult i32 %inc, %38
  br i1 %cmp42, label %for.inc48.for.body43_crit_edge, label %for.inc48.for.end49_crit_edge

for.inc48.for.end49_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

for.inc48.for.body43_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.end49:                                        ; preds = %for.inc48.for.end49_crit_edge, %if.end36.for.end49_crit_edge
  %39 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_entries, align 4
  %mul = shl i32 %40, 2
  %call51 = call i32 @qcom_smem_alloc(i32 noundef -1, i32 noundef 85, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call51)
  %cmp52 = icmp sgt i32 %call51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call51)
  %cmp53.not = icmp eq i32 %call51, -17
  %or.cond = or i1 %cmp52, %cmp53.not
  br i1 %or.cond, label %if.end59, label %do.end57

do.end57:                                         ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end59:                                         ; preds = %for.end49
  %call60 = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 85, ptr noundef null) #8
  %cmp.i269 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  %41 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  %42 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_entries, align 4
  %44 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_hosts, align 4
  %mul71 = shl i32 %43, 2
  %mul72 = mul i32 %mul71, %45
  %call73 = call i32 @qcom_smem_alloc(i32 noundef -1, i32 noundef 333, i32 noundef %mul72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call73)
  %cmp74 = icmp sgt i32 %call73, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call73)
  %cmp76.not = icmp eq i32 %call73, -17
  %or.cond262 = or i1 %cmp74, %cmp76.not
  br i1 %or.cond262, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end82:                                         ; preds = %if.end68
  %call83 = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 333, ptr noundef null) #8
  %cmp.i270 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %do.end88, label %if.end91

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  %46 = ptrtoint ptr %call83 to i32
  br label %cleanup

if.end91:                                         ; preds = %if.end82
  %47 = ptrtoint ptr %local_host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %local_host, align 4
  %add.ptr = getelementptr i32, ptr %call60, i32 %48
  %local_state = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 4
  %49 = ptrtoint ptr %local_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr, ptr %local_state, align 4
  %50 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_hosts, align 4
  %mul95 = mul i32 %51, %48
  %add.ptr96 = getelementptr i32, ptr %call83, i32 %mul95
  %subscription = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 5
  %52 = ptrtoint ptr %subscription to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr96, ptr %subscription, align 4
  %call97 = call ptr @qcom_smem_state_register(ptr noundef nonnull %local_node.0303, ptr noundef nonnull @smsm_state_ops, ptr noundef nonnull %call.i) #8
  %state = getelementptr inbounds %struct.qcom_smsm, ptr %call.i, i32 0, i32 6
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call97, ptr %state, align 4
  %cmp.i271 = icmp ugt ptr %call97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %do.end103, label %if.end107

do.end103:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.22) #11
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %cleanup

if.end107:                                        ; preds = %if.end91
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %call110 = call ptr @of_get_next_available_child(ptr noundef %60, ptr noundef null) #8
  %cmp112.not308 = icmp eq ptr %call110, null
  br i1 %cmp112.not308, label %if.end107.for.end151_crit_edge, label %if.end107.for.body113_crit_edge

if.end107.for.body113_crit_edge:                  ; preds = %if.end107
  br label %for.body113

if.end107.for.end151_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end151

for.body113:                                      ; preds = %for.inc147.for.body113_crit_edge, %if.end107.for.body113_crit_edge
  %node.0309 = phi ptr [ %call150, %for.inc147.for.body113_crit_edge ], [ %call110, %if.end107.for.body113_crit_edge ]
  %call.i272 = call ptr @of_find_property(ptr noundef nonnull %node.0309, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i272, null
  br i1 %tobool.i.not, label %for.body113.for.inc147_crit_edge, label %if.end116

for.body113.for.inc147_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc147

if.end116:                                        ; preds = %for.body113
  %call.i.i273 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0309, ptr noundef nonnull @.str.25, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i273)
  %tobool118.not = icmp sgt i32 %call.i.i273, -1
  br i1 %tobool118.not, label %lor.lhs.false, label %if.end116.do.end124_crit_edge

if.end116.do.end124_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end124

lor.lhs.false:                                    ; preds = %if.end116
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id, align 4
  %63 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp120.not = icmp ult i32 %62, %64
  br i1 %cmp120.not, label %if.end129, label %lor.lhs.false.do.end124_crit_edge

lor.lhs.false.do.end124_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end124

do.end124:                                        ; preds = %lor.lhs.false.do.end124_crit_edge, %if.end116.do.end124_crit_edge
  %spec.select = phi i32 [ %call.i.i273, %if.end116.do.end124_crit_edge ], [ -22, %lor.lhs.false.do.end124_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %unwind_interfaces

if.end129:                                        ; preds = %lor.lhs.false
  %65 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.smsm_entry, ptr %66, i32 %62
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i, ptr %arrayidx, align 4
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id, align 4
  %add.ptr132 = getelementptr i32, ptr %call60, i32 %69
  %remote_state = getelementptr %struct.smsm_entry, ptr %66, i32 %62, i32 6
  %70 = ptrtoint ptr %remote_state to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr132, ptr %remote_state, align 4
  %71 = load i32, ptr %id, align 4
  %72 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_hosts, align 4
  %mul134 = mul i32 %73, %71
  %add.ptr135 = getelementptr i32, ptr %call83, i32 %mul134
  %subscription136 = getelementptr %struct.smsm_entry, ptr %66, i32 %62, i32 7
  %74 = ptrtoint ptr %subscription136 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr135, ptr %subscription136, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %subscription136 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %subscription136, align 4
  %77 = ptrtoint ptr %local_host to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %local_host, align 4
  %add.ptr142 = getelementptr i32, ptr %76, i32 %78
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 0) #8, !srcloc !112
  %call.i274 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %node.0309, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool.not.i275 = icmp eq i32 %call.i274, 0
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i275, label %do.end.i276, label %if.end.i278

do.end.i276:                                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.43) #11
  br label %unwind_interfaces

if.end.i278:                                      ; preds = %if.end129
  %call3.i277 = call i32 @devm_request_threaded_irq(ptr noundef %80, i32 noundef %call.i274, ptr noundef null, ptr noundef nonnull @smsm_intr, i32 noundef 8192, ptr noundef nonnull @.str.35, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i277)
  %tobool4.not.i = icmp eq i32 %call3.i277, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %smsm_inbound_entry.exit

if.end10.i:                                       ; preds = %if.end.i278
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.0309, i32 0, i32 3
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @smsm_irq_ops, ptr noundef %arrayidx) #8
  %domain.i = getelementptr %struct.smsm_entry, ptr %66, i32 %62, i32 1
  %81 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call1.i.i, ptr %domain.i, align 4
  %tobool13.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end10.i.for.inc147_crit_edge

if.end10.i.for.inc147_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc147

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.49) #11
  br label %unwind_interfaces

smsm_inbound_entry.exit:                          ; preds = %if.end.i278
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i277)
  %cmp144 = icmp slt i32 %call3.i277, 0
  br i1 %cmp144, label %smsm_inbound_entry.exit.unwind_interfaces_crit_edge, label %smsm_inbound_entry.exit.for.inc147_crit_edge

smsm_inbound_entry.exit.for.inc147_crit_edge:     ; preds = %smsm_inbound_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc147

smsm_inbound_entry.exit.unwind_interfaces_crit_edge: ; preds = %smsm_inbound_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unwind_interfaces

for.inc147:                                       ; preds = %smsm_inbound_entry.exit.for.inc147_crit_edge, %if.end10.i.for.inc147_crit_edge, %for.body113.for.inc147_crit_edge
  %86 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_node, align 8
  %call150 = call ptr @of_get_next_available_child(ptr noundef %87, ptr noundef nonnull %node.0309) #8
  %cmp112.not = icmp eq ptr %call150, null
  br i1 %cmp112.not, label %for.inc147.for.end151_crit_edge, label %for.inc147.for.body113_crit_edge

for.inc147.for.body113_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body113

for.inc147.for.end151_crit_edge:                  ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end151

for.end151:                                       ; preds = %for.inc147.for.end151_crit_edge, %if.end107.for.end151_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

unwind_interfaces:                                ; preds = %smsm_inbound_entry.exit.unwind_interfaces_crit_edge, %do.end17.i, %do.end.i276, %do.end124
  %ret.0 = phi i32 [ %spec.select, %do.end124 ], [ -22, %do.end.i276 ], [ -12, %do.end17.i ], [ %call3.i277, %smsm_inbound_entry.exit.unwind_interfaces_crit_edge ]
  %89 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %id, align 4
  %90 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp154311.not = icmp eq i32 %91, 0
  br i1 %cmp154311.not, label %unwind_interfaces.for.end166_crit_edge, label %unwind_interfaces.for.body155_crit_edge

unwind_interfaces.for.body155_crit_edge:          ; preds = %unwind_interfaces
  br label %for.body155

unwind_interfaces.for.end166_crit_edge:           ; preds = %unwind_interfaces
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end166

for.body155:                                      ; preds = %for.inc164.for.body155_crit_edge, %unwind_interfaces.for.body155_crit_edge
  %storemerge261312 = phi i32 [ %inc165, %for.inc164.for.body155_crit_edge ], [ 0, %unwind_interfaces.for.body155_crit_edge ]
  %92 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %entries, align 4
  %domain = getelementptr %struct.smsm_entry, ptr %93, i32 %storemerge261312, i32 1
  %94 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %domain, align 4
  %tobool158.not = icmp eq ptr %95, null
  br i1 %tobool158.not, label %for.body155.for.inc164_crit_edge, label %if.then159

for.body155.for.inc164_crit_edge:                 ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc164

if.then159:                                       ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #10
  call void @irq_domain_remove(ptr noundef nonnull %95) #8
  br label %for.inc164

for.inc164:                                       ; preds = %if.then159, %for.body155.for.inc164_crit_edge
  %96 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %id, align 4
  %inc165 = add i32 %97, 1
  store i32 %inc165, ptr %id, align 4
  %98 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_entries, align 4
  %cmp154 = icmp ult i32 %inc165, %99
  br i1 %cmp154, label %for.inc164.for.body155_crit_edge, label %for.inc164.for.end166_crit_edge

for.inc164.for.end166_crit_edge:                  ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end166

for.inc164.for.body155_crit_edge:                 ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body155

for.end166:                                       ; preds = %for.inc164.for.end166_crit_edge, %unwind_interfaces.for.end166_crit_edge
  %100 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %state, align 4
  call void @qcom_smem_state_unregister(ptr noundef %101) #8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %smsm_parse_ipc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %call3.i to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.end166, %for.end151, %do.end103, %do.end88, %do.end80, %do.end65, %do.end57, %smsm_parse_ipc.exit.thread289, %do.end34.critedge, %devm_kcalloc.exit266.cleanup_crit_edge, %devm_kcalloc.exit266.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %do.end57 ], [ %41, %do.end65 ], [ %call73, %do.end80 ], [ %46, %do.end88 ], [ %58, %do.end103 ], [ %ret.0, %for.end166 ], [ 0, %for.end151 ], [ -22, %do.end34.critedge ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit266.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit266.thread ], [ -22, %smsm_parse_ipc.exit.thread289 ], [ %102, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smsm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_entries = getelementptr inbounds %struct.qcom_smsm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %entries = getelementptr inbounds %struct.qcom_smsm, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %domain = getelementptr %struct.smsm_entry, ptr %5, i32 %id.011, i32 1
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %7) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %id.011, 1
  %8 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_entries, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %state = getelementptr inbounds %struct.qcom_smsm, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  tail call void @qcom_smem_state_unregister(ptr noundef %11) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsm_get_size_info(ptr nocapture noundef %smsm) unnamed_addr #2 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !113
  %call = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 419, ptr noundef nonnull %size) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %magicptr = ptrtoint ptr %call to i32
  %1 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %do.end [
    i32 -2, label %land.lhs.true.do.end12_crit_edge
    i32 -517, label %land.lhs.true.cleanup_crit_edge
  ]

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %smsm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smsm, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29) #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp8.not = icmp eq i32 %5, 16
  br i1 %cmp8.not, label %if.end15, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge
  %6 = ptrtoint ptr %smsm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smsm, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.32) #11
  %num_entries = getelementptr inbounds %struct.qcom_smsm, ptr %smsm, i32 0, i32 3
  %8 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %num_entries, align 4
  %num_hosts = getelementptr inbounds %struct.qcom_smsm, ptr %smsm, i32 0, i32 2
  %9 = ptrtoint ptr %num_hosts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %num_hosts, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %num_entries16 = getelementptr inbounds %struct.anon.43, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %num_entries16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_entries16, align 4
  %num_entries17 = getelementptr inbounds %struct.qcom_smsm, ptr %smsm, i32 0, i32 3
  %12 = ptrtoint ptr %num_entries17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_entries17, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 4
  %num_hosts19 = getelementptr inbounds %struct.qcom_smsm, ptr %smsm, i32 0, i32 2
  %15 = ptrtoint ptr %num_hosts19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_hosts19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsm_get_size_info.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsm_get_size_info, %if.then24)) #8
          to label %cleanup [label %if.then24], !srcloc !114

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %smsm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %smsm, align 4
  %18 = ptrtoint ptr %num_entries17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_entries17, align 4
  %20 = ptrtoint ptr %num_hosts19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_hosts19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsm_get_size_info.__UNIQUE_ID_ddebug187, ptr noundef %17, ptr noundef nonnull @.str.36, i32 noundef %19, i32 noundef %21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end15, %do.end12, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end12 ], [ 0, %if.then24 ], [ %magicptr, %do.end ], [ 0, %if.end15 ], [ %magicptr, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_alloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_state_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_smem_state_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsm_update_bits(ptr noundef %data, i32 noundef %mask, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.qcom_smsm, ptr %data, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %local_state = getelementptr inbounds %struct.qcom_smsm, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %local_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_state, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %value
  %xor = xor i32 %or, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %if.then, label %do.body9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %done

do.body9:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %local_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local_state, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %num_hosts = getelementptr inbounds %struct.qcom_smsm, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_hosts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1750.not = icmp eq i32 %8, 0
  br i1 %cmp1750.not, label %do.body9.done_crit_edge, label %for.body.lr.ph

do.body9.done_crit_edge:                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body.lr.ph:                                   ; preds = %do.body9
  %hosts = getelementptr inbounds %struct.qcom_smsm, ptr %data, i32 0, i32 9
  %subscription = getelementptr inbounds %struct.qcom_smsm, ptr %data, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %host.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %hosts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hosts, align 4
  %11 = ptrtoint ptr %subscription to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subscription, align 4
  %add.ptr = getelementptr i32, ptr %12, i32 %host.051
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !115
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %and24 = and i32 %14, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.smsm_host, ptr %10, i32 %host.051
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %16, null
  br i1 %tobool26.not, label %land.lhs.true.for.inc_crit_edge, label %if.then27

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %ipc_offset = getelementptr %struct.smsm_host, ptr %10, i32 %host.051, i32 1
  %17 = ptrtoint ptr %ipc_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ipc_offset, align 4
  %ipc_bit = getelementptr %struct.smsm_host, ptr %10, i32 %host.051, i32 2
  %19 = ptrtoint ptr %ipc_bit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ipc_bit, align 4
  %shl = shl nuw i32 1, %20
  %call29 = tail call i32 @regmap_write(ptr noundef nonnull %16, i32 noundef %18, i32 noundef %shl) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %host.051, 1
  %21 = ptrtoint ptr %num_hosts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_hosts, align 4
  %cmp17 = icmp ult i32 %inc, %22
  br i1 %cmp17, label %for.inc.for.body_crit_edge, label %for.inc.done_crit_edge

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

done:                                             ; preds = %for.inc.done_crit_edge, %do.body9.done_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsm_intr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %irq.i63 = alloca i32, align 4
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_state = getelementptr inbounds %struct.smsm_entry, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %remote_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remote_state, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %last_value = getelementptr inbounds %struct.smsm_entry, ptr %data, i32 0, i32 5
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_value, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %last_value, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %3, ptr %last_value) #8, !srcloc !122
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !123
  %xor = xor i32 %asmresult.i, %3
  %irq_enabled = getelementptr inbounds %struct.smsm_entry, ptr %data, i32 0, i32 2
  %call19 = tail call i32 @_find_next_bit_be(ptr noundef %irq_enabled, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call19)
  %cmp69 = icmp ult i32 %call19, 32
  br i1 %cmp69, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irq_rising = getelementptr inbounds %struct.smsm_entry, ptr %data, i32 0, i32 3
  %domain = getelementptr inbounds %struct.smsm_entry, ptr %data, i32 0, i32 1
  %irq_falling = getelementptr inbounds %struct.smsm_entry, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ %call19, %for.body.lr.ph ], [ %call40, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.070
  %and = and i32 %shl, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and21 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end
  %5 = ptrtoint ptr %irq_rising to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %irq_rising, align 4
  %7 = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool26.not = icmp eq i32 %7, 0
  br i1 %tobool26.not, label %if.then23.for.inc_crit_edge, label %if.then27

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then27:                                        ; preds = %if.then23
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq.i, align 4, !annotation !113
  %call.i62 = call ptr @__irq_resolve_mapping(ptr noundef %9, i32 noundef %i.070, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i62, null
  br i1 %tobool.not.i, label %if.then27.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then27.irq_find_mapping.exit_crit_edge:        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then27.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then.i ], [ 0, %if.then27.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end
  %13 = ptrtoint ptr %irq_falling to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %irq_falling, align 4
  %15 = and i32 %14, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool32.not, label %if.else.for.inc_crit_edge, label %if.then33

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then33:                                        ; preds = %if.else
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i63) #8
  %18 = ptrtoint ptr %irq.i63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %irq.i63, align 4, !annotation !113
  %call.i64 = call ptr @__irq_resolve_mapping(ptr noundef %17, i32 noundef %i.070, ptr noundef nonnull %irq.i63) #8
  %tobool.not.i65 = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i65, label %if.then33.irq_find_mapping.exit68_crit_edge, label %if.then.i66

if.then33.irq_find_mapping.exit68_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit68

if.then.i66:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %irq.i63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i63, align 4
  br label %irq_find_mapping.exit68

irq_find_mapping.exit68:                          ; preds = %if.then.i66, %if.then33.irq_find_mapping.exit68_crit_edge
  %retval.0.i67 = phi i32 [ %20, %if.then.i66 ], [ 0, %if.then33.irq_find_mapping.exit68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i63) #8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %irq_find_mapping.exit68, %irq_find_mapping.exit
  %retval.0.i.sink = phi i32 [ %retval.0.i, %irq_find_mapping.exit ], [ %retval.0.i67, %irq_find_mapping.exit68 ]
  call void @handle_nested_irq(i32 noundef %retval.0.i.sink) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = add nuw nsw i32 %i.070, 1
  %call40 = call i32 @_find_next_bit_be(ptr noundef %irq_enabled, i32 noundef 32, i32 noundef %add) #8
  %cmp = icmp ult i32 %call40, 32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsm_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @smsm_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsm_mask_irq(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %subscription = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %subscription to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %subscription, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %local_host = getelementptr inbounds %struct.qcom_smsm, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %local_host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %local_host, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !115
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %subscription to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subscription, align 4
  %15 = ptrtoint ptr %local_host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %local_host, align 4
  %add.ptr9 = getelementptr i32, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #8, !srcloc !112
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq_enabled = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_enabled) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsm_unmask_irq(ptr nocapture noundef readonly %irqd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %remote_state = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %remote_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remote_state, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !115
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %shl = shl nuw i32 1, %3
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %last_value6 = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %3, ptr noundef %last_value6) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %last_value6) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %irq_enabled = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_enabled) #8
  %subscription = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %subscription to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subscription, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end.if.end19_crit_edge, label %if.then8

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %local_host = getelementptr inbounds %struct.qcom_smsm, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %local_host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %local_host, align 4
  %add.ptr = getelementptr i32, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !115
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %or = or i32 %15, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %subscription to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subscription, align 4
  %19 = ptrtoint ptr %local_host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %local_host, align 4
  %add.ptr18 = getelementptr i32, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %16) #8, !srcloc !112
  br label %if.end19

if.end19:                                         ; preds = %if.then8, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsm_set_irq_type(ptr nocapture noundef readonly %irqd, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %irq_rising6 = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 3
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_rising6) #8
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_rising6) #8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %and9 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %irq_falling14 = getelementptr inbounds %struct.smsm_entry, ptr %1, i32 0, i32 4
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_falling14) #8
  br label %cleanup

if.else13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_falling14) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else13 ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsm_get_irqchip_state(ptr nocapture noundef readonly %irqd, i32 noundef %which, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %which)
  %cmp.not = icmp eq i32 %which, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %remote_state = getelementptr inbounds %struct.smsm_entry, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %remote_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote_state, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %shl = shl nuw i32 1, %1
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_smsm__188_638_qcom_smsm_driver_init6, !1, !"__initcall__kmod_smsm__188_638_qcom_smsm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/smsm.c", i32 638, i32 1}
!2 = !{ptr @__exitcall_qcom_smsm_driver_exit, !1, !"__exitcall_qcom_smsm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description189, !4, !"__UNIQUE_ID_description189", i1 false, i1 false}
!4 = !{!"../drivers/soc/qcom/smsm.c", i32 640, i32 1}
!5 = !{ptr @__UNIQUE_ID_file190, !6, !"__UNIQUE_ID_file190", i1 false, i1 false}
!6 = !{!"../drivers/soc/qcom/smsm.c", i32 641, i32 1}
!7 = !{ptr @__UNIQUE_ID_license191, !6, !"__UNIQUE_ID_license191", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/smsm.c", i32 634, i32 12}
!10 = !{ptr @qcom_smsm_driver, !11, !"qcom_smsm_driver", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/smsm.c", i32 630, i32 31}
!12 = !{ptr @qcom_smsm_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/smsm.c", i32 491, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/soc/qcom/smsm.c", i32 512, i32 36}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/smsm.c", i32 516, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qcom_smsm_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @qcom_smsm_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/smsm.c", i32 521, i32 9}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/smsm.c", i32 535, i32 3}
!29 = !{ptr @qcom_smsm_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qcom_smsm_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/qcom/smsm.c", i32 541, i32 3}
!33 = !{ptr @qcom_smsm_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qcom_smsm_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/qcom/smsm.c", i32 549, i32 3}
!37 = !{ptr @qcom_smsm_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_smsm_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/smsm.c", i32 555, i32 3}
!41 = !{ptr @qcom_smsm_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @qcom_smsm_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/qcom/smsm.c", i32 566, i32 3}
!45 = !{ptr @qcom_smsm_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @qcom_smsm_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/qcom/smsm.c", i32 572, i32 36}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/qcom/smsm.c", i32 575, i32 36}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/qcom/smsm.c", i32 577, i32 4}
!53 = !{ptr @qcom_smsm_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @qcom_smsm_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/qcom/smsm.c", i32 456, i32 4}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @smsm_get_size_info._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @smsm_get_size_info._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/qcom/smsm.c", i32 459, i32 3}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @smsm_get_size_info._entry.31, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @smsm_get_size_info._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/smsm.c", i32 468, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @smsm_get_size_info.__UNIQUE_ID_ddebug187, !66, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/qcom/smsm.c", i32 371, i32 29}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/qcom/smsm.c", i32 382, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @smsm_parse_ipc._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @smsm_parse_ipc._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/qcom/smsm.c", i32 388, i32 3}
!78 = !{ptr @smsm_parse_ipc._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @smsm_parse_ipc._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @smsm_state_ops, !81, !"smsm_state_ops", i1 false, i1 false}
!81 = !{!"../drivers/soc/qcom/smsm.c", i32 186, i32 41}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/qcom/smsm.c", i32 410, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @smsm_inbound_entry._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @smsm_inbound_entry._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/qcom/smsm.c", i32 419, i32 3}
!89 = !{ptr @smsm_inbound_entry._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @smsm_inbound_entry._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/soc/qcom/smsm.c", i32 425, i32 3}
!93 = !{ptr @smsm_inbound_entry._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @smsm_inbound_entry._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @smsm_irq_ops, !96, !"smsm_irq_ops", i1 false, i1 false}
!96 = !{!"../drivers/soc/qcom/smsm.c", i32 350, i32 36}
!97 = !{ptr @smsm_irq_chip, !98, !"smsm_irq_chip", i1 false, i1 false}
!98 = !{!"../drivers/soc/qcom/smsm.c", i32 323, i32 24}
!99 = !{ptr @qcom_smsm_of_match, !100, !"qcom_smsm_of_match", i1 false, i1 false}
!100 = !{!"../drivers/soc/qcom/smsm.c", i32 624, i32 34}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i64 2153245659}
!112 = !{i64 4213185}
!113 = !{!"auto-init"}
!114 = !{i64 2148732377, i64 2148732382, i64 2148732395, i64 2148732439, i64 2148732473, i64 2148732494}
!115 = !{i64 4213603}
!116 = !{i64 2153210952}
!117 = !{i64 2153211166}
!118 = !{i64 2153211489}
!119 = !{i64 2153212007}
!120 = !{i64 2153212589}
!121 = !{i64 2153213430}
!122 = !{i64 757330, i64 757347, i64 757371, i64 757397, i64 757415}
!123 = !{i64 2153213775}
!124 = !{i64 2153214840}
!125 = !{i64 2153215152}
!126 = !{i64 2153215952}
!127 = !{i64 2153216917}
!128 = !{i64 2153217229}
!129 = !{i64 2153218349}
