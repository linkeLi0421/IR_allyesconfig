; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-qcom-ice.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-qcom-ice.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ufs_qcom_host = type { i32, ptr, ptr, %struct.ufs_pa_layer_attr, ptr, ptr, ptr, ptr, i8, ptr, i8, %struct.ufs_hw_version, ptr, i32, i32, %struct.ufs_qcom_testbus, ptr, %struct.reset_controller_dev, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_hw_version = type { i16, i16, i8 }
%struct.ufs_qcom_testbus = type { i8, i8 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%union.anon.100 = type { [16 x i32] }
%struct.anon.91 = type { [64 x i8], i8, i8, i8, i8, i8, i8, [2 x i8], [56 x i8] }
%union.ufs_crypto_cap_entry = type { i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@ufs_qcom_ice_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ICE registers not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufs_qcom_ice_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/ufs/ufs-qcom-ice.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_qcom_ice_init._entry_ptr = internal global ptr @ufs_qcom_ice_init._entry, section ".printk_index", align 4
@ufs_qcom_ice_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ICE SCM interface not found\0A\00", [35 x i8] zeroinitializer }, align 32
@ufs_qcom_ice_init._entry_ptr.8 = internal global ptr @ufs_qcom_ice_init._entry.6, section ".printk_index", align 4
@ufs_qcom_ice_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 121, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to map ICE registers; err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ufs_qcom_ice_init._entry_ptr.12 = internal global ptr @ufs_qcom_ice_init._entry.9, section ".printk_index", align 4
@ufs_qcom_ice_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Disabling inline encryption support\0A\00", [59 x i8] zeroinitializer }, align 32
@ufs_qcom_ice_init._entry_ptr.15 = internal global ptr @ufs_qcom_ice_init._entry.13, section ".printk_index", align 4
@ufs_qcom_ice_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 197, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"BIST status error (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_qcom_ice_resume\00", [44 x i8] zeroinitializer }, align 32
@ufs_qcom_ice_resume._entry_ptr = internal global ptr @ufs_qcom_ice_resume._entry, section ".printk_index", align 4
@ufs_qcom_ice_program_key._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ufs_qcom_ice_program_key = private unnamed_addr constant [25 x i8] c"ufs_qcom_ice_program_key\00", align 1
@ufs_qcom_ice_program_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.ufs_qcom_ice_program_key, ptr @.str.3, i32 227, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unhandled crypto capability; algorithm_id=%d, key_size=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ufs_qcom_ice_program_key._entry_ptr = internal global ptr @ufs_qcom_ice_program_key._entry, section ".printk_index", align 4
@qcom_ice_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported ICE version: v%d.%d.%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_ice_supported\00", [45 x i8] zeroinitializer }, align 32
@qcom_ice_supported._entry_ptr = internal global ptr @qcom_ice_supported._entry, section ".printk_index", align 4
@qcom_ice_supported._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 82, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Found QC Inline Crypto Engine (ICE) v%d.%d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qcom_ice_supported._entry_ptr.25 = internal global ptr @qcom_ice_supported._entry.22, section ".printk_index", align 4
@qcom_ice_supported._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fuses are blown; ICE is unusable!\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_ice_supported._entry_ptr.28 = internal global ptr @qcom_ice_supported._entry.26, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 107, i32 59 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 109, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 114, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 121, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 131, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 197, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 225, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 76, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 81, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [35 x i8] c"../drivers/scsi/ufs/ufs-qcom-ice.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 89, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @qcom_ice_supported._entry, ptr @qcom_ice_supported._entry.22, ptr @qcom_ice_supported._entry.26, ptr @qcom_ice_supported._entry_ptr, ptr @qcom_ice_supported._entry_ptr.25, ptr @qcom_ice_supported._entry_ptr.28, ptr @ufs_qcom_ice_init._entry, ptr @ufs_qcom_ice_init._entry.13, ptr @ufs_qcom_ice_init._entry.6, ptr @ufs_qcom_ice_init._entry.9, ptr @ufs_qcom_ice_init._entry_ptr, ptr @ufs_qcom_ice_init._entry_ptr.12, ptr @ufs_qcom_ice_init._entry_ptr.15, ptr @ufs_qcom_ice_init._entry_ptr.8, ptr @ufs_qcom_ice_program_key._entry, ptr @ufs_qcom_ice_program_key._entry_ptr, ptr @ufs_qcom_ice_resume._entry, ptr @ufs_qcom_ice_resume._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @ufs_qcom_ice_program_key._rs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_ice_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_ice_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_ice_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_ice_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_ice_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_ice_program_key._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_qcom_ice_program_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ice_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ice_supported._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_ice_supported._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_qcom_ice_init(ptr nocapture noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hba1 = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba1, align 4
  %dev2 = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %call6 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %do.end31

if.end9:                                          ; preds = %if.end
  %call10 = tail call zeroext i1 @qcom_scm_ice_available() #5
  br i1 %call10, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  br label %do.end31

if.end15:                                         ; preds = %if.end9
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %call6) #5
  %ice_mmio = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 12
  %8 = ptrtoint ptr %ice_mmio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %ice_mmio, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %9) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %hba1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba1, align 4
  %dev1.i = getelementptr inbounds %struct.ufs_hba, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call16, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !58
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %shr.i = lshr i32 %15, 24
  %shr3.i = lshr i32 %15, 16
  %and.i = and i32 %shr3.i, 255
  %and4.i = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp.not.i = icmp eq i32 %shr.i, 3
  br i1 %cmp.not.i, label %do.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %shr.i, i32 noundef %and.i, i32 noundef %and4.i) #8
  br label %do.end31

