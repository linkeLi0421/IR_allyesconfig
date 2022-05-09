; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/smp2p.c_pt.bc'
source_filename = "../drivers/soc/qcom/smp2p.c"
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
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.qcom_smem_state_ops = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.qcom_smp2p = type { ptr, ptr, ptr, [2 x i32], i32, i8, i8, i8, i32, i32, ptr, i32, i32, %struct.mbox_client, ptr, %struct.list_head, %struct.list_head }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.smp2p_smem_item = type { i32, i8, [3 x i8], i16, i16, i16, i16, i32, [16 x %struct.anon.43] }
%struct.anon.43 = type { [16 x i8], i32 }
%struct.smp2p_entry = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, [1 x i32], [1 x i32], [1 x i32], ptr, %struct.spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_smp2p__187_693_qcom_smp2p_driver_init6 = internal global ptr @qcom_smp2p_driver_init, section ".initcall6.init", align 4
@qcom_smp2p_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_smp2p_probe, ptr @qcom_smp2p_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_smp2p_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_smp2p_driver_exit = internal global ptr @qcom_smp2p_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [63 x i8] c"smp2p.description=Qualcomm Shared Memory Point to Point driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [34 x i8] c"smp2p.file=drivers/soc/qcom/smp2p\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [21 x i8] c"smp2p.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_smp2p\00", [21 x i8] zeroinitializer }, align 32
@qcom_smp2p_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,smp2p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,smem\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,local-pid\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,remote-pid\00", [16 x i8] zeroinitializer }, align 32
@qcom_smp2p_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&entry->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,entry-name\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smp2p\00", [26 x i8] zeroinitializer }, align 32
@qcom_smp2p_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 616, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_smp2p_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/soc/qcom/smp2p.c\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_smp2p_probe._entry_ptr = internal global ptr @qcom_smp2p_probe._entry, section ".printk_index", align 4
@qcom_smp2p_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 655, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to read %s\0A\00", [45 x i8] zeroinitializer }, align 32
@qcom_smp2p_probe._entry_ptr.15 = internal global ptr @qcom_smp2p_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,ipc\00", [23 x i8] zeroinitializer }, align 32
@smp2p_parse_ipc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.10, i32 491, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no qcom,ipc node\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smp2p_parse_ipc\00", [16 x i8] zeroinitializer }, align 32
@smp2p_parse_ipc._entry_ptr = internal global ptr @smp2p_parse_ipc._entry, section ".printk_index", align 4
@smp2p_parse_ipc._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.10, i32 502, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no offset in %s\0A\00", [47 x i8] zeroinitializer }, align 32
@smp2p_parse_ipc._entry_ptr.21 = internal global ptr @smp2p_parse_ipc._entry.19, section ".printk_index", align 4
@smp2p_parse_ipc._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.10, i32 508, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no bit in %s\0A\00", [18 x i8] zeroinitializer }, align 32
@smp2p_parse_ipc._entry_ptr.24 = internal global ptr @smp2p_parse_ipc._entry.22, section ".printk_index", align 4
@qcom_smp2p_alloc_outbound_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 450, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to allocate local smp2p item\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qcom_smp2p_alloc_outbound_item\00", [33 x i8] zeroinitializer }, align 32
@qcom_smp2p_alloc_outbound_item._entry_ptr = internal global ptr @qcom_smp2p_alloc_outbound_item._entry, section ".printk_index", align 4
@qcom_smp2p_alloc_outbound_item._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.10, i32 456, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to acquire local smp2p item\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_smp2p_alloc_outbound_item._entry_ptr.29 = internal global ptr @qcom_smp2p_alloc_outbound_item._entry.27, section ".printk_index", align 4
@smp2p_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @smp2p_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@qcom_smp2p_inbound_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.10, i32 383, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add irq_domain\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_smp2p_inbound_entry\00", [39 x i8] zeroinitializer }, align 32
@qcom_smp2p_inbound_entry._entry_ptr = internal global ptr @qcom_smp2p_inbound_entry._entry, section ".printk_index", align 4
@smp2p_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smp2p_mask_irq, ptr null, ptr @smp2p_unmask_irq, ptr null, ptr null, ptr null, ptr @smp2p_set_irq_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@smp2p_state_ops = internal constant { %struct.qcom_smem_state_ops, [28 x i8] } { %struct.qcom_smem_state_ops { ptr @smp2p_update_bits }, [28 x i8] zeroinitializer }, align 32
@qcom_smp2p_outbound_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.10, i32 432, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register qcom_smem_state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_smp2p_outbound_entry\00", [38 x i8] zeroinitializer }, align 32
@qcom_smp2p_outbound_entry._entry_ptr = internal global ptr @qcom_smp2p_outbound_entry._entry, section ".printk_index", align 4
@qcom_smp2p_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.10, i32 292, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to acquire remote smp2p item\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_smp2p_intr\00", [16 x i8] zeroinitializer }, align 32
@qcom_smp2p_intr._entry_ptr = internal global ptr @qcom_smp2p_intr._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"qcom_smp2p_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 685, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 689, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"qcom_smp2p_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 679, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 534, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 540, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 545, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 581, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 583, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 589, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 614, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 616, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 655, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 489, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 491, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 502, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 508, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 449, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 456, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"smp2p_irq_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 372, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 383, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"smp2p_irq_chip\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 351, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"smp2p_state_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 410, i32 41 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 432, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [28 x i8] c"../drivers/soc/qcom/smp2p.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 291, i32 4 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_qcom_smp2p_driver_exit, ptr @__initcall__kmod_smp2p__187_693_qcom_smp2p_driver_init6, ptr @qcom_smp2p_alloc_outbound_item._entry, ptr @qcom_smp2p_alloc_outbound_item._entry.27, ptr @qcom_smp2p_alloc_outbound_item._entry_ptr, ptr @qcom_smp2p_alloc_outbound_item._entry_ptr.29, ptr @qcom_smp2p_driver_exit, ptr @qcom_smp2p_inbound_entry._entry, ptr @qcom_smp2p_inbound_entry._entry_ptr, ptr @qcom_smp2p_intr._entry, ptr @qcom_smp2p_intr._entry_ptr, ptr @qcom_smp2p_outbound_entry._entry, ptr @qcom_smp2p_outbound_entry._entry_ptr, ptr @qcom_smp2p_probe._entry, ptr @qcom_smp2p_probe._entry.13, ptr @qcom_smp2p_probe._entry_ptr, ptr @qcom_smp2p_probe._entry_ptr.15, ptr @smp2p_parse_ipc._entry, ptr @smp2p_parse_ipc._entry.19, ptr @smp2p_parse_ipc._entry.22, ptr @smp2p_parse_ipc._entry_ptr, ptr @smp2p_parse_ipc._entry_ptr.21, ptr @smp2p_parse_ipc._entry_ptr.24, ptr @qcom_smp2p_driver, ptr @.str, ptr @qcom_smp2p_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @qcom_smp2p_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @smp2p_irq_ops, ptr @.str.30, ptr @.str.31, ptr @smp2p_irq_chip, ptr @smp2p_state_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp2p_parse_ipc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp2p_parse_ipc._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp2p_parse_ipc._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_alloc_outbound_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_alloc_outbound_item._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp2p_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_inbound_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp2p_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp2p_state_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_outbound_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smp2p_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smp2p_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_smp2p_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smp2p_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_smp2p_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smp2p_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %buf.i = alloca [16 x i8], align 1
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %inbound = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %inbound to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %inbound, ptr %inbound, align 4
  %prev.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inbound, ptr %prev.i, align 4
  %outbound = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %outbound to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %outbound, ptr %outbound, align 4
  %prev.i225 = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %prev.i225 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %outbound, ptr %prev.i225, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %smem_items = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 3
  %call.i226 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %smem_items, i32 noundef 2, i32 noundef 0) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i226, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i226)
  %tobool6.not = icmp sgt i32 %call.i226, -1
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %local_pid = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef %local_pid, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool12.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.end132_crit_edge

