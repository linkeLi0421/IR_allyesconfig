; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/qcom_smd.c_pt.bc'
source_filename = "../drivers/rpmsg/qcom_smd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qcom_smd_register_edge\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_smd_register_edge\09\09\09\09"
module asm "\09.long\09__crc_qcom_smd_register_edge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_smd_register_edge:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_smd_register_edge\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_smd_register_edge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qcom_smd_unregister_edge\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_smd_unregister_edge\09\09\09\09"
module asm "\09.long\09__crc_qcom_smd_unregister_edge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_smd_unregister_edge:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_smd_unregister_edge\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_smd_unregister_edge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.68 = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.rpmsg_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rpmsg_endpoint_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.qcom_smd_edge = type { %struct.device, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.mbox_client, ptr, %struct.list_head, %struct.spinlock, [2 x [2 x i32]], i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.qcom_smd_device = type { %struct.rpmsg_device, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.qcom_smd_alloc_entry = type { [20 x i8], i32, i32, i32 }
%struct.qcom_smd_channel = type { ptr, ptr, i8, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.spinlock, i32, ptr, %struct.list_head }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.smd_channel_info_word_pair = type { %struct.smd_channel_info_word, %struct.smd_channel_info_word }
%struct.smd_channel_info_word = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smd_channel_info_pair = type { %struct.smd_channel_info, %struct.smd_channel_info }
%struct.smd_channel_info = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rpmsg_endpoint = type { ptr, %struct.kref, ptr, %struct.mutex, i32, ptr, ptr }
%struct.qcom_smd_endpoint = type { %struct.rpmsg_endpoint, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@qcom_smd_register_edge.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&edge->new_channel_event\00", [39 x i8] zeroinitializer }, align 32
@qcom_smd_edge_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qcom_smd_edge_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%pOFn\00", [23 x i8] zeroinitializer }, align 32
@qcom_smd_register_edge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to register smd edge\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_smd_register_edge\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rpmsg/qcom_smd.c\00", [39 x i8] zeroinitializer }, align 32
@qcom_smd_register_edge._entry_ptr = internal global ptr @qcom_smd_register_edge._entry, section ".printk_index", align 4
@qcom_smd_register_edge._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1498, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to parse smd edge\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_smd_register_edge._entry_ptr.9 = internal global ptr @qcom_smd_register_edge._entry.5, section ".printk_index", align 4
@qcom_smd_register_edge._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1504, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register chrdev for edge\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_smd_register_edge._entry_ptr.12 = internal global ptr @qcom_smd_register_edge._entry.10, section ".printk_index", align 4
@__kstrtab_qcom_smd_register_edge = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_smd_register_edge = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_smd_register_edge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_smd_register_edge to i32), ptr @__kstrtab_qcom_smd_register_edge, ptr @__kstrtabns_qcom_smd_register_edge }, section "___ksymtab+qcom_smd_register_edge", align 4
@qcom_smd_unregister_edge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 1542, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't remove smd device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_smd_unregister_edge\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qcom_smd_unregister_edge._entry_ptr = internal global ptr @qcom_smd_unregister_edge._entry, section ".printk_index", align 4
@__kstrtab_qcom_smd_unregister_edge = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_smd_unregister_edge = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_smd_unregister_edge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_smd_unregister_edge to i32), ptr @__kstrtab_qcom_smd_unregister_edge, ptr @__kstrtabns_qcom_smd_unregister_edge }, section "___ksymtab+qcom_smd_unregister_edge", align 4
@__initcall__kmod_qcom_smd__275_1608_qcom_smd_init4 = internal global ptr @qcom_smd_init, section ".initcall4.init", align 4
@qcom_smd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_smd_probe, ptr @qcom_smd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.70, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_smd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_smd_exit = internal global ptr @qcom_smd_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author276 = internal constant [65 x i8] c"qcom_smd.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [51 x i8] c"qcom_smd.description=Qualcomm Shared Memory Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [37 x i8] c"qcom_smd.file=drivers/rpmsg/qcom_smd\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [24 x i8] c"qcom_smd.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qcom_smd_edge_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @qcom_smd_edge_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_smd_edge_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_rpmsg_name, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_rpmsg_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpmsg_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpmsg_name\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&edge->channels_lock\00", [43 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&edge->scan_work)\00", [60 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&edge->state_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,smd-edge\00", [18 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 1356, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"edge missing %s property\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_smd_parse_edge\00", [44 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry_ptr = internal global ptr @qcom_smd_parse_edge._entry, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,remote-pid\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,ipc\00", [23 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.4, i32 1377, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no qcom,ipc node\0A\00", [46 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry_ptr.30 = internal global ptr @qcom_smd_parse_edge._entry.28, section ".printk_index", align 4
@qcom_smd_parse_edge._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.4, i32 1391, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no offset in %s\0A\00", [47 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry_ptr.33 = internal global ptr @qcom_smd_parse_edge._entry.31, section ".printk_index", align 4
@qcom_smd_parse_edge._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.4, i32 1397, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no bit in %s\0A\00", [18 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry_ptr.36 = internal global ptr @qcom_smd_parse_edge._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.4, i32 1408, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"required smd interrupt missing\0A\00", [32 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry_ptr.40 = internal global ptr @qcom_smd_parse_edge._entry.38, section ".printk_index", align 4
@qcom_smd_parse_edge._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.4, i32 1417, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request smd irq\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_smd_parse_edge._entry_ptr.43 = internal global ptr @qcom_smd_parse_edge._entry.41, section ".printk_index", align 4
@smem_items = internal constant { [2 x %struct.anon.68], [40 x i8] } { [2 x %struct.anon.68] [%struct.anon.68 { i32 13, i32 14, i32 338 }, %struct.anon.68 { i32 266, i32 138, i32 202 }], [40 x i8] zeroinitializer }, align 32
@qcom_channel_scan_worker.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom_smd\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_channel_scan_worker\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"new channel found: '%s'\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_smd_create_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&channel->tx_lock\00", [46 x i8] zeroinitializer }, align 32
@qcom_smd_create_channel.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&channel->recv_lock\00", [44 x i8] zeroinitializer }, align 32
@qcom_smd_create_channel.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&channel->fblockread_event\00", [37 x i8] zeroinitializer }, align 32
@qcom_smd_create_channel.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&channel->state_change_event\00", [35 x i8] zeroinitializer }, align 32
@qcom_smd_create_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 1167, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"channel info of size %zu not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_smd_create_channel\00", [40 x i8] zeroinitializer }, align 32
@qcom_smd_create_channel._entry_ptr = internal global ptr @qcom_smd_create_channel._entry, section ".printk_index", align 4
@qcom_smd_create_channel.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"new channel '%s' info-size: %zu fifo-size: %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@qcom_smd_create_device.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.57, ptr @.str.4, ptr @.str.58, i8 1, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_smd_create_device\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"registering '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@qcom_smd_device_ops = internal constant { %struct.rpmsg_device_ops, [44 x i8] } { %struct.rpmsg_device_ops { ptr null, ptr null, ptr @qcom_smd_create_ept, ptr @qcom_smd_announce_create, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_smd_create_ept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 921, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"channel %s is busy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_smd_create_ept\00", [44 x i8] zeroinitializer }, align 32
@qcom_smd_create_ept._entry_ptr = internal global ptr @qcom_smd_create_ept._entry, section ".printk_index", align 4
@qcom_smd_endpoint_ops = internal constant { %struct.rpmsg_endpoint_ops, [60 x i8] } { %struct.rpmsg_endpoint_ops { ptr @qcom_smd_destroy_ept, ptr @qcom_smd_send, ptr @qcom_smd_sendto, ptr null, ptr @qcom_smd_trysend, ptr @qcom_smd_trysendto, ptr null, ptr @qcom_smd_poll, ptr null }, [60 x i8] zeroinitializer }, align 32
@qcom_smd_channel_set_state.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.61, ptr @.str.4, ptr @.str.62, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom_smd_channel_set_state\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_state(%s, %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@qcom_smd_channel_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 839, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"remote side did not enter opening state\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_smd_channel_open\00", [42 x i8] zeroinitializer }, align 32
@qcom_smd_channel_open._entry_ptr = internal global ptr @qcom_smd_channel_open._entry, section ".printk_index", align 4
@qcom_smd_channel_open._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 850, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"remote side did not enter open state\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_smd_channel_open._entry_ptr.67 = internal global ptr @qcom_smd_channel_open._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,smd-channels\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rpmsg_chrdev\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom-smd\00", [23 x i8] zeroinitializer }, align 32
@qcom_smd_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,smd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_smd_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.71, ptr @.str.4, i32 1584, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_smd_remove\00", [16 x i8] zeroinitializer }, align 32
@qcom_smd_remove._entry_ptr = internal global ptr @qcom_smd_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 40, i64 88]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1482, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"qcom_smd_edge_groups\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1488, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1491, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1498, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1504, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1542, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"qcom_smd_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1595, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"qcom_smd_edge_group\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1463, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c"qcom_smd_edge_attrs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1459, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"dev_attr_rpmsg_name\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1457, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1455, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1346, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1348, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1349, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1353, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1356, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1361, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1375, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1377, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1391, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1397, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1402, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1408, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1417, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"smem_items\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 82, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1254, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1146, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1147, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1148, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1149, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1166, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1181, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1078, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"qcom_smd_device_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1047, i32 38 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 921, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [22 x i8] c"qcom_smd_endpoint_ops\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1052, i32 40 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 450, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 839, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 850, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1018, i32 9 }
@___asan_gen_.309 = private unnamed_addr constant [34 x i8] c"../drivers/rpmsg/rpmsg_internal.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 95, i32 25 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1599, i32 11 }
@___asan_gen_.314 = private unnamed_addr constant [18 x i8] c"qcom_smd_of_match\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1589, i32 34 }
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private constant [28 x i8] c"../drivers/rpmsg/qcom_smd.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1584, i32 3 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_qcom_smd_exit, ptr @__initcall__kmod_qcom_smd__275_1608_qcom_smd_init4, ptr @__ksymtab_qcom_smd_register_edge, ptr @__ksymtab_qcom_smd_unregister_edge, ptr @qcom_smd_channel_open._entry, ptr @qcom_smd_channel_open._entry.65, ptr @qcom_smd_channel_open._entry_ptr, ptr @qcom_smd_channel_open._entry_ptr.67, ptr @qcom_smd_create_channel._entry, ptr @qcom_smd_create_channel._entry_ptr, ptr @qcom_smd_create_ept._entry, ptr @qcom_smd_create_ept._entry_ptr, ptr @qcom_smd_exit, ptr @qcom_smd_parse_edge._entry, ptr @qcom_smd_parse_edge._entry.28, ptr @qcom_smd_parse_edge._entry.31, ptr @qcom_smd_parse_edge._entry.34, ptr @qcom_smd_parse_edge._entry.38, ptr @qcom_smd_parse_edge._entry.41, ptr @qcom_smd_parse_edge._entry_ptr, ptr @qcom_smd_parse_edge._entry_ptr.30, ptr @qcom_smd_parse_edge._entry_ptr.33, ptr @qcom_smd_parse_edge._entry_ptr.36, ptr @qcom_smd_parse_edge._entry_ptr.40, ptr @qcom_smd_parse_edge._entry_ptr.43, ptr @qcom_smd_register_edge._entry, ptr @qcom_smd_register_edge._entry.10, ptr @qcom_smd_register_edge._entry.5, ptr @qcom_smd_register_edge._entry_ptr, ptr @qcom_smd_register_edge._entry_ptr.12, ptr @qcom_smd_register_edge._entry_ptr.9, ptr @qcom_smd_remove._entry, ptr @qcom_smd_remove._entry_ptr, ptr @qcom_smd_unregister_edge._entry, ptr @qcom_smd_unregister_edge._entry_ptr, ptr @qcom_smd_register_edge.__key, ptr @.str, ptr @qcom_smd_edge_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @qcom_smd_driver, ptr @qcom_smd_edge_group, ptr @qcom_smd_edge_attrs, ptr @dev_attr_rpmsg_name, ptr @.str.16, ptr @.str.17, ptr @qcom_smd_parse_edge.__key, ptr @.str.18, ptr @qcom_smd_parse_edge.__key.19, ptr @.str.20, ptr @qcom_smd_parse_edge.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @smem_items, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @qcom_smd_create_channel.__key, ptr @.str.47, ptr @qcom_smd_create_channel.__key.48, ptr @.str.49, ptr @qcom_smd_create_channel.__key.50, ptr @.str.51, ptr @qcom_smd_create_channel.__key.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @qcom_smd_device_ops, ptr @.str.59, ptr @.str.60, ptr @qcom_smd_endpoint_ops, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @qcom_smd_of_match, ptr @.str.71], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_register_edge.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_edge_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_register_edge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_register_edge._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_register_edge._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_unregister_edge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_edge_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_edge_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rpmsg_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_parse_edge._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smem_items to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_create_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_create_channel.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_create_channel.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_create_channel.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_create_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_device_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_create_ept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_endpoint_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_channel_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_channel_open._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_smd_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_smd_register_edge(ptr noundef %parent, ptr noundef %node) #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1208) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %new_channel_event = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %new_channel_event, ptr noundef nonnull @.str, ptr noundef nonnull @qcom_smd_register_edge.__key) #13
  %parent2 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %parent2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent, ptr %parent2, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %2 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @qcom_smd_edge_release, ptr %release, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %node, ptr %of_node, align 8
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qcom_smd_edge_groups, ptr %groups, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %do.body.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, ptr noundef %node) #13
  %call10 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end19, label %do.end15

do.end15:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #17
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #13
  %9 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end19:                                         ; preds = %dev_name.exit
  %channels.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %channels.i, ptr %channels.i, align 8
  %prev.i.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %channels.i, ptr %prev.i.i, align 4
  %channels_lock.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %channels_lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @qcom_smd_parse_edge.__key, i16 noundef signext 3) #13
  %scan_work.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %scan_work.i, i32 noundef 0) #13
  %12 = ptrtoint ptr %scan_work.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %scan_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @qcom_smd_parse_edge.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry5.i, ptr %entry5.i, align 8
  %prev.i163.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i163.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry5.i, ptr %prev.i163.i, align 4
  %func.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 16, i32 2
  %15 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @qcom_channel_scan_worker, ptr %func.i, align 8
  %state_work.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %state_work.i, i32 noundef 0) #13
  %16 = ptrtoint ptr %state_work.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %state_work.i, align 8
  %lockdep_map15.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map15.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @qcom_smd_parse_edge.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry17.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %entry17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry17.i, ptr %entry17.i, align 4
  %prev.i164.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 17, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i164.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry17.i, ptr %prev.i164.i, align 8
  %func19.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 17, i32 2
  %19 = ptrtoint ptr %func19.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qcom_channel_state_worker, ptr %func19.i, align 4
  %call22.i = tail call ptr @of_node_get(ptr noundef %node) #13
  %of_node.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call22.i, ptr %of_node.i, align 4
  %edge_id.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.23, ptr noundef %edge_id.i, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i70 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i70, label %if.end.i71, label %do.end26.i

do.end26.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) #17
  br label %do.end26

if.end.i71:                                       ; preds = %if.end19
  %remote_pid.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %remote_pid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %remote_pid.i, align 4
  %call.i.i165.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.26, ptr noundef %remote_pid.i, i32 noundef 1, i32 noundef 0) #13
  %mbox_client.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %mbox_client.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %mbox_client.i, align 8
  %knows_txdone.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %knows_txdone.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %knows_txdone.i, align 4
  %call32.i = tail call ptr @mbox_request_channel(ptr noundef %mbox_client.i, i32 noundef 0) #13
  %mbox_chan.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call32.i, ptr %mbox_chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then35.i, label %if.end.i71.if.end71.i_crit_edge

