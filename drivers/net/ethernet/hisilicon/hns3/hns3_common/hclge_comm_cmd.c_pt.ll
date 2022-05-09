; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hclge_comm_caps_bit_map = type { i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hclge_comm_errcode = type { i32, i32 }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.list_head = type { ptr, ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }

@hclge_comm_alloc_cmd_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"descriptor %s alloc error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hclge_comm_alloc_cmd_queue\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_comm_alloc_cmd_queue._entry_ptr = internal global ptr @hclge_comm_alloc_cmd_queue._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CSQ\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRQ\00", [28 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cmdq->csq.lock\00", [16 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_queue_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cmdq->crq.lock\00", [16 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_queue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 526, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CSQ ring setup error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hclge_comm_cmd_queue_init\00", [38 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_queue_init._entry_ptr = internal global ptr @hclge_comm_cmd_queue_init._entry, section ".printk_index", align 4
@hclge_comm_cmd_queue_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CRQ ring setup error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_queue_init._entry_ptr.14 = internal global ptr @hclge_comm_cmd_queue_init._entry.12, section ".printk_index", align 4
@hclge_comm_cmd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to query version and capabilities, ret = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclge_comm_cmd_init\00", [44 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_init._entry_ptr = internal global ptr @hclge_comm_cmd_init._entry, section ".printk_index", align 4
@hclge_comm_cmd_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 591, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"The firmware version is %lu.%lu.%lu.%lu\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_init._entry_ptr.20 = internal global ptr @hclge_comm_cmd_init._entry.17, section ".printk_index", align 4
@hclge_comm_cmd_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 603, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Firmware compatible features not enabled(%d).\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_init._entry_ptr.24 = internal global ptr @hclge_comm_cmd_init._entry.21, section ".printk_index", align 4
@hclge_pf_cmd_caps = internal constant { [16 x %struct.hclge_comm_caps_bit_map], [32 x i8] } { [16 x %struct.hclge_comm_caps_bit_map] [%struct.hclge_comm_caps_bit_map { i16 0, i16 3 }, %struct.hclge_comm_caps_bit_map { i16 3, i16 6 }, %struct.hclge_comm_caps_bit_map { i16 4, i16 7 }, %struct.hclge_comm_caps_bit_map { i16 8, i16 11 }, %struct.hclge_comm_caps_bit_map { i16 5, i16 8 }, %struct.hclge_comm_caps_bit_map { i16 11, i16 14 }, %struct.hclge_comm_caps_bit_map { i16 2, i16 5 }, %struct.hclge_comm_caps_bit_map { i16 13, i16 2 }, %struct.hclge_comm_caps_bit_map { i16 14, i16 15 }, %struct.hclge_comm_caps_bit_map { i16 7, i16 10 }, %struct.hclge_comm_caps_bit_map { i16 1, i16 4 }, %struct.hclge_comm_caps_bit_map { i16 6, i16 9 }, %struct.hclge_comm_caps_bit_map { i16 12, i16 16 }, %struct.hclge_comm_caps_bit_map { i16 15, i16 17 }, %struct.hclge_comm_caps_bit_map { i16 17, i16 18 }, %struct.hclge_comm_caps_bit_map { i16 17, i16 19 }], [32 x i8] zeroinitializer }, align 32
@hclge_vf_cmd_caps = internal constant { [8 x %struct.hclge_comm_caps_bit_map], [32 x i8] } { [8 x %struct.hclge_comm_caps_bit_map] [%struct.hclge_comm_caps_bit_map { i16 0, i16 3 }, %struct.hclge_comm_caps_bit_map { i16 4, i16 7 }, %struct.hclge_comm_caps_bit_map { i16 8, i16 11 }, %struct.hclge_comm_caps_bit_map { i16 5, i16 8 }, %struct.hclge_comm_caps_bit_map { i16 11, i16 14 }, %struct.hclge_comm_caps_bit_map { i16 1, i16 4 }, %struct.hclge_comm_caps_bit_map { i16 6, i16 9 }, %struct.hclge_comm_caps_bit_map { i16 15, i16 17 }], [32 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_check_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 412, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cleaned %d, need to clean %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hclge_comm_cmd_check_result\00", [36 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_check_result._entry_ptr = internal global ptr @hclge_comm_cmd_check_result._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__const.hclge_comm_cmd_convert_err_code.hclge_comm_cmd_errcode = private unnamed_addr constant [12 x %struct.hclge_comm_errcode] [%struct.hclge_comm_errcode zeroinitializer, %struct.hclge_comm_errcode { i32 1, i32 -1 }, %struct.hclge_comm_errcode { i32 2, i32 -95 }, %struct.hclge_comm_errcode { i32 3, i32 -54 }, %struct.hclge_comm_errcode { i32 4, i32 -63 }, %struct.hclge_comm_errcode { i32 5, i32 -15 }, %struct.hclge_comm_errcode { i32 6, i32 -22 }, %struct.hclge_comm_errcode { i32 7, i32 -34 }, %struct.hclge_comm_errcode { i32 8, i32 -62 }, %struct.hclge_comm_errcode { i32 9, i32 -67 }, %struct.hclge_comm_errcode { i32 10, i32 -6 }, %struct.hclge_comm_errcode { i32 11, i32 -53 }], align 4
@hclge_comm_cmd_csq_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 303, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wrong cmd head (%u, %d-%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclge_comm_cmd_csq_clean\00", [39 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_csq_clean._entry_ptr = internal global ptr @hclge_comm_cmd_csq_clean._entry, section ".printk_index", align 4
@hclge_comm_cmd_csq_clean._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 305, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Disabling any further commands to IMP firmware\0A\00", [48 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_csq_clean._entry_ptr.31 = internal global ptr @hclge_comm_cmd_csq_clean._entry.29, section ".printk_index", align 4
@hclge_comm_cmd_csq_clean._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 308, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"IMP firmware watchdog reset soon expected!\0A\00", [52 x i8] zeroinitializer }, align 32
@hclge_comm_cmd_csq_clean._entry_ptr.34 = internal global ptr @hclge_comm_cmd_csq_clean._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 16, i64 48, i64 49, i64 50, i64 52, i64 65, i64 66, i64 5393, i64 5394, i64 5396, i64 5397, i64 5399]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 192, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 510, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 511, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 526, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 532, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 576, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 582, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 601, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"hclge_pf_cmd_caps\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 134, i32 45 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"hclge_vf_cmd_caps\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 154, i32 45 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 411, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 302, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 304, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [68 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 307, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @hclge_comm_alloc_cmd_queue._entry, ptr @hclge_comm_alloc_cmd_queue._entry_ptr, ptr @hclge_comm_cmd_check_result._entry, ptr @hclge_comm_cmd_check_result._entry_ptr, ptr @hclge_comm_cmd_csq_clean._entry, ptr @hclge_comm_cmd_csq_clean._entry.29, ptr @hclge_comm_cmd_csq_clean._entry.32, ptr @hclge_comm_cmd_csq_clean._entry_ptr, ptr @hclge_comm_cmd_csq_clean._entry_ptr.31, ptr @hclge_comm_cmd_csq_clean._entry_ptr.34, ptr @hclge_comm_cmd_init._entry, ptr @hclge_comm_cmd_init._entry.17, ptr @hclge_comm_cmd_init._entry.21, ptr @hclge_comm_cmd_init._entry_ptr, ptr @hclge_comm_cmd_init._entry_ptr.20, ptr @hclge_comm_cmd_init._entry_ptr.24, ptr @hclge_comm_cmd_queue_init._entry, ptr @hclge_comm_cmd_queue_init._entry.12, ptr @hclge_comm_cmd_queue_init._entry_ptr, ptr @hclge_comm_cmd_queue_init._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hclge_comm_cmd_queue_init.__key, ptr @.str.7, ptr @hclge_comm_cmd_queue_init.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @hclge_pf_cmd_caps, ptr @hclge_vf_cmd_caps, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_alloc_cmd_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_queue_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_queue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_queue_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_pf_cmd_caps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_vf_cmd_caps to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_check_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_csq_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_csq_clean._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_cmd_csq_clean._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_comm_cmd_init_regs(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmq = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2
  tail call fastcc void @hclge_comm_cmd_config_regs(ptr noundef %hw, ptr noundef %cmq)
  %crq = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1
  tail call fastcc void @hclge_comm_cmd_config_regs(ptr noundef %hw, ptr noundef %crq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hclge_comm_cmd_config_regs(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %ring) unnamed_addr #0 align 64 {
entry:
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 4
  %ring_type = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %ring, i32 0, i32 9
  %2 = ptrtoint ptr %ring_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ring_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %5, i32 159744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !73
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i41 = getelementptr i8, ptr %8, i32 159748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 0) #7, !srcloc !73
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %11 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 159752
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !75
  %13 = shl i32 %12, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %and5 = and i32 %13, 65536
  %desc_num = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %ring, i32 0, i32 6
  %14 = ptrtoint ptr %desc_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %desc_num, align 2
  %16 = lshr i16 %15, 3
  %17 = zext i16 %16 to i32
  %or = or i32 %and5, %17
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %add.ptr.i43 = getelementptr i8, ptr %19, i32 159752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %20) #7, !srcloc !73
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i44 = getelementptr i8, ptr %22, i32 159764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #7, !srcloc !73
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i45 = getelementptr i8, ptr %24, i32 159760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 0) #7, !srcloc !73
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i46 = getelementptr i8, ptr %5, i32 159768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %6) #7, !srcloc !73
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i47 = getelementptr i8, ptr %26, i32 159772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #7, !srcloc !73
  %desc_num16 = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %ring, i32 0, i32 6
  %27 = ptrtoint ptr %desc_num16 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %desc_num16, align 2
  %29 = lshr i16 %28, 3
  %30 = zext i16 %29 to i32
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %add.ptr.i48 = getelementptr i8, ptr %32, i32 159776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %33) #7, !srcloc !73
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i49 = getelementptr i8, ptr %35, i32 159784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #7, !srcloc !73
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i50 = getelementptr i8, ptr %37, i32 159780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #7, !srcloc !73
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hclge_comm_cmd_reuse_desc(ptr nocapture noundef writeonly %desc, i1 noundef zeroext %is_read) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %. = select i1 %is_read, i16 6400, i16 4352
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %., ptr %flag, align 2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hclge_comm_cmd_setup_basic_desc(ptr nocapture noundef writeonly %desc, i32 noundef %opcode, i1 noundef zeroext %is_read) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %conv = trunc i32 %opcode to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %desc, align 4
  %spec.select = select i1 %is_read, i16 6400, i16 4352
  %flag = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.select, ptr %flag, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_firmware_compat_config(ptr noundef %ae_dev, ptr noundef %hw, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 2
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 6768, ptr %desc, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4352, ptr %0, align 2
  br i1 %en, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %caps = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 7
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %caps, align 4
  %8 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool7.not, i32 452984832, i32 520093696
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %5, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  %call26 = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr nocapture noundef %desc, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %base.addr.i.i.i = alloca ptr, align 4
  %base.addr.i.i.i.i = alloca ptr, align 4
  %base.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %comm_state = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %comm_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %comm_state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_to_clean.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 8
  %2 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %4 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use.i, align 4
  %sub.i = sub i32 %5, %3
  %desc_num.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %6 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %desc_num.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.i = add i32 %sub.i, %conv.i
  %rem.i = srem i32 %add.i, %conv.i
  %8 = xor i32 %rem.i, -1
  %sub6.i = add i32 %8, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %num)
  %cmp = icmp slt i32 %sub6.i, %num
  br i1 %cmp, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i)
  %11 = ptrtoint ptr %base.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %base.addr.i, align 4
  %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i = load volatile ptr, ptr %base.addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i, i32 159764
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !75
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i)
  %14 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %next_to_clean.i, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %15 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp26.i = icmp sgt i32 %num, 0
  br i1 %cmp26.i, label %while.body.lr.ph.i, label %if.end15.hclge_comm_cmd_copy_desc.exit_crit_edge