if.end8.do.end132_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132

if.end14:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %remote_pid = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 9
  %call.i.i227 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef %remote_pid, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i227)
  %tobool18.not = icmp sgt i32 %call.i.i227, -1
  br i1 %tobool18.not, label %if.end20, label %if.end14.do.end132_crit_edge

if.end14.do.end132_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132

if.end20:                                         ; preds = %if.end14
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %mbox_client = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 13
  %13 = ptrtoint ptr %mbox_client to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %mbox_client, align 4
  %knows_txdone = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 13, i32 3
  %14 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %knows_txdone, align 4
  %call28 = tail call ptr @mbox_request_channel(ptr noundef %mbox_client, i32 noundef 0) #8
  %mbox_chan = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call28, ptr %mbox_chan, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end23.if.end44_crit_edge

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then31:                                        ; preds = %if.end23
  %16 = ptrtoint ptr %call28 to i32
  %cmp34.not = icmp eq ptr %call28, inttoptr (i32 -19 to ptr)
  br i1 %cmp34.not, label %if.end38, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then31
  %17 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %mbox_chan, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %22 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i228 = call i32 @__of_parse_phandle_with_args(ptr noundef %21, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i228)
  %tobool.not.i.i = icmp eq i32 %call.i.i228, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end38
  %23 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %24) #8
  %ipc_regmap.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %ipc_regmap.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call2.i, ptr %ipc_regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %smp2p_parse_ipc.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node.i, align 8
  %ipc_offset.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 11
  %call10.i = call i32 @of_property_read_u32_index(ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef %ipc_offset.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i229 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i229, label %do.end14.i, label %if.end15.i

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  %28 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i, align 8
  %ipc_bit.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 12
  %call17.i = call i32 @of_property_read_u32_index(ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef %ipc_bit.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %do.end22.i, label %if.end15.i.if.end44_crit_edge

if.end15.i.if.end44_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16) #11
  br label %cleanup

smp2p_parse_ipc.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call2.i to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end15.i.if.end44_crit_edge, %if.end23.if.end44_crit_edge
  %arrayidx.i = getelementptr %struct.qcom_smp2p, ptr %call.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %remote_pid, align 4
  %call.i230 = call i32 @qcom_smem_alloc(i32 noundef %34, i32 noundef %32, i32 noundef 340) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i230)
  %cmp.i231 = icmp sgt i32 %call.i230, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call.i230)
  %cmp1.not.i = icmp eq i32 %call.i230, -17
  %or.cond.i = or i1 %cmp.i231, %cmp1.not.i
  br i1 %or.cond.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i230)
  %cmp2.not.i = icmp eq i32 %call.i230, -517
  br i1 %cmp2.not.i, label %if.then.i.release_mbox_crit_edge, label %do.end.i232

if.then.i.release_mbox_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_mbox

do.end.i232:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.25) #11
  br label %release_mbox

if.end4.i:                                        ; preds = %if.end44
  %call5.i = call ptr @qcom_smem_get(i32 noundef %34, i32 noundef %32, ptr noundef null) #8
  %cmp.i.i233 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i233, label %qcom_smp2p_alloc_outbound_item.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end4.i
  %37 = getelementptr inbounds i8, ptr %call5.i, i32 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 336)
  %39 = ptrtoint ptr %call5.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 1347244836, ptr %call5.i, align 1
  %40 = ptrtoint ptr %local_pid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %local_pid, align 4
  %conv.i = trunc i32 %41 to i16
  %local_pid14.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %call5.i, i32 0, i32 3
  %42 = ptrtoint ptr %local_pid14.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %conv.i, ptr %local_pid14.i, align 1
  %43 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %remote_pid, align 4
  %conv16.i = trunc i32 %44 to i16
  %remote_pid17.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %call5.i, i32 0, i32 4
  %45 = ptrtoint ptr %remote_pid17.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %conv16.i, ptr %remote_pid17.i, align 1
  %total_entries.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %call5.i, i32 0, i32 5
  %46 = ptrtoint ptr %total_entries.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 16, ptr %total_entries.i, align 1
  %valid_entries.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %call5.i, i32 0, i32 6
  %47 = ptrtoint ptr %valid_entries.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 0, ptr %valid_entries.i, align 1
  %features.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %call5.i, i32 0, i32 2
  %48 = ptrtoint ptr %features.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 3)
  store i24 1, ptr %features.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %37, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mbox_chan, align 4
  %tobool.not.i.i234 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i234, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i235 = call i32 @mbox_send_message(ptr noundef nonnull %51, ptr noundef null) #8
  %52 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_client_txdone(ptr noundef %53, i32 noundef 0) #8
  br label %qcom_smp2p_alloc_outbound_item.exit.thread261

if.else.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %ipc_regmap.i.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 10
  %54 = ptrtoint ptr %ipc_regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ipc_regmap.i.i, align 4
  %ipc_offset.i.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 11
  %56 = ptrtoint ptr %ipc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ipc_offset.i.i, align 4
  %ipc_bit.i.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 12
  %58 = ptrtoint ptr %ipc_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ipc_bit.i.i, align 4
  %shl.i.i = shl nuw i32 1, %59
  %call3.i.i = call i32 @regmap_write(ptr noundef %55, i32 noundef %57, i32 noundef %shl.i.i) #8
  br label %qcom_smp2p_alloc_outbound_item.exit.thread261