if.end.i71.if.end71.i_crit_edge:                  ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i

if.then35.i:                                      ; preds = %if.end.i71
  %cmp.not.i = icmp eq ptr %call32.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i, label %if.end41.i, label %if.then35.i.qcom_smd_parse_edge.exit_crit_edge

if.then35.i.qcom_smd_parse_edge.exit_crit_edge:   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qcom_smd_parse_edge.exit

if.end41.i:                                       ; preds = %if.then35.i
  %25 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %mbox_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #13
  %26 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #13
  br label %do.end48.i

of_parse_phandle.exit.i:                          ; preds = %if.end41.i
  %27 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #13
  %tobool44.not.i = icmp eq ptr %28, null
  br i1 %tobool44.not.i, label %of_parse_phandle.exit.i.do.end48.i_crit_edge, label %if.end49.i

of_parse_phandle.exit.i.do.end48.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48.i

do.end48.i:                                       ; preds = %of_parse_phandle.exit.i.do.end48.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.29) #17
  br label %do.end26

if.end49.i:                                       ; preds = %of_parse_phandle.exit.i
  %call50.i = call ptr @syscon_node_to_regmap(ptr noundef nonnull %28) #13
  %ipc_regmap.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %ipc_regmap.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call50.i, ptr %ipc_regmap.i, align 4
  %cmp.i166.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166.i, label %if.end49.i.qcom_smd_parse_edge.exit_crit_edge, label %if.end56.i

if.end49.i.qcom_smd_parse_edge.exit_crit_edge:    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qcom_smd_parse_edge.exit

if.end56.i:                                       ; preds = %if.end49.i
  %ipc_offset.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 7
  %call57.i = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef %ipc_offset.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %do.end62.i, label %if.end63.i

do.end62.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27) #17
  br label %do.end26

if.end63.i:                                       ; preds = %if.end56.i
  %ipc_bit.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 8
  %call64.i = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef %ipc_bit.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %do.end69.i, label %if.end63.i.if.end71.i_crit_edge

if.end63.i.if.end71.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71.i

do.end69.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27) #17
  br label %do.end26

if.end71.i:                                       ; preds = %if.end63.i.if.end71.i_crit_edge, %if.end.i71.if.end71.i_crit_edge
  %name.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 1
  %call72.i = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.37, ptr noundef %name.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %if.then74.i, label %if.end71.i.if.end77.i_crit_edge

if.end71.i.if.end77.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77.i

if.then74.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node, align 4
  %32 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %name.i, align 8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %if.end71.i.if.end77.i_crit_edge
  %call78.i = call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %cmp79.i = icmp slt i32 %call78.i, 0
  br i1 %cmp79.i, label %do.end83.i, label %if.end84.i

do.end83.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.39) #17
  br label %do.end26

if.end84.i:                                       ; preds = %if.end77.i
  %33 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %node, align 4
  %call.i167.i = call i32 @devm_request_threaded_irq(ptr noundef nonnull %call7.i.i, i32 noundef %call78.i, ptr noundef nonnull @qcom_smd_edge_intr, ptr noundef null, i32 noundef 1, ptr noundef %34, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167.i)
  %tobool87.not.i = icmp eq i32 %call.i167.i, 0
  br i1 %tobool87.not.i, label %qcom_smd_parse_edge.exit.thread, label %do.end91.i

do.end91.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.42) #17
  br label %do.end26

qcom_smd_parse_edge.exit.thread:                  ; preds = %if.end84.i
  %irq93.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %irq93.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call78.i, ptr %irq93.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 1000) #16
  %tobool.not.i73 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i73, label %qcom_smd_parse_edge.exit.thread.unregister_dev_crit_edge, label %qcom_smd_create_chrdev.exit

qcom_smd_parse_edge.exit.thread.unregister_dev_crit_edge: ; preds = %qcom_smd_parse_edge.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_dev

qcom_smd_parse_edge.exit:                         ; preds = %if.end49.i.qcom_smd_parse_edge.exit_crit_edge, %if.then35.i.qcom_smd_parse_edge.exit_crit_edge
  %ret.0.i.in = phi ptr [ %call32.i, %if.then35.i.qcom_smd_parse_edge.exit_crit_edge ], [ %call50.i, %if.end49.i.qcom_smd_parse_edge.exit_crit_edge ]
  %ret.0.i = ptrtoint ptr %ret.0.i.in to i32
  br label %do.end26

do.end26:                                         ; preds = %qcom_smd_parse_edge.exit, %do.end91.i, %do.end83.i, %do.end69.i, %do.end62.i, %do.end48.i, %do.end26.i
  %ret.0.i83 = phi i32 [ %ret.0.i, %qcom_smd_parse_edge.exit ], [ -19, %do.end48.i ], [ %call.i167.i, %do.end91.i ], [ %call78.i, %do.end83.i ], [ %call64.i, %do.end69.i ], [ %call57.i, %do.end62.i ], [ %call.i.i.i, %do.end26.i ]
  call void @of_node_put(ptr noundef %node) #13
  %37 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %of_node.i, align 4
  br label %unregister_dev

qcom_smd_create_chrdev.exit:                      ; preds = %qcom_smd_parse_edge.exit.thread
  %edge1.i = getelementptr inbounds %struct.qcom_smd_device, ptr %call7.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %edge1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %edge1.i, align 8
  %ops.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @qcom_smd_device_ops, ptr %ops.i, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %41 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @qcom_smd_release_device, ptr %release.i, align 4
  %id.i.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %id.i.i, ptr @.str.69, i32 13)
  %driver_override.i.i = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %driver_override.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.69, ptr %driver_override.i.i, align 4
  %call1.i.i = call i32 @rpmsg_register_device(ptr noundef nonnull %call7.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool30.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool30.not, label %if.end36, label %qcom_smd_create_chrdev.exit.unregister_dev_crit_edge

qcom_smd_create_chrdev.exit.unregister_dev_crit_edge: ; preds = %qcom_smd_create_chrdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_dev

if.end36:                                         ; preds = %qcom_smd_create_chrdev.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i76 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %scan_work.i) #13
  br label %cleanup

unregister_dev:                                   ; preds = %qcom_smd_create_chrdev.exit.unregister_dev_crit_edge, %do.end26, %qcom_smd_parse_edge.exit.thread.unregister_dev_crit_edge
  %.str.11.sink = phi ptr [ @.str.6, %do.end26 ], [ @.str.11, %qcom_smd_parse_edge.exit.thread.unregister_dev_crit_edge ], [ @.str.11, %qcom_smd_create_chrdev.exit.unregister_dev_crit_edge ]
  %ret.0 = phi i32 [ %ret.0.i83, %do.end26 ], [ -12, %qcom_smd_parse_edge.exit.thread.unregister_dev_crit_edge ], [ %call1.i.i, %qcom_smd_create_chrdev.exit.unregister_dev_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %.str.11.sink) #17
  %mbox_chan = getelementptr inbounds %struct.qcom_smd_edge, ptr %call7.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mbox_chan, align 4
  %tobool.not.i77 = icmp eq ptr %46, null
  %cmp.i = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i77, %cmp.i
  br i1 %spec.select.i, label %unregister_dev.if.end41_crit_edge, label %if.then39

unregister_dev.if.end41_crit_edge:                ; preds = %unregister_dev
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then39:                                        ; preds = %unregister_dev
  call void @__sanitizer_cov_trace_pc() #15
  call void @mbox_free_channel(ptr noundef nonnull %46) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %unregister_dev.if.end41_crit_edge
  call void @device_unregister(ptr noundef nonnull %call7.i.i) #13
  %47 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end36, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %do.end15 ], [ %47, %if.end41 ], [ %call7.i.i, %if.end36 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smd_edge_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.qcom_smd_edge, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 8
  %cmp.not25 = icmp eq ptr %1, %channels
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in26 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %channel.0 = getelementptr i8, ptr %.pn.in26, i32 -248
  %2 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in26, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %name = getelementptr i8, ptr %.pn.in26, i32 -236
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %12) #13
  tail call void @kfree(ptr noundef %channel.0) #13
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %dev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_smd_unregister_edge(ptr noundef %edge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.qcom_smd_edge, ptr %edge, i32 0, i32 5
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %1) #13
  %scan_work = getelementptr inbounds %struct.qcom_smd_edge, ptr %edge, i32 0, i32 16
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %scan_work) #13
  %state_work = getelementptr inbounds %struct.qcom_smd_edge, ptr %edge, i32 0, i32 17
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %state_work) #13
  %call2 = tail call i32 @device_for_each_child(ptr noundef %edge, ptr noundef null, ptr noundef nonnull @qcom_smd_remove_device) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %edge, ptr noundef nonnull @.str.13, i32 noundef %call2) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mbox_chan = getelementptr inbounds %struct.qcom_smd_edge, ptr %edge, i32 0, i32 10
  %2 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbox_chan, align 4
  tail call void @mbox_free_channel(ptr noundef %3) #13
  tail call void @device_unregister(ptr noundef %edge) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_remove_device(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %dev) #13
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_smd_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smd_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_smd_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.qcom_smd_edge, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_channel_scan_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1116
  %remote_pid = getelementptr i8, ptr %work, i32 -176
  %allocated = getelementptr i8, ptr %work, i32 -72
  %edge_id = getelementptr i8, ptr %work, i32 -180
  %channels_lock = getelementptr i8, ptr %work, i32 -116
  %channels = getelementptr i8, ptr %work, i32 -124
  %new_channel_event = getelementptr i8, ptr %work, i32 -52
  br label %for.body

for.body:                                         ; preds = %for.inc58.for.body_crit_edge, %entry
  %tbl.096 = phi i32 [ 0, %entry ], [ %inc59, %for.inc58.for.body_crit_edge ]
  %0 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %remote_pid, align 4
  %arrayidx = getelementptr [2 x %struct.anon.68], ptr @smem_items, i32 0, i32 %tbl.096
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @qcom_smem_get(i32 noundef %1, i32 noundef %3, ptr noundef null) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc58_crit_edge, label %for.cond3.preheader

for.body.for.inc58_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc58

for.cond3.preheader:                              ; preds = %for.body
  %arrayidx8 = getelementptr [2 x [2 x i32]], ptr %allocated, i32 0, i32 %tbl.096
  %info_base_id = getelementptr [2 x %struct.anon.68], ptr @smem_items, i32 0, i32 %tbl.096, i32 1
  %fifo_base_id = getelementptr [2 x %struct.anon.68], ptr @smem_items, i32 0, i32 %tbl.096, i32 2
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.cond3.preheader
  %i.094 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %for.inc.for.body5_crit_edge ]
  %arrayidx6 = getelementptr %struct.qcom_smd_alloc_entry, ptr %call, i32 %i.094
  %flags7 = getelementptr %struct.qcom_smd_alloc_entry, ptr %call, i32 %i.094, i32 2
  %4 = ptrtoint ptr %flags7 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %flags7, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %div3.i = lshr i32 %i.094, 5
  %arrayidx.i = getelementptr i32, ptr %arrayidx8, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.094, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end11, label %for.body5.for.inc_crit_edge

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end11:                                         ; preds = %for.body5
  %ref_count = getelementptr %struct.qcom_smd_alloc_entry, ptr %call, i32 %i.094, i32 3
  %11 = ptrtoint ptr %ref_count to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ref_count, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.end11.for.inc_crit_edge, label %if.end14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end14:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %if.end14.for.inc_crit_edge, label %if.end21

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %if.end14
  %and22 = and i32 %6, 255
  %15 = ptrtoint ptr %edge_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %edge_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and22, i32 %16)
  %cmp23.not = icmp eq i32 %and22, %16
  br i1 %cmp23.not, label %if.end25, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end25:                                         ; preds = %if.end21
  %cid26 = getelementptr %struct.qcom_smd_alloc_entry, ptr %call, i32 %i.094, i32 1
  %17 = ptrtoint ptr %cid26 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %cid26, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %info_base_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %info_base_id, align 4
  %add = add i32 %21, %19
  %22 = ptrtoint ptr %fifo_base_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_base_id, align 4
  %add29 = add i32 %23, %19
  %call32 = tail call fastcc ptr @qcom_smd_create_channel(ptr noundef %add.ptr, i32 noundef %add, i32 noundef %add29, ptr noundef %arrayidx6)
  %cmp.i91 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.end25.for.inc_crit_edge, label %do.body36

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body36:                                        ; preds = %if.end25
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %channels_lock) #13
  %list = getelementptr inbounds %struct.qcom_smd_channel, ptr %call32, i32 0, i32 18
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channels, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %channels, ptr noundef %25) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.body36.list_add.exit_crit_edge

do.body36.list_add.exit_crit_edge:                ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %call32, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %channels, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list, ptr %channels, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body36.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %channels_lock, i32 noundef %call40) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_channel_scan_worker.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_channel_scan_worker, %if.then50)) #13
          to label %do.end54 [label %if.then50], !srcloc !170

if.then50:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %name51 = getelementptr inbounds %struct.qcom_smd_channel, ptr %call32, i32 0, i32 3
  %30 = ptrtoint ptr %name51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_channel_scan_worker.__UNIQUE_ID_ddebug272, ptr noundef %add.ptr, ptr noundef nonnull @.str.46, ptr noundef %31) #13
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %list_add.exit
  tail call void @_set_bit(i32 noundef %i.094, ptr noundef %arrayidx8) #13
  tail call void @__wake_up(ptr noundef %new_channel_event, i32 noundef 1, i32 noundef 0, ptr noundef null) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end54, %if.end25.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %if.end11.for.inc_crit_edge, %for.body5.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.for.inc58_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body5

for.inc.for.inc58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc58

for.inc58:                                        ; preds = %for.inc.for.inc58_crit_edge, %for.body.for.inc58_crit_edge
  %inc59 = add nuw nsw i32 %tbl.096, 1
  %exitcond98.not = icmp eq i32 %inc59, 2
  br i1 %exitcond98.not, label %for.end60, label %for.inc58.for.body_crit_edge

for.inc58.for.body_crit_edge:                     ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end60:                                        ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #15
  %state_work = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i92 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %state_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_channel_state_worker(ptr noundef %work) #0 align 64 {
entry:
  %chinfo = alloca %struct.rpmsg_channel_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1160
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chinfo) #13
  %0 = call ptr @memset(ptr %chinfo, i32 255, i32 40)
  %channels_lock = getelementptr i8, ptr %work, i32 -160
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %channels_lock) #13
  %channels = getelementptr i8, ptr %work, i32 -168
  %1 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn162 = load ptr, ptr %channels, align 4
  %cmp10.not164 = icmp eq ptr %.pn162, %channels
  br i1 %cmp10.not164, label %entry.for.cond59.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond59.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %for.inc.for.cond59.preheader_crit_edge, %entry.for.cond59.preheader_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.for.cond59.preheader_crit_edge ], [ %flags.1, %for.inc.for.cond59.preheader_crit_edge ]
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn161168 = load ptr, ptr %channels, align 4
  %cmp62.not169 = icmp eq ptr %.pn161168, %channels
  br i1 %cmp62.not169, label %for.cond59.preheader.for.end122_crit_edge, label %for.body65.lr.ph

for.cond59.preheader.for.end122_crit_edge:        ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end122