if.end15.hclge_comm_cmd_copy_desc.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_cmd_copy_desc.exit

while.body.lr.ph.i:                               ; preds = %if.end15
  %desc1.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %handle.027.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc18.i, %while.body.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc1.i, align 4
  %19 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_to_use.i, align 4
  %arrayidx.i = getelementptr %struct.hclge_desc, ptr %18, i32 %20
  %arrayidx4.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %handle.027.i
  %21 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx4.i, i32 32)
  %22 = load i32, ptr %next_to_use.i, align 4
  %inc.i = add i32 %22, 1
  %23 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %desc_num.i, align 2
  %conv.i45 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i45)
  %cmp13.not.i = icmp slt i32 %inc.i, %conv.i45
  %spec.store.select.i = select i1 %cmp13.not.i, i32 %inc.i, i32 0
  %25 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select.i, ptr %next_to_use.i, align 4
  %inc18.i = add nuw nsw i32 %handle.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc18.i, %num
  br i1 %exitcond.not.i, label %while.body.i.hclge_comm_cmd_copy_desc.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.hclge_comm_cmd_copy_desc.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_cmd_copy_desc.exit

hclge_comm_cmd_copy_desc.exit:                    ; preds = %while.body.i.hclge_comm_cmd_copy_desc.exit_crit_edge, %if.end15.hclge_comm_cmd_copy_desc.exit_crit_edge
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %28 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %next_to_use.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %add.ptr.i46 = getelementptr i8, ptr %27, i32 159760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %30) #7, !srcloc !73
  %flag.i = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %31 = ptrtoint ptr %flag.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flag.i, align 2
  %33 = and i16 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i, label %hclge_comm_cmd_copy_desc.exit.if.end3.i_crit_edge, label %if.then.i

