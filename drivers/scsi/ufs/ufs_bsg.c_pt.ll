; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs_bsg.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs_bsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufs_stats = type { i32, i64, i32, i64, [15 x %struct.ufs_event_hist] }
%struct.ufs_event_hist = type { i32, [8 x i32], [8 x i64], i64 }
%struct.ufs_dev_cmd = type { i32, %struct.mutex, ptr, %struct.ufs_query }
%struct.ufs_query = type { %struct.ufs_query_req, ptr, %struct.ufs_query_res }
%struct.ufs_query_req = type { i8, %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i8, i8, i8, i8, i16, i16, i32, [2 x i32] }
%struct.ufs_query_res = type { i8, %struct.utp_upiu_query }
%struct.ufs_dev_info = type { i8, i8, i8, i16, ptr, i16, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ufs_vreg_info = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_pwr_mode_info = type { i8, %struct.ufs_pa_layer_attr }
%struct.ufs_clk_gating = type { %struct.delayed_work, %struct.work_struct, i32, i32, i8, %struct.device_attribute, %struct.device_attribute, i8, i8, i32, ptr }
%struct.ufs_clk_scaling = type { i32, i32, i64, i64, %struct.device_attribute, %struct.ufs_saved_pwr_info, ptr, %struct.work_struct, %struct.work_struct, i32, i8, i8, i8, i8, i8 }
%struct.ufs_saved_pwr_info = type { %struct.ufs_pa_layer_attr, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.uic_command = type { i32, i32, i32, i32, i32, %struct.completion }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.ufs_bsg_reply = type { i32, i32, %struct.utp_upiu_req }
%struct.utp_upiu_req = type { %struct.utp_upiu_header, %union.anon.89 }
%struct.utp_upiu_header = type { i32, i32, i32 }
%union.anon.89 = type { %struct.utp_upiu_cmd }
%struct.utp_upiu_cmd = type { i32, [16 x i8] }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.ufs_bsg_request = type { i32, %struct.utp_upiu_req }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ufs-bsg%u\00", [22 x i8] zeroinitializer }, align 32
@ufs_bsg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail to initialize a bsg dev %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufs_bsg_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/scsi/ufs/ufs_bsg.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_bsg_probe._entry_ptr = internal global ptr @ufs_bsg_probe._entry, section ".printk_index", align 4
@ufs_bsg_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"exe raw upiu: error code %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_bsg_request\00", [16 x i8] zeroinitializer }, align 32
@ufs_bsg_request._entry_ptr = internal global ptr @ufs_bsg_request._entry, section ".printk_index", align 4
@ufs_bsg_request._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"send uic cmd: error code %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ufs_bsg_request._entry_ptr.10 = internal global ptr @ufs_bsg_request._entry.8, section ".printk_index", align 4
@ufs_bsg_request._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported msgcode 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ufs_bsg_request._entry_ptr.13 = internal global ptr @ufs_bsg_request._entry.11, section ".printk_index", align 4
@ufs_bsg_verify_query_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 35, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"not enough space assigned\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufs_bsg_verify_query_size\00", [38 x i8] zeroinitializer }, align 32
@ufs_bsg_verify_query_size._entry_ptr = internal global ptr @ufs_bsg_verify_query_size._entry, section ".printk_index", align 4
@ufs_bsg_alloc_desc_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 56, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Illegal desc size\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufs_bsg_alloc_desc_buffer\00", [38 x i8] zeroinitializer }, align 32
@ufs_bsg_alloc_desc_buffer._entry_ptr = internal global ptr @ufs_bsg_alloc_desc_buffer._entry, section ".printk_index", align 4
@ufs_bsg_alloc_desc_buffer._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 61, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ufs_bsg_alloc_desc_buffer._entry_ptr.19 = internal global ptr @ufs_bsg_alloc_desc_buffer._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 22, i64 31]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 207, i32 24 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 224, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 120, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 128, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 136, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 35, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 56, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private constant [30 x i8] c"../drivers/scsi/ufs/ufs_bsg.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 61, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @ufs_bsg_alloc_desc_buffer._entry, ptr @ufs_bsg_alloc_desc_buffer._entry.18, ptr @ufs_bsg_alloc_desc_buffer._entry_ptr, ptr @ufs_bsg_alloc_desc_buffer._entry_ptr.19, ptr @ufs_bsg_probe._entry, ptr @ufs_bsg_probe._entry_ptr, ptr @ufs_bsg_request._entry, ptr @ufs_bsg_request._entry.11, ptr @ufs_bsg_request._entry.8, ptr @ufs_bsg_request._entry_ptr, ptr @ufs_bsg_request._entry_ptr.10, ptr @ufs_bsg_request._entry_ptr.13, ptr @ufs_bsg_verify_query_size._entry, ptr @ufs_bsg_verify_query_size._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bsg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bsg_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bsg_request._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bsg_request._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bsg_verify_query_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bsg_alloc_desc_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_bsg_alloc_desc_buffer._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_bsg_remove(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bsg_queue = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 85
  %0 = ptrtoint ptr %bsg_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsg_queue, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bsg_dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 84
  tail call void @bsg_remove_queue(ptr noundef nonnull %1) #7
  tail call void @device_del(ptr noundef %bsg_dev1) #7
  tail call void @put_device(ptr noundef %bsg_dev1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_remove_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_bsg_probe(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bsg_dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 84
  %host = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void @device_initialize(ptr noundef %bsg_dev1) #7
  %call = tail call ptr @get_device(ptr noundef %shost_gendev) #7
  %parent2 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 84, i32 1
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %parent2, align 8
  %release = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 84, i32 35
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ufs_bsg_node_release, ptr %release, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %bsg_dev1, ptr noundef nonnull @.str, i32 noundef %5) #7
  %call4 = tail call i32 @device_add(ptr noundef %bsg_dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 84, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %bsg_dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bsg_dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %call6 = tail call ptr @bsg_setup_queue(ptr noundef %bsg_dev1, ptr noundef %retval.0.i, ptr noundef nonnull @ufs_bsg_request, ptr noundef null, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call6 to i32
  br label %do.end

if.end10:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bsg_queue = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 85
  %11 = ptrtoint ptr %bsg_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %bsg_queue, align 8
  br label %cleanup

do.end:                                           ; preds = %if.then8, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %call4, %entry.do.end_crit_edge ], [ %10, %if.then8 ]
  %12 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bsg_dev1, ptr noundef nonnull @.str.1, i32 noundef %13) #10
  tail call void @put_device(ptr noundef %bsg_dev1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufs_bsg_node_release(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @put_device(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsg_setup_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_bsg_request(ptr noundef %job) #0 align 64 {
entry:
  %uc = alloca %struct.uic_command, align 4
  %desc_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 3
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %reply = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 4
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply, align 4
  %4 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %job, align 4
  %parent = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %7, %entry ], [ %9, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %request_len = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 5
  %10 = ptrtoint ptr %request_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %request_len, align 4
  %reply_len2 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 6
  %12 = ptrtoint ptr %reply_len2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reply_len2, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %uc) #7
  %14 = call ptr @memset(ptr %uc, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_len) #7
  %15 = ptrtoint ptr %desc_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %desc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %11)
  %cmp.i = icmp ult i32 %11, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %13)
  %cmp1.i = icmp ult i32 %13, 40
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %ufs_bsg_verify_query_size.exit, label %if.end

ufs_bsg_verify_query_size.exit:                   ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 3, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14) #10
  br label %out.thread