for.body65.lr.ph:                                 ; preds = %for.cond59.preheader
  %src = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 1
  %dst = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 2
  br label %for.body65

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn166 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn162, %entry.for.body_crit_edge ]
  %flags.0165 = phi i32 [ %flags.1, %for.inc.for.body_crit_edge ], [ %call3, %entry.for.body_crit_edge ]
  %channel.0167 = getelementptr i8, ptr %.pn166, i32 -248
  %state = getelementptr i8, ptr %.pn166, i32 -232
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp12.not = icmp eq i32 %4, 0
  br i1 %cmp12.not, label %do.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end16:                                         ; preds = %for.body
  %info_word = getelementptr i8, ptr %.pn166, i32 -168
  %5 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info_word, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  %rx = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %6, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  %info = getelementptr i8, ptr %.pn166, i32 -172
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %rx20 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %8, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %rx, %cond.true ], [ %rx20, %cond.false ]
  %9 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond = load i32, ptr %cond.in, align 4
  %10 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond, label %cond.end.for.inc_crit_edge [
    i32 16777216, label %cond.end.if.end27_crit_edge
    i32 33554432, label %cond.end.if.end27_crit_edge173
  ]

cond.end.if.end27_crit_edge173:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

cond.end.if.end27_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end27:                                         ; preds = %cond.end.if.end27_crit_edge, %cond.end.if.end27_crit_edge173
  %registered = getelementptr i8, ptr %.pn166, i32 -240
  %11 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %registered, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %channels_lock, i32 noundef %flags.0165) #13
  tail call fastcc void @qcom_smd_create_device(ptr noundef %channel.0167)
  %13 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %registered, align 4
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %channels_lock) #13
  %14 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %registered, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %if.end27.for.inc_crit_edge, %cond.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %flags.1 = phi i32 [ %flags.0165, %for.body.for.inc_crit_edge ], [ %flags.0165, %if.end27.for.inc_crit_edge ], [ %call43, %if.end30 ], [ %flags.0165, %cond.end.for.inc_crit_edge ]
  %15 = ptrtoint ptr %.pn166 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn166, align 4
  %cmp10.not = icmp eq ptr %.pn, %channels
  br i1 %cmp10.not, label %for.inc.for.cond59.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.cond59.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond59.preheader

for.body65:                                       ; preds = %for.inc116.for.body65_crit_edge, %for.body65.lr.ph
  %.pn161171 = phi ptr [ %.pn161168, %for.body65.lr.ph ], [ %.pn161, %for.inc116.for.body65_crit_edge ]
  %flags.2170 = phi i32 [ %flags.0.lcssa, %for.body65.lr.ph ], [ %flags.3, %for.inc116.for.body65_crit_edge ]
  %state66 = getelementptr i8, ptr %.pn161171, i32 -232
  %16 = ptrtoint ptr %state66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state66, align 4
  %.off = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.end77, label %for.body65.for.inc116_crit_edge

for.body65.for.inc116_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc116

do.end77:                                         ; preds = %for.body65
  %info_word79 = getelementptr i8, ptr %.pn161171, i32 -168
  %18 = ptrtoint ptr %info_word79 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info_word79, align 4
  %tobool80.not = icmp eq ptr %19, null
  br i1 %tobool80.not, label %cond.false85, label %cond.true81

cond.true81:                                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #15
  %rx83 = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %19, i32 0, i32 1
  br label %cond.end89

cond.false85:                                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #15
  %info86 = getelementptr i8, ptr %.pn161171, i32 -172
  %20 = ptrtoint ptr %info86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info86, align 4
  %rx87 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %21, i32 0, i32 1
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false85, %cond.true81
  %cond90.in = phi ptr [ %rx83, %cond.true81 ], [ %rx87, %cond.false85 ]
  %22 = ptrtoint ptr %cond90.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond90 = load i32, ptr %cond90.in, align 4
  %23 = zext i32 %cond90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %cond90, label %if.end96 [
    i32 16777216, label %cond.end89.for.inc116_crit_edge
    i32 33554432, label %cond.end89.for.inc116_crit_edge174
  ]

cond.end89.for.inc116_crit_edge174:               ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc116

cond.end89.for.inc116_crit_edge:                  ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc116

if.end96:                                         ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %channels_lock, i32 noundef %flags.2170) #13
  %name98 = getelementptr i8, ptr %.pn161171, i32 -236
  %24 = ptrtoint ptr %name98 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name98, align 4
  %call99 = call ptr @strncpy(ptr noundef nonnull %chinfo, ptr noundef %25, i32 noundef 32)
  %26 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %src, align 4
  %27 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %dst, align 4
  %call100 = call i32 @rpmsg_unregister_device(ptr noundef %add.ptr, ptr noundef nonnull %chinfo) #13
  %registered101 = getelementptr i8, ptr %.pn161171, i32 -240
  %28 = ptrtoint ptr %registered101 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %registered101, align 4
  %call111 = call i32 @_raw_spin_lock_irqsave(ptr noundef %channels_lock) #13
  br label %for.inc116

for.inc116:                                       ; preds = %if.end96, %cond.end89.for.inc116_crit_edge, %cond.end89.for.inc116_crit_edge174, %for.body65.for.inc116_crit_edge
  %flags.3 = phi i32 [ %flags.2170, %cond.end89.for.inc116_crit_edge ], [ %call111, %if.end96 ], [ %flags.2170, %for.body65.for.inc116_crit_edge ], [ %flags.2170, %cond.end89.for.inc116_crit_edge174 ]
  %29 = ptrtoint ptr %.pn161171 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn161 = load ptr, ptr %.pn161171, align 4
  %cmp62.not = icmp eq ptr %.pn161, %channels
  br i1 %cmp62.not, label %for.inc116.for.end122_crit_edge, label %for.inc116.for.body65_crit_edge

for.inc116.for.body65_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body65

for.inc116.for.end122_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end122

for.end122:                                       ; preds = %for.inc116.for.end122_crit_edge, %for.cond59.preheader.for.end122_crit_edge
  %flags.2.lcssa = phi i32 [ %flags.0.lcssa, %for.cond59.preheader.for.end122_crit_edge ], [ %flags.3, %for.inc116.for.end122_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %channels_lock, i32 noundef %flags.2.lcssa) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chinfo) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_edge_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %channels_lock = getelementptr inbounds %struct.qcom_smd_edge, ptr %data, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %channels_lock) #13
  %channels = getelementptr inbounds %struct.qcom_smd_edge, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn39 = load ptr, ptr %channels, align 4
  %cmp.not40 = icmp eq ptr %.pn39, %channels
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn39, %entry.for.body_crit_edge ]
  %kick_state.0.off041 = phi i1 [ %or37, %for.body.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %channel.0 = getelementptr i8, ptr %.pn42, i32 -248
  %recv_lock = getelementptr i8, ptr %.pn42, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %recv_lock) #13
  %call = tail call fastcc zeroext i1 @qcom_smd_channel_intr(ptr noundef %channel.0)
  %or37 = or i1 %kick_state.0.off041, %call
  tail call void @_raw_spin_unlock(ptr noundef %recv_lock) #13
  %1 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %kick_state.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %or37, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %channels_lock) #13
  %remote_pid = getelementptr inbounds %struct.qcom_smd_edge, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %remote_pid, align 4
  %call11 = tail call i32 @qcom_smem_get_free_space(i32 noundef %3) #13
  %smem_available = getelementptr inbounds %struct.qcom_smd_edge, ptr %data, i32 0, i32 14
  %4 = ptrtoint ptr %smem_available to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_available, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %5)
  %cmp12.not = icmp eq i32 %call11, %5
  br i1 %cmp12.not, label %for.end.if.end18_crit_edge, label %if.then

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %smem_available to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11, ptr %smem_available, align 4
  %scan_work = getelementptr inbounds %struct.qcom_smd_edge, ptr %data, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %scan_work) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then, %for.end.if.end18_crit_edge
  br i1 %kick_state.0.off0.lcssa, label %if.then20, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %state_work = getelementptr inbounds %struct.qcom_smd_edge, ptr %data, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i38 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %state_work) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qcom_smd_create_channel(ptr noundef %edge, i32 noundef %smem_info_item, i32 noundef %smem_fifo_item, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %fifo_size = alloca i32, align 4
  %info_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_size) #13
  %0 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fifo_size, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info_size) #13
  %1 = ptrtoint ptr %info_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %info_size, align 4, !annotation !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %edge, ptr %call7.i.i, align 8
  %call3 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #13
  %name4 = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %name4, align 4
  %tobool6.not = icmp eq ptr %call3, null
  br i1 %tobool6.not, label %if.end.free_channel_crit_edge, label %do.body

if.end.free_channel_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_channel

do.body:                                          ; preds = %if.end
  %tx_lock = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @qcom_smd_create_channel.__key, i16 noundef signext 3) #13
  %recv_lock = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %recv_lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @qcom_smd_create_channel.__key.48, i16 noundef signext 3) #13
  %fblockread_event = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %fblockread_event, ptr noundef nonnull @.str.51, ptr noundef nonnull @qcom_smd_create_channel.__key.50) #13
  %state_change_event = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %state_change_event, ptr noundef nonnull @.str.53, ptr noundef nonnull @qcom_smd_create_channel.__key.52) #13
  %remote_pid = getelementptr inbounds %struct.qcom_smd_edge, ptr %edge, i32 0, i32 4
  %5 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %remote_pid, align 4
  %call20 = call ptr @qcom_smem_get(i32 noundef %6, i32 noundef %smem_info_item, ptr noundef nonnull %info_size) #13
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call20 to i32
  br label %free_name_and_channel

if.end24:                                         ; preds = %do.body
  %8 = ptrtoint ptr %info_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info_size, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %9, label %do.end32 [
    i32 88, label %if.then25
    i32 40, label %if.then27
  ]

if.then25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %info_word = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %info_word to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %info_word, align 8
  br label %if.end34

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %info28 = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %info28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call20, ptr %info28, align 4
  br label %if.end34

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %edge, ptr noundef nonnull @.str.54, i32 noundef %9) #17
  br label %free_name_and_channel

if.end34:                                         ; preds = %if.then27, %if.then25
  %13 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %remote_pid, align 4
  %call36 = call ptr @qcom_smem_get(i32 noundef %14, i32 noundef %smem_fifo_item, ptr noundef nonnull %fifo_size) #13
  %cmp.i87 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %call36 to i32
  br label %free_name_and_channel

if.end40:                                         ; preds = %if.end34
  %16 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fifo_size, align 4
  %div86 = lshr i32 %17, 1
  store i32 %div86, ptr %fifo_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_smd_create_channel.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_smd_create_channel, %if.then46)) #13
          to label %do.end50 [label %if.then46], !srcloc !170

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %info_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info_size, align 4
  %20 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_size, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_smd_create_channel.__UNIQUE_ID_ddebug271, ptr noundef %edge, ptr noundef nonnull @.str.56, ptr noundef %name, i32 noundef %19, i32 noundef %21) #13
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %if.end40
  %tx_fifo = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 11
  %22 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call36, ptr %tx_fifo, align 4
  %23 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifo_size, align 4
  %add.ptr = getelementptr i8, ptr %call36, i32 %24
  %rx_fifo = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %rx_fifo, align 8
  %fifo_size51 = getelementptr inbounds %struct.qcom_smd_channel, ptr %call7.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %fifo_size51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %fifo_size51, align 4
  call fastcc void @qcom_smd_channel_reset(ptr noundef nonnull %call7.i.i)
  br label %cleanup

free_name_and_channel:                            ; preds = %if.then38, %do.end32, %if.then22
  %ret.0 = phi i32 [ %7, %if.then22 ], [ %15, %if.then38 ], [ -22, %do.end32 ]
  %27 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name4, align 4
  call void @kfree(ptr noundef %28) #13
  br label %free_channel