hclge_comm_cmd_copy_desc.exit.if.end3.i_crit_edge: ; preds = %hclge_comm_cmd_copy_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %hclge_comm_cmd_copy_desc.exit
  %tx_timeout.i.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then.i
  %timeout.0.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i.i.i)
  %36 = ptrtoint ptr %base.addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %base.addr.i.i.i.i, align 4
  %base.addr.i.i.i.i.0.base.addr.i.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i.i = load volatile ptr, ptr %base.addr.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %base.addr.i.i.i.i.0.base.addr.i.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i.i, i32 159764
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !75
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i.i.i)
  %39 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i.i = icmp eq i32 %38, %40
  br i1 %cmp.i.not.i.i, label %if.else.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #7
  %inc.i.i = add nuw nsw i32 %timeout.0.i.i, 1
  %42 = ptrtoint ptr %tx_timeout.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_timeout.i.i, align 4
  %conv.i.i = zext i16 %43 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.if.end3.i_crit_edge

if.end.i.i.if.end3.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.else.i:                                        ; preds = %do.body.i.i
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %desc, align 4
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #7
  br i1 %cmp26.i, label %for.body.lr.ph.i.i, label %if.else.i.for.end.i.i_crit_edge, !prof !77

if.else.i.for.end.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i
  %desc3.i.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %handle.035.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc9.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ntc.addr.034.i.i = phi i32 [ %16, %for.body.lr.ph.i.i ], [ %spec.store.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %handle.035.i.i
  %47 = ptrtoint ptr %desc3.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc3.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.hclge_desc, ptr %48, i32 %ntc.addr.034.i.i
  %49 = call ptr @memcpy(ptr %arrayidx2.i.i, ptr %arrayidx4.i.i, i32 32)
  %inc.i22.i = add i32 %ntc.addr.034.i.i, 1
  %50 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %desc_num.i, align 2
  %conv.i23.i = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i22.i, i32 %conv.i23.i)
  %cmp7.not.i.i = icmp slt i32 %inc.i22.i, %conv.i23.i
  %spec.store.select.i.i = select i1 %cmp7.not.i.i, i32 %inc.i22.i, i32 0
  %inc9.i.i = add nuw nsw i32 %handle.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc9.i.i, %num
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge, !prof !78

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.else.i.for.end.i.i_crit_edge
  %52 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i16 %46, label %if.then12.i.i [
    i16 48, label %for.end.i.i.if.end17.i.i_crit_edge
    i16 49, label %for.end.i.i.if.end17.i.i_crit_edge48
    i16 50, label %for.end.i.i.if.end17.i.i_crit_edge49
    i16 52, label %for.end.i.i.if.end17.i.i_crit_edge50
    i16 65, label %for.end.i.i.if.end17.i.i_crit_edge51
    i16 66, label %for.end.i.i.if.end17.i.i_crit_edge52
    i16 5393, label %for.end.i.i.if.end17.i.i_crit_edge53
    i16 5394, label %for.end.i.i.if.end17.i.i_crit_edge54
    i16 5396, label %for.end.i.i.if.end17.i.i_crit_edge55
    i16 5397, label %for.end.i.i.if.end17.i.i_crit_edge56
    i16 5399, label %for.end.i.i.if.end17.i.i_crit_edge57
  ]