do.end7.i:                                        ; preds = %if.end25
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef %and.i, i32 noundef %and4.i) #8
  %16 = ptrtoint ptr %ice_mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ice_mmio, align 4
  %add.ptr11.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %19 = and i32 %18, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.end7.i.cleanup_crit_edge, label %do.end19.i

do.end7.i.cleanup_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end19.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.27) #8
  br label %do.end31

do.end31:                                         ; preds = %do.end19.i, %do.end.i, %do.end14, %do.end
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.14) #8
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 75
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caps, align 8
  %and32 = and i32 %21, -257
  store i32 %and32, ptr %caps, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end7.i.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then19 ], [ 0, %do.end31 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_ice_available() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_qcom_ice_enable(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hba = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %ice_mmio.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 12
  %4 = ptrtoint ptr %ice_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ice_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4096
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %7 = or i32 %6, 7340032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %ice_mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ice_mmio.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #5, !srcloc !64
  %10 = ptrtoint ptr %ice_mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ice_mmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %11, i32 4096
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %13 = or i32 %12, 7438349
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %ice_mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ice_mmio.i, align 4
  %add.ptr3.i6 = getelementptr i8, ptr %16, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i6, i32 %13) #5, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #5
  %18 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hba, align 4
  %caps.i = getelementptr inbounds %struct.ufs_hba, ptr %19, i32 0, i32 75
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caps.i, align 8
  %and.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %count.010.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %ice_mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ice_mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 112
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %25 = and i32 %24, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %for.end.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 10737400) #5
  %inc.i.i = add nuw nsw i32 %count.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i.i, label %for.end.i.i.return_crit_edge, label %for.end.i.i.do.end.i_crit_edge

for.end.i.i.do.end.i_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.end.i.i.return_crit_edge:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end.i:                                         ; preds = %for.end.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge
  %27 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hba, align 4
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.16, i32 noundef -110) #8
  br label %return