free_channel:                                     ; preds = %free_name_and_channel, %if.end.free_channel_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_name_and_channel ], [ -12, %if.end.free_channel_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %29 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_channel, %do.end50, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %free_channel ], [ %call7.i.i, %do.end50 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info_size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_size) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_smd_channel_reset(ptr nocapture noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info_word = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 8
  %0 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info_word, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %info = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  br label %do.end5

do.end5:                                          ; preds = %if.else, %entry.do.end5_crit_edge
  %.sink = phi ptr [ %3, %if.else ], [ %1, %entry.do.end5_crit_edge ]
  %4 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %.sink, align 4
  %5 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info_word, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %fDSR = getelementptr inbounds %struct.smd_channel_info_word, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %fDSR to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fDSR, align 4
  br label %do.end17

if.else11:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %info12 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %8 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info12, align 4
  %fDSR14 = getelementptr inbounds %struct.smd_channel_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fDSR14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %fDSR14, align 4
  br label %do.end17

do.end17:                                         ; preds = %if.else11, %if.then8
  %11 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info_word, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %if.else23, label %if.then20

if.then20:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  %fCTS = getelementptr inbounds %struct.smd_channel_info_word, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %fCTS to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fCTS, align 4
  br label %do.end29

if.else23:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  %info24 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %14 = ptrtoint ptr %info24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info24, align 4
  %fCTS26 = getelementptr inbounds %struct.smd_channel_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %fCTS26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fCTS26, align 1
  br label %do.end29

do.end29:                                         ; preds = %if.else23, %if.then20
  %17 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info_word, align 4
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.else35, label %if.then32

if.then32:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  %fCD = getelementptr inbounds %struct.smd_channel_info_word, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %fCD to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fCD, align 4
  br label %do.end41

if.else35:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  %info36 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %20 = ptrtoint ptr %info36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info36, align 4
  %fCD38 = getelementptr inbounds %struct.smd_channel_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %fCD38 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fCD38, align 2
  br label %do.end41

do.end41:                                         ; preds = %if.else35, %if.then32
  %23 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info_word, align 4
  %tobool43.not = icmp eq ptr %24, null
  br i1 %tobool43.not, label %if.else47, label %if.then44

if.then44:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #15
  %fRI = getelementptr inbounds %struct.smd_channel_info_word, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %fRI to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %fRI, align 4
  br label %do.end53

if.else47:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #15
  %info48 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %26 = ptrtoint ptr %info48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info48, align 4
  %fRI50 = getelementptr inbounds %struct.smd_channel_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %fRI50 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %fRI50, align 1
  br label %do.end53

do.end53:                                         ; preds = %if.else47, %if.then44
  %29 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info_word, align 4
  %tobool55.not = icmp eq ptr %30, null
  br i1 %tobool55.not, label %if.else59, label %if.then56

if.then56:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  %fHEAD = getelementptr inbounds %struct.smd_channel_info_word, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %fHEAD to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %fHEAD, align 4
  br label %do.end65

if.else59:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  %info60 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %32 = ptrtoint ptr %info60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info60, align 4
  %fHEAD62 = getelementptr inbounds %struct.smd_channel_info, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %fHEAD62 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %fHEAD62, align 4
  br label %do.end65

do.end65:                                         ; preds = %if.else59, %if.then56
  %35 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info_word, align 4
  %tobool67.not = icmp eq ptr %36, null
  br i1 %tobool67.not, label %if.else71, label %if.then68

if.then68:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  %fTAIL = getelementptr inbounds %struct.smd_channel_info_word, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %fTAIL to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %fTAIL, align 4
  br label %do.end77

if.else71:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  %info72 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %38 = ptrtoint ptr %info72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info72, align 4
  %fTAIL74 = getelementptr inbounds %struct.smd_channel_info, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %fTAIL74 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %fTAIL74, align 1
  br label %do.end77

do.end77:                                         ; preds = %if.else71, %if.then68
  %41 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info_word, align 4
  %tobool79.not = icmp eq ptr %42, null
  br i1 %tobool79.not, label %if.else83, label %if.then80

if.then80:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #15
  %fSTATE = getelementptr inbounds %struct.smd_channel_info_word, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %fSTATE to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16777216, ptr %fSTATE, align 4
  br label %do.end89

if.else83:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #15
  %info84 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %44 = ptrtoint ptr %info84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info84, align 4
  %fSTATE86 = getelementptr inbounds %struct.smd_channel_info, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %fSTATE86 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %fSTATE86, align 2
  br label %do.end89

do.end89:                                         ; preds = %if.else83, %if.then80
  %47 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %info_word, align 4
  %tobool91.not = icmp eq ptr %48, null
  br i1 %tobool91.not, label %if.else95, label %if.then92

if.then92:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #15
  %fBLOCKREADINTR = getelementptr inbounds %struct.smd_channel_info_word, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %fBLOCKREADINTR to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16777216, ptr %fBLOCKREADINTR, align 4
  br label %do.end101

if.else95:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #15
  %info96 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %50 = ptrtoint ptr %info96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info96, align 4
  %fBLOCKREADINTR98 = getelementptr inbounds %struct.smd_channel_info, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %fBLOCKREADINTR98 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %fBLOCKREADINTR98, align 1
  br label %do.end101

do.end101:                                        ; preds = %if.else95, %if.then92
  %53 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %info_word, align 4
  %tobool103.not = icmp eq ptr %54, null
  br i1 %tobool103.not, label %if.else107, label %if.then104

if.then104:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #15
  %head = getelementptr inbounds %struct.smd_channel_info_word, ptr %54, i32 0, i32 10
  br label %do.end113

if.else107:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #15
  %info108 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %55 = ptrtoint ptr %info108 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %info108, align 4
  %head110 = getelementptr inbounds %struct.smd_channel_info, ptr %56, i32 0, i32 10
  br label %do.end113

do.end113:                                        ; preds = %if.else107, %if.then104
  %head110.sink = phi ptr [ %head110, %if.else107 ], [ %head, %if.then104 ]
  %57 = ptrtoint ptr %head110.sink to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %head110.sink, align 4
  %58 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %info_word, align 4
  %tobool115.not = icmp eq ptr %59, null
  br i1 %tobool115.not, label %if.else118, label %if.then116

if.then116:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #15
  %tail = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %59, i32 0, i32 1, i32 9
  br label %if.end122

if.else118:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #15
  %info119 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %60 = ptrtoint ptr %info119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info119, align 4
  %tail121 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %61, i32 0, i32 1, i32 9
  br label %if.end122

if.end122:                                        ; preds = %if.else118, %if.then116
  %tail121.sink = phi ptr [ %tail121, %if.else118 ], [ %tail, %if.then116 ]
  %62 = ptrtoint ptr %tail121.sink to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tail121.sink, align 4
  %63 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %channel, align 4
  %mbox_chan.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mbox_chan.i, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @mbox_send_message(ptr noundef nonnull %66, ptr noundef null) #13
  %67 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mbox_chan.i, align 4
  tail call void @mbox_client_txdone(ptr noundef %68, i32 noundef 0) #13
  br label %qcom_smd_signal_channel.exit

if.else.i:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %ipc_regmap.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %64, i32 0, i32 6
  %69 = ptrtoint ptr %ipc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ipc_regmap.i, align 4
  %ipc_offset.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %64, i32 0, i32 7
  %71 = ptrtoint ptr %ipc_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ipc_offset.i, align 8
  %ipc_bit.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %64, i32 0, i32 8
  %73 = ptrtoint ptr %ipc_bit.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ipc_bit.i, align 4
  %shl.i = shl nuw i32 1, %74
  %call4.i = tail call i32 @regmap_write(ptr noundef %70, i32 noundef %72, i32 noundef %shl.i) #13
  br label %qcom_smd_signal_channel.exit

qcom_smd_signal_channel.exit:                     ; preds = %if.else.i, %if.then.i
  %state123 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 4
  %75 = ptrtoint ptr %state123 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %state123, align 4
  %pkt_size = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 16
  %76 = ptrtoint ptr %pkt_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %pkt_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_smd_create_device(ptr nocapture noundef readonly %channel) unnamed_addr #0 align 64 {
entry:
  %name.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_smd_create_device.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_smd_create_device, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_smd_create_device.__UNIQUE_ID_ddebug270, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef %3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1000) #16
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %edge8 = getelementptr inbounds %struct.qcom_smd_device, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %edge8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %edge8, align 8
  %ops = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @qcom_smd_device_ops, ptr %ops, align 8
  %id = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i, i32 0, i32 1
  %name12 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 3
  %7 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name12, align 4
  %call13 = tail call ptr @strncpy(ptr noundef %id, ptr noundef %8, i32 noundef 32)
  %src = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %src, align 8
  %dst = getelementptr inbounds %struct.rpmsg_device, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dst, align 4
  %of_node = getelementptr inbounds %struct.qcom_smd_edge, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #13
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i, align 4, !annotation !172
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %12, ptr noundef null) #13
  %cmp.not14.i = icmp eq ptr %call.i, null
  br i1 %cmp.not14.i, label %if.end7.qcom_smd_match_channel.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.qcom_smd_match_channel.exit_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %qcom_smd_match_channel.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %child.015.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end7.for.body.i_crit_edge ]
  %call1.i = call i32 @of_property_read_string(ptr noundef nonnull %child.015.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %name.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %call2.i = call i32 @strcmp(ptr noundef %15, ptr noundef %8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.qcom_smd_match_channel.exit_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i.qcom_smd_match_channel.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qcom_smd_match_channel.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call6.i = call ptr @of_get_next_available_child(ptr noundef %12, ptr noundef nonnull %child.015.i) #13
  %cmp.not.i = icmp eq ptr %call6.i, null
  br i1 %cmp.not.i, label %for.inc.i.qcom_smd_match_channel.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.qcom_smd_match_channel.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qcom_smd_match_channel.exit

qcom_smd_match_channel.exit:                      ; preds = %for.inc.i.qcom_smd_match_channel.exit_crit_edge, %if.end.i.qcom_smd_match_channel.exit_crit_edge, %if.end7.qcom_smd_match_channel.exit_crit_edge
  %child.0.lcssa.i = phi ptr [ null, %if.end7.qcom_smd_match_channel.exit_crit_edge ], [ %child.015.i, %if.end.i.qcom_smd_match_channel.exit_crit_edge ], [ null, %for.inc.i.qcom_smd_match_channel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #13
  %of_node17 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %16 = ptrtoint ptr %of_node17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %child.0.lcssa.i, ptr %of_node17, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %18 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @qcom_smd_release_device, ptr %release, align 4
  %call21 = call i32 @rpmsg_register_device(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %qcom_smd_match_channel.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_unregister_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smd_release_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_smd_create_ept(ptr noundef %rpdev, ptr noundef %cb, ptr noundef %priv, [10 x i32] %chinfo.coerce) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry85.i = alloca %struct.wait_queue_entry, align 4
  %chinfo = alloca %struct.rpmsg_channel_info, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chinfo.coerce.fca.0.extract = extractvalue [10 x i32] %chinfo.coerce, 0
  %0 = ptrtoint ptr %chinfo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %chinfo.coerce.fca.0.extract, ptr %chinfo, align 4
  %chinfo.coerce.fca.1.extract = extractvalue [10 x i32] %chinfo.coerce, 1
  %chinfo.coerce.fca.1.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 1
  %1 = ptrtoint ptr %chinfo.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %chinfo.coerce.fca.1.extract, ptr %chinfo.coerce.fca.1.gep, align 4
  %chinfo.coerce.fca.2.extract = extractvalue [10 x i32] %chinfo.coerce, 2
  %chinfo.coerce.fca.2.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 2
  %2 = ptrtoint ptr %chinfo.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %chinfo.coerce.fca.2.extract, ptr %chinfo.coerce.fca.2.gep, align 4
  %chinfo.coerce.fca.3.extract = extractvalue [10 x i32] %chinfo.coerce, 3
  %chinfo.coerce.fca.3.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 3
  %3 = ptrtoint ptr %chinfo.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %chinfo.coerce.fca.3.extract, ptr %chinfo.coerce.fca.3.gep, align 4
  %chinfo.coerce.fca.4.extract = extractvalue [10 x i32] %chinfo.coerce, 4
  %chinfo.coerce.fca.4.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 4
  %4 = ptrtoint ptr %chinfo.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %chinfo.coerce.fca.4.extract, ptr %chinfo.coerce.fca.4.gep, align 4
  %chinfo.coerce.fca.5.extract = extractvalue [10 x i32] %chinfo.coerce, 5
  %chinfo.coerce.fca.5.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 5
  %5 = ptrtoint ptr %chinfo.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %chinfo.coerce.fca.5.extract, ptr %chinfo.coerce.fca.5.gep, align 4
  %chinfo.coerce.fca.6.extract = extractvalue [10 x i32] %chinfo.coerce, 6
  %chinfo.coerce.fca.6.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 6
  %6 = ptrtoint ptr %chinfo.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %chinfo.coerce.fca.6.extract, ptr %chinfo.coerce.fca.6.gep, align 4
  %chinfo.coerce.fca.7.extract = extractvalue [10 x i32] %chinfo.coerce, 7
  %chinfo.coerce.fca.7.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 7
  %7 = ptrtoint ptr %chinfo.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %chinfo.coerce.fca.7.extract, ptr %chinfo.coerce.fca.7.gep, align 4
  %chinfo.coerce.fca.8.extract = extractvalue [10 x i32] %chinfo.coerce, 8
  %chinfo.coerce.fca.8.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 8
  %8 = ptrtoint ptr %chinfo.coerce.fca.8.gep to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %chinfo.coerce.fca.8.extract, ptr %chinfo.coerce.fca.8.gep, align 4
  %chinfo.coerce.fca.9.extract = extractvalue [10 x i32] %chinfo.coerce, 9
  %chinfo.coerce.fca.9.gep = getelementptr inbounds [10 x i32], ptr %chinfo, i32 0, i32 9
  %9 = ptrtoint ptr %chinfo.coerce.fca.9.gep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %chinfo.coerce.fca.9.extract, ptr %chinfo.coerce.fca.9.gep, align 4
  %edge1 = getelementptr inbounds %struct.qcom_smd_device, ptr %rpdev, i32 0, i32 1
  %10 = ptrtoint ptr %edge1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edge1, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 916) #13
  %channels_lock.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %11, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %channels_lock.i) #13
  %channels.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %11, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %channels.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp7.not.i, label %qcom_smd_find_channel.exit.thread, label %for.body.i

qcom_smd_find_channel.exit.thread:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %channels_lock.i, i32 noundef %call2.i) #13
  br label %if.then11

for.body.i:                                       ; preds = %for.cond.i
  %name9.i = getelementptr i8, ptr %.pn.i, i32 -236
  %13 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name9.i, align 4
  %call10.i = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull %chinfo) #18
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %qcom_smd_find_channel.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

qcom_smd_find_channel.exit:                       ; preds = %for.body.i
  %channel.0.le.i = getelementptr i8, ptr %.pn.i, i32 -248
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %channels_lock.i, i32 noundef %call2.i) #13
  %cmp.not = icmp eq ptr %channel.0.le.i, null
  br i1 %cmp.not, label %qcom_smd_find_channel.exit.if.then11_crit_edge, label %qcom_smd_find_channel.exit.if.end43_crit_edge

qcom_smd_find_channel.exit.if.end43_crit_edge:    ; preds = %qcom_smd_find_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

qcom_smd_find_channel.exit.if.then11_crit_edge:   ; preds = %qcom_smd_find_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11

if.then11:                                        ; preds = %qcom_smd_find_channel.exit.if.then11_crit_edge, %qcom_smd_find_channel.exit.thread
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %new_channel_event = getelementptr inbounds %struct.qcom_smd_edge, ptr %11, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then11
  %__ret12.0 = phi i32 [ 100, %if.then11 ], [ %call36, %cleanup ]
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %new_channel_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call2.i106 = call i32 @_raw_spin_lock_irqsave(ptr noundef %channels_lock.i) #13
  br label %for.cond.i111

for.cond.i111:                                    ; preds = %for.body.i115.for.cond.i111_crit_edge, %for.cond
  %.pn.in.i108 = phi ptr [ %channels.i, %for.cond ], [ %.pn.i109, %for.body.i115.for.cond.i111_crit_edge ]
  %16 = ptrtoint ptr %.pn.in.i108 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i109 = load ptr, ptr %.pn.in.i108, align 4
  %cmp7.not.i110 = icmp eq ptr %.pn.i109, %channels.i
  br i1 %cmp7.not.i110, label %for.cond.i111.qcom_smd_find_channel.exit119_crit_edge, label %for.body.i115

for.cond.i111.qcom_smd_find_channel.exit119_crit_edge: ; preds = %for.cond.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %qcom_smd_find_channel.exit119

for.body.i115:                                    ; preds = %for.cond.i111
  %name9.i112 = getelementptr i8, ptr %.pn.i109, i32 -236
  %17 = ptrtoint ptr %name9.i112 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name9.i112, align 4
  %call10.i113 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull %chinfo) #18
  %tobool.not.i114 = icmp eq i32 %call10.i113, 0
  br i1 %tobool.not.i114, label %for.end.split.loop.exit.i117, label %for.body.i115.for.cond.i111_crit_edge

for.body.i115.for.cond.i111_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i111

for.end.split.loop.exit.i117:                     ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #15
  %channel.0.le.i116 = getelementptr i8, ptr %.pn.i109, i32 -248
  br label %qcom_smd_find_channel.exit119

qcom_smd_find_channel.exit119:                    ; preds = %for.end.split.loop.exit.i117, %for.cond.i111.qcom_smd_find_channel.exit119_crit_edge
  %ret.0.i118 = phi ptr [ %channel.0.le.i116, %for.end.split.loop.exit.i117 ], [ null, %for.cond.i111.qcom_smd_find_channel.exit119_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %channels_lock.i, i32 noundef %call2.i106) #13
  %cmp16.not = icmp eq ptr %ret.0.i118, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.0)
  %tobool20.not = icmp eq i32 %__ret12.0, 0
  %spec.store.select74 = select i1 %tobool20.not, i32 1, i32 %__ret12.0
  %__ret12.1 = select i1 %cmp16.not, i32 %__ret12.0, i32 %spec.store.select74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1)
  %tobool26.not = icmp eq i32 %__ret12.1, 0
  %not.cmp16.not = xor i1 %cmp16.not, true
  %19 = select i1 %not.cmp16.not, i1 true, i1 %tobool26.not
  br i1 %19, label %if.end39, label %if.end32

if.end32:                                         ; preds = %qcom_smd_find_channel.exit119
  %tobool33.not = icmp eq i32 %call13, 0
  br i1 %tobool33.not, label %cleanup, label %if.end39.thread138

if.end39.thread138:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end43

cleanup:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = call i32 @schedule_timeout(i32 noundef %__ret12.1) #13
  br label %for.cond

if.end39:                                         ; preds = %qcom_smd_find_channel.exit119
  call void @finish_wait(ptr noundef %new_channel_event, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br i1 %tobool26.not, label %if.end39.cleanup67_crit_edge, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end39.cleanup67_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.end43:                                         ; preds = %if.end39.if.end43_crit_edge, %if.end39.thread138, %qcom_smd_find_channel.exit.if.end43_crit_edge
  %channel.0134 = phi ptr [ %ret.0.i118, %if.end39.if.end43_crit_edge ], [ %ret.0.i118, %if.end39.thread138 ], [ %channel.0.le.i, %qcom_smd_find_channel.exit.if.end43_crit_edge ]
  %state = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44.not = icmp eq i32 %21, 0
  br i1 %cmp44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %name49 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 3
  %22 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name49, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.59, ptr noundef %23) #17
  br label %cleanup67

if.end50:                                         ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 120) #16
  %tobool52.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool52.not, label %if.end50.cleanup67_crit_edge, label %if.end54