for.end.i.i.if.end17.i.i_crit_edge57:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge56:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge55:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge54:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge53:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge52:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge51:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge50:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge49:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge48:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.end.i.i.if.end17.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.then12.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %num, -1
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then12.i.i, %for.end.i.i.if.end17.i.i_crit_edge, %for.end.i.i.if.end17.i.i_crit_edge48, %for.end.i.i.if.end17.i.i_crit_edge49, %for.end.i.i.if.end17.i.i_crit_edge50, %for.end.i.i.if.end17.i.i_crit_edge51, %for.end.i.i.if.end17.i.i_crit_edge52, %for.end.i.i.if.end17.i.i_crit_edge53, %for.end.i.i.if.end17.i.i_crit_edge54, %for.end.i.i.if.end17.i.i_crit_edge55, %for.end.i.i.if.end17.i.i_crit_edge56, %for.end.i.i.if.end17.i.i_crit_edge57
  %.sink.i.i = phi i32 [ %sub.i.i, %if.then12.i.i ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge48 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge49 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge50 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge51 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge52 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge53 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge54 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge55 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge56 ], [ 0, %for.end.i.i.if.end17.i.i_crit_edge57 ]
  %retval16.i.i = getelementptr %struct.hclge_desc, ptr %desc, i32 %.sink.i.i, i32 2
  %53 = ptrtoint ptr %retval16.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %retval16.i.i, align 4
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #7
  %conv18.i.i = zext i16 %55 to i32
  %last_status.i.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 3
  %56 = ptrtoint ptr %last_status.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv18.i.i, ptr %last_status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %55)
  %57 = icmp ult i16 %55, 12
  br i1 %57, label %switch.lookup, label %if.end17.i.i.if.end3.i_crit_edge

if.end17.i.i.if.end3.i_crit_edge:                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