qcom_smp2p_alloc_outbound_item.exit.thread261:    ; preds = %if.else.i.i, %if.then.i.i
  %out21.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 2
  %60 = ptrtoint ptr %out21.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i, ptr %out21.i, align 4
  br label %if.end48

qcom_smp2p_alloc_outbound_item.exit:              ; preds = %if.end4.i
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.28) #11
  %63 = ptrtoint ptr %call5.i to i32
  %cmp46 = icmp slt ptr %call5.i, null
  br i1 %cmp46, label %qcom_smp2p_alloc_outbound_item.exit.release_mbox_crit_edge, label %qcom_smp2p_alloc_outbound_item.exit.if.end48_crit_edge

qcom_smp2p_alloc_outbound_item.exit.if.end48_crit_edge: ; preds = %qcom_smp2p_alloc_outbound_item.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

qcom_smp2p_alloc_outbound_item.exit.release_mbox_crit_edge: ; preds = %qcom_smp2p_alloc_outbound_item.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_mbox

if.end48:                                         ; preds = %qcom_smp2p_alloc_outbound_item.exit.if.end48_crit_edge, %qcom_smp2p_alloc_outbound_item.exit.thread261
  %64 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node, align 8
  %call51 = call ptr @of_get_next_available_child(ptr noundef %65, ptr noundef null) #8
  %cmp52.not275 = icmp eq ptr %call51, null
  br i1 %cmp52.not275, label %if.end48.for.end_crit_edge, label %for.body.lr.ph

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %out2.i = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.0276 = phi ptr [ %call51, %for.body.lr.ph ], [ %call81, %for.inc.for.body_crit_edge ]
  %call.i237 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #8
  %tobool55.not = icmp eq ptr %call.i237, null
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %node.0276) #8
  br label %unwind_interfaces

if.end57:                                         ; preds = %for.body
  %smp2p58 = getelementptr inbounds %struct.smp2p_entry, ptr %call.i237, i32 0, i32 1
  %66 = ptrtoint ptr %smp2p58 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %smp2p58, align 4
  %lock = getelementptr inbounds %struct.smp2p_entry, ptr %call.i237, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @qcom_smp2p_probe.__key, i16 noundef signext 3) #8
  %name = getelementptr inbounds %struct.smp2p_entry, ptr %call.i237, i32 0, i32 2
  %call60 = call i32 @of_property_read_string(ptr noundef nonnull %node.0276, ptr noundef nonnull @.str.5, ptr noundef %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %node.0276) #8
  br label %unwind_interfaces

if.end63:                                         ; preds = %if.end57
  %call.i238 = call ptr @of_find_property(ptr noundef nonnull %node.0276, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i238, null
  br i1 %tobool.i.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.end63
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.0276, i32 0, i32 3
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @smp2p_irq_ops, ptr noundef nonnull %call.i237) #8
  %domain.i = getelementptr inbounds %struct.smp2p_entry, ptr %call.i237, i32 0, i32 5
  %67 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call1.i.i, ptr %domain.i, align 4
  %tobool.not.i239 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i239, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.30) #11
  call void @of_node_put(ptr noundef nonnull %node.0276) #8
  br label %unwind_interfaces

if.end69:                                         ; preds = %if.then65
  %70 = ptrtoint ptr %inbound to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inbound, align 4
  %call.i.i242 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i237, ptr noundef %inbound, ptr noundef %71) #8
  br i1 %call.i.i242, label %if.end69.for.inc.sink.split_crit_edge, label %if.end69.for.inc_crit_edge

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end69.for.inc.sink.split_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end63
  %72 = ptrtoint ptr %out2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %out2.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #8
  %74 = call ptr @memset(ptr %buf.i, i32 0, i32 16)
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 4
  %call.i243 = call i32 @strlcpy(ptr noundef nonnull %buf.i, ptr noundef %76, i32 noundef 16) #8
  %valid_entries.i244 = getelementptr inbounds %struct.smp2p_smem_item, ptr %73, i32 0, i32 6
  %77 = ptrtoint ptr %valid_entries.i244 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %valid_entries.i244, align 1
  %idxprom.i = zext i16 %78 to i32
  %arrayidx.i245 = getelementptr %struct.smp2p_smem_item, ptr %73, i32 0, i32 8, i32 %idxprom.i
  %79 = call ptr @memcpy(ptr %arrayidx.i245, ptr %buf.i, i32 16)
  %value.i = getelementptr %struct.smp2p_smem_item, ptr %73, i32 0, i32 8, i32 %idxprom.i, i32 1
  %value10.i = getelementptr inbounds %struct.smp2p_entry, ptr %call.i237, i32 0, i32 3
  %80 = ptrtoint ptr %value10.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %value.i, ptr %value10.i, align 4
  %81 = load i16, ptr %valid_entries.i244, align 1
  %inc.i = add i16 %81, 1
  store i16 %inc.i, ptr %valid_entries.i244, align 1
  %call12.i = call ptr @qcom_smem_state_register(ptr noundef nonnull %node.0276, ptr noundef nonnull @smp2p_state_ops, ptr noundef nonnull %call.i237) #8
  %state.i = getelementptr inbounds %struct.smp2p_entry, ptr %call.i237, i32 0, i32 9
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call12.i, ptr %state.i, align 4
  %cmp.i.i246 = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i246, label %qcom_smp2p_outbound_entry.exit, label %qcom_smp2p_outbound_entry.exit.thread

qcom_smp2p_outbound_entry.exit.thread:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #8
  br label %if.end75

qcom_smp2p_outbound_entry.exit:                   ; preds = %if.else
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.32) #11
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #8
  %cmp73 = icmp slt ptr %86, null
  br i1 %cmp73, label %if.then74, label %qcom_smp2p_outbound_entry.exit.if.end75_crit_edge

qcom_smp2p_outbound_entry.exit.if.end75_crit_edge: ; preds = %qcom_smp2p_outbound_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then74:                                        ; preds = %qcom_smp2p_outbound_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %86 to i32
  call void @of_node_put(ptr noundef nonnull %node.0276) #8
  br label %unwind_interfaces

if.end75:                                         ; preds = %qcom_smp2p_outbound_entry.exit.if.end75_crit_edge, %qcom_smp2p_outbound_entry.exit.thread
  %88 = ptrtoint ptr %outbound to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %outbound, align 4
  %call.i.i249 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i237, ptr noundef %outbound, ptr noundef %89) #8
  br i1 %call.i.i249, label %if.end75.for.inc.sink.split_crit_edge, label %if.end75.for.inc_crit_edge