if.end50.cleanup67_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.end54:                                         ; preds = %if.end50
  %refcount = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  %25 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %refcount, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rpdev, ptr %call7.i.i, align 8
  %cb57 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %cb57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cb, ptr %cb57, align 8
  %priv58 = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %priv58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %priv, ptr %priv58, align 4
  %ops = getelementptr inbounds %struct.rpmsg_endpoint, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @qcom_smd_endpoint_ops, ptr %ops, align 8
  %qsept59 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 1
  %30 = ptrtoint ptr %qsept59 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %qsept59, align 4
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %qsch to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %channel.0134, ptr %qsch, align 4
  %32 = ptrtoint ptr %channel.0134 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %channel.0134, align 4
  %fifo_size.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 13
  %34 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifo_size.i, align 4
  %36 = call i32 @llvm.smin.i32(i32 %35, i32 4096) #13
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #19
  %bounce_buffer.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 14
  %37 = ptrtoint ptr %bounce_buffer.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i, ptr %bounce_buffer.i, align 4
  %tobool.not.i121 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i121, label %if.end54.free_ept_crit_edge, label %if.end.i

if.end54.free_ept_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ept

if.end.i:                                         ; preds = %if.end54
  %38 = ptrtoint ptr %qsept59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %qsept59, align 4
  %recv_lock.i.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 15
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_lock.i.i) #13
  %cb6.i.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %cb6.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cb, ptr %cb6.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_lock.i.i, i32 noundef %call3.i.i) #13
  call fastcc void @qcom_smd_channel_set_state(ptr noundef %channel.0134, i32 noundef 1) #13
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 837) #13
  %remote_state.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 5
  %41 = ptrtoint ptr %remote_state.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %remote_state.i, align 4
  %.off.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i.if.end59.i_crit_edge, label %if.then19.i

if.end.i.if.end59.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i

if.then19.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  %43 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #13
  %state_change_event.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 6
  %call21210.i = call i32 @prepare_to_wait_event(ptr noundef %state_change_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %44 = ptrtoint ptr %remote_state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %remote_state.i, align 4
  %.off177211.i = add i32 %45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off177211.i)
  %switch178212.i = icmp ult i32 %.off177211.i, 2
  br i1 %switch178212.i, label %if.end52.thread.i, label %if.then19.i.if.end45.i_crit_edge

if.then19.i.if.end45.i_crit_edge:                 ; preds = %if.then19.i
  br label %if.end45.i

if.end52.thread.i:                                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %state_change_event.i, ptr noundef nonnull %__wq_entry.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br label %if.end59.i

if.end45.i:                                       ; preds = %cleanup.i.if.end45.i_crit_edge, %if.then19.i.if.end45.i_crit_edge
  %__ret20.1214.i = phi i32 [ %__ret20.1.i, %cleanup.i.if.end45.i_crit_edge ], [ 100, %if.then19.i.if.end45.i_crit_edge ]
  %call21213.i = phi i32 [ %call21.i, %cleanup.i.if.end45.i_crit_edge ], [ %call21210.i, %if.then19.i.if.end45.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21213.i)
  %tobool46.not.i = icmp eq i32 %call21213.i, 0
  br i1 %tobool46.not.i, label %cleanup.i, label %if.end52.thread191.i

if.end52.thread191.i:                             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br label %if.end59.i

cleanup.i:                                        ; preds = %if.end45.i
  %call49.i = call i32 @schedule_timeout(i32 noundef %__ret20.1214.i) #13
  %call21.i = call i32 @prepare_to_wait_event(ptr noundef %state_change_event.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %46 = ptrtoint ptr %remote_state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %remote_state.i, align 4
  %48 = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %49 = icmp ult i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool33.not.i = icmp eq i32 %call49.i, 0
  %50 = select i1 %49, i1 %tobool33.not.i, i1 false
  %__ret20.1.i = select i1 %50, i32 1, i32 %call49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.1.i)
  %tobool39.not.i = icmp eq i32 %__ret20.1.i, 0
  %or.cond.i = select i1 %49, i1 true, i1 %tobool39.not.i
  br i1 %or.cond.i, label %if.end52.i, label %cleanup.i.if.end45.i_crit_edge

cleanup.i.if.end45.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.end52.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %state_change_event.i, ptr noundef nonnull %__wq_entry.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br i1 %tobool39.not.i, label %if.end52.i.out_close_timeout.i_crit_edge, label %if.end52.i.if.end59.i_crit_edge

if.end52.i.if.end59.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i

if.end52.i.out_close_timeout.i_crit_edge:         ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_close_timeout.i

if.end59.i:                                       ; preds = %if.end52.i.if.end59.i_crit_edge, %if.end52.thread191.i, %if.end52.thread.i, %if.end.i.if.end59.i_crit_edge
  call fastcc void @qcom_smd_channel_set_state(ptr noundef %channel.0134, i32 noundef 2) #13
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 848) #13
  %51 = ptrtoint ptr %remote_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %remote_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp69.i = icmp eq i32 %52, 2
  br i1 %cmp69.i, label %if.end59.i.cleanup67_crit_edge, label %if.then84.i

if.end59.i.cleanup67_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.then84.i:                                      ; preds = %if.end59.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry85.i) #13
  %53 = call ptr @memset(ptr %__wq_entry85.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry85.i, i32 noundef 0) #13
  %state_change_event89.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel.0134, i32 0, i32 6
  %call90216.i = call i32 @prepare_to_wait_event(ptr noundef %state_change_event89.i, ptr noundef nonnull %__wq_entry85.i, i32 noundef 1) #13
  %54 = ptrtoint ptr %remote_state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %remote_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp93217.i = icmp eq i32 %55, 2
  br i1 %cmp93217.i, label %if.end121.thread.i, label %if.then84.i.if.end109.i_crit_edge

if.then84.i.if.end109.i_crit_edge:                ; preds = %if.then84.i
  br label %if.end109.i

if.end121.thread.i:                               ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %state_change_event89.i, ptr noundef nonnull %__wq_entry85.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry85.i) #13
  br label %cleanup67

if.end109.i:                                      ; preds = %cleanup114.i.if.end109.i_crit_edge, %if.then84.i.if.end109.i_crit_edge
  %__ret86.1219.i = phi i32 [ %__ret86.1.i, %cleanup114.i.if.end109.i_crit_edge ], [ 100, %if.then84.i.if.end109.i_crit_edge ]
  %call90218.i = phi i32 [ %call90.i, %cleanup114.i.if.end109.i_crit_edge ], [ %call90216.i, %if.then84.i.if.end109.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90218.i)
  %tobool110.not.i = icmp eq i32 %call90218.i, 0
  br i1 %tobool110.not.i, label %cleanup114.i, label %if.end121.thread203.i

if.end121.thread203.i:                            ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry85.i) #13
  br label %cleanup67

cleanup114.i:                                     ; preds = %if.end109.i
  %call113.i = call i32 @schedule_timeout(i32 noundef %__ret86.1219.i) #13
  %call90.i = call i32 @prepare_to_wait_event(ptr noundef %state_change_event89.i, ptr noundef nonnull %__wq_entry85.i, i32 noundef 1) #13
  %56 = ptrtoint ptr %remote_state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %remote_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp93.i = icmp eq i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %tobool97.not.i = icmp eq i32 %call113.i, 0
  %58 = select i1 %cmp93.i, i1 %tobool97.not.i, i1 false
  %__ret86.1.i = select i1 %58, i32 1, i32 %call113.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret86.1.i)
  %tobool103.not.i = icmp eq i32 %__ret86.1.i, 0
  %59 = select i1 %cmp93.i, i1 true, i1 %tobool103.not.i
  br i1 %59, label %if.end121.i, label %cleanup114.i.if.end109.i_crit_edge

cleanup114.i.if.end109.i_crit_edge:               ; preds = %cleanup114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.i

if.end121.i:                                      ; preds = %cleanup114.i
  call void @finish_wait(ptr noundef %state_change_event89.i, ptr noundef nonnull %__wq_entry85.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry85.i) #13
  br i1 %tobool103.not.i, label %if.end121.i.out_close_timeout.i_crit_edge, label %if.end121.i.cleanup67_crit_edge

if.end121.i.cleanup67_crit_edge:                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.end121.i.out_close_timeout.i_crit_edge:        ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_close_timeout.i

out_close_timeout.i:                              ; preds = %if.end121.i.out_close_timeout.i_crit_edge, %if.end52.i.out_close_timeout.i_crit_edge
  %.str.66.sink.i = phi ptr [ @.str.63, %if.end52.i.out_close_timeout.i_crit_edge ], [ @.str.66, %if.end121.i.out_close_timeout.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull %.str.66.sink.i) #17
  call fastcc void @qcom_smd_channel_set_state(ptr noundef %channel.0134, i32 noundef 0) #13
  br label %free_ept

free_ept:                                         ; preds = %out_close_timeout.i, %if.end54.free_ept_crit_edge
  %60 = ptrtoint ptr %qsept59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %qsept59, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !173
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %free_ept
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup67_crit_edge, label %if.then10.i.i.i.i, !prof !175

if.end5.i.i.i.i.cleanup67_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup67

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %cleanup67

if.then.i:                                        ; preds = %free_ept
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup67