switch.lookup:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.idx.cast = zext i16 %55 to i32
  %common_errno.i.i.i = getelementptr [12 x %struct.hclge_comm_errcode], ptr @__const.hclge_comm_cmd_convert_err_code.hclge_comm_cmd_errcode, i32 0, i32 %switch.idx.cast, i32 1
  %58 = ptrtoint ptr %common_errno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %common_errno.i.i.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %switch.lookup, %if.end17.i.i.if.end3.i_crit_edge, %if.end.i.i.if.end3.i_crit_edge, %hclge_comm_cmd_copy_desc.exit.if.end3.i_crit_edge
  %ret.0.i = phi i32 [ %59, %switch.lookup ], [ -5, %if.end17.i.i.if.end3.i_crit_edge ], [ -52, %hclge_comm_cmd_copy_desc.exit.if.end3.i_crit_edge ], [ -52, %if.end.i.i.if.end3.i_crit_edge ]
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base.addr.i.i.i)
  %62 = ptrtoint ptr %base.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %base.addr.i.i.i, align 4
  %base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i = load volatile ptr, ptr %base.addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %base.addr.i.i.i.0.base.addr.i.i.i.0.base.addr.i.i.0.base.addr.i.i.0.base.addr.i.0.base.addr.i.0.base.addr.0.base.addr.0.base.addr.0..i.i.i, i32 159764
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !75
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base.addr.i.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %65 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %next_to_clean.i, align 4
  %67 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %66)
  %cmp.i.i.i = icmp sgt i32 %68, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp1.not.i.i.i = icmp sge i32 %64, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %64)
  %cmp2.i.i.i = icmp sge i32 %68, %64
  br i1 %cmp.i.i.i, label %if.then.i.i25.i, label %hclge_comm_is_valid_csq_clean_head.exit.i.i

if.then.i.i25.i:                                  ; preds = %if.end3.i
  %narrow17.i.i.i = select i1 %cmp1.not.i.i.i, i1 %cmp2.i.i.i, i1 false
  br i1 %narrow17.i.i.i, label %if.then.i.i25.i.hclge_comm_cmd_csq_clean.exit.i_crit_edge, label %if.then.i.i25.i.hclge_comm_cmd_csq_clean.exit.thread.i_crit_edge

if.then.i.i25.i.hclge_comm_cmd_csq_clean.exit.thread.i_crit_edge: ; preds = %if.then.i.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_cmd_csq_clean.exit.thread.i

if.then.i.i25.i.hclge_comm_cmd_csq_clean.exit.i_crit_edge: ; preds = %if.then.i.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_cmd_csq_clean.exit.i

hclge_comm_is_valid_csq_clean_head.exit.i.i:      ; preds = %if.end3.i
  %narrow.i.i.i = select i1 %cmp1.not.i.i.i, i1 true, i1 %cmp2.i.i.i
  br i1 %narrow.i.i.i, label %hclge_comm_is_valid_csq_clean_head.exit.i.i.hclge_comm_cmd_csq_clean.exit.i_crit_edge, label %hclge_comm_is_valid_csq_clean_head.exit.i.i.hclge_comm_cmd_csq_clean.exit.thread.i_crit_edge

hclge_comm_is_valid_csq_clean_head.exit.i.i.hclge_comm_cmd_csq_clean.exit.thread.i_crit_edge: ; preds = %hclge_comm_is_valid_csq_clean_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_cmd_csq_clean.exit.thread.i

hclge_comm_is_valid_csq_clean_head.exit.i.i.hclge_comm_cmd_csq_clean.exit.i_crit_edge: ; preds = %hclge_comm_is_valid_csq_clean_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_cmd_csq_clean.exit.i

hclge_comm_cmd_csq_clean.exit.thread.i:           ; preds = %hclge_comm_is_valid_csq_clean_head.exit.i.i.hclge_comm_cmd_csq_clean.exit.thread.i_crit_edge, %if.then.i.i25.i.hclge_comm_cmd_csq_clean.exit.thread.i_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %69 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.27, i32 noundef %64, i32 noundef %68, i32 noundef %66) #10
  %71 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i.i, align 4
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.30) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %comm_state) #7
  %73 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i.i, align 4
  %dev18.i.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18.i.i, ptr noundef nonnull @.str.33) #10
  br label %cleanup

hclge_comm_cmd_csq_clean.exit.i:                  ; preds = %hclge_comm_is_valid_csq_clean_head.exit.i.i.hclge_comm_cmd_csq_clean.exit.i_crit_edge, %if.then.i.i25.i.hclge_comm_cmd_csq_clean.exit.i_crit_edge
  %sub.i26.i = sub i32 %64, %66
  %75 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %desc_num.i, align 2
  %conv.i28.i = zext i16 %76 to i32
  %add.i.i = add i32 %sub.i26.i, %conv.i28.i
  %rem.i.i = urem i32 %add.i.i, %conv.i28.i
  %77 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %64, ptr %next_to_clean.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %num)
  %cmp8.not.i = icmp eq i32 %rem.i.i, %num
  br i1 %cmp8.not.i, label %hclge_comm_cmd_csq_clean.exit.i.cleanup_crit_edge, label %do.end.i