if.end75.for.inc_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end75.for.inc.sink.split_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end75.for.inc.sink.split_crit_edge, %if.end69.for.inc.sink.split_crit_edge
  %.sink300 = phi ptr [ %71, %if.end69.for.inc.sink.split_crit_edge ], [ %89, %if.end75.for.inc.sink.split_crit_edge ]
  %outbound.sink299 = phi ptr [ %inbound, %if.end69.for.inc.sink.split_crit_edge ], [ %outbound, %if.end75.for.inc.sink.split_crit_edge ]
  %prev1.i.i250 = getelementptr inbounds %struct.list_head, ptr %.sink300, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i250 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i237, ptr %prev1.i.i250, align 4
  %91 = ptrtoint ptr %call.i237 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %.sink300, ptr %call.i237, align 4
  %prev3.i.i251 = getelementptr inbounds %struct.list_head, ptr %call.i237, i32 0, i32 1
  %92 = ptrtoint ptr %prev3.i.i251 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %outbound.sink299, ptr %prev3.i.i251, align 4
  %93 = ptrtoint ptr %outbound.sink299 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call.i237, ptr %outbound.sink299, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end75.for.inc_crit_edge, %if.end69.for.inc_crit_edge
  %94 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %of_node, align 8
  %call81 = call ptr @of_get_next_available_child(ptr noundef %95, ptr noundef nonnull %node.0276) #8
  %cmp52.not = icmp eq ptr %call81, null
  br i1 %cmp52.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end48.for.end_crit_edge
  call fastcc void @qcom_smp2p_kick(ptr noundef nonnull %call.i)
  %call83 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call21, ptr noundef null, ptr noundef nonnull @qcom_smp2p_intr, i32 noundef 8192, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %unwind_interfaces

if.end90:                                         ; preds = %for.end
  call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call93 = call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end90.cleanup_crit_edge, label %set_wake_irq_fail

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

set_wake_irq_fail:                                ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  call void @dev_pm_clear_wake_irq(ptr noundef %dev) #8
  br label %unwind_interfaces

unwind_interfaces:                                ; preds = %set_wake_irq_fail, %do.end88, %if.then74, %if.then68, %if.then62, %if.then56
  %ret.0 = phi i32 [ %call60, %if.then62 ], [ -12, %if.then68 ], [ %87, %if.then74 ], [ -12, %if.then56 ], [ %call83, %do.end88 ], [ %call93, %set_wake_irq_fail ]
  %96 = ptrtoint ptr %inbound to i32
  call void @__asan_load4_noabort(i32 %96)
  %entry1.0279 = load ptr, ptr %inbound, align 4
  %cmp102.not280 = icmp eq ptr %entry1.0279, %inbound
  br i1 %cmp102.not280, label %unwind_interfaces.for.cond116.preheader_crit_edge, label %unwind_interfaces.for.body103_crit_edge

unwind_interfaces.for.body103_crit_edge:          ; preds = %unwind_interfaces
  br label %for.body103

unwind_interfaces.for.cond116.preheader_crit_edge: ; preds = %unwind_interfaces
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %for.body103.for.cond116.preheader_crit_edge, %unwind_interfaces.for.cond116.preheader_crit_edge
  %97 = ptrtoint ptr %outbound to i32
  call void @__asan_load4_noabort(i32 %97)
  %entry1.1282 = load ptr, ptr %outbound, align 4
  %cmp119.not283 = icmp eq ptr %entry1.1282, %outbound
  br i1 %cmp119.not283, label %for.cond116.preheader.for.end128_crit_edge, label %for.cond116.preheader.for.body121_crit_edge

for.cond116.preheader.for.body121_crit_edge:      ; preds = %for.cond116.preheader
  br label %for.body121

for.cond116.preheader.for.end128_crit_edge:       ; preds = %for.cond116.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end128

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %unwind_interfaces.for.body103_crit_edge
  %entry1.0281 = phi ptr [ %entry1.0, %for.body103.for.body103_crit_edge ], [ %entry1.0279, %unwind_interfaces.for.body103_crit_edge ]
  %domain = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.0281, i32 0, i32 5
  %98 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %99) #8
  %100 = ptrtoint ptr %entry1.0281 to i32
  call void @__asan_load4_noabort(i32 %100)
  %entry1.0 = load ptr, ptr %entry1.0281, align 4
  %cmp102.not = icmp eq ptr %entry1.0, %inbound
  br i1 %cmp102.not, label %for.body103.for.cond116.preheader_crit_edge, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body103

for.body103.for.cond116.preheader_crit_edge:      ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond116.preheader

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.cond116.preheader.for.body121_crit_edge
  %entry1.1284 = phi ptr [ %entry1.1, %for.body121.for.body121_crit_edge ], [ %entry1.1282, %for.cond116.preheader.for.body121_crit_edge ]
  %state = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.1284, i32 0, i32 9
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state, align 4
  call void @qcom_smem_state_unregister(ptr noundef %102) #8
  %103 = ptrtoint ptr %entry1.1284 to i32
  call void @__asan_load4_noabort(i32 %103)
  %entry1.1 = load ptr, ptr %entry1.1284, align 4
  %cmp119.not = icmp eq ptr %entry1.1, %outbound
  br i1 %cmp119.not, label %for.body121.for.end128_crit_edge, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body121

for.body121.for.end128_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end128

for.end128:                                       ; preds = %for.body121.for.end128_crit_edge, %for.cond116.preheader.for.end128_crit_edge
  %out = getelementptr inbounds %struct.qcom_smp2p, ptr %call.i, i32 0, i32 2
  %104 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %out, align 4
  %valid_entries = getelementptr inbounds %struct.smp2p_smem_item, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %valid_entries to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 0, ptr %valid_entries, align 1
  br label %release_mbox

release_mbox:                                     ; preds = %for.end128, %qcom_smp2p_alloc_outbound_item.exit.release_mbox_crit_edge, %do.end.i232, %if.then.i.release_mbox_crit_edge
  %ret.1 = phi i32 [ %63, %qcom_smp2p_alloc_outbound_item.exit.release_mbox_crit_edge ], [ %ret.0, %for.end128 ], [ -517, %if.then.i.release_mbox_crit_edge ], [ %call.i230, %do.end.i232 ]
  %107 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_free_channel(ptr noundef %108) #8
  br label %cleanup