return:                                           ; preds = %do.end.i, %for.end.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -110, %do.end.i ], [ 0, %if.end.return_crit_edge ], [ 0, %for.end.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_qcom_ice_resume(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hba = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba, align 4
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %1, i32 0, i32 75
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ice_mmio.i = getelementptr inbounds %struct.ufs_qcom_host, ptr %host, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.010.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ice_mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ice_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %7 = and i32 %6, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.end.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 10737400) #5
  %inc.i = add nuw nsw i32 %count.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.do.end_crit_edge

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %for.end.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %9 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hba, align 4
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16, i32 noundef -110) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufs_qcom_ice_program_key(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %cfg, i32 noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.anon.100, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %key) #5
  %config_enable = getelementptr inbounds %struct.anon.91, ptr %cfg, i32 0, i32 4
  %0 = ptrtoint ptr %config_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @qcom_scm_ice_invalidate_key(i32 noundef %slot) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %crypto_cap_array = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 90
  %2 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_cap_array, align 4
  %crypto_cap_idx = getelementptr inbounds %struct.anon.91, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %crypto_cap_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %crypto_cap_idx, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %union.ufs_crypto_cap_entry, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cap.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %cap.sroa.635.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %7 = ptrtoint ptr %cap.sroa.635.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cap.sroa.635.0.copyload = load i8, ptr %cap.sroa.635.0.arrayidx.sroa_idx, align 2
  %conv1 = zext i8 %cap.sroa.0.0.copyload to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cap.sroa.0.0.copyload)
  %cmp.not = icmp eq i8 %cap.sroa.0.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %cap.sroa.635.0.copyload)
  %cmp4.not = icmp eq i8 %cap.sroa.635.0.copyload, 3
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @ufs_qcom_ice_program_key._rs, ptr noundef nonnull @__func__.ufs_qcom_ice_program_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %conv14 = zext i8 %cap.sroa.635.0.copyload to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %conv1, i32 noundef %conv14) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = call ptr @memcpy(ptr %key, ptr %cfg, i32 64)
  %data_unit_size = getelementptr inbounds %struct.anon.91, ptr %cfg, i32 0, i32 1
  %11 = ptrtoint ptr %data_unit_size to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data_unit_size, align 4
  %conv27 = zext i8 %12 to i32
  %call28 = call i32 @qcom_scm_ice_set_key(i32 noundef %slot, ptr noundef nonnull %key, i32 noundef 64, i32 noundef 3, i32 noundef %conv27) #5
  %13 = call ptr @memset(ptr %key, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key) #5, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call28, %if.end18 ], [ %call, %if.then ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %key) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_ice_invalidate_key(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_ice_set_key(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 107, i32 59}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 109, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufs_qcom_ice_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ufs_qcom_ice_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 114, i32 3}
!12 = !{ptr @ufs_qcom_ice_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ufs_qcom_ice_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 121, i32 3}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ufs_qcom_ice_init._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @ufs_qcom_ice_init._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 131, i32 2}
!21 = !{ptr @ufs_qcom_ice_init._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ufs_qcom_ice_init._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 197, i32 3}
!25 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ufs_qcom_ice_resume._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ufs_qcom_ice_resume._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 225, i32 3}
!30 = !{ptr @ufs_qcom_ice_program_key._rs, !29, !"_rs", i1 false, i1 false}
!31 = !{ptr @__func__.ufs_qcom_ice_program_key, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ufs_qcom_ice_program_key._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @ufs_qcom_ice_program_key._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 76, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qcom_ice_supported._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qcom_ice_supported._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 81, i32 2}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qcom_ice_supported._entry.22, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @qcom_ice_supported._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/ufs/ufs-qcom-ice.c", i32 89, i32 3}
!47 = !{ptr @qcom_ice_supported._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qcom_ice_supported._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 4926917}
!59 = !{i64 2155620617}
!60 = !{i64 2155612791}
!61 = !{i64 2155616952}
!62 = !{i64 2155627875}
!63 = !{i64 2155628176}
!64 = !{i64 4926499}
!65 = !{i64 2155628979}
!66 = !{i64 2155629816}
!67 = !{i64 2155631155}
!68 = !{i64 2149255497}