hclge_comm_cmd_csq_clean.exit.i.cleanup_crit_edge: ; preds = %hclge_comm_cmd_csq_clean.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %hclge_comm_cmd_csq_clean.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %78 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %rem.i.i, i32 noundef %num) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %hclge_comm_cmd_csq_clean.exit.i.cleanup_crit_edge, %hclge_comm_cmd_csq_clean.exit.thread.i, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then10 ], [ -16, %entry.cleanup_crit_edge ], [ %ret.0.i, %do.end.i ], [ %ret.0.i, %hclge_comm_cmd_csq_clean.exit.i.cleanup_crit_edge ], [ -5, %hclge_comm_cmd_csq_clean.exit.thread.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_comm_free_cmd_desc(ptr nocapture noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %desc_num = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %desc_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc_num, align 2
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %pdev = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #7
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_alloc_cmd_queue(ptr noundef %hw, i32 noundef %ring_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ring_type)
  %cmp = icmp eq i32 %ring_type, 1
  %cmq = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2
  %crq = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1
  %cond = select i1 %cmp, ptr %cmq, ptr %crq
  %conv = trunc i32 %ring_type to i8
  %ring_type2 = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %cond, i32 0, i32 9
  %0 = ptrtoint ptr %ring_type2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %ring_type2, align 4
  %desc_num.i = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %cond, i32 0, i32 6
  %1 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %desc_num.i, align 2
  %conv.i = zext i16 %2 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %pdev.i = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %cond, i32 0, i32 2
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %cond, i32 noundef 3264, i32 noundef 0) #7
  %desc.i = getelementptr inbounds %struct.hclge_comm_cmq_ring, ptr %cond, i32 0, i32 1
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %desc.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %..i = select i1 %tobool.not.i, i32 -12, i32 0
  br i1 %tobool.not.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %cond5 = select i1 %cmp, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %cond5, i32 noundef %..i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %..i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_cmd_query_version_and_capability(ptr noundef %ae_dev, ptr noundef %hw, ptr nocapture noundef writeonly %fw_version, i1 noundef zeroext %is_pf) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 2
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 3
  %4 = call ptr @memset(ptr %1, i32 0, i32 28)
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %desc, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 6400, ptr %0, align 2
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %2, align 4
  %call1 = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %9 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fw_version, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shl = shl i32 %16, 8
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 6
  %17 = ptrtoint ptr %dev_version to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %dev_version, align 4
  %18 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ae_dev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision, align 4
  %conv = zext i8 %21 to i32
  %or = or i32 %shl, %conv
  store i32 %or, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %or)
  %cmp = icmp ugt i32 %or, 32
  br i1 %cmp, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %caps.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %caps.i) #7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %caps.i) #7
  br i1 %is_pf, label %land.lhs.true.i, label %if.then5.if.end7_crit_edge

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then5
  %22 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %23)
  %cmp.i = icmp eq i32 %23, 33
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %caps.i) #7
  tail call void @_set_bit(i32 noundef 15, ptr noundef %caps.i) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %land.lhs.true.i.if.end7_crit_edge, %if.then5.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %cond.i = select i1 %is_pf, ptr @hclge_pf_cmd_caps, ptr @hclge_vf_cmd_caps
  %cond2.i = select i1 %is_pf, i32 16, i32 8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %caps11.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7
  %i.019.i = phi i32 [ 0, %if.end7 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hclge_comm_caps_bit_map, ptr %cond.i, i32 %i.019.i
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx4.i, align 2
  %conv.i = zext i16 %28 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, %26
  %shr.i = lshr i32 %and.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool8.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool8.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i22

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i22:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %local_bit.i = getelementptr %struct.hclge_comm_caps_bit_map, ptr %cond.i, i32 %i.019.i, i32 1
  %29 = ptrtoint ptr %local_bit.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %local_bit.i, align 2
  %conv10.i = zext i16 %30 to i32
  tail call void @_set_bit(i32 noundef %conv10.i, ptr noundef %caps11.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i22, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond2.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_comm_cmd_uninit(ptr nocapture noundef readnone %ae_dev, ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 2
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 6768, ptr %desc.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4352, ptr %0, align 2
  %call26.i = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  %comm_state = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %comm_state) #7
  tail call void @msleep(i32 noundef 200) #7
  %lock = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %crq = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1
  %lock1 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock1) #7
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 159744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !73
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i19.i = getelementptr i8, ptr %8, i32 159748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 0) #7, !srcloc !73
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i20.i = getelementptr i8, ptr %10, i32 159752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 0) #7, !srcloc !73
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i21.i = getelementptr i8, ptr %12, i32 159764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 0) #7, !srcloc !73
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i22.i = getelementptr i8, ptr %14, i32 159760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #7, !srcloc !73
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i23.i = getelementptr i8, ptr %16, i32 159768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 0) #7, !srcloc !73
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i24.i = getelementptr i8, ptr %18, i32 159772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 0) #7, !srcloc !73
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i25.i = getelementptr i8, ptr %20, i32 159776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #7, !srcloc !73
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i26.i = getelementptr i8, ptr %22, i32 159784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 0) #7, !srcloc !73
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %add.ptr.i27.i = getelementptr i8, ptr %24, i32 159780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #7, !srcloc !73
  tail call void @_raw_spin_unlock(ptr noundef %lock1) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %desc.i16 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %desc.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc.i16, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %entry.hclge_comm_free_cmd_desc.exit_crit_edge, label %if.end.i