cleanup67:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup67_crit_edge, %if.end121.i.cleanup67_crit_edge, %if.end121.thread203.i, %if.end121.thread.i, %if.end59.i.cleanup67_crit_edge, %if.end50.cleanup67_crit_edge, %do.end48, %if.end39.cleanup67_crit_edge
  %retval.0 = phi ptr [ null, %do.end48 ], [ null, %if.end39.cleanup67_crit_edge ], [ null, %if.end50.cleanup67_crit_edge ], [ null, %if.end5.i.i.i.i.cleanup67_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ], [ %call7.i.i, %if.end121.i.cleanup67_crit_edge ], [ %call7.i.i, %if.end121.thread203.i ], [ %call7.i.i, %if.end59.i.cleanup67_crit_edge ], [ %call7.i.i, %if.end121.thread.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_announce_create(ptr nocapture noundef readonly %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ept, align 8
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qsch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qsch, align 4
  %recv_lock = getelementptr inbounds %struct.qcom_smd_channel, ptr %3, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_lock) #13
  %call6 = tail call fastcc zeroext i1 @qcom_smd_channel_intr(ptr noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_lock, i32 noundef %call3) #13
  br i1 %call6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %state_work = getelementptr inbounds %struct.qcom_smd_edge, ptr %5, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %state_work) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_smd_destroy_ept(ptr noundef %ept) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %qsch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qsch, align 4
  %qsept.i.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qsept.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qsept.i.i, align 4
  %recv_lock.i.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %1, i32 0, i32 15
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_lock.i.i) #13
  %cb6.i.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cb6.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cb6.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_lock.i.i, i32 noundef %call3.i.i) #13
  %bounce_buffer.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %bounce_buffer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bounce_buffer.i, align 4
  tail call void @kfree(ptr noundef %6) #13
  %7 = ptrtoint ptr %bounce_buffer.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bounce_buffer.i, align 4
  tail call fastcc void @qcom_smd_channel_set_state(ptr noundef %1, i32 noundef 0) #13
  tail call fastcc void @qcom_smd_channel_reset(ptr noundef %1) #13
  %8 = ptrtoint ptr %qsept.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %qsept.i.i, align 4
  %refcount = getelementptr inbounds %struct.rpmsg_endpoint, ptr %ept, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #13, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !175

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !176
  tail call void @kfree(ptr noundef %ept) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_send(ptr nocapture noundef readonly %ept, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %qsch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qsch, align 4
  %call = tail call fastcc i32 @__qcom_smd_send(ptr noundef %1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_sendto(ptr nocapture noundef readonly %ept, ptr noundef %data, i32 noundef %len, i32 noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %qsch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qsch, align 4
  %call = tail call fastcc i32 @__qcom_smd_send(ptr noundef %1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_trysend(ptr nocapture noundef readonly %ept, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %qsch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qsch, align 4
  %call = tail call fastcc i32 @__qcom_smd_send(ptr noundef %1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_trysendto(ptr nocapture noundef readonly %ept, ptr noundef %data, i32 noundef %len, i32 noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %qsch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qsch, align 4
  %call = tail call fastcc i32 @__qcom_smd_send(ptr noundef %1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_poll(ptr nocapture noundef readonly %ept, ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qsch = getelementptr inbounds %struct.qcom_smd_endpoint, ptr %ept, i32 0, i32 1
  %0 = ptrtoint ptr %qsch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qsch, align 4
  %fblockread_event = getelementptr inbounds %struct.qcom_smd_channel, ptr %1, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %fblockread_event, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %fblockread_event, ptr noundef nonnull %wait) #13
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %fifo_size.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_size.i, align 4
  %info_word.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %info_word.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info_word.i, align 4
  %tobool.not.i3 = icmp eq ptr %7, null
  br i1 %tobool.not.i3, label %cond.false15.i, label %cond.true11.i

cond.true11.i:                                    ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  %head2.i = getelementptr inbounds %struct.smd_channel_info_word, ptr %7, i32 0, i32 10
  %tail14.i = getelementptr inbounds %struct.smd_channel_info_word, ptr %7, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit

cond.false15.i:                                   ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #15
  %info.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i, align 4
  %head4.i = getelementptr inbounds %struct.smd_channel_info, ptr %9, i32 0, i32 10
  %tail18.i = getelementptr inbounds %struct.smd_channel_info, ptr %9, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit

qcom_smd_get_tx_avail.exit:                       ; preds = %cond.false15.i, %cond.true11.i
  %cond33.in.i = phi ptr [ %head2.i, %cond.true11.i ], [ %head4.i, %cond.false15.i ]
  %cond20.in.i = phi ptr [ %tail14.i, %cond.true11.i ], [ %tail18.i, %cond.false15.i ]
  %10 = ptrtoint ptr %cond33.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond33.i = load i32, ptr %cond33.in.i, align 4
  %11 = ptrtoint ptr %cond20.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond20.i = load i32, ptr %cond20.in.i, align 4
  %sub.i = add i32 %5, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %cond20.i) #13
  %13 = xor i32 %cond33.i, -1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %sub21.not.i = add i32 %12, %14
  %sub22.i = and i32 %sub21.not.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub22.i)
  %cmp = icmp ugt i32 %sub22.i, 20
  %spec.select = select i1 %cmp, i32 260, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_smd_channel_set_state(ptr nocapture noundef %channel, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp = icmp eq i32 %state, 2
  %frombool = zext i1 %cmp to i8
  %state2 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 4
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp3 = icmp eq i32 %3, %state
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_smd_channel_set_state.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_smd_channel_set_state, %if.then7)) #13
          to label %do.end11 [label %if.then7], !srcloc !170

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_smd_channel_set_state.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.62, ptr noundef %5, i32 noundef %state) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body
  %info_word = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 8
  %6 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info_word, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %8 = select i1 %cmp, i32 16777216, i32 0
  %fDSR = getelementptr inbounds %struct.smd_channel_info_word, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %fDSR to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fDSR, align 4
  br label %do.end23

if.else:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  %info = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %fDSR19 = getelementptr inbounds %struct.smd_channel_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %fDSR19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %fDSR19, align 4
  br label %do.end23

do.end23:                                         ; preds = %if.else, %if.then13
  %13 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info_word, align 4
  %tobool25.not = icmp eq ptr %14, null
  br i1 %tobool25.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  %15 = select i1 %cmp, i32 16777216, i32 0
  %fCTS = getelementptr inbounds %struct.smd_channel_info_word, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %fCTS to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fCTS, align 4
  br label %do.end40

if.else31:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  %info34 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %17 = ptrtoint ptr %info34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info34, align 4
  %fCTS36 = getelementptr inbounds %struct.smd_channel_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %fCTS36 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %fCTS36, align 1
  br label %do.end40

do.end40:                                         ; preds = %if.else31, %if.then26
  %20 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info_word, align 4
  %tobool42.not = icmp eq ptr %21, null
  br i1 %tobool42.not, label %if.else48, label %if.then43

if.then43:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  %22 = select i1 %cmp, i32 16777216, i32 0
  %fCD = getelementptr inbounds %struct.smd_channel_info_word, ptr %21, i32 0, i32 3
  %23 = ptrtoint ptr %fCD to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fCD, align 4
  br label %do.end57

if.else48:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  %info51 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %24 = ptrtoint ptr %info51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info51, align 4
  %fCD53 = getelementptr inbounds %struct.smd_channel_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %fCD53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %fCD53, align 2
  br label %do.end57

do.end57:                                         ; preds = %if.else48, %if.then43
  %27 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info_word, align 4
  %tobool59.not = icmp eq ptr %28, null
  %29 = tail call i32 @llvm.bswap.i32(i32 %state)
  br i1 %tobool59.not, label %if.else64, label %do.end57.do.end71_crit_edge

do.end57.do.end71_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end71

if.else64:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #15
  %info65 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %30 = ptrtoint ptr %info65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info65, align 4
  br label %do.end71

do.end71:                                         ; preds = %if.else64, %do.end57.do.end71_crit_edge
  %.sink = phi ptr [ %31, %if.else64 ], [ %28, %do.end57.do.end71_crit_edge ]
  %32 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %.sink, align 4
  %33 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info_word, align 4
  %tobool73.not = icmp eq ptr %34, null
  br i1 %tobool73.not, label %if.else77, label %if.then74

if.then74:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #15
  %fSTATE = getelementptr inbounds %struct.smd_channel_info_word, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %fSTATE to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16777216, ptr %fSTATE, align 4
  br label %if.end81

if.else77:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #15
  %info78 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %36 = ptrtoint ptr %info78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info78, align 4
  %fSTATE80 = getelementptr inbounds %struct.smd_channel_info, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %fSTATE80 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %fSTATE80, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.else77, %if.then74
  %39 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %state, ptr %state2, align 4
  %40 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %channel, align 4
  %mbox_chan.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mbox_chan.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @mbox_send_message(ptr noundef nonnull %43, ptr noundef null) #13
  %44 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mbox_chan.i, align 4
  tail call void @mbox_client_txdone(ptr noundef %45, i32 noundef 0) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %ipc_regmap.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %41, i32 0, i32 6
  %46 = ptrtoint ptr %ipc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ipc_regmap.i, align 4
  %ipc_offset.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %41, i32 0, i32 7
  %48 = ptrtoint ptr %ipc_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ipc_offset.i, align 8
  %ipc_bit.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %41, i32 0, i32 8
  %50 = ptrtoint ptr %ipc_bit.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ipc_bit.i, align 4
  %shl.i = shl nuw i32 1, %51
  %call4.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %49, i32 noundef %shl.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qcom_smd_send(ptr noundef %channel, ptr noundef %data, i32 noundef %len, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca [5 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #13
  %0 = getelementptr inbounds i8, ptr %hdr, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = tail call i32 @llvm.bswap.i32(i32 %len)
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %hdr, align 4
  %add = add i32 %len, 20
  %info_word = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 8
  %4 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info_word, align 4
  %tobool.not = icmp eq ptr %5, null
  %6 = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup136_crit_edge

entry.cleanup136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup136

if.end:                                           ; preds = %entry
  %fifo_size = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 13
  %7 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp.not = icmp slt i32 %add, %8
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup136_crit_edge

if.end.cleanup136_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup136

if.end3:                                          ; preds = %if.end
  br i1 %wait, label %do.body, label %if.end3.do.body11_crit_edge

if.end3.do.body11_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 761) #13
  br label %do.body11

do.body11:                                        ; preds = %do.body, %if.end3.do.body11_crit_edge
  %tx_lock = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 9
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #13
  %info.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %state = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 4
  %fblockread_event = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 10
  %wait.not = xor i1 %wait, true
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %do.body11
  %ret.0 = phi i32 [ -1, %do.body11 ], [ 0, %while.cond.backedge ]
  %flags.0 = phi i32 [ %call13, %do.body11 ], [ %call80, %while.cond.backedge ]
  %9 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_size, align 4
  %11 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info_word, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %cond.false15.i, label %cond.true11.i

cond.true11.i:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %head2.i = getelementptr inbounds %struct.smd_channel_info_word, ptr %12, i32 0, i32 10
  %tail14.i = getelementptr inbounds %struct.smd_channel_info_word, ptr %12, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit

cond.false15.i:                                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info.i, align 4
  %head4.i = getelementptr inbounds %struct.smd_channel_info, ptr %14, i32 0, i32 10
  %tail18.i = getelementptr inbounds %struct.smd_channel_info, ptr %14, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit

qcom_smd_get_tx_avail.exit:                       ; preds = %cond.false15.i, %cond.true11.i
  %cond33.in.i = phi ptr [ %head2.i, %cond.true11.i ], [ %head4.i, %cond.false15.i ]
  %cond20.in.i = phi ptr [ %tail14.i, %cond.true11.i ], [ %tail18.i, %cond.false15.i ]
  %15 = ptrtoint ptr %cond33.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond33.i = load i32, ptr %cond33.in.i, align 4
  %16 = ptrtoint ptr %cond20.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond20.i = load i32, ptr %cond20.in.i, align 4
  %sub.i = add i32 %10, -1
  %17 = call i32 @llvm.bswap.i32(i32 %cond20.i) #13
  %18 = xor i32 %cond33.i, -1
  %19 = call i32 @llvm.bswap.i32(i32 %18) #13
  %sub21.not.i = add i32 %17, %19
  %sub22.i = and i32 %sub21.not.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i, i32 %add)
  %cmp19 = icmp ult i32 %sub22.i, %add
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  br i1 %cmp19, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %qcom_smd_get_tx_avail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp21 = icmp ne i32 %21, 2
  %brmerge = or i1 %cmp21, %wait.not
  br i1 %brmerge, label %out_unlock.loopexit, label %do.end28

do.end28:                                         ; preds = %land.rhs
  br i1 %tobool.not.i, label %if.else, label %if.then31

if.then31:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  %fBLOCKREADINTR = getelementptr inbounds %struct.smd_channel_info_word, ptr %12, i32 0, i32 8
  %22 = ptrtoint ptr %fBLOCKREADINTR to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fBLOCKREADINTR, align 4
  br label %if.end35

if.else:                                          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info.i, align 4
  %fBLOCKREADINTR34 = getelementptr inbounds %struct.smd_channel_info, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %fBLOCKREADINTR34 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %fBLOCKREADINTR34, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0) #13
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 779) #13
  %26 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifo_size, align 4
  %28 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info_word, align 4
  %tobool.not.i185 = icmp eq ptr %29, null
  br i1 %tobool.not.i185, label %cond.false15.i192, label %cond.true11.i188

cond.true11.i188:                                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %head2.i186 = getelementptr inbounds %struct.smd_channel_info_word, ptr %29, i32 0, i32 10
  %tail14.i187 = getelementptr inbounds %struct.smd_channel_info_word, ptr %29, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit200

cond.false15.i192:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info.i, align 4
  %head4.i190 = getelementptr inbounds %struct.smd_channel_info, ptr %31, i32 0, i32 10
  %tail18.i191 = getelementptr inbounds %struct.smd_channel_info, ptr %31, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit200

qcom_smd_get_tx_avail.exit200:                    ; preds = %cond.false15.i192, %cond.true11.i188
  %cond33.in.i193 = phi ptr [ %head2.i186, %cond.true11.i188 ], [ %head4.i190, %cond.false15.i192 ]
  %cond20.in.i194 = phi ptr [ %tail14.i187, %cond.true11.i188 ], [ %tail18.i191, %cond.false15.i192 ]
  %32 = ptrtoint ptr %cond33.in.i193 to i32
  call void @__asan_load4_noabort(i32 %32)
  %cond33.i195 = load i32, ptr %cond33.in.i193, align 4
  %33 = ptrtoint ptr %cond20.in.i194 to i32
  call void @__asan_load4_noabort(i32 %33)
  %cond20.i196 = load i32, ptr %cond20.in.i194, align 4
  %sub.i197 = add i32 %27, -1
  %34 = call i32 @llvm.bswap.i32(i32 %cond20.i196) #13
  %35 = xor i32 %cond33.i195, -1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #13
  %sub21.not.i198 = add i32 %34, %36
  %sub22.i199 = and i32 %sub21.not.i198, %sub.i197
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i199, i32 %add)
  %cmp44.not = icmp ult i32 %sub22.i199, %add
  br i1 %cmp44.not, label %lor.lhs.false, label %qcom_smd_get_tx_avail.exit200.do.body72_crit_edge

qcom_smd_get_tx_avail.exit200.do.body72_crit_edge: ; preds = %qcom_smd_get_tx_avail.exit200
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body72

lor.lhs.false:                                    ; preds = %qcom_smd_get_tx_avail.exit200
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp47.not = icmp eq i32 %38, 2
  br i1 %cmp47.not, label %if.then49, label %lor.lhs.false.do.body72_crit_edge

lor.lhs.false.do.body72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body72

if.then49:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %39 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then49
  %call51 = call i32 @prepare_to_wait_event(ptr noundef %fblockread_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %40 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fifo_size, align 4
  %42 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info_word, align 4
  %tobool.not.i203 = icmp eq ptr %43, null
  br i1 %tobool.not.i203, label %cond.false15.i210, label %cond.true11.i206

cond.true11.i206:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %head2.i204 = getelementptr inbounds %struct.smd_channel_info_word, ptr %43, i32 0, i32 10
  %tail14.i205 = getelementptr inbounds %struct.smd_channel_info_word, ptr %43, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit218

cond.false15.i210:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info.i, align 4
  %head4.i208 = getelementptr inbounds %struct.smd_channel_info, ptr %45, i32 0, i32 10
  %tail18.i209 = getelementptr inbounds %struct.smd_channel_info, ptr %45, i32 0, i32 9
  br label %qcom_smd_get_tx_avail.exit218

qcom_smd_get_tx_avail.exit218:                    ; preds = %cond.false15.i210, %cond.true11.i206
  %cond33.in.i211 = phi ptr [ %head2.i204, %cond.true11.i206 ], [ %head4.i208, %cond.false15.i210 ]
  %cond20.in.i212 = phi ptr [ %tail14.i205, %cond.true11.i206 ], [ %tail18.i209, %cond.false15.i210 ]
  %46 = ptrtoint ptr %cond33.in.i211 to i32
  call void @__asan_load4_noabort(i32 %46)
  %cond33.i213 = load i32, ptr %cond33.in.i211, align 4
  %47 = ptrtoint ptr %cond20.in.i212 to i32
  call void @__asan_load4_noabort(i32 %47)
  %cond20.i214 = load i32, ptr %cond20.in.i212, align 4
  %sub.i215 = add i32 %41, -1
  %48 = call i32 @llvm.bswap.i32(i32 %cond20.i214) #13
  %49 = xor i32 %cond33.i213, -1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #13
  %sub21.not.i216 = add i32 %48, %50
  %sub22.i217 = and i32 %sub21.not.i216, %sub.i215
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22.i217, i32 %add)
  %cmp53.not = icmp ult i32 %sub22.i217, %add
  br i1 %cmp53.not, label %lor.lhs.false55, label %qcom_smd_get_tx_avail.exit218.if.end66.thread229_crit_edge

qcom_smd_get_tx_avail.exit218.if.end66.thread229_crit_edge: ; preds = %qcom_smd_get_tx_avail.exit218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.thread229

lor.lhs.false55:                                  ; preds = %qcom_smd_get_tx_avail.exit218
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp57.not = icmp eq i32 %52, 2
  br i1 %cmp57.not, label %if.end60, label %lor.lhs.false55.if.end66.thread229_crit_edge

lor.lhs.false55.if.end66.thread229_crit_edge:     ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.thread229

if.end60:                                         ; preds = %lor.lhs.false55
  %tobool61.not = icmp eq i32 %call51, 0
  br i1 %tobool61.not, label %cleanup, label %if.end66

cleanup:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  call void @schedule() #13
  br label %for.cond

if.end66.thread229:                               ; preds = %lor.lhs.false55.if.end66.thread229_crit_edge, %qcom_smd_get_tx_avail.exit218.if.end66.thread229_crit_edge
  call void @finish_wait(ptr noundef %fblockread_event, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.body72

if.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %cleanup136

do.body72:                                        ; preds = %if.end66.thread229, %lor.lhs.false.do.body72_crit_edge, %qcom_smd_get_tx_avail.exit200.do.body72_crit_edge
  %call80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #13
  %53 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %info_word, align 4
  %tobool89.not = icmp eq ptr %54, null
  br i1 %tobool89.not, label %if.else94, label %if.then90

if.then90:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %fBLOCKREADINTR93 = getelementptr inbounds %struct.smd_channel_info_word, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %fBLOCKREADINTR93 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 16777216, ptr %fBLOCKREADINTR93, align 4
  br label %while.cond.backedge

if.else94:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info.i, align 4
  %fBLOCKREADINTR97 = getelementptr inbounds %struct.smd_channel_info, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %fBLOCKREADINTR97 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %fBLOCKREADINTR97, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else94, %if.then90
  br label %while.cond

while.end:                                        ; preds = %qcom_smd_get_tx_avail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp100.not = icmp eq i32 %21, 2
  br i1 %cmp100.not, label %do.end106, label %while.end.out_unlock_crit_edge

while.end.out_unlock_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end106:                                        ; preds = %while.end
  br i1 %tobool.not.i, label %if.else112, label %if.then109

if.then109:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #15
  %fTAIL = getelementptr inbounds %struct.smd_channel_info_word, ptr %12, i32 0, i32 6
  %59 = ptrtoint ptr %fTAIL to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %fTAIL, align 4
  br label %if.end116

if.else112:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info.i, align 4
  %fTAIL115 = getelementptr inbounds %struct.smd_channel_info, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %fTAIL115 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %fTAIL115, align 1
  br label %if.end116

if.end116:                                        ; preds = %if.else112, %if.then109
  call fastcc void @qcom_smd_write_fifo(ptr noundef %channel, ptr noundef nonnull %hdr, i32 noundef 20)
  call fastcc void @qcom_smd_write_fifo(ptr noundef %channel, ptr noundef %data, i32 noundef %len)
  %63 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info_word, align 4
  %tobool123.not = icmp eq ptr %64, null
  br i1 %tobool123.not, label %if.else127, label %if.then124

if.then124:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %fHEAD = getelementptr inbounds %struct.smd_channel_info_word, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %fHEAD to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 16777216, ptr %fHEAD, align 4
  br label %do.body132

if.else127:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info.i, align 4
  %fHEAD130 = getelementptr inbounds %struct.smd_channel_info, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %fHEAD130 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %fHEAD130, align 4
  br label %do.body132

do.body132:                                       ; preds = %if.else127, %if.then124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !177
  call void @arm_heavy_mb() #13
  %69 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %channel, align 4
  %mbox_chan.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mbox_chan.i, align 4
  %tobool.not.i219 = icmp eq ptr %72, null
  br i1 %tobool.not.i219, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = call i32 @mbox_send_message(ptr noundef nonnull %72, ptr noundef null) #13
  %73 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mbox_chan.i, align 4
  call void @mbox_client_txdone(ptr noundef %74, i32 noundef 0) #13
  br label %out_unlock

if.else.i:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  %ipc_regmap.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %70, i32 0, i32 6
  %75 = ptrtoint ptr %ipc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ipc_regmap.i, align 4
  %ipc_offset.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %70, i32 0, i32 7
  %77 = ptrtoint ptr %ipc_offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ipc_offset.i, align 8
  %ipc_bit.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %70, i32 0, i32 8
  %79 = ptrtoint ptr %ipc_bit.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ipc_bit.i, align 4
  %shl.i = shl nuw i32 1, %80
  %call4.i = call i32 @regmap_write(ptr noundef %76, i32 noundef %78, i32 noundef %shl.i) #13
  br label %out_unlock

out_unlock.loopexit:                              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %.mux = select i1 %cmp21, i32 -32, i32 -11
  %flags.0.mux = select i1 %cmp21, i32 %flags.0, i32 %call13
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.loopexit, %if.else.i, %if.then.i, %while.end.out_unlock_crit_edge
  %flags.0250 = phi i32 [ %flags.0, %while.end.out_unlock_crit_edge ], [ %flags.0, %if.then.i ], [ %flags.0, %if.else.i ], [ %flags.0.mux, %out_unlock.loopexit ]
  %ret.1 = phi i32 [ -32, %while.end.out_unlock_crit_edge ], [ %ret.0, %if.then.i ], [ %ret.0, %if.else.i ], [ %.mux, %out_unlock.loopexit ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0250) #13
  br label %cleanup136

cleanup136:                                       ; preds = %out_unlock, %if.end66, %if.end.cleanup136_crit_edge, %entry.cleanup136_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -22, %entry.cleanup136_crit_edge ], [ -22, %if.end.cleanup136_crit_edge ], [ %call51, %if.end66 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qcom_smd_write_fifo(ptr nocapture noundef readonly %channel, ptr noundef %data, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info_word = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 8
  %0 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info_word, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %head4 = getelementptr inbounds %struct.smd_channel_info_word, ptr %1, i32 0, i32 10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %info = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %head6 = getelementptr inbounds %struct.smd_channel_info, ptr %3, i32 0, i32 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %head4, %cond.true ], [ %head6, %cond.false ]
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %cond.in, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %fifo_size = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 13
  %6 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_size, align 4
  %sub = sub i32 %7, %5
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %tx_fifo = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 11
  %9 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_fifo, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %5
  br i1 %tobool.not, label %if.end.thread, label %if.end.thread11

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp14.not.not = icmp ult i32 %sub, %count
  br i1 %cmp14.not.not, label %if.then15, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end.thread11:                                  ; preds = %if.then
  %div4.i = lshr i32 %8, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %div4.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp14.not12.not = icmp ult i32 %sub, %count
  br i1 %cmp14.not12.not, label %if.then15.thread13, label %if.end.thread11.if.end20_crit_edge

if.end.thread11.if.end20_crit_edge:               ; preds = %if.end.thread11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then15.thread13:                               ; preds = %if.end.thread11
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_fifo, align 4
  %add.ptr1715 = getelementptr i8, ptr %data, i32 %8
  %sub1816 = sub i32 %count, %8
  br label %if.then.i2

if.end.thread:                                    ; preds = %if.then
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %8) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp14.not5.not = icmp ult i32 %sub, %count
  br i1 %cmp14.not5.not, label %if.then15.thread, label %if.end.thread.if.end20_crit_edge

if.end.thread.if.end20_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then15.thread:                                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_fifo, align 4
  %add.ptr177 = getelementptr i8, ptr %data, i32 %8
  %sub188 = sub i32 %count, %8
  br label %if.else.i3

if.then15:                                        ; preds = %if.end
  %tx_fifo16 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 11
  %15 = ptrtoint ptr %tx_fifo16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_fifo16, align 4
  br i1 %tobool.not, label %if.then15.if.else.i3_crit_edge, label %if.then15.if.then.i2_crit_edge

if.then15.if.then.i2_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i2

if.then15.if.else.i3_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i3

if.then.i2:                                       ; preds = %if.then15.if.then.i2_crit_edge, %if.then15.thread13
  %sub1818 = phi i32 [ %sub1816, %if.then15.thread13 ], [ %count, %if.then15.if.then.i2_crit_edge ]
  %add.ptr1717 = phi ptr [ %add.ptr1715, %if.then15.thread13 ], [ %data, %if.then15.if.then.i2_crit_edge ]
  %17 = phi ptr [ %12, %if.then15.thread13 ], [ %16, %if.then15.if.then.i2_crit_edge ]
  %div4.i1 = lshr i32 %sub1818, 2
  tail call void @__iowrite32_copy(ptr noundef %17, ptr noundef %add.ptr1717, i32 noundef %div4.i1) #13
  br label %if.end20

if.else.i3:                                       ; preds = %if.then15.if.else.i3_crit_edge, %if.then15.thread
  %sub1810 = phi i32 [ %sub188, %if.then15.thread ], [ %count, %if.then15.if.else.i3_crit_edge ]
  %add.ptr179 = phi ptr [ %add.ptr177, %if.then15.thread ], [ %data, %if.then15.if.else.i3_crit_edge ]
  %18 = phi ptr [ %14, %if.then15.thread ], [ %16, %if.then15.if.else.i3_crit_edge ]
  tail call void @mmiocpy(ptr noundef %18, ptr noundef %add.ptr179, i32 noundef %sub1810) #13
  br label %if.end20

if.end20:                                         ; preds = %if.else.i3, %if.then.i2, %if.end.thread.if.end20_crit_edge, %if.end.thread11.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %19 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fifo_size, align 4
  %21 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info_word, align 4
  %tobool27.not = icmp eq ptr %22, null
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %head31 = getelementptr inbounds %struct.smd_channel_info_word, ptr %22, i32 0, i32 10
  br label %if.end35

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %info32 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %23 = ptrtoint ptr %info32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info32, align 4
  %head34 = getelementptr inbounds %struct.smd_channel_info, ptr %24, i32 0, i32 10
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then28
  %head34.sink = phi ptr [ %head34, %if.else ], [ %head31, %if.then28 ]
  %sub22 = add i32 %20, -1
  %add = add i32 %5, %count
  %and = and i32 %sub22, %add
  %25 = tail call i32 @llvm.bswap.i32(i32 %and)
  %26 = ptrtoint ptr %head34.sink to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %head34.sink, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @qcom_smd_channel_intr(ptr noundef %channel) unnamed_addr #0 align 64 {
entry:
  %pktlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pktlen) #13
  %0 = ptrtoint ptr %pktlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pktlen, align 4, !annotation !172
  %info_word = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 8
  %1 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info_word, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rx = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %2, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %info = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %rx2 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %4, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %rx, %cond.true ], [ %rx2, %cond.false ]
  %5 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %cond = load i32, ptr %cond.in, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %remote_state4 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 5
  %7 = ptrtoint ptr %remote_state4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %remote_state4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %cond.end.do.end8_crit_edge, label %if.then