if.end:                                           ; preds = %dev_to_shost.exit
  %reply_payload_rcv_len = getelementptr inbounds %struct.ufs_bsg_reply, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reply_payload_rcv_len, align 4
  %sdev_ufs_device.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 3, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %20, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %sw.default [
    i32 22, label %sw.bb
    i32 0, label %if.end.sw.bb11_crit_edge
    i32 4, label %if.end.sw.bb11_crit_edge116
    i32 31, label %sw.bb18
  ]

if.end.sw.bb11_crit_edge116:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

sw.bb:                                            ; preds = %if.end
  %24 = getelementptr inbounds %struct.ufs_bsg_request, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv = zext i8 %26 to i32
  %desc_op.off.i = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %desc_op.off.i)
  %switch.i = icmp ult i32 %desc_op.off.i, 2
  br i1 %switch.i, label %if.end.i, label %sw.bb.sw.bb11_crit_edge

sw.bb.sw.bb11_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

if.end.i:                                         ; preds = %sw.bb
  %27 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request, align 4
  %length.i.i = getelementptr inbounds %struct.ufs_bsg_request, ptr %28, i32 0, i32 1, i32 1, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %length.i.i, align 2
  %conv.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.i.i = icmp eq i16 %30, 0
  br i1 %cmp.i.i, label %if.end.i.if.then8.sink.split_crit_edge, label %if.end.i.i

if.end.i.if.then8.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.sink.split