do.end132:                                        ; preds = %if.end14.do.end132_crit_edge, %if.end8.do.end132_crit_edge
  %key.0 = phi ptr [ @.str.2, %if.end8.do.end132_crit_edge ], [ @.str.3, %if.end14.do.end132_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %key.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end132, %release_mbox, %if.end90.cleanup_crit_edge, %smp2p_parse_ipc.exit, %do.end22.i, %do.end14.i, %do.end.i, %if.then31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end132 ], [ %ret.1, %release_mbox ], [ -12, %entry.cleanup_crit_edge ], [ %8, %if.end.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %30, %smp2p_parse_ipc.exit ], [ 0, %if.end90.cleanup_crit_edge ], [ %16, %if.then31.cleanup_crit_edge ], [ -19, %do.end.i ], [ -22, %do.end22.i ], [ -22, %do.end14.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smp2p_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #8
  %inbound = getelementptr inbounds %struct.qcom_smp2p, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %inbound to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.036 = load ptr, ptr %inbound, align 4
  %cmp.not37 = icmp eq ptr %entry1.036, %inbound
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.038 = phi ptr [ %entry1.0, %for.body.for.body_crit_edge ], [ %entry1.036, %entry.for.body_crit_edge ]
  %domain = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.038, i32 0, i32 5
  %3 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %4) #8
  %5 = ptrtoint ptr %entry1.038 to i32
  call void @__asan_load4_noabort(i32 %5)
  %entry1.0 = load ptr, ptr %entry1.038, align 4
  %cmp.not = icmp eq ptr %entry1.0, %inbound
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %outbound = getelementptr inbounds %struct.qcom_smp2p, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %outbound to i32
  call void @__asan_load4_noabort(i32 %6)
  %entry1.139 = load ptr, ptr %outbound, align 4
  %cmp15.not40 = icmp eq ptr %entry1.139, %outbound
  br i1 %cmp15.not40, label %for.end.for.end24_crit_edge, label %for.end.for.body17_crit_edge

for.end.for.body17_crit_edge:                     ; preds = %for.end
  br label %for.body17

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.end.for.body17_crit_edge
  %entry1.141 = phi ptr [ %entry1.1, %for.body17.for.body17_crit_edge ], [ %entry1.139, %for.end.for.body17_crit_edge ]
  %state = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.141, i32 0, i32 9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  tail call void @qcom_smem_state_unregister(ptr noundef %8) #8
  %9 = ptrtoint ptr %entry1.141 to i32
  call void @__asan_load4_noabort(i32 %9)
  %entry1.1 = load ptr, ptr %entry1.141, align 4
  %cmp15.not = icmp eq ptr %entry1.1, %outbound
  br i1 %cmp15.not, label %for.body17.for.end24_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.body17.for.end24_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end24

for.end24:                                        ; preds = %for.body17.for.end24_crit_edge, %for.end.for.end24_crit_edge
  %mbox_chan = getelementptr inbounds %struct.qcom_smp2p, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox_chan, align 4
  tail call void @mbox_free_channel(ptr noundef %11) #8
  %out = getelementptr inbounds %struct.qcom_smp2p, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out, align 4
  %valid_entries = getelementptr inbounds %struct.smp2p_smem_item, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %valid_entries to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 0, ptr %valid_entries, align 1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_smp2p_kick(ptr nocapture noundef readonly %smp2p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %mbox_chan = getelementptr inbounds %struct.qcom_smp2p, ptr %smp2p, i32 0, i32 14
  %0 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_chan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @mbox_send_message(ptr noundef nonnull %1, ptr noundef null) #8
  %2 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_chan, align 4
  tail call void @mbox_client_txdone(ptr noundef %3, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ipc_regmap = getelementptr inbounds %struct.qcom_smp2p, ptr %smp2p, i32 0, i32 10
  %4 = ptrtoint ptr %ipc_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipc_regmap, align 4
  %ipc_offset = getelementptr inbounds %struct.qcom_smp2p, ptr %smp2p, i32 0, i32 11
  %6 = ptrtoint ptr %ipc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ipc_offset, align 4
  %ipc_bit = getelementptr inbounds %struct.qcom_smp2p, ptr %smp2p, i32 0, i32 12
  %8 = ptrtoint ptr %ipc_bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ipc_bit, align 4
  %shl = shl nuw i32 1, %9
  %call3 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef %shl) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smp2p_intr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %buf.i = alloca [16 x i8], align 1
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smem_items = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %smem_items to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smem_items, align 4
  %remote_pid = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %remote_pid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %size, align 4, !annotation !97
  %in1 = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = call ptr @qcom_smem_get(i32 noundef %3, i32 noundef %1, ptr noundef nonnull %size) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.34) #11
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %in1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %in1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %negotiation_done = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %negotiation_done to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %negotiation_done, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.then11_crit_edge

if.end5.if.then11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then7:                                         ; preds = %if.end5
  %out1.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %out1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out1.i, align 4
  %14 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in1, align 4
  %version.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %version.i, align 1
  %version3.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %version3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %version3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp.i29 = icmp eq i8 %17, %19
  br i1 %cmp.i29, label %if.then.i, label %if.end8

if.then.i:                                        ; preds = %if.then7
  %features.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %features.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 3)
  %bf.load.i = load i24, ptr %features.i, align 1
  %features6.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %13, i32 0, i32 2
  %21 = ptrtoint ptr %features6.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 3)
  %bf.load7.i = load i24, ptr %features6.i, align 1
  %and21.i = and i24 %bf.load7.i, %bf.load.i
  store i24 %and21.i, ptr %features6.i, align 1
  %22 = and i24 %and21.i, 1
  %tobool.not.i = icmp eq i24 %22, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then13.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %ssr_ack_enabled.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 5
  %23 = ptrtoint ptr %ssr_ack_enabled.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %ssr_ack_enabled.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i.if.end.i_crit_edge
  %24 = ptrtoint ptr %negotiation_done to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %negotiation_done, align 2
  br label %if.then11

if.end8:                                          ; preds = %if.then7
  %25 = ptrtoint ptr %negotiation_done to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr = load i8, ptr %negotiation_done, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool10.not = icmp eq i8 %.pr, 0
  br i1 %tobool10.not, label %if.end8.out_crit_edge, label %if.end8.if.then11_crit_edge

if.end8.if.then11_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11:                                        ; preds = %if.end8.if.then11_crit_edge, %if.end.i, %if.end5.if.then11_crit_edge
  %ssr_ack_enabled.i30 = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %ssr_ack_enabled.i30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ssr_ack_enabled.i30, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i31 = icmp eq i8 %27, 0
  br i1 %tobool.not.i31, label %if.then11.qcom_smp2p_check_ssr.exit_crit_edge, label %if.end.i33

if.then11.qcom_smp2p_check_ssr.exit_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_smp2p_check_ssr.exit

if.end.i33:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in1, align 4
  %flags.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %flags.i, align 1
  %and.i = and i32 %31, 1
  %ssr_ack.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 6
  %32 = ptrtoint ptr %ssr_ack.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ssr_ack.i, align 1, !range !98
  %34 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %34)
  %cmp.i32 = icmp ne i32 %and.i, %34
  br label %qcom_smp2p_check_ssr.exit