cond.end.do.end8_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %remote_state4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %remote_state4, align 4
  %state_change_event = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %state_change_event, i32 noundef 1, i32 noundef 0, ptr noundef null) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %cond.end.do.end8_crit_edge
  %10 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info_word, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %fSTATE = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %11, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %fSTATE to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fSTATE, align 4
  br label %do.end20

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %info14 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %13 = ptrtoint ptr %info14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info14, align 4
  %fSTATE16 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %14, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %fSTATE16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %fSTATE16, align 2
  br label %do.end20

do.end20:                                         ; preds = %if.else, %if.then11
  %16 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info_word, align 4
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %cond.false26, label %cond.true24

cond.true24:                                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  %fBLOCKREADINTR = getelementptr inbounds %struct.smd_channel_info_word, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %fBLOCKREADINTR to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fBLOCKREADINTR, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  br label %cond.end30

cond.false26:                                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #15
  %info27 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %21 = ptrtoint ptr %info27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info27, align 4
  %fBLOCKREADINTR29 = getelementptr inbounds %struct.smd_channel_info, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %fBLOCKREADINTR29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fBLOCKREADINTR29, align 1
  %conv = zext i8 %24 to i32
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false26, %cond.true24
  %cond31 = phi i32 [ %20, %cond.true24 ], [ %conv, %cond.false26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond31)
  %tobool32.not = icmp eq i32 %cond31, 0
  br i1 %tobool32.not, label %if.then33, label %cond.end30.if.end34_crit_edge

cond.end30.if.end34_crit_edge:                    ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #15
  %fblockread_event = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %fblockread_event, i32 noundef 1, i32 noundef 0, ptr noundef null) #13
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %cond.end30.if.end34_crit_edge
  %state35 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 4
  %25 = ptrtoint ptr %state35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp36.not = icmp eq i32 %26, 2
  br i1 %cmp36.not, label %do.end42, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end42:                                         ; preds = %if.end34
  %27 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info_word, align 4
  %tobool44.not = icmp eq ptr %28, null
  br i1 %tobool44.not, label %if.else48, label %if.then45

if.then45:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  %fHEAD = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %28, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %fHEAD to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %fHEAD, align 4
  br label %if.end52

if.else48:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  %info49 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %30 = ptrtoint ptr %info49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info49, align 4
  %fHEAD51 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %31, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %fHEAD51 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %fHEAD51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %if.then45
  %fifo_size.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 13
  %pkt_size = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 16
  %info.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %qsept.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 1
  %bounce_buffer.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 14
  %rx_fifo.i = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 12
  br label %for.cond

for.cond:                                         ; preds = %if.end73, %if.end52
  %33 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info_word, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %cond.false15.i, label %cond.true11.i

cond.true11.i:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %head2.i = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %34, i32 0, i32 1, i32 10
  %tail14.i = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %34, i32 0, i32 1, i32 9
  br label %qcom_smd_channel_get_rx_avail.exit

cond.false15.i:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info.i, align 4
  %head4.i = getelementptr inbounds %struct.smd_channel_info_pair, ptr %36, i32 0, i32 1, i32 10
  %tail18.i = getelementptr inbounds %struct.smd_channel_info_pair, ptr %36, i32 0, i32 1, i32 9
  br label %qcom_smd_channel_get_rx_avail.exit

qcom_smd_channel_get_rx_avail.exit:               ; preds = %cond.false15.i, %cond.true11.i
  %cond31.in.i = phi ptr [ %head2.i, %cond.true11.i ], [ %head4.i, %cond.false15.i ]
  %cond20.in.i = phi ptr [ %tail14.i, %cond.true11.i ], [ %tail18.i, %cond.false15.i ]
  %37 = ptrtoint ptr %cond31.in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %cond31.i = load i32, ptr %cond31.in.i, align 4
  %38 = ptrtoint ptr %cond20.in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %cond20.i = load i32, ptr %cond20.in.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %cond31.i) #13
  %40 = call i32 @llvm.bswap.i32(i32 %cond20.i) #13
  %sub.i = sub i32 %39, %40
  %41 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fifo_size.i, align 4
  %sub21.i = add i32 %42, -1
  %and.i = and i32 %sub.i, %sub21.i
  %43 = ptrtoint ptr %pkt_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pkt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool53.not = icmp eq i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %and.i)
  %cmp54 = icmp sgt i32 %and.i, 19
  %or.cond = select i1 %tobool53.not, i1 %cmp54, i1 false
  br i1 %or.cond, label %if.then56, label %if.else59

if.then56:                                        ; preds = %qcom_smd_channel_get_rx_avail.exit
  %call57 = call fastcc i32 @qcom_smd_channel_peek(ptr noundef %channel, ptr noundef nonnull %pktlen, i32 noundef 4)
  %45 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %info_word, align 4
  %tobool.not.i153 = icmp eq ptr %46, null
  br i1 %tobool.not.i153, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %tail2.i = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %46, i32 0, i32 1, i32 9
  br label %qcom_smd_channel_advance.exit

if.else.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %info.i, align 4
  %tail4.i = getelementptr inbounds %struct.smd_channel_info_pair, ptr %48, i32 0, i32 1, i32 9
  br label %qcom_smd_channel_advance.exit

qcom_smd_channel_advance.exit:                    ; preds = %if.else.i, %if.then.i
  %cond.i177.in = phi ptr [ %tail4.i, %if.else.i ], [ %tail2.i, %if.then.i ]
  %49 = ptrtoint ptr %cond.i177.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %cond.i177 = load i32, ptr %cond.i177.in, align 4
  %50 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo_size.i, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %cond.i177) #13
  %add.i = add i32 %52, 20
  %sub.i156 = add i32 %51, -1
  %and.i157 = and i32 %add.i, %sub.i156
  %53 = call i32 @llvm.bswap.i32(i32 %and.i157) #13
  %54 = ptrtoint ptr %cond.i177.in to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cond.i177.in, align 4
  %55 = ptrtoint ptr %pktlen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pktlen, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  br label %if.end73

if.else59:                                        ; preds = %qcom_smd_channel_get_rx_avail.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %44)
  %cmp64.not = icmp slt i32 %and.i, %44
  %or.cond151 = select i1 %tobool53.not, i1 true, i1 %cmp64.not
  br i1 %or.cond151, label %if.else59.do.end76_crit_edge, label %if.then66

if.else59.do.end76_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

if.then66:                                        ; preds = %if.else59
  %58 = ptrtoint ptr %qsept.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %qsept.i, align 4
  br i1 %tobool.not.i, label %cond.false.i162, label %cond.true.i160

cond.true.i160:                                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %tail3.i = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %34, i32 0, i32 1, i32 9
  br label %cond.end.i167

cond.false.i162:                                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info.i, align 4
  %tail5.i = getelementptr inbounds %struct.smd_channel_info_pair, ptr %61, i32 0, i32 1, i32 9
  br label %cond.end.i167

cond.end.i167:                                    ; preds = %cond.false.i162, %cond.true.i160
  %cond.in.i163 = phi ptr [ %tail3.i, %cond.true.i160 ], [ %tail5.i, %cond.false.i162 ]
  %62 = ptrtoint ptr %cond.in.i163 to i32
  call void @__asan_load4_noabort(i32 %62)
  %cond.i164 = load i32, ptr %cond.in.i163, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %cond.i164) #13
  %add.i165 = add i32 %63, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i165, i32 %42)
  %cmp.not.i = icmp ult i32 %add.i165, %42
  br i1 %cmp.not.i, label %if.else.i169, label %if.then.i168

if.then.i168:                                     ; preds = %cond.end.i167
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %bounce_buffer.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bounce_buffer.i, align 4
  %call.i = call fastcc i32 @qcom_smd_channel_peek(ptr noundef %channel, ptr noundef %65, i32 noundef %44) #13
  br label %if.end.i

if.else.i169:                                     ; preds = %cond.end.i167
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %rx_fifo.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_fifo.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 %63
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i169, %if.then.i168
  %ptr.0.i = phi ptr [ %65, %if.then.i168 ], [ %add.ptr.i, %if.else.i169 ]
  %cb.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %59, i32 0, i32 2
  %68 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cb.i, align 4
  %70 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %59, align 4
  %priv.i = getelementptr inbounds %struct.rpmsg_endpoint, ptr %59, i32 0, i32 5
  %72 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv.i, align 4
  %call8.i = call i32 %69(ptr noundef %71, ptr noundef %ptr.0.i, i32 noundef %44, ptr noundef %73, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.do.end76_crit_edge, label %if.end11.i

if.end.i.do.end76_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

if.end11.i:                                       ; preds = %if.end.i
  %74 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %info_word, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %tail2.i.i = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %75, i32 0, i32 1, i32 9
  br label %qcom_smd_channel_recv_single.exit.thread

if.else.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %info.i, align 4
  %tail4.i.i = getelementptr inbounds %struct.smd_channel_info_pair, ptr %77, i32 0, i32 1, i32 9
  br label %qcom_smd_channel_recv_single.exit.thread

qcom_smd_channel_recv_single.exit.thread:         ; preds = %if.else.i.i, %if.then.i.i
  %cond.i37.in.i = phi ptr [ %tail4.i.i, %if.else.i.i ], [ %tail2.i.i, %if.then.i.i ]
  %78 = ptrtoint ptr %cond.i37.in.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %cond.i37.i = load i32, ptr %cond.i37.in.i, align 4
  %79 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fifo_size.i, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %cond.i37.i) #13
  %add.i.i = add i32 %81, %44
  %sub.i.i = add i32 %80, -1
  %and.i.i = and i32 %add.i.i, %sub.i.i
  %82 = call i32 @llvm.bswap.i32(i32 %and.i.i) #13
  %83 = ptrtoint ptr %cond.i37.in.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %cond.i37.in.i, align 4
  br label %if.end73