if.end.i.i:                                       ; preds = %if.end.i
  %31 = getelementptr inbounds %struct.ufs_bsg_request, ptr %28, i32 0, i32 1, i32 1
  %idn.i.i = getelementptr inbounds %struct.utp_upiu_query, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %idn.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %idn.i.i, align 1
  %conv1.i.i = zext i8 %33 to i32
  call void @ufshcd_map_desc_id_to_length(ptr noundef %hostdata.i, i32 noundef %conv1.i.i, ptr noundef nonnull %desc_len) #7
  %34 = ptrtoint ptr %desc_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %desc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then8.sink.split_crit_edge, label %if.end3.i

if.end.i.i.if.then8.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.sink.split

if.end3.i:                                        ; preds = %if.end.i.i
  %36 = call i32 @llvm.smin.i32(i32 %35, i32 %conv.i.i) #7
  %37 = ptrtoint ptr %desc_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %desc_len, align 4
  %request_payload.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %38 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %request_payload.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %39)
  %cmp4.i = icmp ugt i32 %36, %39
  br i1 %cmp4.i, label %if.end3.i.if.then8.sink.split_crit_edge, label %if.end8.i.i.i

if.end3.i.if.then8.sink.split_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.sink.split

if.end8.i.i.i:                                    ; preds = %if.end3.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #11
  %tobool12.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool12.not.i, label %if.end8.i.i.i.if.then8_crit_edge, label %if.end14.i

if.end8.i.i.i.if.then8_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end14.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp15.i = icmp eq i8 %26, 2
  br i1 %cmp15.i, label %if.then16.i, label %if.end14.i.sw.bb11_crit_edge

if.end14.i.sw.bb11_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg_list.i, align 4
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_cnt.i, align 4
  %44 = ptrtoint ptr %desc_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %desc_len, align 4
  %call19.i = call i32 @sg_copy_to_buffer(ptr noundef %41, i32 noundef %43, ptr noundef nonnull %call9.i.i.i, i32 noundef %45) #7
  br label %sw.bb11

if.then8.sink.split:                              ; preds = %if.end3.i.if.then8.sink.split_crit_edge, %if.end.i.i.if.then8.sink.split_crit_edge, %if.end.i.if.then8.sink.split_crit_edge
  %dev9.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 3, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev9.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.16) #10
  br label %if.then8

if.then8:                                         ; preds = %if.then8.sink.split, %if.end8.i.i.i.if.then8_crit_edge
  %retval.0.i93 = phi i32 [ -12, %if.end8.i.i.i.if.then8_crit_edge ], [ -22, %if.then8.sink.split ]
  %48 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i95 = getelementptr inbounds %struct.scsi_device, ptr %49, i32 0, i32 55
  %call.i.i96 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i95, i32 noundef 4) #7
  br label %out.thread