qcom_smp2p_check_ssr.exit:                        ; preds = %if.end.i33, %if.then11.qcom_smp2p_check_ssr.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp.i32, %if.end.i33 ], [ false, %if.then11.qcom_smp2p_check_ssr.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #8
  %35 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %in1, align 4
  %valid_entries.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %valid_entries.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %valid_entries.i, align 4
  %valid_entries3.i = getelementptr inbounds %struct.smp2p_smem_item, ptr %36, i32 0, i32 6
  %39 = ptrtoint ptr %valid_entries3.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %valid_entries3.i, align 1
  %conv129.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv129.i)
  %cmp130.i = icmp slt i32 %38, %conv129.i
  br i1 %cmp130.i, label %for.body.lr.ph.i, label %qcom_smp2p_check_ssr.exit.for.end22.i_crit_edge

qcom_smp2p_check_ssr.exit.for.end22.i_crit_edge:  ; preds = %qcom_smp2p_check_ssr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22.i

for.body.lr.ph.i:                                 ; preds = %qcom_smp2p_check_ssr.exit
  %inbound.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0131.i = phi i32 [ %38, %for.body.lr.ph.i ], [ %inc.i, %for.inc21.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.smp2p_smem_item, ptr %36, i32 0, i32 8, i32 %i.0131.i
  br label %for.cond5.i

for.cond5.i:                                      ; preds = %for.body9.i.for.cond5.i_crit_edge, %for.body.i
  %entry1.0.in.i = phi ptr [ %inbound.i, %for.body.i ], [ %entry1.0.i, %for.body9.i.for.cond5.i_crit_edge ]
  %41 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %entry1.0.i, %inbound.i
  br i1 %cmp7.not.i, label %for.cond5.i.for.inc21.i_crit_edge, label %for.body9.i

for.cond5.i.for.inc21.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc21.i

for.body9.i:                                      ; preds = %for.cond5.i
  %42 = call ptr @memcpy(ptr %buf.i, ptr %arrayidx.i, i32 16)
  %name12.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.0.i, i32 0, i32 2
  %43 = ptrtoint ptr %name12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name12.i, align 4
  %call.i = call i32 @strcmp(ptr noundef nonnull %buf.i, ptr noundef %44) #12
  %tobool.not.i35 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i35, label %if.then.i36, label %for.body9.i.for.cond5.i_crit_edge

for.body9.i.for.cond5.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.i

if.then.i36:                                      ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %value.i = getelementptr %struct.smp2p_smem_item, ptr %36, i32 0, i32 8, i32 %i.0131.i, i32 1
  %value15.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.0.i, i32 0, i32 3
  %45 = ptrtoint ptr %value15.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %value.i, ptr %value15.i, align 4
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.then.i36, %for.cond5.i.for.inc21.i_crit_edge
  %inc.i = add nsw i32 %i.0131.i, 1
  %46 = ptrtoint ptr %valid_entries3.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %valid_entries3.i, align 1
  %conv.i = zext i16 %47 to i32
  %cmp.i37 = icmp slt i32 %inc.i, %conv.i
  br i1 %cmp.i37, label %for.inc21.i.for.body.i_crit_edge, label %for.inc21.i.for.end22.i_crit_edge

for.inc21.i.for.end22.i_crit_edge:                ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22.i

for.inc21.i.for.body.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end22.i:                                      ; preds = %for.inc21.i.for.end22.i_crit_edge, %qcom_smp2p_check_ssr.exit.for.end22.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %38, %qcom_smp2p_check_ssr.exit.for.end22.i_crit_edge ], [ %inc.i, %for.inc21.i.for.end22.i_crit_edge ]
  %48 = ptrtoint ptr %valid_entries.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.0.lcssa.i, ptr %valid_entries.i, align 4
  %inbound25.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 15
  %49 = ptrtoint ptr %inbound25.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %entry1.1136.i = load ptr, ptr %inbound25.i, align 4
  %cmp32.not137.i = icmp eq ptr %entry1.1136.i, %inbound25.i
  br i1 %cmp32.not137.i, label %for.end22.i.qcom_smp2p_notify_in.exit_crit_edge, label %for.end22.i.for.body35.i_crit_edge

for.end22.i.for.body35.i_crit_edge:               ; preds = %for.end22.i
  br label %for.body35.i

for.end22.i.qcom_smp2p_notify_in.exit_crit_edge:  ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_smp2p_notify_in.exit

for.body35.i:                                     ; preds = %for.inc78.i.for.body35.i_crit_edge, %for.end22.i.for.body35.i_crit_edge
  %entry1.1138.i = phi ptr [ %entry1.1.i, %for.inc78.i.for.body35.i_crit_edge ], [ %entry1.1136.i, %for.end22.i.for.body35.i_crit_edge ]
  %value36.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.1138.i, i32 0, i32 3
  %50 = ptrtoint ptr %value36.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %value36.i, align 4
  %tobool37.not.i = icmp eq ptr %51, null
  br i1 %tobool37.not.i, label %for.body35.i.for.inc78.i_crit_edge, label %if.end39.i

for.body35.i.for.inc78.i_crit_edge:               ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78.i

if.end39.i:                                       ; preds = %for.body35.i
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #8, !srcloc !99
  %53 = call i32 @llvm.bswap.i32(i32 %52) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %last_value.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.1138.i, i32 0, i32 4
  %54 = ptrtoint ptr %last_value.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %last_value.i, align 4
  %xor.i = xor i32 %55, %53
  store i32 %53, ptr %last_value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool45.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool45.not.i, label %if.end39.i.for.inc78.i_crit_edge, label %if.end47.i

if.end39.i.for.inc78.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78.i

if.end47.i:                                       ; preds = %if.end39.i
  %irq_enabled.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.1138.i, i32 0, i32 6
  %call49.i = call i32 @_find_next_bit_be(ptr noundef %irq_enabled.i, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call49.i)
  %cmp51133.i = icmp slt i32 %call49.i, 32
  br i1 %cmp51133.i, label %for.body53.lr.ph.i, label %if.end47.i.for.inc78.i_crit_edge

if.end47.i.for.inc78.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78.i

for.body53.lr.ph.i:                               ; preds = %if.end47.i
  %irq_rising.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.1138.i, i32 0, i32 7
  %irq_falling.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.1138.i, i32 0, i32 8
  %domain.i = getelementptr inbounds %struct.smp2p_entry, ptr %entry1.1138.i, i32 0, i32 5
  br label %for.body53.i