if.end73:                                         ; preds = %qcom_smd_channel_recv_single.exit.thread, %qcom_smd_channel_advance.exit
  %storemerge = phi i32 [ 0, %qcom_smd_channel_recv_single.exit.thread ], [ %57, %qcom_smd_channel_advance.exit ]
  %84 = ptrtoint ptr %pkt_size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %storemerge, ptr %pkt_size, align 4
  br label %for.cond

do.end76:                                         ; preds = %if.end.i.do.end76_crit_edge, %if.else59.do.end76_crit_edge
  %85 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info_word, align 4
  %tobool78.not = icmp eq ptr %86, null
  br i1 %tobool78.not, label %if.else82, label %if.then79

if.then79:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  %fTAIL = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %86, i32 0, i32 1, i32 6
  %87 = ptrtoint ptr %fTAIL to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 16777216, ptr %fTAIL, align 4
  br label %do.end89

if.else82:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %info.i, align 4
  %fTAIL85 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %89, i32 0, i32 1, i32 6
  %90 = ptrtoint ptr %fTAIL85 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %fTAIL85, align 1
  br label %do.end89

do.end89:                                         ; preds = %if.else82, %if.then79
  %91 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %info_word, align 4
  %tobool92.not = icmp eq ptr %92, null
  br i1 %tobool92.not, label %cond.false97, label %cond.true93

cond.true93:                                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #15
  %fBLOCKREADINTR96 = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %92, i32 0, i32 1, i32 8
  %93 = ptrtoint ptr %fBLOCKREADINTR96 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fBLOCKREADINTR96, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  br label %cond.end102

cond.false97:                                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %info.i, align 4
  %fBLOCKREADINTR100 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %97, i32 0, i32 1, i32 8
  %98 = ptrtoint ptr %fBLOCKREADINTR100 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fBLOCKREADINTR100, align 1
  %conv101 = zext i8 %99 to i32
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false97, %cond.true93
  %cond103 = phi i32 [ %95, %cond.true93 ], [ %conv101, %cond.false97 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond103)
  %tobool104.not = icmp eq i32 %cond103, 0
  br i1 %tobool104.not, label %do.body106, label %cond.end102.out_crit_edge

cond.end102.out_crit_edge:                        ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body106:                                       ; preds = %cond.end102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !178
  call void @arm_heavy_mb() #13
  %100 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %channel, align 4
  %mbox_chan.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mbox_chan.i, align 4
  %tobool.not.i170 = icmp eq ptr %103, null
  br i1 %tobool.not.i170, label %if.else.i173, label %if.then.i172

if.then.i172:                                     ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #15
  %call.i171 = call i32 @mbox_send_message(ptr noundef nonnull %103, ptr noundef null) #13
  %104 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mbox_chan.i, align 4
  call void @mbox_client_txdone(ptr noundef %105, i32 noundef 0) #13
  br label %out

if.else.i173:                                     ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #15
  %ipc_regmap.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %101, i32 0, i32 6
  %106 = ptrtoint ptr %ipc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ipc_regmap.i, align 4
  %ipc_offset.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %101, i32 0, i32 7
  %108 = ptrtoint ptr %ipc_offset.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ipc_offset.i, align 8
  %ipc_bit.i = getelementptr inbounds %struct.qcom_smd_edge, ptr %101, i32 0, i32 8
  %110 = ptrtoint ptr %ipc_bit.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ipc_bit.i, align 4
  %shl.i = shl nuw i32 1, %111
  %call4.i = call i32 @regmap_write(ptr noundef %107, i32 noundef %109, i32 noundef %shl.i) #13
  br label %out

out:                                              ; preds = %if.else.i173, %if.then.i172, %cond.end102.out_crit_edge, %if.end34.out_crit_edge
  %112 = xor i1 %cmp.not, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pktlen) #13
  ret i1 %112
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_smd_channel_peek(ptr nocapture noundef readonly %channel, ptr noundef %buf, i32 noundef returned %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info_word = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 8
  %0 = ptrtoint ptr %info_word to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info_word, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %tail4 = getelementptr inbounds %struct.smd_channel_info_word_pair, ptr %1, i32 0, i32 1, i32 9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %info = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tail6 = getelementptr inbounds %struct.smd_channel_info_pair, ptr %3, i32 0, i32 1, i32 9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %tail4, %cond.true ], [ %tail6, %cond.false ]
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %cond.in, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %fifo_size = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 13
  %6 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_size, align 4
  %sub = sub i32 %7, %5
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %rx_fifo = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 12
  %9 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_fifo, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %5
  br i1 %tobool.not, label %if.end.thread, label %if.end.thread49

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp14.not.not = icmp ult i32 %sub, %count
  br i1 %cmp14.not.not, label %if.then15, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end.thread49:                                  ; preds = %if.then
  %div4.i = lshr i32 %8, 2
  tail call void @__ioread32_copy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %div4.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp14.not50.not = icmp ult i32 %sub, %count
  br i1 %cmp14.not50.not, label %if.then15.thread51, label %if.end.thread49.if.end20_crit_edge

if.end.thread49.if.end20_crit_edge:               ; preds = %if.end.thread49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then15.thread51:                               ; preds = %if.end.thread49
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1652 = getelementptr i8, ptr %buf, i32 %8
  %11 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_fifo, align 4
  %sub1854 = sub i32 %count, %8
  br label %if.then.i40

if.end.thread:                                    ; preds = %if.then
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %8) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp14.not43.not = icmp ult i32 %sub, %count
  br i1 %cmp14.not43.not, label %if.then15.thread, label %if.end.thread.if.end20_crit_edge

if.end.thread.if.end20_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then15.thread:                                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1644 = getelementptr i8, ptr %buf, i32 %8
  %13 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_fifo, align 4
  %sub1846 = sub i32 %count, %8
  br label %if.else.i41

if.then15:                                        ; preds = %if.end
  %rx_fifo17 = getelementptr inbounds %struct.qcom_smd_channel, ptr %channel, i32 0, i32 12
  %15 = ptrtoint ptr %rx_fifo17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_fifo17, align 4
  br i1 %tobool.not, label %if.then15.if.else.i41_crit_edge, label %if.then15.if.then.i40_crit_edge

if.then15.if.then.i40_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i40

if.then15.if.else.i41_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i41

if.then.i40:                                      ; preds = %if.then15.if.then.i40_crit_edge, %if.then15.thread51
  %sub1856 = phi i32 [ %sub1854, %if.then15.thread51 ], [ %count, %if.then15.if.then.i40_crit_edge ]
  %17 = phi ptr [ %12, %if.then15.thread51 ], [ %16, %if.then15.if.then.i40_crit_edge ]
  %add.ptr1655 = phi ptr [ %add.ptr1652, %if.then15.thread51 ], [ %buf, %if.then15.if.then.i40_crit_edge ]
  %div4.i39 = lshr i32 %sub1856, 2
  tail call void @__ioread32_copy(ptr noundef %add.ptr1655, ptr noundef %17, i32 noundef %div4.i39) #13
  br label %if.end20

if.else.i41:                                      ; preds = %if.then15.if.else.i41_crit_edge, %if.then15.thread
  %sub1848 = phi i32 [ %sub1846, %if.then15.thread ], [ %count, %if.then15.if.else.i41_crit_edge ]
  %18 = phi ptr [ %14, %if.then15.thread ], [ %16, %if.then15.if.else.i41_crit_edge ]
  %add.ptr1647 = phi ptr [ %add.ptr1644, %if.then15.thread ], [ %buf, %if.then15.if.else.i41_crit_edge ]
  tail call void @mmiocpy(ptr noundef %add.ptr1647, ptr noundef %18, i32 noundef %sub1848) #13
  br label %if.end20

if.end20:                                         ; preds = %if.else.i41, %if.then.i40, %if.end.thread.if.end20_crit_edge, %if.end.thread49.if.end20_crit_edge, %if.end.if.end20_crit_edge
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ioread32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_get_free_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 13, ptr noundef null) #13
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #13
  %cmp4.not16 = icmp eq ptr %call3, null
  br i1 %cmp4.not16, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.017 = phi ptr [ %call9, %for.body.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %call6 = tail call ptr @qcom_smd_register_edge(ptr noundef %dev, ptr noundef nonnull %node.017)
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef nonnull %node.017) #13
  %cmp4.not = icmp eq ptr %call9, null
  br i1 %cmp4.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @qcom_smd_remove_edge) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_smd_remove_edge(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qcom_smd_unregister_edge(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !125, !127, !129, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !157, !158, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @qcom_smd_register_edge.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1482, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1488, i32 27}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1491, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qcom_smd_register_edge._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @qcom_smd_register_edge._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1498, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @qcom_smd_register_edge._entry.5, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @qcom_smd_register_edge._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1504, i32 3}
!19 = !{ptr @qcom_smd_register_edge._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @qcom_smd_register_edge._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_qcom_smd_register_edge, !22, !"__ksymtab_qcom_smd_register_edge", i1 false, i1 false}
!22 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1519, i32 1}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1542, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qcom_smd_unregister_edge._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @qcom_smd_unregister_edge._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_qcom_smd_unregister_edge, !30, !"__ksymtab_qcom_smd_unregister_edge", i1 false, i1 false}
!30 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1549, i32 1}
!31 = !{ptr @__initcall__kmod_qcom_smd__275_1608_qcom_smd_init4, !32, !"__initcall__kmod_qcom_smd__275_1608_qcom_smd_init4", i1 false, i1 false}
!32 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1608, i32 1}
!33 = !{ptr @__exitcall_qcom_smd_exit, !34, !"__exitcall_qcom_smd_exit", i1 false, i1 false}
!34 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1614, i32 1}
!35 = !{ptr @__UNIQUE_ID_author276, !36, !"__UNIQUE_ID_author276", i1 false, i1 false}
!36 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1616, i32 1}
!37 = !{ptr @__UNIQUE_ID_description277, !38, !"__UNIQUE_ID_description277", i1 false, i1 false}
!38 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1617, i32 1}
!39 = !{ptr @__UNIQUE_ID_file278, !40, !"__UNIQUE_ID_file278", i1 false, i1 false}
!40 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1618, i32 1}
!41 = !{ptr @__UNIQUE_ID_license279, !40, !"__UNIQUE_ID_license279", i1 false, i1 false}
!42 = !{ptr @qcom_smd_edge_groups, !43, !"qcom_smd_edge_groups", i1 false, i1 false}
!43 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1463, i32 1}
!44 = !{ptr @qcom_smd_edge_group, !43, !"qcom_smd_edge_group", i1 false, i1 false}
!45 = !{ptr @qcom_smd_edge_attrs, !46, !"qcom_smd_edge_attrs", i1 false, i1 false}
!46 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1459, i32 26}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1457, i32 8}
!49 = !{ptr @dev_attr_rpmsg_name, !48, !"dev_attr_rpmsg_name", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1455, i32 22}
!52 = !{ptr @qcom_smd_parse_edge.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1346, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qcom_smd_parse_edge.__key.19, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1348, i32 2}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @qcom_smd_parse_edge.__key.21, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1349, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1353, i32 8}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1356, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qcom_smd_parse_edge._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qcom_smd_parse_edge._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1361, i32 8}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1375, i32 38}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1377, i32 4}
!74 = !{ptr @qcom_smd_parse_edge._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @qcom_smd_parse_edge._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1391, i32 4}
!78 = !{ptr @qcom_smd_parse_edge._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @qcom_smd_parse_edge._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1397, i32 4}
!82 = !{ptr @qcom_smd_parse_edge._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @qcom_smd_parse_edge._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1402, i32 38}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1408, i32 3}
!88 = !{ptr @qcom_smd_parse_edge._entry.38, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @qcom_smd_parse_edge._entry_ptr.40, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1417, i32 3}
!92 = !{ptr @qcom_smd_parse_edge._entry.41, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @qcom_smd_parse_edge._entry_ptr.43, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1254, i32 4}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qcom_channel_scan_worker.__UNIQUE_ID_ddebug272, !95, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!99 = !{ptr @smem_items, !100, !"smem_items", i1 false, i1 false}
!100 = !{!"../drivers/rpmsg/qcom_smd.c", i32 82, i32 3}
!101 = !{ptr @qcom_smd_create_channel.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1146, i32 2}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @qcom_smd_create_channel.__key.48, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1147, i32 2}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @qcom_smd_create_channel.__key.50, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1148, i32 2}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @qcom_smd_create_channel.__key.52, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1149, i32 2}
!112 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1166, i32 3}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @qcom_smd_create_channel._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @qcom_smd_create_channel._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1181, i32 2}
!120 = !{ptr @qcom_smd_create_channel.__UNIQUE_ID_ddebug271, !119, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1078, i32 2}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qcom_smd_create_device.__UNIQUE_ID_ddebug270, !122, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!125 = !{ptr @qcom_smd_device_ops, !126, !"qcom_smd_device_ops", i1 false, i1 false}
!126 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1047, i32 38}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/rpmsg/qcom_smd.c", i32 921, i32 3}
!129 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @qcom_smd_create_ept._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @qcom_smd_create_ept._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @qcom_smd_endpoint_ops, !133, !"qcom_smd_endpoint_ops", i1 false, i1 false}
!133 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1052, i32 40}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/rpmsg/qcom_smd.c", i32 450, i32 2}
!136 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @qcom_smd_channel_set_state.__UNIQUE_ID_ddebug240, !135, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/rpmsg/qcom_smd.c", i32 839, i32 3}
!140 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @qcom_smd_channel_open._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @qcom_smd_channel_open._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/rpmsg/qcom_smd.c", i32 850, i32 3}
!145 = !{ptr @qcom_smd_channel_open._entry.65, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @qcom_smd_channel_open._entry_ptr.67, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1018, i32 9}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/rpmsg/rpmsg_internal.h", i32 95, i32 25}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1599, i32 11}
!153 = !{ptr @qcom_smd_driver, !154, !"qcom_smd_driver", i1 false, i1 false}
!154 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1595, i32 31}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1584, i32 3}
!157 = !{ptr @qcom_smd_remove._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @qcom_smd_remove._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @qcom_smd_of_match, !160, !"qcom_smd_of_match", i1 false, i1 false}
!160 = !{!"../drivers/rpmsg/qcom_smd.c", i32 1589, i32 34}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2148757114, i64 2148757119, i64 2148757132, i64 2148757176, i64 2148757210, i64 2148757231}
!171 = !{i8 0, i8 2}
!172 = !{!"auto-init"}
!173 = !{i64 2148364830}
!174 = !{i64 2148279294, i64 2148279326, i64 2148279355, i64 2148279389, i64 2148279420, i64 2148279443}
!175 = !{!"branch_weights", i32 2000, i32 1}
!176 = !{i64 2149637608}
!177 = !{i64 2154137275}
!178 = !{i64 2154113671}