sw.bb11:                                          ; preds = %if.then16.i, %if.end14.i.sw.bb11_crit_edge, %sw.bb.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge116
  %desc_buff.1 = phi ptr [ null, %if.end.sw.bb11_crit_edge ], [ null, %if.end.sw.bb11_crit_edge116 ], [ %call9.i.i.i, %if.end14.i.sw.bb11_crit_edge ], [ %call9.i.i.i, %if.then16.i ], [ null, %sw.bb.sw.bb11_crit_edge ]
  %desc_op.0 = phi i32 [ 0, %if.end.sw.bb11_crit_edge ], [ 0, %if.end.sw.bb11_crit_edge116 ], [ 1, %if.end14.i.sw.bb11_crit_edge ], [ 2, %if.then16.i ], [ %conv, %sw.bb.sw.bb11_crit_edge ]
  %upiu_req12 = getelementptr inbounds %struct.ufs_bsg_request, ptr %1, i32 0, i32 1
  %upiu_rsp = getelementptr inbounds %struct.ufs_bsg_reply, ptr %3, i32 0, i32 2
  %call13 = call i32 @ufshcd_exec_raw_upiu_cmd(ptr noundef %hostdata.i, ptr noundef %upiu_req12, ptr noundef %upiu_rsp, i32 noundef %22, ptr noundef %desc_buff.1, ptr noundef nonnull %desc_len, i32 noundef %desc_op.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %sw.bb11.sw.epilog_crit_edge, label %do.end

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 3, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev16, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.6, i32 noundef %call13) #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %52 = getelementptr inbounds %struct.ufs_bsg_request, ptr %1, i32 0, i32 1, i32 1
  %53 = call ptr @memcpy(ptr %uc, ptr %52, i32 16)
  %call20 = call i32 @ufshcd_send_uic_cmd(ptr noundef %hostdata.i, ptr noundef nonnull %uc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %sw.bb18.if.end27_crit_edge, label %do.end25

sw.bb18.if.end27_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end25:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 3, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.9, i32 noundef %call20) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %sw.bb18.if.end27_crit_edge
  %56 = getelementptr inbounds %struct.ufs_bsg_reply, ptr %3, i32 0, i32 2, i32 1
  %57 = call ptr @memcpy(ptr %56, ptr %uc, i32 16)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 3, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.12, i32 noundef %22) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end27, %do.end, %sw.bb11.sw.epilog_crit_edge
  %desc_buff.2 = phi ptr [ null, %sw.default ], [ null, %if.end27 ], [ %desc_buff.1, %sw.bb11.sw.epilog_crit_edge ], [ %desc_buff.1, %do.end ]
  %desc_op.1 = phi i32 [ 0, %sw.default ], [ 0, %if.end27 ], [ %desc_op.0, %sw.bb11.sw.epilog_crit_edge ], [ %desc_op.0, %do.end ]
  %ret.0 = phi i32 [ -524, %sw.default ], [ %call20, %if.end27 ], [ 0, %sw.bb11.sw.epilog_crit_edge ], [ %call13, %do.end ]
  %60 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i98 = getelementptr inbounds %struct.scsi_device, ptr %61, i32 0, i32 55
  %call.i.i99 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i98, i32 noundef 4) #7
  %tobool34.not = icmp eq ptr %desc_buff.2, null
  br i1 %tobool34.not, label %sw.epilog.out_crit_edge, label %if.end36

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %desc_op.1)
  %cmp = icmp eq i32 %desc_op.1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end36.if.end43_crit_edge

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end36
  %62 = ptrtoint ptr %desc_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %desc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool38.not = icmp eq i32 %63, 0
  br i1 %tobool38.not, label %land.lhs.true.if.end43_crit_edge, label %if.then39

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %64 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sg_cnt, align 4
  %call41 = call i32 @sg_copy_from_buffer(ptr noundef %65, i32 noundef %67, ptr noundef nonnull %desc_buff.2, i32 noundef %63) #7
  %68 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call41, ptr %reply_payload_rcv_len, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %land.lhs.true.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  call void @kfree(ptr noundef nonnull %desc_buff.2) #7
  br label %out

out.thread:                                       ; preds = %if.then8, %ufs_bsg_verify_query_size.exit
  %ret.1.ph = phi i32 [ %retval.0.i93, %if.then8 ], [ -22, %ufs_bsg_verify_query_size.exit ]
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %ret.1.ph, ptr %3, align 4
  %70 = ptrtoint ptr %reply_len2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 40, ptr %reply_len2, align 4
  br label %if.end49

out:                                              ; preds = %if.end43, %sw.epilog.out_crit_edge
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %ret.0, ptr %3, align 4
  %72 = ptrtoint ptr %reply_len2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 40, ptr %reply_len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp45 = icmp eq i32 %ret.0, 0
  br i1 %cmp45, label %if.then47, label %out.if.end49_crit_edge

out.if.end49_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %reply_payload_rcv_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %reply_payload_rcv_len, align 4
  call void @bsg_job_done(ptr noundef %job, i32 noundef 0, i32 noundef %74) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %out.if.end49_crit_edge, %out.thread
  %ret.1109 = phi i32 [ %ret.1.ph, %out.thread ], [ 0, %if.then47 ], [ %ret.0, %out.if.end49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_len) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %uc) #7
  ret i32 %ret.1109
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_exec_raw_upiu_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_send_uic_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_map_desc_id_to_length(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 207, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 224, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufs_bsg_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ufs_bsg_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 120, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ufs_bsg_request._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ufs_bsg_request._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 128, i32 4}
!17 = !{ptr @ufs_bsg_request._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ufs_bsg_request._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 136, i32 3}
!21 = !{ptr @ufs_bsg_request._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ufs_bsg_request._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 35, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ufs_bsg_verify_query_size._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ufs_bsg_verify_query_size._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 56, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ufs_bsg_alloc_desc_buffer._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ufs_bsg_alloc_desc_buffer._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ufs_bsg_alloc_desc_buffer._entry.18, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/scsi/ufs/ufs_bsg.c", i32 61, i32 3}
!35 = !{ptr @ufs_bsg_alloc_desc_buffer._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