for.body53.i:                                     ; preds = %for.inc73.i.for.body53.i_crit_edge, %for.body53.lr.ph.i
  %i.1134.i = phi i32 [ %call49.i, %for.body53.lr.ph.i ], [ %call76.i, %for.inc73.i.for.body53.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.1134.i
  %and.i38 = and i32 %shl.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool54.not.i = icmp eq i32 %and.i38, 0
  br i1 %tobool54.not.i, label %for.body53.i.for.inc73.i_crit_edge, label %if.end56.i

for.body53.i.for.inc73.i_crit_edge:               ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73.i

if.end56.i:                                       ; preds = %for.body53.i
  %and58.i = and i32 %shl.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %div3.i123.i = lshr i32 %i.1134.i, 5
  br i1 %tobool59.not.i, label %land.lhs.true66.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end56.i
  %arrayidx.i.i = getelementptr i32, ptr %irq_rising.i, i32 %div3.i123.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.1134.i, 31
  %58 = shl nuw i32 1, %and.i.i
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool62.not.i = icmp eq i32 %59, 0
  br i1 %tobool62.not.i, label %land.lhs.true.i.for.inc73.i_crit_edge, label %land.lhs.true.i.if.then70.i_crit_edge

land.lhs.true.i.if.then70.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70.i

land.lhs.true.i.for.inc73.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73.i

land.lhs.true66.critedge.i:                       ; preds = %if.end56.i
  %arrayidx.i124.i = getelementptr i32, ptr %irq_falling.i, i32 %div3.i123.i
  %60 = ptrtoint ptr %arrayidx.i124.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i124.i, align 4
  %and.i125.i = and i32 %i.1134.i, 31
  %62 = shl nuw i32 1, %and.i125.i
  %63 = and i32 %61, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool69.not.i = icmp eq i32 %63, 0
  br i1 %tobool69.not.i, label %land.lhs.true66.critedge.i.for.inc73.i_crit_edge, label %land.lhs.true66.critedge.i.if.then70.i_crit_edge

land.lhs.true66.critedge.i.if.then70.i_crit_edge: ; preds = %land.lhs.true66.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70.i

land.lhs.true66.critedge.i.for.inc73.i_crit_edge: ; preds = %land.lhs.true66.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73.i

if.then70.i:                                      ; preds = %land.lhs.true66.critedge.i.if.then70.i_crit_edge, %land.lhs.true.i.if.then70.i_crit_edge
  %64 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %domain.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #8
  %66 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !97
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %65, i32 noundef %i.1134.i, ptr noundef nonnull %irq.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then70.i.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i

if.then70.i.irq_find_mapping.exit.i_crit_edge:    ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit.i

if.then.i.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i, %if.then70.i.irq_find_mapping.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %68, %if.then.i.i ], [ 0, %if.then70.i.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #8
  call void @handle_nested_irq(i32 noundef %retval.0.i.i) #8
  br label %for.inc73.i

for.inc73.i:                                      ; preds = %irq_find_mapping.exit.i, %land.lhs.true66.critedge.i.for.inc73.i_crit_edge, %land.lhs.true.i.for.inc73.i_crit_edge, %for.body53.i.for.inc73.i_crit_edge
  %add.i = add nsw i32 %i.1134.i, 1
  %call76.i = call i32 @_find_next_bit_be(ptr noundef %irq_enabled.i, i32 noundef 32, i32 noundef %add.i) #8
  %cmp51.i = icmp slt i32 %call76.i, 32
  br i1 %cmp51.i, label %for.inc73.i.for.body53.i_crit_edge, label %for.inc73.i.for.inc78.i_crit_edge

for.inc73.i.for.inc78.i_crit_edge:                ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78.i

for.inc73.i.for.body53.i_crit_edge:               ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body53.i

for.inc78.i:                                      ; preds = %for.inc73.i.for.inc78.i_crit_edge, %if.end47.i.for.inc78.i_crit_edge, %if.end39.i.for.inc78.i_crit_edge, %for.body35.i.for.inc78.i_crit_edge
  %69 = ptrtoint ptr %entry1.1138.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %entry1.1.i = load ptr, ptr %entry1.1138.i, align 4
  %cmp32.not.i = icmp eq ptr %entry1.1.i, %inbound25.i
  br i1 %cmp32.not.i, label %for.inc78.i.qcom_smp2p_notify_in.exit_crit_edge, label %for.inc78.i.for.body35.i_crit_edge

for.inc78.i.for.body35.i_crit_edge:               ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i

for.inc78.i.qcom_smp2p_notify_in.exit_crit_edge:  ; preds = %for.inc78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qcom_smp2p_notify_in.exit

qcom_smp2p_notify_in.exit:                        ; preds = %for.inc78.i.qcom_smp2p_notify_in.exit_crit_edge, %for.end22.i.qcom_smp2p_notify_in.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #8
  br i1 %retval.0.i, label %if.then14, label %qcom_smp2p_notify_in.exit.out_crit_edge

qcom_smp2p_notify_in.exit.out_crit_edge:          ; preds = %qcom_smp2p_notify_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then14:                                        ; preds = %qcom_smp2p_notify_in.exit
  %out1.i39 = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 2
  %70 = ptrtoint ptr %out1.i39 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %out1.i39, align 4
  %ssr_ack.i40 = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 6
  %72 = ptrtoint ptr %ssr_ack.i40 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ssr_ack.i40, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i41 = icmp eq i8 %73, 0
  %74 = xor i8 %73, 1
  %75 = ptrtoint ptr %ssr_ack.i40 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %ssr_ack.i40, align 1
  %flags.i42 = getelementptr inbounds %struct.smp2p_smem_item, ptr %71, i32 0, i32 7
  %76 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %flags.i42, align 1
  %and.i43 = and i32 %77, -3
  %masksel.i = select i1 %tobool.not.i41, i32 2, i32 0
  %spec.select.i = or i32 %and.i43, %masksel.i
  store i32 %spec.select.i, ptr %flags.i42, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  call void @arm_heavy_mb() #8
  %mbox_chan.i.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 14
  %78 = ptrtoint ptr %mbox_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mbox_chan.i.i, align 4
  %tobool.not.i.i44 = icmp eq ptr %79, null
  br i1 %tobool.not.i.i44, label %if.else.i.i, label %if.then.i.i46

if.then.i.i46:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i45 = call i32 @mbox_send_message(ptr noundef nonnull %79, ptr noundef null) #8
  %80 = ptrtoint ptr %mbox_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mbox_chan.i.i, align 4
  call void @mbox_client_txdone(ptr noundef %81, i32 noundef 0) #8
  br label %out

if.else.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %ipc_regmap.i.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 10
  %82 = ptrtoint ptr %ipc_regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ipc_regmap.i.i, align 4
  %ipc_offset.i.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 11
  %84 = ptrtoint ptr %ipc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ipc_offset.i.i, align 4
  %ipc_bit.i.i = getelementptr inbounds %struct.qcom_smp2p, ptr %data, i32 0, i32 12
  %86 = ptrtoint ptr %ipc_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ipc_bit.i.i, align 4
  %shl.i.i = shl nuw i32 1, %87
  %call3.i.i = call i32 @regmap_write(ptr noundef %83, i32 noundef %85, i32 noundef %shl.i.i) #8
  br label %out

out:                                              ; preds = %if.else.i.i, %if.then.i.i46, %qcom_smp2p_notify_in.exit.out_crit_edge, %if.end8.out_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_smem_state_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_alloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smp2p_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @smp2p_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #8
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
define internal void @smp2p_mask_irq(ptr nocapture noundef readonly %irqd) #2 align 64 {
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
  %irq_enabled = getelementptr inbounds %struct.smp2p_entry, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %irq_enabled) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp2p_unmask_irq(ptr nocapture noundef readonly %irqd) #2 align 64 {
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
  %irq_enabled = getelementptr inbounds %struct.smp2p_entry, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %3, ptr noundef %irq_enabled) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smp2p_set_irq_type(ptr nocapture noundef readonly %irqd, i32 noundef %type) #2 align 64 {
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
  %irq_rising6 = getelementptr inbounds %struct.smp2p_entry, ptr %1, i32 0, i32 7
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
  %irq_falling14 = getelementptr inbounds %struct.smp2p_entry, ptr %1, i32 0, i32 8
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_state_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smp2p_update_bits(ptr noundef %data, i32 noundef %mask, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smp2p_entry, ptr %data, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %value6 = getelementptr inbounds %struct.smp2p_entry, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value6, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %or = or i32 %and, %value
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %3)
  %cmp15.not = icmp eq i32 %or, %3
  br i1 %cmp15.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %smp2p = getelementptr inbounds %struct.smp2p_entry, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %smp2p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smp2p, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %mbox_chan.i = getelementptr inbounds %struct.qcom_smp2p, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox_chan.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @mbox_send_message(ptr noundef nonnull %10, ptr noundef null) #8
  %11 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbox_chan.i, align 4
  tail call void @mbox_client_txdone(ptr noundef %12, i32 noundef 0) #8
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ipc_regmap.i = getelementptr inbounds %struct.qcom_smp2p, ptr %8, i32 0, i32 10
  %13 = ptrtoint ptr %ipc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipc_regmap.i, align 4
  %ipc_offset.i = getelementptr inbounds %struct.qcom_smp2p, ptr %8, i32 0, i32 11
  %15 = ptrtoint ptr %ipc_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ipc_offset.i, align 4
  %ipc_bit.i = getelementptr inbounds %struct.qcom_smp2p, ptr %8, i32 0, i32 12
  %17 = ptrtoint ptr %ipc_bit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ipc_bit.i, align 4
  %shl.i = shl nuw i32 1, %18
  %call3.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef %16, i32 noundef %shl.i) #8
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_smp2p__187_693_qcom_smp2p_driver_init6, !1, !"__initcall__kmod_smp2p__187_693_qcom_smp2p_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/smp2p.c", i32 693, i32 1}
!2 = !{ptr @__exitcall_qcom_smp2p_driver_exit, !1, !"__exitcall_qcom_smp2p_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/soc/qcom/smp2p.c", i32 695, i32 1}
!5 = !{ptr @__UNIQUE_ID_file189, !6, !"__UNIQUE_ID_file189", i1 false, i1 false}
!6 = !{!"../drivers/soc/qcom/smp2p.c", i32 696, i32 1}
!7 = !{ptr @__UNIQUE_ID_license190, !6, !"__UNIQUE_ID_license190", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/smp2p.c", i32 689, i32 12}
!10 = !{ptr @qcom_smp2p_driver, !11, !"qcom_smp2p_driver", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/smp2p.c", i32 685, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/smp2p.c", i32 534, i32 8}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/smp2p.c", i32 540, i32 8}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/qcom/smp2p.c", i32 545, i32 8}
!18 = !{ptr @qcom_smp2p_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/soc/qcom/smp2p.c", i32 581, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/smp2p.c", i32 583, i32 39}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/qcom/smp2p.c", i32 589, i32 35}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/smp2p.c", i32 614, i32 6}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/smp2p.c", i32 616, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @qcom_smp2p_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @qcom_smp2p_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/qcom/smp2p.c", i32 655, i32 2}
!37 = !{ptr @qcom_smp2p_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @qcom_smp2p_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/smp2p.c", i32 489, i32 42}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/smp2p.c", i32 491, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @smp2p_parse_ipc._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @smp2p_parse_ipc._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/smp2p.c", i32 502, i32 3}
!48 = !{ptr @smp2p_parse_ipc._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @smp2p_parse_ipc._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/smp2p.c", i32 508, i32 3}
!52 = !{ptr @smp2p_parse_ipc._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @smp2p_parse_ipc._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/qcom/smp2p.c", i32 449, i32 4}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @qcom_smp2p_alloc_outbound_item._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @qcom_smp2p_alloc_outbound_item._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/qcom/smp2p.c", i32 456, i32 3}
!61 = !{ptr @qcom_smp2p_alloc_outbound_item._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @qcom_smp2p_alloc_outbound_item._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/smp2p.c", i32 383, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qcom_smp2p_inbound_entry._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qcom_smp2p_inbound_entry._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @smp2p_irq_ops, !69, !"smp2p_irq_ops", i1 false, i1 false}
!69 = !{!"../drivers/soc/qcom/smp2p.c", i32 372, i32 36}
!70 = !{ptr @smp2p_irq_chip, !71, !"smp2p_irq_chip", i1 false, i1 false}
!71 = !{!"../drivers/soc/qcom/smp2p.c", i32 351, i32 24}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/qcom/smp2p.c", i32 432, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @qcom_smp2p_outbound_entry._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @qcom_smp2p_outbound_entry._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @smp2p_state_ops, !78, !"smp2p_state_ops", i1 false, i1 false}
!78 = !{!"../drivers/soc/qcom/smp2p.c", i32 410, i32 41}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/qcom/smp2p.c", i32 291, i32 4}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qcom_smp2p_intr._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qcom_smp2p_intr._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @qcom_smp2p_of_match, !85, !"qcom_smp2p_of_match", i1 false, i1 false}
!85 = !{!"../drivers/soc/qcom/smp2p.c", i32 679, i32 34}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2153228261}
!96 = !{i64 2153209756}
!97 = !{!"auto-init"}
!98 = !{i8 0, i8 2}
!99 = !{i64 4213805}
!100 = !{i64 2153217198}
!101 = !{i64 2153222555}
!102 = !{i64 2153222764}
!103 = !{i64 4213387}