entry.hclge_comm_free_cmd_desc.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_free_cmd_desc.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmq = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2
  %desc_num.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %27 = ptrtoint ptr %desc_num.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %desc_num.i, align 2
  %conv.i = zext i16 %28 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %pdev.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %cmq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmq, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef nonnull %26, i32 noundef %32, i32 noundef 0) #7
  %33 = ptrtoint ptr %desc.i16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %desc.i16, align 4
  br label %hclge_comm_free_cmd_desc.exit

hclge_comm_free_cmd_desc.exit:                    ; preds = %if.end.i, %entry.hclge_comm_free_cmd_desc.exit_crit_edge
  %desc.i17 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 1
  %34 = ptrtoint ptr %desc.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i17, align 4
  %tobool.not.i18 = icmp eq ptr %35, null
  br i1 %tobool.not.i18, label %hclge_comm_free_cmd_desc.exit.hclge_comm_free_cmd_desc.exit25_crit_edge, label %if.end.i24

hclge_comm_free_cmd_desc.exit.hclge_comm_free_cmd_desc.exit25_crit_edge: ; preds = %hclge_comm_free_cmd_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_comm_free_cmd_desc.exit25

if.end.i24:                                       ; preds = %hclge_comm_free_cmd_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %desc_num.i19 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 6
  %36 = ptrtoint ptr %desc_num.i19 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %desc_num.i19, align 2
  %conv.i20 = zext i16 %37 to i32
  %mul.i21 = shl nuw nsw i32 %conv.i20, 5
  %pdev.i22 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 2
  %38 = ptrtoint ptr %pdev.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i22, align 4
  %dev.i23 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %crq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crq, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i23, i32 noundef %mul.i21, ptr noundef nonnull %35, i32 noundef %41, i32 noundef 0) #7
  %42 = ptrtoint ptr %desc.i17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %desc.i17, align 4
  br label %hclge_comm_free_cmd_desc.exit25

hclge_comm_free_cmd_desc.exit25:                  ; preds = %if.end.i24, %hclge_comm_free_cmd_desc.exit.hclge_comm_free_cmd_desc.exit25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_cmd_queue_init(ptr noundef %pdev, ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmq = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2
  %lock = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @hclge_comm_cmd_queue_init.__key, i16 noundef signext 3) #7
  %lock2 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock2, ptr noundef nonnull @.str.9, ptr noundef nonnull @hclge_comm_cmd_queue_init.__key.8, i16 noundef signext 3) #7
  %pdev7 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev7, align 4
  %pdev9 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 2
  %1 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev9, align 4
  %desc_num = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 6
  %2 = ptrtoint ptr %desc_num to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1024, ptr %desc_num, align 2
  %desc_num12 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 6
  %3 = ptrtoint ptr %desc_num12 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1024, ptr %desc_num12, align 2
  %tx_timeout = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %tx_timeout to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 30000, ptr %tx_timeout, align 4
  %ring_type2.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 9
  %5 = ptrtoint ptr %ring_type2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ring_type2.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 32768, ptr noundef %cmq, i32 noundef 3264, i32 noundef 0) #7
  %desc.i.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i.i, ptr %desc.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev7, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef -12) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.10, i32 noundef -12) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %crq.i46 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1
  %ring_type2.i47 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 9
  %9 = ptrtoint ptr %ring_type2.i47 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ring_type2.i47, align 4
  %10 = ptrtoint ptr %desc_num12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %desc_num12, align 2
  %conv.i.i49 = zext i16 %11 to i32
  %mul.i.i50 = shl nuw nsw i32 %conv.i.i49, 5
  %12 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev9, align 4
  %dev.i.i52 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i.i.i53 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i52, i32 noundef %mul.i.i50, ptr noundef %crq.i46, i32 noundef 3264, i32 noundef 0) #7
  %desc.i.i54 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 1
  %14 = ptrtoint ptr %desc.i.i54 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i.i53, ptr %desc.i.i54, align 4
  %tobool.not.i.i55 = icmp eq ptr %call.i.i.i53, null
  br i1 %tobool.not.i.i55, label %do.end.i58, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i58:                                       ; preds = %if.end
  %15 = ptrtoint ptr %pdev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev9, align 4
  %dev.i57 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i57, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef -12) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13, i32 noundef -12) #10
  %17 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.i58.cleanup_crit_edge, label %if.end.i

do.end.i58.cleanup_crit_edge:                     ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %desc_num to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %desc_num, align 2
  %conv.i = zext i16 %20 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %21 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev7, align 4
  %dev.i60 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %cmq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmq, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i60, i32 noundef %mul.i, ptr noundef nonnull %18, i32 noundef %24, i32 noundef 0) #7
  %25 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %desc.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i58.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ -12, %do.end.i ], [ -12, %do.end.i58.cleanup_crit_edge ], [ -12, %if.end.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_cmd_init(ptr noundef %ae_dev, ptr noundef %hw, ptr nocapture noundef %fw_version, i1 noundef zeroext %is_pf, i32 noundef %reset_pending) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %lock1 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock1) #7
  %next_to_clean = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 8
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 7
  %1 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %next_to_use, align 4
  %next_to_clean5 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 8
  %2 = ptrtoint ptr %next_to_clean5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %next_to_clean5, align 4
  %next_to_use7 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1, i32 7
  %3 = ptrtoint ptr %next_to_use7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %next_to_use7, align 4
  %cmq.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2
  tail call fastcc void @hclge_comm_cmd_config_regs(ptr noundef %hw, ptr noundef %cmq.i) #7
  %crq.i = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 1
  tail call fastcc void @hclge_comm_cmd_config_regs(ptr noundef %hw, ptr noundef %crq.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock1) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %comm_state = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %comm_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_pending)
  %tobool.not = icmp eq i32 %reset_pending, 0
  br i1 %tobool.not, label %if.end, label %entry.err_cmd_init_crit_edge

entry.err_cmd_init_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_cmd_init

if.end:                                           ; preds = %entry
  %call = tail call i32 @hclge_comm_cmd_query_version_and_capability(ptr noundef %ae_dev, ptr noundef %hw, ptr noundef %fw_version, i1 noundef zeroext %is_pf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  %4 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ae_dev, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  br i1 %tobool13.not, label %do.end18, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.15, i32 noundef %call) #10
  br label %err_cmd_init

do.end18:                                         ; preds = %if.end
  %6 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_version, align 4
  %shr = lshr i32 %7, 24
  %and21 = lshr i32 %7, 16
  %shr22 = and i32 %and21, 255
  %and23 = lshr i32 %7, 8
  %shr24 = and i32 %and23, 255
  %and25 = and i32 %7, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.18, i32 noundef %shr, i32 noundef %shr22, i32 noundef %shr24, i32 noundef %and25) #10
  br i1 %is_pf, label %do.end18.if.end29_crit_edge, label %land.lhs.true

do.end18.if.end29_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true:                                    ; preds = %do.end18
  %dev_version = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 6
  %8 = ptrtoint ptr %dev_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %9)
  %cmp = icmp ult i32 %9, 48
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %do.end18.if.end29_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %10 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 2
  %12 = call ptr @memset(ptr %11, i32 0, i32 28)
  %13 = ptrtoint ptr %desc.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 6768, ptr %desc.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4352, ptr %10, align 2
  %15 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %caps.i = getelementptr inbounds %struct.hnae3_ae_dev, ptr %ae_dev, i32 0, i32 7
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %caps.i, align 4
  %18 = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i = icmp eq i32 %18, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 452984832, i32 520093696
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %15, align 4
  %call26.i = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool31.not = icmp eq i32 %call26.i, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %do.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ae_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ae_dev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.22, i32 noundef %call26.i) #10
  br label %cleanup

err_cmd_init:                                     ; preds = %do.end, %entry.err_cmd_init_crit_edge
  %ret.0 = phi i32 [ %call, %do.end ], [ -16, %entry.err_cmd_init_crit_edge ]
  tail call void @_set_bit(i32 noundef 0, ptr noundef %comm_state) #7
  br label %cleanup

cleanup:                                          ; preds = %err_cmd_init, %do.end35, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_cmd_init ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end35 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 192, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hclge_comm_alloc_cmd_queue._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hclge_comm_alloc_cmd_queue._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hclge_comm_cmd_queue_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 510, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hclge_comm_cmd_queue_init.__key.8, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 511, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 526, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hclge_comm_cmd_queue_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hclge_comm_cmd_queue_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 532, i32 3}
!23 = !{ptr @hclge_comm_cmd_queue_init._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hclge_comm_cmd_queue_init._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 576, i32 3}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hclge_comm_cmd_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @hclge_comm_cmd_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 582, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hclge_comm_cmd_init._entry.17, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hclge_comm_cmd_init._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 601, i32 3}
!37 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hclge_comm_cmd_init._entry.21, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hclge_comm_cmd_init._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @hclge_pf_cmd_caps, !41, !"hclge_pf_cmd_caps", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 134, i32 45}
!42 = !{ptr @hclge_vf_cmd_caps, !43, !"hclge_vf_cmd_caps", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 154, i32 45}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 411, i32 3}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hclge_comm_cmd_check_result._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hclge_comm_cmd_check_result._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"spec_opcode", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 229, i32 18}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 302, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hclge_comm_cmd_csq_clean._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hclge_comm_cmd_csq_clean._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 304, i32 3}
!58 = !{ptr @hclge_comm_cmd_csq_clean._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hclge_comm_cmd_csq_clean._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_cmd.c", i32 307, i32 3}
!62 = !{ptr @hclge_comm_cmd_csq_clean._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hclge_comm_cmd_csq_clean._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 7315204}
!74 = !{i64 2157514831}
!75 = !{i64 7315622}
!76 = !{i64 2157518254}
!77 = !{!"branch_weights", i32 2146410443, i32 1073205}
!78 = !{!"branch_weights", i32 1073205, i32 2146410443}
!79 = !{i64 2157527213}
