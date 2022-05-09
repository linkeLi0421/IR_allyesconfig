; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_xcopy.c_pt.bc'
source_filename = "../drivers/target/target_core_xcopy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.callback_head = type { ptr, ptr }
%struct.xcopy_op = type { i32, ptr, ptr, [16 x i8], ptr, [16 x i8], [16 x i8], ptr, i64, i64, i16, i16, i16, i32, i32, ptr, %struct.work_struct }
%struct.xcopy_pt_cmd = type { %struct.se_cmd, %struct.completion, [96 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.se_dev_entry = type { i64, i64, i64, i8, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.kref, %struct.completion, ptr, %struct.spinlock, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.callback_head }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xcopy_wq\00", [23 x i8] zeroinitializer }, align 32
@xcopy_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@target_xcopy_setup_pt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Unable to allocate xcopy_wq\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"target_xcopy_setup_pt\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/target/target_core_xcopy.c\00", [61 x i8] zeroinitializer }, align 32
@target_xcopy_setup_pt._entry_ptr = internal global ptr @target_xcopy_setup_pt._entry, section ".printk_index", align 4
@xcopy_pt_tpg = dso_local global { %struct.se_portal_group, [192 x i8] } zeroinitializer, align 32
@xcopy_pt_tfo = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xcopy_pt_check_stop_free, ptr @xcopy_pt_release_cmd, ptr null, ptr null, ptr null, ptr @xcopy_pt_write_pending, ptr null, ptr @xcopy_pt_get_cmd_state, ptr @xcopy_pt_queue_data_in, ptr @xcopy_pt_queue_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@xcopy_pt_nacl = internal global { %struct.se_node_acl, [252 x i8] } zeroinitializer, align 32
@xcopy_pt_sess = internal global { %struct.se_session, [88 x i8] } zeroinitializer, align 32
@target_do_xcopy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013EXTENDED_COPY operation explicitly disabled\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_do_xcopy\00", [16 x i8] zeroinitializer }, align 32
@target_do_xcopy._entry_ptr = internal global ptr @target_do_xcopy._entry, section ".printk_index", align 4
@target_do_xcopy._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013EXTENDED_COPY(LID4) not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@target_do_xcopy._entry_ptr.8 = internal global ptr @target_do_xcopy._entry.6, section ".printk_index", align 4
@target_do_xcopy._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013XCOPY parameter truncation: length %u < hdr_len %u\0A\00", [42 x i8] zeroinitializer }, align 32
@target_do_xcopy._entry_ptr.11 = internal global ptr @target_do_xcopy._entry.9, section ".printk_index", align 4
@target_do_xcopy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&xop->xop_work)\00", [62 x i8] zeroinitializer }, align 32
@target_do_xcopy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@target_do_receive_copy_results.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"target_do_receive_copy_results\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Entering target_do_receive_copy_results: SA: 0x%02x, List ID: 0x%02x, AL: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@target_do_receive_copy_results._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013Receive Copy Results with non zero list identifier not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@target_do_receive_copy_results._entry_ptr = internal global ptr @target_do_receive_copy_results._entry, section ".printk_index", align 4
@target_do_receive_copy_results._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.3, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unsupported SA for receive copy results: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@target_do_receive_copy_results._entry_ptr.19 = internal global ptr @target_do_receive_copy_results._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xcopy-pt\00", [23 x i8] zeroinitializer }, align 32
@xcopy_pt_release_cmd.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xcopy_pt_release_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xpt_cmd done: %p\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@target_xcopy_do_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@target_xcopy_do_work.__already_done.23 = internal unnamed_addr global i1 false, section ".data.once", align 1
@target_xcopy_do_work.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"target_xcopy_do_work\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"target_xcopy_do_work: nolb: %hu, max_nolb: %hu end_lba: %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"target_xcopy_do_work: Starting src_lba: %llu, dst_lba: %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"target_xcopy_do_work: Calling read src_dev: %p src_lba: %llu, cur_nolb: %hu\0A\00", [51 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.28, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"target_xcopy_do_work: Incremented READ src_lba to %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.29, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"target_xcopy_do_work: Calling write dst_dev: %p dst_lba: %llu, cur_nolb: %hu\0A\00", [50 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.30, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"target_xcopy_do_work: Incremented WRITE dst_lba to %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.31, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"target_xcopy_do_work: Final src_lba: %llu, dst_lba: %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.32, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"target_xcopy_do_work: Blocks copied: %hu, Bytes Copied: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@target_xcopy_do_work.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.24, ptr @.str.3, ptr @.str.33, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"target_xcopy_do_work: Setting X-COPY GOOD status -> sending response\0A\00", [58 x i8] zeroinitializer }, align 32
@target_xcopy_do_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@target_xcopy_do_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.3, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014target_xcopy_do_work: rc: %d, sense: %u, XCOPY operation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@target_xcopy_do_work._entry_ptr = internal global ptr @target_xcopy_do_work._entry, section ".printk_index", align 4
@target_parse_xcopy_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013transport_kmap_data_sg() failed in target_do_xcopy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"target_parse_xcopy_cmd\00", [41 x i8] zeroinitializer }, align 32
@target_parse_xcopy_cmd._entry_ptr = internal global ptr @target_parse_xcopy_cmd._entry, section ".printk_index", align 4
@target_parse_xcopy_cmd._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013XCOPY descriptor list length %u exceeds maximum %u\0A\00", [42 x i8] zeroinitializer }, align 32
@target_parse_xcopy_cmd._entry_ptr.40 = internal global ptr @target_parse_xcopy_cmd._entry.38, section ".printk_index", align 4
@target_parse_xcopy_cmd._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013XCOPY with non zero inline data length\0A\00", [54 x i8] zeroinitializer }, align 32
@target_parse_xcopy_cmd._entry_ptr.43 = internal global ptr @target_parse_xcopy_cmd._entry.41, section ".printk_index", align 4
@target_parse_xcopy_cmd._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013XCOPY parameter truncation: data length %u too small for tdll: %hu sdll: %u inline_dl: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@target_parse_xcopy_cmd._entry_ptr.46 = internal global ptr @target_parse_xcopy_cmd._entry.44, section ".printk_index", align 4
@target_parse_xcopy_cmd.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.37, ptr @.str.3, ptr @.str.47, i8 0, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Processing XCOPY with list_id: 0x%02x list_id_usage: 0x%02x tdll: %hu sdll: %u inline_dl: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@target_parse_xcopy_cmd.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.37, ptr @.str.3, ptr @.str.48, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"XCOPY: Processed %d segment descriptors, length: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@target_parse_xcopy_cmd._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.37, ptr @.str.3, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013XCOPY: Non matching src_dev block_size: %u + dst_dev block_size: %u currently unsupported\0A\00", [35 x i8] zeroinitializer }, align 32
@target_parse_xcopy_cmd._entry_ptr.51 = internal global ptr @target_parse_xcopy_cmd._entry.49, section ".printk_index", align 4
@target_parse_xcopy_cmd.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.37, ptr @.str.3, ptr @.str.52, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"XCOPY: Processed %d target descriptors, length: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@target_xcopy_parse_segment_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013XCOPY segment descriptor list length is not multiple of %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"target_xcopy_parse_segment_descriptors\00", [57 x i8] zeroinitializer }, align 32
@target_xcopy_parse_segment_descriptors._entry_ptr = internal global ptr @target_xcopy_parse_segment_descriptors._entry, section ".printk_index", align 4
@target_xcopy_parse_segment_descriptors._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013XCOPY supports %u segment descriptor(s), sdll: %u too large..\0A\00", [63 x i8] zeroinitializer }, align 32
@target_xcopy_parse_segment_descriptors._entry_ptr.57 = internal global ptr @target_xcopy_parse_segment_descriptors._entry.55, section ".printk_index", align 4
@target_xcopy_parse_segment_descriptors._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013XCOPY unsupported segment descriptortype: 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@target_xcopy_parse_segment_descriptors._entry_ptr.60 = internal global ptr @target_xcopy_parse_segment_descriptors._entry.58, section ".printk_index", align 4
@target_xcopy_parse_segdesc_02._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013XCOPY segment desc 0x02: Illegal desc_len: %hu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"target_xcopy_parse_segdesc_02\00", [34 x i8] zeroinitializer }, align 32
@target_xcopy_parse_segdesc_02._entry_ptr = internal global ptr @target_xcopy_parse_segdesc_02._entry, section ".printk_index", align 4
@target_xcopy_parse_segdesc_02._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013XCOPY segment desc 0x02: unsupported CSCD ID > 0x%x; stdi: %hu dtdi: %hu\0A\00", [52 x i8] zeroinitializer }, align 32
@target_xcopy_parse_segdesc_02._entry_ptr.65 = internal global ptr @target_xcopy_parse_segdesc_02._entry.63, section ".printk_index", align 4
@target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.62, ptr @.str.3, ptr @.str.66, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"XCOPY seg desc 0x02: desc_len: %hu stdi: %hu dtdi: %hu, DC: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.62, ptr @.str.3, ptr @.str.67, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"XCOPY seg desc 0x02: nolb: %hu src_lba: %llu dst_lba: %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@target_xcopy_parse_target_descriptors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013XCOPY target descriptor list length is not multiple of %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"target_xcopy_parse_target_descriptors\00", [58 x i8] zeroinitializer }, align 32
@target_xcopy_parse_target_descriptors._entry_ptr = internal global ptr @target_xcopy_parse_target_descriptors._entry, section ".printk_index", align 4
@target_xcopy_parse_target_descriptors._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013XCOPY target descriptor supports a maximum two src/dest descriptors, tdll: %hu too large..\0A\00", [34 x i8] zeroinitializer }, align 32
@target_xcopy_parse_target_descriptors._entry_ptr.72 = internal global ptr @target_xcopy_parse_target_descriptors._entry.70, section ".printk_index", align 4
@target_xcopy_parse_target_descriptors._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.3, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013XCOPY unsupported descriptor type code: 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@target_xcopy_parse_target_descriptors._entry_ptr.75 = internal global ptr @target_xcopy_parse_target_descriptors._entry.73, section ".printk_index", align 4
@target_xcopy_parse_target_descriptors._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013XCOPY CSCD descriptor IDs not found in CSCD list - stdi: %hu dtdi: %hu\0A\00", [54 x i8] zeroinitializer }, align 32
@target_xcopy_parse_target_descriptors._entry_ptr.78 = internal global ptr @target_xcopy_parse_target_descriptors._entry.76, section ".printk_index", align 4
@target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.3, ptr @.str.79, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"XCOPY TGT desc: Source dev: %p NAA IEEE WWN: 0x%16phN\0A\00", [41 x i8] zeroinitializer }, align 32
@target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.3, ptr @.str.80, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"XCOPY TGT desc: Dest dev: %p NAA IEEE WWN: 0x%16phN\0A\00", [43 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"target_xcopy_parse_tiddesc_e4\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"XCOPY 0xe4: RELATIVE INITIATOR PORT IDENTIFIER: %hu\0A\00", [43 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013XCOPY 0xe4: code set of non binary type not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4._entry_ptr = internal global ptr @target_xcopy_parse_tiddesc_e4._entry, section ".printk_index", align 4
@target_xcopy_parse_tiddesc_e4._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.81, ptr @.str.3, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013XCOPY 0xe4: association other than LUN not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4._entry_ptr.86 = internal global ptr @target_xcopy_parse_tiddesc_e4._entry.84, section ".printk_index", align 4
@target_xcopy_parse_tiddesc_e4._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.81, ptr @.str.3, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013XCOPY 0xe4: designator type unsupported: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4._entry_ptr.89 = internal global ptr @target_xcopy_parse_tiddesc_e4._entry.87, section ".printk_index", align 4
@target_xcopy_parse_tiddesc_e4._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.81, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013XCOPY 0xe4: invalid desig_len: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4._entry_ptr.92 = internal global ptr @target_xcopy_parse_tiddesc_e4._entry.90, section ".printk_index", align 4
@target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.81, ptr @.str.3, ptr @.str.93, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"XCOPY 0xe4: desig_len: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.81, ptr @.str.3, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013XCOPY 0xe4: Unsupported DESIGNATOR TYPE: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4._entry_ptr.96 = internal global ptr @target_xcopy_parse_tiddesc_e4._entry.94, section ".printk_index", align 4
@target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.81, ptr @.str.3, ptr @.str.97, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"XCOPY 0xe4: ignoring CSCD entry %d - neither src nor dest\0A\00", [37 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.81, ptr @.str.3, ptr @.str.98, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"XCOPY 0xe4: Set xop->src_dev %p from source received xop\0A\00", [38 x i8] zeroinitializer }, align 32
@target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.81, ptr @.str.3, ptr @.str.99, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"XCOPY 0xe4: Set xop->dst_dev: %p from destination received xop\0A\00", [32 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug161 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"target_xcopy_locate_se_dev_e4\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"XCOPY 0xe4: searching for: %*ph\0A\00", [63 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4.__warned.103 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.100, ptr @.str.3, ptr @.str.105, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"lun_ref held for se_dev: %p se_dev->se_dev_group: %p\0A\00", [42 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.100, ptr @.str.3, ptr @.str.106, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unable to locate 0xe4 descriptor for EXTENDED_COPY\0A\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.109, ptr @.str.3, ptr @.str.110, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"target_xcopy_locate_se_dev_e4_iter\00", [61 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"XCOPY: emulate_3pc disabled on se_dev %p\0A\00", [54 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.109, ptr @.str.3, ptr @.str.111, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"XCOPY: skip non-matching: %*ph\0A\00", [32 x i8] zeroinitializer }, align 32
@target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.109, ptr @.str.3, ptr @.str.112, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"XCOPY 0xe4: located se_dev: %p\0A\00", [32 x i8] zeroinitializer }, align 32
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@target_xcopy_read_source.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"target_xcopy_read_source\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"XCOPY: Built READ_16: LBA: %llu Sectors: %u Length: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@target_xcopy_read_source.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.115, ptr @.str.3, ptr @.str.117, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"XCOPY-READ: Saved xop->xop_data_sg: %p, num: %u for READ memory\0A\00", [63 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@target_xcopy_setup_pt_cmd.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.119, ptr @.str.3, ptr @.str.120, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"target_xcopy_setup_pt_cmd\00", [38 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Setup PASSTHROUGH_NOALLOC t_data_sg: %p t_data_nents: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@target_xcopy_issue_pt_cmd.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.121, ptr @.str.3, ptr @.str.122, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"target_xcopy_issue_pt_cmd\00", [38 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"target_xcopy_issue_pt_cmd(): SCSI status: 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@target_xcopy_write_destination.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"target_xcopy_write_destination\00", [33 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"XCOPY: Built WRITE_16: LBA: %llu Sectors: %u Length: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.125, ptr @.str.3, ptr @.str.126, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xcopy_pt_undepend_remotedev\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"putting dst lun_ref for %p\0A\00", [36 x i8] zeroinitializer }, align 32
@xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.125, ptr @.str.3, ptr @.str.127, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"putting src lun_ref for %p\0A\00", [36 x i8] zeroinitializer }, align 32
@target_rcr_operating_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013transport_kmap_data_sg failed in target_rcr_operating_parameters\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"target_rcr_operating_parameters\00", [32 x i8] zeroinitializer }, align 32
@target_rcr_operating_parameters._entry_ptr = internal global ptr @target_rcr_operating_parameters._entry, section ".printk_index", align 4
@target_rcr_operating_parameters._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.3, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Receive Copy Results Op Parameters length too small: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@target_rcr_operating_parameters._entry_ptr.132 = internal global ptr @target_rcr_operating_parameters._entry.130, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 466, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant [9 x i8] c"xcopy_wq\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 32, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 468, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"xcopy_pt_tpg\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 396, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"xcopy_pt_tfo\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 448, i32 44 }
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"xcopy_pt_nacl\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 398, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"xcopy_pt_sess\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 397, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 882, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 888, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 897, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 906, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1014, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1018, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1031, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 449, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 421, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 703, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 705, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 727, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 735, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 738, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 747, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 758, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 760, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 763, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 779, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 799, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 812, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 820, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 825, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 832, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 846, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 855, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 864, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 345, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 351, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 373, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 306, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 316, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 321, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 327, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 214, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 220, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 250, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 271, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 287, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 289, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 125, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 130, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 134, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 138, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 148, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 151, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 156, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 162, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 176, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 193, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 82, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 87, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 91, i32 14 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 105, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 111, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.470, i32 695, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 50, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 59, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 63, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 280, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.470, i32 723, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 601, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 614, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 87, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 554, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 574, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 646, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 408, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 410, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 924, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.527 = private constant [38 x i8] c"../drivers/target/target_core_xcopy.c\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 930, i32 3 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @target_do_receive_copy_results._entry, ptr @target_do_receive_copy_results._entry.17, ptr @target_do_receive_copy_results._entry_ptr, ptr @target_do_receive_copy_results._entry_ptr.19, ptr @target_do_xcopy._entry, ptr @target_do_xcopy._entry.6, ptr @target_do_xcopy._entry.9, ptr @target_do_xcopy._entry_ptr, ptr @target_do_xcopy._entry_ptr.11, ptr @target_do_xcopy._entry_ptr.8, ptr @target_parse_xcopy_cmd._entry, ptr @target_parse_xcopy_cmd._entry.38, ptr @target_parse_xcopy_cmd._entry.41, ptr @target_parse_xcopy_cmd._entry.44, ptr @target_parse_xcopy_cmd._entry.49, ptr @target_parse_xcopy_cmd._entry_ptr, ptr @target_parse_xcopy_cmd._entry_ptr.40, ptr @target_parse_xcopy_cmd._entry_ptr.43, ptr @target_parse_xcopy_cmd._entry_ptr.46, ptr @target_parse_xcopy_cmd._entry_ptr.51, ptr @target_rcr_operating_parameters._entry, ptr @target_rcr_operating_parameters._entry.130, ptr @target_rcr_operating_parameters._entry_ptr, ptr @target_rcr_operating_parameters._entry_ptr.132, ptr @target_xcopy_do_work._entry, ptr @target_xcopy_do_work._entry_ptr, ptr @target_xcopy_parse_segdesc_02._entry, ptr @target_xcopy_parse_segdesc_02._entry.63, ptr @target_xcopy_parse_segdesc_02._entry_ptr, ptr @target_xcopy_parse_segdesc_02._entry_ptr.65, ptr @target_xcopy_parse_segment_descriptors._entry, ptr @target_xcopy_parse_segment_descriptors._entry.55, ptr @target_xcopy_parse_segment_descriptors._entry.58, ptr @target_xcopy_parse_segment_descriptors._entry_ptr, ptr @target_xcopy_parse_segment_descriptors._entry_ptr.57, ptr @target_xcopy_parse_segment_descriptors._entry_ptr.60, ptr @target_xcopy_parse_target_descriptors._entry, ptr @target_xcopy_parse_target_descriptors._entry.70, ptr @target_xcopy_parse_target_descriptors._entry.73, ptr @target_xcopy_parse_target_descriptors._entry.76, ptr @target_xcopy_parse_target_descriptors._entry_ptr, ptr @target_xcopy_parse_target_descriptors._entry_ptr.72, ptr @target_xcopy_parse_target_descriptors._entry_ptr.75, ptr @target_xcopy_parse_target_descriptors._entry_ptr.78, ptr @target_xcopy_parse_tiddesc_e4._entry, ptr @target_xcopy_parse_tiddesc_e4._entry.84, ptr @target_xcopy_parse_tiddesc_e4._entry.87, ptr @target_xcopy_parse_tiddesc_e4._entry.90, ptr @target_xcopy_parse_tiddesc_e4._entry.94, ptr @target_xcopy_parse_tiddesc_e4._entry_ptr, ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.86, ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.89, ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.92, ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.96, ptr @target_xcopy_setup_pt._entry, ptr @target_xcopy_setup_pt._entry_ptr, ptr @.str, ptr @xcopy_wq, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xcopy_pt_tpg, ptr @xcopy_pt_tfo, ptr @xcopy_pt_nacl, ptr @xcopy_pt_sess, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @target_do_xcopy.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @target_xcopy_do_work._rs, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @target_xcopy_locate_se_dev_e4._rs, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @init_completion.__key, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcopy_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_setup_pt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcopy_pt_tpg to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcopy_pt_tfo to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcopy_pt_nacl to i32), i32 932, i32 1184, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xcopy_pt_sess to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_do_xcopy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_do_xcopy._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_do_xcopy._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_do_xcopy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_do_receive_copy_results._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_do_receive_copy_results._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_do_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_do_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_parse_xcopy_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_parse_xcopy_cmd._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_parse_xcopy_cmd._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_parse_xcopy_cmd._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_parse_xcopy_cmd._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_segment_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_segment_descriptors._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_segment_descriptors._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_segdesc_02._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_segdesc_02._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_target_descriptors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_target_descriptors._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_target_descriptors._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_target_descriptors._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_tiddesc_e4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_tiddesc_e4._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_tiddesc_e4._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_tiddesc_e4._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_parse_tiddesc_e4._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_xcopy_locate_se_dev_e4._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_rcr_operating_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_rcr_operating_parameters._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_xcopy_setup_pt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0) #11
  store ptr %call, ptr @xcopy_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr @xcopy_pt_tpg, i32 0, i32 832)
  store volatile ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 6), ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 6), align 4
  store ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 6), ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 6, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 9), ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 9), align 4
  store ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 9), ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 9, i32 1), align 4
  store ptr @xcopy_pt_tfo, ptr getelementptr inbounds (%struct.se_portal_group, ptr @xcopy_pt_tpg, i32 0, i32 10), align 4
  %1 = call ptr @memset(ptr @xcopy_pt_nacl, i32 0, i32 932)
  store volatile ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 18), ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 18), align 4
  store ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 18), ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 18, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 19), ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 19), align 4
  store ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 19), ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 19, i32 1), align 4
  %2 = call ptr @memset(ptr @xcopy_pt_sess, i32 0, i32 264)
  %call2 = tail call i32 @transport_init_session(ptr noundef nonnull @xcopy_pt_sess) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %destroy_wq, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @xcopy_pt_tpg, ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 10), align 4
  store ptr @xcopy_pt_sess, ptr getelementptr inbounds (%struct.se_node_acl, ptr @xcopy_pt_nacl, i32 0, i32 9), align 4
  store ptr @xcopy_pt_tpg, ptr getelementptr inbounds (%struct.se_session, ptr @xcopy_pt_sess, i32 0, i32 5), align 4
  store ptr @xcopy_pt_nacl, ptr getelementptr inbounds (%struct.se_session, ptr @xcopy_pt_sess, i32 0, i32 4), align 8
  br label %cleanup

destroy_wq:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = load ptr, ptr @xcopy_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #11
  store ptr null, ptr @xcopy_wq, align 4
  br label %cleanup

cleanup:                                          ; preds = %destroy_wq, %if.end4, %do.end
  %retval.0 = phi i32 [ %call2, %destroy_wq ], [ 0, %if.end4 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_init_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @target_xcopy_release_pt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xcopy_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @destroy_workqueue(ptr noundef nonnull %0) #11
  tail call void @transport_uninit_session(ptr noundef nonnull @xcopy_pt_sess) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_uninit_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_do_xcopy(ptr noundef %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %emulate_3pc = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 10
  %2 = ptrtoint ptr %emulate_3pc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %emulate_3pc, align 8, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 30
  %4 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %9 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @target_complete_cmd(ptr noundef %se_cmd, i8 noundef zeroext 0) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp14 = icmp ult i32 %10, 16
  br i1 %cmp14, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %10, i32 noundef 16) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 152) #15
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %xop_se_cmd = getelementptr inbounds %struct.xcopy_op, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %xop_se_cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %se_cmd, ptr %xop_se_cmd, align 4
  %xop_work = getelementptr inbounds %struct.xcopy_op, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %xop_work, i32 noundef 0) #11
  %13 = ptrtoint ptr %xop_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %xop_work, align 4
  %lockdep_map = getelementptr inbounds %struct.xcopy_op, ptr %call7.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @target_do_xcopy.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry32 = getelementptr inbounds %struct.xcopy_op, ptr %call7.i.i, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry32, ptr %entry32, align 8
  %prev.i = getelementptr inbounds %struct.xcopy_op, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xcopy_op, ptr %call7.i.i, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @target_xcopy_do_work, ptr %func, align 8
  %17 = load ptr, ptr @xcopy_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %xop_work) #11
  br i1 %call.i, label %if.end27.cleanup_crit_edge, label %land.rhs

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %if.end27
  %.b102 = load i1, ptr @target_do_xcopy.__already_done, align 1
  br i1 %.b102, label %land.rhs.free_crit_edge, label %if.then47, !prof !296

land.rhs.free_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.then47:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @target_do_xcopy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 907, i32 noundef 9, ptr noundef null) #11
  br label %free

free:                                             ; preds = %if.then47, %land.rhs.free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end19, %if.then11, %do.end5, %do.end
  %retval.0 = phi i32 [ 2, %do.end5 ], [ 0, %if.then11 ], [ 19, %do.end19 ], [ 2, %do.end ], [ 18, %if.end23.cleanup_crit_edge ], [ 18, %free ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @target_xcopy_do_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  %xop_se_cmd = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %xop_se_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xop_se_cmd, align 4
  %call = tail call fastcc i32 @target_parse_xcopy_cmd(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.err_free_crit_edge

entry.err_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end:                                           ; preds = %entry
  %src_dev1 = getelementptr i8, ptr %work, i32 -100
  %2 = ptrtoint ptr %src_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_dev1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %lor.lhs.false.critedge

land.rhs:                                         ; preds = %if.end
  %.b447 = load i1, ptr @target_xcopy_do_work.__already_done, align 1
  br i1 %.b447, label %land.rhs.err_free_crit_edge, label %if.then10, !prof !296

land.rhs.err_free_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @target_xcopy_do_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 682, i32 noundef 9, ptr noundef null) #11
  br label %err_free

lor.lhs.false.critedge:                           ; preds = %if.end
  %dst_dev43 = getelementptr i8, ptr %work, i32 -80
  %4 = ptrtoint ptr %dst_dev43 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst_dev43, align 4
  %tobool44.not = icmp eq ptr %5, null
  br i1 %tobool44.not, label %land.rhs53, label %if.end101

land.rhs53:                                       ; preds = %lor.lhs.false.critedge
  %.b445446 = load i1, ptr @target_xcopy_do_work.__already_done.23, align 1
  br i1 %.b445446, label %land.rhs53.err_free_crit_edge, label %if.then64, !prof !296

land.rhs53.err_free_crit_edge:                    ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.then64:                                        ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @target_xcopy_do_work.__already_done.23, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 682, i32 noundef 9, ptr noundef null) #11
  br label %err_free

if.end101:                                        ; preds = %lor.lhs.false.critedge
  %src_lba104 = getelementptr i8, ptr %work, i32 -36
  %6 = ptrtoint ptr %src_lba104 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %src_lba104, align 8
  %dst_lba105 = getelementptr i8, ptr %work, i32 -28
  %8 = ptrtoint ptr %dst_lba105 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dst_lba105, align 8
  %nolb106 = getelementptr i8, ptr %work, i32 -16
  %10 = ptrtoint ptr %nolb106 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nolb106, align 4
  %conv = zext i16 %11 to i64
  %add = add i64 %7, %conv
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 39, i32 22
  %12 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_max_sectors, align 4
  %hw_max_sectors108 = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 39, i32 22
  %14 = ptrtoint ptr %hw_max_sectors108 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_max_sectors108, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 4096)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then143)) #11
          to label %do.body149 [label %if.then143], !srcloc !297

if.then143:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %conv144 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.25, i32 noundef %conv144, i32 noundef %17, i64 noundef %add) #11
  br label %do.body149

do.body149:                                       ; preds = %if.then143, %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then161)) #11
          to label %do.end164 [label %if.then161], !srcloc !297

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.26, i64 noundef %7, i64 noundef %9) #11
  br label %do.end164

do.end164:                                        ; preds = %if.then161, %do.body149
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %add)
  %cmp165494 = icmp ult i64 %7, %add
  br i1 %cmp165494, label %while.body.lr.ph, label %do.end164.while.end_crit_edge

do.end164.while.end_crit_edge:                    ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end164
  %block_size = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 39, i32 21
  %xop_data_bytes = getelementptr i8, ptr %work, i32 -12
  %xop_data_sg = getelementptr i8, ptr %work, i32 -4
  %xop_data_nents = getelementptr i8, ptr %work, i32 -8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %src_lba.0498 = phi i64 [ %7, %while.body.lr.ph ], [ %add217, %cleanup.while.body_crit_edge ]
  %dst_lba.0497 = phi i64 [ %9, %while.body.lr.ph ], [ %add258, %cleanup.while.body_crit_edge ]
  %nolb.0496 = phi i16 [ %11, %while.body.lr.ph ], [ %conv281, %cleanup.while.body_crit_edge ]
  %copied_nolb.0495 = phi i16 [ 0, %while.body.lr.ph ], [ %conv278, %cleanup.while.body_crit_edge ]
  %conv168 = zext i16 %nolb.0496 to i32
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %conv168)
  %19 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_size, align 8
  %mul = mul i32 %20, %18
  %21 = ptrtoint ptr %xop_data_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xop_data_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %22)
  %cmp181.not = icmp eq i32 %mul, %22
  br i1 %cmp181.not, label %while.body.do.body193_crit_edge, label %if.then183

while.body.do.body193_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body193

if.then183:                                       ; preds = %while.body
  %23 = ptrtoint ptr %xop_data_sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xop_data_sg, align 8
  %25 = ptrtoint ptr %xop_data_nents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xop_data_nents, align 4
  tail call void @target_free_sgl(ptr noundef %24, i32 noundef %26) #11
  %call186 = tail call i32 @target_alloc_sgl(ptr noundef %xop_data_sg, ptr noundef %xop_data_nents, i32 noundef %mul, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then183.out_crit_edge, label %if.end190

if.then183.out_crit_edge:                         ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end190:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %xop_data_bytes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %xop_data_bytes, align 8
  br label %do.body193

do.body193:                                       ; preds = %if.end190, %while.body.do.body193_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then205)) #11
          to label %do.end209 [label %if.then205], !srcloc !297

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug198, ptr noundef nonnull @.str.27, ptr noundef nonnull %3, i64 noundef %src_lba.0498, i32 noundef %18) #11
  br label %do.end209

do.end209:                                        ; preds = %if.then205, %do.body193
  %call211 = tail call fastcc i32 @target_xcopy_read_source(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull %3, i64 noundef %src_lba.0498, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %do.end209.out_crit_edge, label %if.end215

do.end209.out_crit_edge:                          ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end215:                                        ; preds = %do.end209
  %conv216 = zext i32 %18 to i64
  %add217 = add i64 %src_lba.0498, %conv216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then230)) #11
          to label %do.body234 [label %if.then230], !srcloc !297

if.then230:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.28, i64 noundef %add217) #11
  br label %do.body234

do.body234:                                       ; preds = %if.then230, %if.end215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then246)) #11
          to label %do.end250 [label %if.then246], !srcloc !297

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.29, ptr noundef nonnull %5, i64 noundef %dst_lba.0497, i32 noundef %18) #11
  br label %do.end250

do.end250:                                        ; preds = %if.then246, %do.body234
  %call252 = tail call fastcc i32 @target_xcopy_write_destination(ptr noundef %1, ptr noundef %add.ptr, ptr noundef nonnull %5, i64 noundef %dst_lba.0497, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %cmp253 = icmp slt i32 %call252, 0
  br i1 %cmp253, label %do.end250.out_crit_edge, label %if.end256

do.end250.out_crit_edge:                          ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end256:                                        ; preds = %do.end250
  %add258 = add i64 %dst_lba.0497, %conv216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then271)) #11
          to label %cleanup [label %if.then271], !srcloc !297

if.then271:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.30, i64 noundef %add258) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then271, %if.end256
  %28 = trunc i32 %18 to i16
  %conv278 = add i16 %copied_nolb.0495, %28
  %conv281 = sub i16 %nolb.0496, %28
  %cmp165 = icmp ult i64 %add217, %add
  br i1 %cmp165, label %cleanup.while.body_crit_edge, label %while.end.loopexit

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.loopexit:                               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i16 %conv278 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %do.end164.while.end_crit_edge
  %copied_nolb.0.lcssa = phi i32 [ 0, %do.end164.while.end_crit_edge ], [ %phi.cast, %while.end.loopexit ]
  %dst_lba.0.lcssa = phi i64 [ %9, %do.end164.while.end_crit_edge ], [ %add258, %while.end.loopexit ]
  %src_lba.0.lcssa = phi i64 [ %7, %do.end164.while.end_crit_edge ], [ %add217, %while.end.loopexit ]
  tail call fastcc void @xcopy_pt_undepend_remotedev(ptr noundef %add.ptr)
  %xop_data_sg283 = getelementptr i8, ptr %work, i32 -4
  %29 = ptrtoint ptr %xop_data_sg283 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xop_data_sg283, align 8
  %xop_data_nents284 = getelementptr i8, ptr %work, i32 -8
  %31 = ptrtoint ptr %xop_data_nents284 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xop_data_nents284, align 4
  tail call void @target_free_sgl(ptr noundef %30, i32 noundef %32) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then297)) #11
          to label %do.body301 [label %if.then297], !srcloc !297

if.then297:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.31, i64 noundef %src_lba.0.lcssa, i64 noundef %dst_lba.0.lcssa) #11
  br label %do.body301

do.body301:                                       ; preds = %if.then297, %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then313)) #11
          to label %do.body322 [label %if.then313], !srcloc !297

if.then313:                                       ; preds = %do.body301
  call void @__sanitizer_cov_trace_pc() #13
  %block_size317 = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 39, i32 21
  %33 = ptrtoint ptr %block_size317 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %block_size317, align 8
  %mul318 = mul i32 %34, %copied_nolb.0.lcssa
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.32, i32 noundef %copied_nolb.0.lcssa, i32 noundef %mul318) #11
  br label %do.body322

do.body322:                                       ; preds = %if.then313, %do.body301
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_do_work, %if.then334)) #11
          to label %do.end337 [label %if.then334], !srcloc !297

if.then334:                                       ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_do_work.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.33) #11
  br label %do.end337

do.end337:                                        ; preds = %if.then334, %do.body322
  tail call void @target_complete_cmd(ptr noundef %1, i8 noundef zeroext 0) #11
  br label %cleanup349

out:                                              ; preds = %do.end250.out_crit_edge, %do.end209.out_crit_edge, %if.then183.out_crit_edge
  %rc.0.ph = phi i32 [ %call252, %do.end250.out_crit_edge ], [ %call211, %do.end209.out_crit_edge ], [ %call186, %if.then183.out_crit_edge ]
  tail call fastcc void @xcopy_pt_undepend_remotedev(ptr noundef %add.ptr)
  %35 = ptrtoint ptr %xop_data_sg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xop_data_sg, align 8
  %37 = ptrtoint ptr %xop_data_nents to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xop_data_nents, align 4
  tail call void @target_free_sgl(ptr noundef %36, i32 noundef %38) #11
  br label %err_free

err_free:                                         ; preds = %out, %if.then64, %land.rhs53.err_free_crit_edge, %if.then10, %land.rhs.err_free_crit_edge, %entry.err_free_crit_edge
  %sense_rc.0 = phi i32 [ %call, %entry.err_free_crit_edge ], [ 24, %out ], [ 9, %land.rhs53.err_free_crit_edge ], [ 9, %land.rhs.err_free_crit_edge ], [ 9, %if.then64 ], [ 9, %if.then10 ]
  %rc.1 = phi i32 [ 0, %entry.err_free_crit_edge ], [ %rc.0.ph, %out ], [ 0, %land.rhs53.err_free_crit_edge ], [ 0, %land.rhs.err_free_crit_edge ], [ 0, %if.then64 ], [ 0, %if.then10 ]
  tail call void @kfree(ptr noundef %add.ptr) #11
  %call340 = tail call i32 @___ratelimit(ptr noundef nonnull @target_xcopy_do_work._rs, ptr noundef nonnull @.str.24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %err_free.if.end348_crit_edge, label %do.end345

err_free.if.end348_crit_edge:                     ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end348

do.end345:                                        ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #13
  %call347 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %rc.1, i32 noundef %sense_rc.0) #14
  br label %if.end348

if.end348:                                        ; preds = %do.end345, %err_free.if.end348_crit_edge
  tail call void @target_complete_cmd_with_sense(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %sense_rc.0) #11
  br label %cleanup349

cleanup349:                                       ; preds = %if.end348, %do.end337
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_do_receive_copy_results(ptr noundef %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 30
  %0 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx1 = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = and i8 %3, 31
  %and = zext i8 %4 to i32
  %arrayidx2 = getelementptr i8, ptr %1, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_do_receive_copy_results.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_do_receive_copy_results, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %6 to i32
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %7 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_do_receive_copy_results.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.15, i32 noundef %and, i32 noundef %conv3, i32 noundef %8) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cond = icmp eq i8 %4, 3
  br i1 %cond, label %sw.bb, label %do.end18

sw.bb:                                            ; preds = %if.end13
  %call.i = tail call ptr @transport_kmap_data_sg(ptr noundef %se_cmd) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #14
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %data_length.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %9 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %10)
  %cmp.i = icmp ult i32 %10, 54
  br i1 %cmp.i, label %do.end5.i, label %if.end9.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %10) #14
  tail call void @transport_kunmap_data_sg(ptr noundef %se_cmd) #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call.i, i32 8
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 2, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr i8, ptr %call.i, i32 10
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 1, ptr %arrayidx11.i, align 1
  %arrayidx12.i = getelementptr i8, ptr %call.i, i32 12
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 1024, ptr %arrayidx12.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %call.i, i32 16
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 268435456, ptr %arrayidx13.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %call.i, i32 20
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %arrayidx14.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %call.i, i32 24
  %17 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %arrayidx15.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %call.i, i32 28
  %18 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %arrayidx16.i, align 1
  %arrayidx17.i = getelementptr i8, ptr %call.i, i32 34
  %19 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 1, ptr %arrayidx17.i, align 1
  %arrayidx18.i = getelementptr i8, ptr %call.i, i32 36
  %20 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %call.i, i32 37
  %21 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 9, ptr %arrayidx19.i, align 1
  %arrayidx20.i = getelementptr i8, ptr %call.i, i32 38
  %22 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 9, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %call.i, i32 39
  %23 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 9, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %call.i, i32 43
  %24 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %arrayidx22.i, align 1
  %arrayidx23.i = getelementptr i8, ptr %call.i, i32 44
  %25 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %call.i, i32 45
  %26 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -28, ptr %arrayidx24.i, align 1
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 42, ptr %call.i, align 1
  tail call void @transport_kunmap_data_sg(ptr noundef %se_cmd) #11
  tail call void @target_complete_cmd(ptr noundef %se_cmd, i8 noundef zeroext 0) #11
  br label %cleanup

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end9.i, %do.end5.i, %do.end.i, %do.end10
  %retval.0 = phi i32 [ 8, %do.end10 ], [ 8, %do.end18 ], [ 8, %do.end5.i ], [ 0, %if.end9.i ], [ 18, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xcopy_pt_check_stop_free(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xpt_passthrough_sem = getelementptr inbounds %struct.xcopy_pt_cmd, ptr %se_cmd, i32 0, i32 1
  tail call void @complete(ptr noundef %xpt_passthrough_sem) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xcopy_pt_release_cmd(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcopy_pt_release_cmd.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcopy_pt_release_cmd, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xcopy_pt_release_cmd.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.22, ptr noundef %se_cmd) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xcopy_pt_write_pending(ptr nocapture noundef readnone %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xcopy_pt_get_cmd_state(ptr nocapture noundef readnone %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xcopy_pt_queue_data_in(ptr nocapture noundef readnone %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xcopy_pt_queue_status(ptr nocapture noundef readnone %se_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_parse_xcopy_cmd(ptr noundef %xop) unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xop_se_cmd = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 1
  %0 = ptrtoint ptr %xop_se_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xop_se_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9, ptr %ret, align 4
  %call = tail call ptr @transport_kmap_data_sg(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call, align 1
  %conv = zext i8 %4 to i32
  %arrayidx2 = getelementptr i8, ptr %call, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 3
  %9 = zext i8 %8 to i32
  %arrayidx4 = getelementptr i8, ptr %call, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr i8, ptr %call, i32 8
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %arrayidx6, align 1
  %conv8 = zext i16 %11 to i32
  %add = add i32 %13, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add)
  %cmp = icmp ugt i32 %add, 1024
  br i1 %cmp, label %do.end13, label %if.end18

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %add, i32 noundef 1024) #14
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 19, ptr %ret, align 4
  br label %if.then120

if.end18:                                         ; preds = %if.end
  %arrayidx19 = getelementptr i8, ptr %call, i32 12
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp21.not = icmp eq i32 %16, 0
  br i1 %cmp21.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %if.then120

if.end29:                                         ; preds = %if.end18
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_length, align 4
  %add32 = add nuw nsw i32 %add, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add32)
  %cmp34 = icmp ult i32 %18, %add32
  br i1 %cmp34, label %do.end39, label %do.body45

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %18, i32 noundef %conv8, i32 noundef %13, i32 noundef 0) #14
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 19, ptr %ret, align 4
  br label %if.then120

do.body45:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_parse_xcopy_cmd, %if.then51)) #11
          to label %do.end55 [label %if.then51], !srcloc !297

if.then51:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %9, i32 noundef %conv8, i32 noundef %13, i32 noundef 0) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body45
  %arrayidx56 = getelementptr i8, ptr %call, i32 16
  %add.ptr = getelementptr i8, ptr %arrayidx56, i32 %conv8
  %rem.i = urem i32 %13, 28
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 28) #14
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %13)
  %cmp1.i = icmp ugt i32 %13, 28
  br i1 %cmp1.i, label %do.end5.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp937.not.i = icmp eq i32 %13, 0
  br i1 %cmp937.not.i, label %while.cond.preheader.i.if.then120_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.then120_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef 1, i32 noundef %13) #14
  br label %cleanup.sink.split.i

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %desc.040.i = phi ptr [ %add.ptr.i, %if.end14.i.while.body.i_crit_edge ], [ %add.ptr, %while.cond.preheader.i.while.body.i_crit_edge ]
  %start.039.i = phi i32 [ %add.i, %if.end14.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %ret.038.i = phi i32 [ %inc.i, %if.end14.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %21 = ptrtoint ptr %desc.040.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %desc.040.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cond.i = icmp eq i8 %22, 2
  br i1 %cond.i, label %sw.bb.i, label %do.end17.i

sw.bb.i:                                          ; preds = %while.body.i
  %call10.i = tail call fastcc i32 @target_xcopy_parse_segdesc_02(ptr noundef %xop, ptr noundef %desc.040.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %sw.bb.i.if.then120_crit_edge, label %if.end14.i

sw.bb.i.if.then120_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

if.end14.i:                                       ; preds = %sw.bb.i
  %inc.i = add i32 %ret.038.i, 1
  %add.i = add i32 %start.039.i, 28
  %add.ptr.i = getelementptr i8, ptr %desc.040.i, i32 28
  %cmp9.i = icmp ult i32 %add.i, %13
  br i1 %cmp9.i, label %if.end14.i.while.body.i_crit_edge, label %target_xcopy_parse_segment_descriptors.exit

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end17.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %22 to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv.i) #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end17.i, %do.end5.i, %do.end.i
  %.sink.i = phi i32 [ 28, %do.end17.i ], [ 27, %do.end5.i ], [ 28, %do.end.i ]
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %ret, align 4
  br label %if.then120

target_xcopy_parse_segment_descriptors.exit:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %ret.038.i)
  %cmp59 = icmp ugt i32 %ret.038.i, 2147483646
  br i1 %cmp59, label %target_xcopy_parse_segment_descriptors.exit.if.then120_crit_edge, label %do.body63

target_xcopy_parse_segment_descriptors.exit.if.then120_crit_edge: ; preds = %target_xcopy_parse_segment_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

do.body63:                                        ; preds = %target_xcopy_parse_segment_descriptors.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_parse_xcopy_cmd, %if.then75)) #11
          to label %do.end78 [label %if.then75], !srcloc !297

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %inc.i, 28
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.48, i32 noundef %inc.i, i32 noundef %mul) #11
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %do.body63
  %call80 = call fastcc i32 @target_xcopy_parse_target_descriptors(ptr noundef %1, ptr noundef %xop, ptr noundef %arrayidx56, i16 noundef zeroext %11, ptr noundef nonnull %ret)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 1
  br i1 %cmp81, label %do.end78.if.then120_crit_edge, label %if.end84

do.end78.if.then120_crit_edge:                    ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

if.end84:                                         ; preds = %do.end78
  %src_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 2
  %24 = ptrtoint ptr %src_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src_dev, align 8
  %block_size = getelementptr inbounds %struct.se_device, ptr %25, i32 0, i32 39, i32 21
  %26 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %block_size, align 8
  %dst_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 4
  %28 = ptrtoint ptr %dst_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst_dev, align 4
  %block_size86 = getelementptr inbounds %struct.se_device, ptr %29, i32 0, i32 39, i32 21
  %30 = ptrtoint ptr %block_size86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %block_size86, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp87.not = icmp eq i32 %27, %31
  br i1 %cmp87.not, label %do.body102, label %do.end92

do.end92:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %27, i32 noundef %31) #14
  tail call fastcc void @xcopy_pt_undepend_remotedev(ptr noundef %xop)
  %32 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10, ptr %ret, align 4
  br label %if.then120

do.body102:                                       ; preds = %if.end84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_parse_xcopy_cmd, %if.then114)) #11
          to label %do.end118 [label %if.then114], !srcloc !297

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  %mul115 = shl i32 %call80, 5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.52, i32 noundef %call80, i32 noundef %mul115) #11
  br label %do.end118

do.end118:                                        ; preds = %if.then114, %do.body102
  tail call void @transport_kunmap_data_sg(ptr noundef %1) #11
  br label %cleanup

if.then120:                                       ; preds = %do.end92, %do.end78.if.then120_crit_edge, %target_xcopy_parse_segment_descriptors.exit.if.then120_crit_edge, %cleanup.sink.split.i, %sw.bb.i.if.then120_crit_edge, %while.cond.preheader.i.if.then120_crit_edge, %do.end39, %do.end26, %do.end13
  tail call void @transport_kunmap_data_sg(ptr noundef %1) #11
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %do.end118, %do.end
  %retval.0 = phi i32 [ %34, %if.then120 ], [ 0, %do.end118 ], [ 18, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_free_sgl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_alloc_sgl(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_read_source(ptr nocapture noundef writeonly %ec_cmd, ptr nocapture noundef readonly %xop, ptr noundef %src_dev, i64 noundef %src_lba, i32 noundef %src_sectors) unnamed_addr #0 align 64 {
entry:
  %xpt_cmd = alloca %struct.xcopy_pt_cmd, align 8
  %cdb = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %xpt_cmd) #11
  %block_size = getelementptr inbounds %struct.se_device, ptr %src_dev, i32 0, i32 39, i32 21
  %0 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size, align 8
  %mul = mul i32 %1, %src_sectors
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb) #11
  %2 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 10
  %4 = call ptr @memset(ptr %cdb, i32 255, i32 16)
  %5 = ptrtoint ptr %xop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  %xpt_passthrough_sem = getelementptr inbounds %struct.xcopy_pt_cmd, ptr %xpt_cmd, i32 0, i32 1
  %wait.i = getelementptr inbounds %struct.xcopy_pt_cmd, ptr %xpt_cmd, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %xpt_cmd, i32 0, i32 592)
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @init_completion.__key) #11
  %8 = getelementptr inbounds i8, ptr %cdb, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 15)
  %10 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -120, ptr %cdb, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %src_lba, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %src_sectors, ptr %3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_read_source.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_read_source, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_read_source.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.116, i64 noundef %src_lba, i32 noundef %src_sectors, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sense_buffer = getelementptr inbounds %struct.xcopy_pt_cmd, ptr %xpt_cmd, i32 0, i32 2
  call void @__target_init_cmd(ptr noundef nonnull %xpt_cmd, ptr noundef nonnull @xcopy_pt_tfo, ptr noundef nonnull @xcopy_pt_sess, i32 noundef %mul, i32 noundef 2, i32 noundef 0, ptr noundef %sense_buffer, i64 noundef 0) #11
  %call11 = call fastcc i32 @target_xcopy_setup_pt_cmd(ptr noundef nonnull %xpt_cmd, ptr noundef %xop, ptr noundef %src_dev, ptr noundef nonnull %cdb, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end.out.sink.split_crit_edge, label %do.body16

do.end.out.sink.split_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

do.body16:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_read_source.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_read_source, %if.then28)) #11
          to label %do.end31 [label %if.then28], !srcloc !297

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %xop_data_sg = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 15
  %13 = ptrtoint ptr %xop_data_sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xop_data_sg, align 8
  %xop_data_nents = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 14
  %15 = ptrtoint ptr %xop_data_nents to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xop_data_nents, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_read_source.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.117, ptr noundef %14, i32 noundef %16) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body16
  %call.i = call i32 @transport_generic_new_cmd(ptr noundef nonnull %xpt_cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end31.out.sink.split_crit_edge

do.end31.out.sink.split_crit_edge:                ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

if.end.i:                                         ; preds = %do.end31
  %data_direction.i = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 6
  %17 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @target_execute_cmd(ptr noundef nonnull %xpt_cmd) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %call4.i = call i32 @wait_for_completion_interruptible(ptr noundef %xpt_passthrough_sem) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_issue_pt_cmd.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_read_source, %if.then9.i)) #11
          to label %do.end.i [label %if.then9.i], !srcloc !297

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %scsi_status.i = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 1
  %19 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scsi_status.i, align 4
  %conv.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_issue_pt_cmd.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.122, i32 noundef %conv.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %if.end3.i
  %scsi_status11.i = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 1
  %21 = ptrtoint ptr %scsi_status11.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %scsi_status11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool13.not.i = icmp eq i8 %22, 0
  br i1 %tobool13.not.i, label %do.end.i.out_crit_edge, label %do.end.i.out.sink.split_crit_edge

do.end.i.out.sink.split_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out.sink.split:                                   ; preds = %do.end.i.out.sink.split_crit_edge, %do.end31.out.sink.split_crit_edge, %do.end.out.sink.split_crit_edge
  %rc.0.ph = phi i32 [ %call11, %do.end.out.sink.split_crit_edge ], [ -22, %do.end.i.out.sink.split_crit_edge ], [ -22, %do.end31.out.sink.split_crit_edge ]
  %scsi_status35 = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 1
  %23 = ptrtoint ptr %scsi_status35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scsi_status35, align 4
  %scsi_status36 = getelementptr inbounds %struct.se_cmd, ptr %ec_cmd, i32 0, i32 1
  %25 = ptrtoint ptr %scsi_status36 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %scsi_status36, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %do.end.i.out_crit_edge
  %rc.0 = phi i32 [ 0, %do.end.i.out_crit_edge ], [ %rc.0.ph, %out.sink.split ]
  %call38 = call i32 @transport_generic_free_cmd(ptr noundef nonnull %xpt_cmd, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb) #11
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %xpt_cmd) #11
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_write_destination(ptr nocapture noundef writeonly %ec_cmd, ptr nocapture noundef readonly %xop, ptr noundef %dst_dev, i64 noundef %dst_lba, i32 noundef %dst_sectors) unnamed_addr #0 align 64 {
entry:
  %xpt_cmd = alloca %struct.xcopy_pt_cmd, align 8
  %cdb = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %xpt_cmd) #11
  %block_size = getelementptr inbounds %struct.se_device, ptr %dst_dev, i32 0, i32 39, i32 21
  %0 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size, align 8
  %mul = mul i32 %1, %dst_sectors
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb) #11
  %2 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 10
  %4 = call ptr @memset(ptr %cdb, i32 255, i32 16)
  %5 = ptrtoint ptr %xop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %xpt_passthrough_sem = getelementptr inbounds %struct.xcopy_pt_cmd, ptr %xpt_cmd, i32 0, i32 1
  %wait.i = getelementptr inbounds %struct.xcopy_pt_cmd, ptr %xpt_cmd, i32 0, i32 1, i32 1
  %7 = call ptr @memset(ptr %xpt_cmd, i32 0, i32 592)
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @init_completion.__key) #11
  %8 = getelementptr inbounds i8, ptr %cdb, i32 1
  %9 = call ptr @memset(ptr %8, i32 0, i32 15)
  %10 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -118, ptr %cdb, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %dst_lba, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %dst_sectors, ptr %3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_write_destination.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_write_destination, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_write_destination.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.124, i64 noundef %dst_lba, i32 noundef %dst_sectors, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sense_buffer = getelementptr inbounds %struct.xcopy_pt_cmd, ptr %xpt_cmd, i32 0, i32 2
  call void @__target_init_cmd(ptr noundef nonnull %xpt_cmd, ptr noundef nonnull @xcopy_pt_tfo, ptr noundef nonnull @xcopy_pt_sess, i32 noundef %mul, i32 noundef 1, i32 noundef 0, ptr noundef %sense_buffer, i64 noundef 0) #11
  %call11 = call fastcc i32 @target_xcopy_setup_pt_cmd(ptr noundef nonnull %xpt_cmd, ptr noundef %xop, ptr noundef %dst_dev, ptr noundef nonnull %cdb, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end.out.sink.split_crit_edge, label %if.end15

do.end.out.sink.split_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

if.end15:                                         ; preds = %do.end
  %call.i = call i32 @transport_generic_new_cmd(ptr noundef nonnull %xpt_cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.out.sink.split_crit_edge

if.end15.out.sink.split_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

if.end.i:                                         ; preds = %if.end15
  %data_direction.i = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 6
  %13 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @target_execute_cmd(ptr noundef nonnull %xpt_cmd) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %call4.i = call i32 @wait_for_completion_interruptible(ptr noundef %xpt_passthrough_sem) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_issue_pt_cmd.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_write_destination, %if.then9.i)) #11
          to label %do.end.i [label %if.then9.i], !srcloc !297

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %scsi_status.i = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 1
  %15 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scsi_status.i, align 4
  %conv.i = zext i8 %16 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_issue_pt_cmd.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.122, i32 noundef %conv.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %if.end3.i
  %scsi_status11.i = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 1
  %17 = ptrtoint ptr %scsi_status11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scsi_status11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not.i = icmp eq i8 %18, 0
  br i1 %tobool13.not.i, label %do.end.i.out_crit_edge, label %do.end.i.out.sink.split_crit_edge

do.end.i.out.sink.split_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out.sink.split:                                   ; preds = %do.end.i.out.sink.split_crit_edge, %if.end15.out.sink.split_crit_edge, %do.end.out.sink.split_crit_edge
  %rc.0.ph = phi i32 [ %call11, %do.end.out.sink.split_crit_edge ], [ -22, %do.end.i.out.sink.split_crit_edge ], [ -22, %if.end15.out.sink.split_crit_edge ]
  %scsi_status19 = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 1
  %19 = ptrtoint ptr %scsi_status19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scsi_status19, align 4
  %scsi_status20 = getelementptr inbounds %struct.se_cmd, ptr %ec_cmd, i32 0, i32 1
  %21 = ptrtoint ptr %scsi_status20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %scsi_status20, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %do.end.i.out_crit_edge
  %rc.0 = phi i32 [ 0, %do.end.i.out_crit_edge ], [ %rc.0.ph, %out.sink.split ]
  %call22 = call i32 @transport_generic_free_cmd(ptr noundef nonnull %xpt_cmd, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb) #11
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %xpt_cmd) #11
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xcopy_pt_undepend_remotedev(ptr nocapture noundef readonly %xop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.body, label %do.body4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcopy_pt_undepend_remotedev, %if.then3)) #11
          to label %if.end19 [label %if.then3], !srcloc !297

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dst_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 4
  %2 = ptrtoint ptr %dst_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst_dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.126, ptr noundef %3) #11
  br label %if.end19

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xcopy_pt_undepend_remotedev, %if.then16)) #11
          to label %if.end19 [label %if.then16], !srcloc !297

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %src_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 2
  %4 = ptrtoint ptr %src_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_dev, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.127, ptr noundef %5) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %do.body4, %if.then3, %do.body
  %remote_lun_ref = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 7
  %6 = ptrtoint ptr %remote_lun_ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remote_lun_ref, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !298
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end19.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end19.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end19
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 696, ptr noundef nonnull @.str.108) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end19.rcu_read_lock.exit.i.i_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !296

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !299
  %15 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i2.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, %13
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add15.i.i = add i32 %23, -1
  store i32 %add15.i.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !300
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !301

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #11, !srcloc !302
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.percpu_ref, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !303
  tail call void @llvm.prefetch.p0(ptr %26, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #11, !srcloc !304
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !301

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release.i.i, align 4
  tail call void %31(ptr noundef %7) #11
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 724, ptr noundef nonnull @.str.114) #11
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %32 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i10.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd_with_sense(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_kmap_data_sg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_parse_target_descriptors(ptr nocapture noundef readonly %se_cmd, ptr noundef %xop, ptr nocapture noundef readonly %p, i16 noundef zeroext %tdll, ptr nocapture noundef writeonly %sense_ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %conv = zext i16 %tdll to i32
  %rem = and i32 %conv, 31
  %2 = ptrtoint ptr %sense_ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 9, ptr %sense_ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef 32) #14
  %3 = ptrtoint ptr %sense_ret to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 26, ptr %sense_ret, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %tdll)
  %cmp3 = icmp ugt i16 %tdll, 64
  br i1 %cmp3, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv) #14
  %4 = ptrtoint ptr %sense_ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 25, ptr %sense_ret, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %local_dev_wwn = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 6
  %5 = call ptr @memset(ptr %local_dev_wwn, i32 0, i32 16)
  tail call void @spc_gen_naa_6h_vendor_specific(ptr noundef %1, ptr noundef %local_dev_wwn) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tdll)
  %cmp17135.not = icmp eq i16 %tdll, 0
  br i1 %cmp17135.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %if.end12.while.body_crit_edge
  %conv15138 = phi i32 [ %conv15, %if.end26.while.body_crit_edge ], [ 0, %if.end12.while.body_crit_edge ]
  %desc.0137 = phi ptr [ %add.ptr, %if.end26.while.body_crit_edge ], [ %p, %if.end12.while.body_crit_edge ]
  %cscd_index.0136 = phi i16 [ %inc, %if.end26.while.body_crit_edge ], [ 0, %if.end12.while.body_crit_edge ]
  %6 = ptrtoint ptr %desc.0137 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %desc.0137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -28, i8 %7)
  %cond = icmp eq i8 %7, -28
  br i1 %cond, label %sw.bb, label %do.end31

sw.bb:                                            ; preds = %while.body
  %call22 = tail call fastcc i32 @target_xcopy_parse_tiddesc_e4(ptr noundef %se_cmd, ptr noundef %xop, ptr noundef %desc.0137, i16 noundef zeroext %cscd_index.0136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end26, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %sw.bb
  %add = add nuw nsw i32 %conv15138, 32
  %add.ptr = getelementptr i8, ptr %desc.0137, i32 32
  %inc = add i16 %cscd_index.0136, 1
  %conv15 = and i32 %add, 65535
  %cmp17 = icmp ult i32 %conv15, %conv
  br i1 %cmp17, label %if.end26.while.body_crit_edge, label %while.end.loopexit

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end31:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv20 = zext i8 %7 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv20) #14
  %8 = ptrtoint ptr %sense_ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 26, ptr %sense_ret, align 4
  br label %cleanup

while.end.loopexit:                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i16 %inc to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end12.while.end_crit_edge
  %cscd_index.0.lcssa = phi i32 [ 0, %if.end12.while.end_crit_edge ], [ %phi.cast, %while.end.loopexit ]
  %9 = ptrtoint ptr %xop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xop, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %sw.epilog51.thread [
    i32 1, label %sw.bb36
    i32 2, label %sw.bb38
  ]

sw.bb36:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 21
  %12 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %se_sess, align 4
  %dst_tid_wwn = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 5
  %dst_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 4
  %remote_lun_ref = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 7
  %call37 = tail call fastcc i32 @target_xcopy_locate_se_dev_e4(ptr noundef %13, ptr noundef %dst_tid_wwn, ptr noundef %dst_dev, ptr noundef %remote_lun_ref)
  br label %sw.epilog51

sw.bb38:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %se_sess39 = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 21
  %14 = ptrtoint ptr %se_sess39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_sess39, align 4
  %src_tid_wwn = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 3
  %src_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 2
  %remote_lun_ref41 = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 7
  %call42 = tail call fastcc i32 @target_xcopy_locate_se_dev_e4(ptr noundef %15, ptr noundef %src_tid_wwn, ptr noundef %src_dev, ptr noundef %remote_lun_ref41)
  br label %sw.epilog51

sw.epilog51.thread:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %stdi = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 10
  %16 = ptrtoint ptr %stdi to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %stdi, align 8
  %conv48 = zext i16 %17 to i32
  %dtdi = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 11
  %18 = ptrtoint ptr %dtdi to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dtdi, align 2
  %conv49 = zext i16 %19 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv48, i32 noundef %conv49) #14
  br label %if.then54

sw.epilog51:                                      ; preds = %sw.bb38, %sw.bb36
  %rc.0 = phi i32 [ %call42, %sw.bb38 ], [ %call37, %sw.bb36 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp52 = icmp slt i32 %rc.0, 0
  br i1 %cmp52, label %sw.epilog51.if.then54_crit_edge, label %do.body56

sw.epilog51.if.then54_crit_edge:                  ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54

if.then54:                                        ; preds = %sw.epilog51.if.then54_crit_edge, %sw.epilog51.thread
  %20 = ptrtoint ptr %sense_ret to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 24, ptr %sense_ret, align 4
  br label %cleanup

do.body56:                                        ; preds = %sw.epilog51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_target_descriptors, %if.then61)) #11
          to label %do.body68 [label %if.then61], !srcloc !297

if.then61:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %src_dev62 = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 2
  %21 = ptrtoint ptr %src_dev62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src_dev62, align 8
  %src_tid_wwn63 = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.79, ptr noundef %22, ptr noundef %src_tid_wwn63) #11
  br label %do.body68

do.body68:                                        ; preds = %if.then61, %do.body56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_target_descriptors, %if.then80)) #11
          to label %cleanup [label %if.then80], !srcloc !297

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  %dst_dev81 = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 4
  %23 = ptrtoint ptr %dst_dev81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst_dev81, align 4
  %dst_tid_wwn82 = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug177, ptr noundef nonnull @.str.80, ptr noundef %24, ptr noundef %dst_tid_wwn82) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %do.body68, %if.then54, %do.end31, %sw.bb.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -22, %if.then54 ], [ -22, %do.end31 ], [ %cscd_index.0.lcssa, %do.body68 ], [ %cscd_index.0.lcssa, %if.then80 ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_kunmap_data_sg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_parse_segdesc_02(ptr nocapture noundef %xop, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %p, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 2
  %and = zext i8 %2 to i32
  %arrayidx1 = getelementptr i8, ptr %p, i32 2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %4)
  %cmp.not = icmp eq i16 %4, 24
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv2 = zext i16 %4 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx6 = getelementptr i8, ptr %p, i32 4
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx6, align 1
  %stdi = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 10
  %7 = ptrtoint ptr %stdi to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %stdi, align 8
  %arrayidx8 = getelementptr i8, ptr %p, i32 6
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %arrayidx8, align 1
  %dtdi = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 11
  %10 = ptrtoint ptr %dtdi to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %dtdi, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %6)
  %cmp12 = icmp ugt i16 %6, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %9)
  %cmp16 = icmp ugt i16 %9, 2047
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp16
  br i1 %or.cond, label %do.end21, label %do.body29

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv24 = zext i16 %6 to i32
  %conv26 = zext i16 %9 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef 2047, i32 noundef %conv24, i32 noundef %conv26) #14
  br label %cleanup

do.body29:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_segdesc_02, %if.then34)) #11
          to label %do.end42 [label %if.then34], !srcloc !297

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %stdi to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %stdi, align 8
  %conv37 = zext i16 %12 to i32
  %13 = ptrtoint ptr %dtdi to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dtdi, align 2
  %conv39 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug178, ptr noundef nonnull @.str.66, i32 noundef 24, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %and) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then34, %do.body29
  %arrayidx43 = getelementptr i8, ptr %p, i32 10
  %15 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx43, align 1
  %nolb = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 12
  %17 = ptrtoint ptr %nolb to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %nolb, align 4
  %arrayidx45 = getelementptr i8, ptr %p, i32 12
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx45, align 1
  %src_lba = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 8
  %20 = ptrtoint ptr %src_lba to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %src_lba, align 8
  %arrayidx47 = getelementptr i8, ptr %p, i32 20
  %21 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx47, align 1
  %dst_lba = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 9
  %23 = ptrtoint ptr %dst_lba to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %dst_lba, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_segdesc_02, %if.then61)) #11
          to label %cleanup [label %if.then61], !srcloc !297

if.then61:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %nolb to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nolb, align 4
  %conv63 = zext i16 %25 to i32
  %26 = ptrtoint ptr %src_lba to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %src_lba, align 8
  %28 = ptrtoint ptr %dst_lba to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dst_lba, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.67, i32 noundef %conv63, i64 noundef %27, i64 noundef %29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.end42, %do.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ 0, %if.then61 ], [ 0, %do.end42 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spc_gen_naa_6h_vendor_specific(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_parse_tiddesc_e4(ptr nocapture noundef readonly %se_cmd, ptr nocapture noundef %xop, ptr nocapture noundef readonly %p, i16 noundef zeroext %cscd_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %p, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_tiddesc_e4, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug171, ptr noundef nonnull @.str.82, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx4 = getelementptr i8, ptr %p, i32 4
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %4 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %arrayidx14 = getelementptr i8, ptr %p, i32 5
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %6 to i32
  %and16 = and i32 %conv15, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17.not = icmp eq i32 %and16, 0
  br i1 %cmp17.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %and28 = and i32 %conv15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and28)
  %cmp29.not = icmp eq i32 %and28, 3
  br i1 %cmp29.not, label %if.end40, label %do.end34

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %and28) #14
  br label %cleanup

if.end40:                                         ; preds = %if.end25
  %arrayidx41 = getelementptr i8, ptr %p, i32 7
  %7 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp43.not = icmp eq i8 %8, 16
  br i1 %cmp43.not, label %do.body53, label %do.end48

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %conv42 = zext i8 %8 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %conv42) #14
  br label %cleanup

do.body53:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_tiddesc_e4, %if.then65)) #11
          to label %do.end69 [label %if.then65], !srcloc !297

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.93, i32 noundef 16) #11
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body53
  %arrayidx70 = getelementptr i8, ptr %p, i32 8
  %9 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx70, align 1
  %11 = and i8 %10, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %11)
  %cmp73.not = icmp eq i8 %11, 96
  br i1 %cmp73.not, label %if.end84, label %do.end78

do.end78:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #13
  %and72 = zext i8 %11 to i32
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %and72) #14
  br label %cleanup

if.end84:                                         ; preds = %do.end69
  %conv85 = zext i16 %cscd_index to i32
  %stdi = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 10
  %12 = ptrtoint ptr %stdi to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %stdi, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %cscd_index)
  %cmp87.not = icmp eq i16 %13, %cscd_index
  br i1 %cmp87.not, label %if.then117, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end84
  %dtdi = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 11
  %14 = ptrtoint ptr %dtdi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dtdi, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %cscd_index)
  %cmp91.not = icmp eq i16 %15, %cscd_index
  br i1 %cmp91.not, label %land.lhs.true.if.end144_crit_edge, label %do.body94

land.lhs.true.if.end144_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

do.body94:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_tiddesc_e4, %if.then106)) #11
          to label %cleanup [label %if.then106], !srcloc !297

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.97, i32 noundef %conv85) #11
  br label %cleanup

if.then117:                                       ; preds = %if.end84
  %src_tid_wwn = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %src_tid_wwn, ptr %arrayidx70, i32 16)
  %local_dev_wwn = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 6
  %bcmp214 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %local_dev_wwn, ptr noundef dereferenceable(16) %src_tid_wwn, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp214)
  %tobool124.not = icmp eq i32 %bcmp214, 0
  br i1 %tobool124.not, label %if.then125, label %if.then117.if.end144_crit_edge

if.then117.if.end144_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

if.then125:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %xop to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %xop, align 8
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %18 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %se_dev, align 4
  %src_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 2
  %20 = ptrtoint ptr %src_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %src_dev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_tiddesc_e4, %if.then138)) #11
          to label %if.end144 [label %if.then138], !srcloc !297

if.then138:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %src_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src_dev, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug174, ptr noundef nonnull @.str.98, ptr noundef %22) #11
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %if.then125, %if.then117.if.end144_crit_edge, %land.lhs.true.if.end144_crit_edge
  %dtdi146 = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 11
  %23 = ptrtoint ptr %dtdi146 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dtdi146, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %cscd_index)
  %cmp148 = icmp eq i16 %24, %cscd_index
  br i1 %cmp148, label %if.then150, label %if.end144.cleanup_crit_edge

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then150:                                       ; preds = %if.end144
  %dst_tid_wwn = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 5
  %25 = call ptr @memcpy(ptr %dst_tid_wwn, ptr %arrayidx70, i32 16)
  %local_dev_wwn153 = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %local_dev_wwn153, ptr noundef dereferenceable(16) %dst_tid_wwn, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool158.not = icmp eq i32 %bcmp, 0
  br i1 %tobool158.not, label %if.then159, label %if.then150.cleanup_crit_edge

if.then150.cleanup_crit_edge:                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then159:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %xop to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %xop, align 8
  %se_dev161 = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %27 = ptrtoint ptr %se_dev161 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %se_dev161, align 4
  %dst_dev = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 4
  %29 = ptrtoint ptr %dst_dev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dst_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_parse_tiddesc_e4, %if.then174)) #11
          to label %cleanup [label %if.then174], !srcloc !297

if.then174:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dst_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst_dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.99, ptr noundef %31) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then174, %if.then159, %if.then150.cleanup_crit_edge, %if.end144.cleanup_crit_edge, %if.then106, %do.body94, %do.end78, %do.end48, %do.end34, %do.end22, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %do.end22 ], [ -22, %do.end34 ], [ -22, %do.end48 ], [ -22, %do.end78 ], [ 0, %if.then106 ], [ 0, %if.then150.cleanup_crit_edge ], [ 0, %if.then174 ], [ 0, %if.end144.cleanup_crit_edge ], [ 0, %do.body94 ], [ 0, %if.then159 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_locate_se_dev_e4(ptr noundef readonly %sess, ptr noundef %dev_wwn, ptr nocapture noundef writeonly %_found_dev, ptr nocapture noundef writeonly %_found_lun_ref) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sess, null
  br i1 %tobool.not, label %entry.do.body90_crit_edge, label %do.body

entry.do.body90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body90

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug161, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_locate_se_dev_e4, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !297

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug161, ptr noundef nonnull @.str.101, i32 noundef 16, ptr noundef %dev_wwn) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %sess, i32 0, i32 4
  %0 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_node_acl, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !298
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 696, ptr noundef nonnull @.str.108) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %call7 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end16_crit_edge

rcu_read_lock.exit.do.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b128 = load i1, ptr @target_xcopy_locate_se_dev_e4.__warned, align 1
  br i1 %.b128, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @target_xcopy_locate_se_dev_e4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 87, ptr noundef nonnull @.str.102) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock.exit.do.end16_crit_edge
  %lun_entry_hlist = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %lun_entry_hlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %lun_entry_hlist, align 4
  %tobool23.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -184
  %tobool25.not157162 = icmp eq ptr %add.ptr, null
  %tobool25.not157 = or i1 %tobool23.not, %tobool25.not157162
  br i1 %tobool25.not157, label %do.end16.for.end_crit_edge, label %do.end16.for.body_crit_edge

do.end16.for.body_crit_edge:                      ; preds = %do.end16
  br label %for.body

do.end16.for.end_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end16.for.body_crit_edge
  %deve.0158 = phi ptr [ %add.ptr67, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end16.for.body_crit_edge ]
  %se_lun = getelementptr inbounds %struct.se_dev_entry, ptr %deve.0158, i32 0, i32 12
  %8 = ptrtoint ptr %se_lun to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %se_lun, align 8
  %call31 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %for.body.do.end41_crit_edge

for.body.do.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

land.lhs.true33:                                  ; preds = %for.body
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b126127 = load i1, ptr @target_xcopy_locate_se_dev_e4.__warned.103, align 1
  br i1 %.b126127, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @target_xcopy_locate_se_dev_e4.__warned.103, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 91, ptr noundef nonnull @.str.104) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true33.do.end41_crit_edge, %for.body.do.end41_crit_edge
  %lun_se_dev = getelementptr inbounds %struct.se_lun, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %lun_se_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %lun_se_dev, align 8
  %call48 = tail call fastcc i32 @target_xcopy_locate_se_dev_e4_iter(ptr noundef %11, ptr noundef %dev_wwn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.inc, label %if.then50

if.then50:                                        ; preds = %do.end41
  %lun_ref = getelementptr inbounds %struct.se_lun, ptr %9, i32 0, i32 21
  %12 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !298
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.then50.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then50.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then50
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 696, ptr noundef nonnull @.str.108) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then50.rcu_read_lock.exit.i_crit_edge
  %call.i1.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b104.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i3.i, !prof !296

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i.i

if.then.i3.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 280, i32 noundef 9, ptr noundef null) #11
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i3.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %16 = ptrtoint ptr %lun_ref to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %lun_ref, align 4
  %and.i.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i, label %if.else.i.i, !prof !296

do.body46.i.i:                                    ; preds = %if.end29.i.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !299
  %19 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i105.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i105.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %17
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add63.i.i = add i32 %27, 1
  store i32 %add63.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !300
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool74.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then83.i.i, label %do.body46.i.i.do.end86.i.i_crit_edge, !prof !301

do.body46.i.i.do.end86.i.i_crit_edge:             ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86.i.i

if.then83.i.i:                                    ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.then83.i.i, %do.body46.i.i.do.end86.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #11, !srcloc !302
  br label %percpu_ref_tryget_live_rcu.exit.i

if.else.i.i:                                      ; preds = %if.end29.i.i
  %and.i.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool93.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge

if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %percpu_ref_tryget_live_rcu.exit.i

if.then94.i.i:                                    ; preds = %if.else.i.i
  %data.i.i = getelementptr inbounds %struct.se_lun, ptr %9, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %30, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !307
  tail call void @llvm.prefetch.p0(ptr %30, i32 1, i32 3, i32 1) #11
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 1, ptr elementtype(i32) %30) #11, !srcloc !308
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_long_inc_not_zero.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !309
  br label %atomic_long_inc_not_zero.exit.i.i

atomic_long_inc_not_zero.exit.i.i:                ; preds = %do.end11.i.i.i.i.i.i.i, %if.then94.i.i.atomic_long_inc_not_zero.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i

percpu_ref_tryget_live_rcu.exit.i:                ; preds = %atomic_long_inc_not_zero.exit.i.i, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge, %do.end86.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end86.i.i ], [ false, %if.else.i.i.percpu_ref_tryget_live_rcu.exit.i_crit_edge ], [ %cmp.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4.i, label %percpu_ref_tryget_live_rcu.exit.i.cleanup_crit_edge, label %land.lhs.true.i7.i

percpu_ref_tryget_live_rcu.exit.i.cleanup_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i7.i:                               ; preds = %percpu_ref_tryget_live_rcu.exit.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.cleanup_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.cleanup_crit_edge:             ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.cleanup_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.cleanup_crit_edge:            ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 724, ptr noundef nonnull @.str.114) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.cleanup_crit_edge, %land.lhs.true.i7.i.cleanup_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %32 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i11.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %spec.select129 = select i1 %ret.0.off0.i.i, ptr %11, ptr null
  br label %for.end

for.inc:                                          ; preds = %do.end41
  %link = getelementptr inbounds %struct.se_dev_entry, ptr %deve.0158, i32 0, i32 17
  %36 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %link, align 8
  %tobool63.not = icmp eq ptr %37, null
  %add.ptr67 = getelementptr i8, ptr %37, i32 -184
  %tobool25.not166 = icmp eq ptr %add.ptr67, null
  %tobool25.not = or i1 %tobool63.not, %tobool25.not166
  br i1 %tobool25.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %do.end16.for.end_crit_edge
  %found_dev.3 = phi ptr [ %spec.select129, %cleanup ], [ null, %do.end16.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %this_lun.1 = phi ptr [ %9, %cleanup ], [ null, %do.end16.for.end_crit_edge ], [ %9, %for.inc.for.end_crit_edge ]
  %call.i137 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i137, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i140

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i140:                               ; preds = %for.end
  %call1.i138 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i138)
  %tobool.not.i139 = icmp eq i32 %call1.i138, 0
  br i1 %tobool.not.i139, label %land.lhs.true.i140.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i142

land.lhs.true.i140.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i142:                              ; preds = %land.lhs.true.i140
  %.b4.i141 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i141, label %land.lhs.true2.i142.rcu_read_unlock.exit_crit_edge, label %if.then.i143

land.lhs.true2.i142.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i143:                                     ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.107, i32 noundef 724, ptr noundef nonnull @.str.114) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i143, %land.lhs.true2.i142.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i140.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !306
  %38 = tail call i32 @llvm.read_register.i32(metadata !285) #11
  %and.i.i.i.i.i144 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i144 to ptr
  %preempt_count.i.i.i.i145 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i145, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i145, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %cmp = icmp eq ptr %found_dev.3, null
  br i1 %cmp, label %rcu_read_unlock.exit.do.body90_crit_edge, label %do.body73

rcu_read_unlock.exit.do.body90_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body90

do.body73:                                        ; preds = %rcu_read_unlock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_locate_se_dev_e4, %if.then85)) #11
          to label %do.end88 [label %if.then85], !srcloc !297

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  %dev_group = getelementptr inbounds %struct.se_device, ptr %found_dev.3, i32 0, i32 41
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.105, ptr noundef nonnull %found_dev.3, ptr noundef %dev_group) #11
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.body73
  %42 = ptrtoint ptr %_found_dev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %found_dev.3, ptr %_found_dev, align 4
  %lun_ref89 = getelementptr inbounds %struct.se_lun, ptr %this_lun.1, i32 0, i32 21
  %43 = ptrtoint ptr %_found_lun_ref to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %lun_ref89, ptr %_found_lun_ref, align 4
  br label %cleanup109

do.body90:                                        ; preds = %rcu_read_unlock.exit.do.body90_crit_edge, %entry.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_locate_se_dev_e4.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_locate_se_dev_e4, %land.lhs.true102)) #11
          to label %cleanup109 [label %land.lhs.true102], !srcloc !297

land.lhs.true102:                                 ; preds = %do.body90
  %call103 = tail call i32 @___ratelimit(ptr noundef nonnull @target_xcopy_locate_se_dev_e4._rs, ptr noundef nonnull @.str.100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %land.lhs.true102.cleanup109_crit_edge, label %if.then105

land.lhs.true102.cleanup109_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup109

if.then105:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_locate_se_dev_e4.descriptor, ptr noundef nonnull @.str.106) #11
  br label %cleanup109

cleanup109:                                       ; preds = %if.then105, %land.lhs.true102.cleanup109_crit_edge, %do.body90, %do.end88
  %retval.0 = phi i32 [ 0, %do.end88 ], [ -22, %if.then105 ], [ -22, %land.lhs.true102.cleanup109_crit_edge ], [ -22, %do.body90 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_locate_se_dev_e4_iter(ptr noundef %se_dev, ptr nocapture noundef readonly %dev_wwn) unnamed_addr #0 align 64 {
entry:
  %tmp_dev_wwn = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_dev_wwn) #11
  %emulate_3pc = getelementptr inbounds %struct.se_device, ptr %se_dev, i32 0, i32 39, i32 10
  %0 = call ptr @memset(ptr %tmp_dev_wwn, i32 255, i32 16)
  %1 = ptrtoint ptr %emulate_3pc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %emulate_3pc, align 8, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_locate_se_dev_e4_iter, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !297

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.110, ptr noundef %se_dev) #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %3 = call ptr @memset(ptr %tmp_dev_wwn, i32 0, i32 16)
  call void @spc_gen_naa_6h_vendor_specific(ptr noundef %se_dev, ptr noundef nonnull %tmp_dev_wwn) #11
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %tmp_dev_wwn, ptr noundef dereferenceable(16) %dev_wwn, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %do.body27, label %do.body10

do.body10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_locate_se_dev_e4_iter, %if.then22)) #11
          to label %cleanup [label %if.then22], !srcloc !297

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.111, i32 noundef 16, ptr noundef nonnull %tmp_dev_wwn) #11
  br label %cleanup

do.body27:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_locate_se_dev_e4_iter, %if.then39)) #11
          to label %cleanup [label %if.then39], !srcloc !297

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.112, ptr noundef %se_dev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %if.then22, %do.body10, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then22 ], [ 1, %if.then39 ], [ 0, %do.body ], [ 0, %do.body10 ], [ 1, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_dev_wwn) #11
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @target_xcopy_setup_pt_cmd(ptr noundef %xpt_cmd, ptr nocapture noundef readonly %xop, ptr noundef %se_dev, ptr noundef %cdb, i1 noundef zeroext %remote_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %remote_port, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xcopy_lun = getelementptr inbounds %struct.se_device, ptr %se_dev, i32 0, i32 47
  %se_lun = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 20
  %0 = ptrtoint ptr %se_lun to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %xcopy_lun, ptr %se_lun, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xop_se_cmd = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 1
  %1 = ptrtoint ptr %xop_se_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xop_se_cmd, align 4
  %se_lun2 = getelementptr inbounds %struct.se_cmd, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %se_lun2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %se_lun2, align 8
  %se_lun3 = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 20
  %5 = ptrtoint ptr %se_lun3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %se_lun3, align 8
  %6 = load ptr, ptr %xop_se_cmd, align 4
  %se_dev5 = getelementptr inbounds %struct.se_cmd, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %se_dev5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %se_dev5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi ptr [ %se_dev, %if.then ], [ %8, %if.else ]
  %9 = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 19
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.sink, ptr %9, align 4
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 11
  %11 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %se_cmd_flags, align 8
  %or = or i32 %12, 64
  store i32 %or, ptr %se_cmd_flags, align 8
  %call = tail call i32 @target_cmd_init_cdb(ptr noundef %xpt_cmd, ptr noundef %cdb, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %tag = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 4
  %13 = ptrtoint ptr %tag to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %tag, align 8
  %call10 = tail call i32 @target_cmd_parse_cdb(ptr noundef %xpt_cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %xop_data_sg = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 15
  %14 = ptrtoint ptr %xop_data_sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xop_data_sg, align 8
  %xop_data_nents = getelementptr inbounds %struct.xcopy_op, ptr %xop, i32 0, i32 14
  %16 = ptrtoint ptr %xop_data_nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xop_data_nents, align 4
  %call14 = tail call i32 @transport_generic_map_mem_to_cmd(ptr noundef %xpt_cmd, ptr noundef %15, i32 noundef %17, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @target_xcopy_setup_pt_cmd.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_xcopy_setup_pt_cmd, %if.then23)) #11
          to label %cleanup [label %if.then23], !srcloc !297

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 39
  %18 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %xpt_cmd, i32 0, i32 41
  %20 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_data_nents, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @target_xcopy_setup_pt_cmd.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.120, ptr noundef %19, i32 noundef %21) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_cmd_init_cdb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_cmd_parse_cdb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_map_mem_to_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_new_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !279, !280, !281, !283, !284}
!llvm.named.register.sp = !{!285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_xcopy.c", i32 466, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_xcopy.c", i32 468, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @target_xcopy_setup_pt._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @target_xcopy_setup_pt._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/target_core_xcopy.c", i32 882, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @target_do_xcopy._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @target_do_xcopy._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_xcopy.c", i32 888, i32 3}
!15 = !{ptr @target_do_xcopy._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @target_do_xcopy._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/target/target_core_xcopy.c", i32 897, i32 3}
!19 = !{ptr @target_do_xcopy._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @target_do_xcopy._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @target_do_xcopy.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_xcopy.c", i32 906, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/target/target_core_xcopy.c", i32 907, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/target_core_xcopy.c", i32 1014, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @target_do_receive_copy_results.__UNIQUE_ID_ddebug208, !27, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/target_core_xcopy.c", i32 1018, i32 3}
!33 = !{ptr @target_do_receive_copy_results._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @target_do_receive_copy_results._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/target_core_xcopy.c", i32 1031, i32 3}
!37 = !{ptr @target_do_receive_copy_results._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @target_do_receive_copy_results._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @xcopy_pt_tpg, !40, !"xcopy_pt_tpg", i1 false, i1 false}
!40 = !{!"../drivers/target/target_core_xcopy.c", i32 396, i32 24}
!41 = !{ptr @xcopy_pt_sess, !42, !"xcopy_pt_sess", i1 false, i1 false}
!42 = !{!"../drivers/target/target_core_xcopy.c", i32 397, i32 26}
!43 = !{ptr @xcopy_pt_nacl, !44, !"xcopy_pt_nacl", i1 false, i1 false}
!44 = !{!"../drivers/target/target_core_xcopy.c", i32 398, i32 27}
!45 = !{ptr @xcopy_wq, !46, !"xcopy_wq", i1 false, i1 false}
!46 = !{!"../drivers/target/target_core_xcopy.c", i32 32, i32 33}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/target_core_xcopy.c", i32 449, i32 18}
!49 = !{ptr @xcopy_pt_tfo, !50, !"xcopy_pt_tfo", i1 false, i1 false}
!50 = !{!"../drivers/target/target_core_xcopy.c", i32 448, i32 44}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/target_core_xcopy.c", i32 421, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @xcopy_pt_release_cmd.__UNIQUE_ID_ddebug182, !52, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/target/target_core_xcopy.c", i32 682, i32 6}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/target/target_core_xcopy.c", i32 682, i32 37}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/target/target_core_xcopy.c", i32 703, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug194, !60, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/target_core_xcopy.c", i32 705, i32 2}
!65 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug195, !64, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/target/target_core_xcopy.c", i32 727, i32 3}
!68 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug198, !67, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/target/target_core_xcopy.c", i32 735, i32 3}
!71 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug199, !70, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/target_core_xcopy.c", i32 738, i32 3}
!74 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug200, !73, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/target_core_xcopy.c", i32 747, i32 3}
!77 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug201, !76, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/target/target_core_xcopy.c", i32 758, i32 2}
!80 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug202, !79, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/target/target_core_xcopy.c", i32 760, i32 2}
!83 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug203, !82, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/target_core_xcopy.c", i32 763, i32 2}
!86 = !{ptr @target_xcopy_do_work.__UNIQUE_ID_ddebug204, !85, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/target/target_core_xcopy.c", i32 779, i32 2}
!89 = !{ptr @target_xcopy_do_work._rs, !88, !"_rs", i1 false, i1 false}
!90 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @target_xcopy_do_work._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @target_xcopy_do_work._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/target_core_xcopy.c", i32 799, i32 3}
!95 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @target_parse_xcopy_cmd._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @target_parse_xcopy_cmd._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/target/target_core_xcopy.c", i32 812, i32 3}
!100 = !{ptr @target_parse_xcopy_cmd._entry.38, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @target_parse_xcopy_cmd._entry_ptr.40, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/target_core_xcopy.c", i32 820, i32 3}
!104 = !{ptr @target_parse_xcopy_cmd._entry.41, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @target_parse_xcopy_cmd._entry_ptr.43, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/target_core_xcopy.c", i32 825, i32 3}
!108 = !{ptr @target_parse_xcopy_cmd._entry.44, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @target_parse_xcopy_cmd._entry_ptr.46, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/target/target_core_xcopy.c", i32 832, i32 2}
!112 = !{ptr @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug205, !111, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/target/target_core_xcopy.c", i32 846, i32 2}
!115 = !{ptr @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug206, !114, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/target/target_core_xcopy.c", i32 855, i32 3}
!118 = !{ptr @target_parse_xcopy_cmd._entry.49, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @target_parse_xcopy_cmd._entry_ptr.51, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/target_core_xcopy.c", i32 864, i32 2}
!122 = !{ptr @target_parse_xcopy_cmd.__UNIQUE_ID_ddebug207, !121, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/target_core_xcopy.c", i32 345, i32 3}
!125 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @target_xcopy_parse_segment_descriptors._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @target_xcopy_parse_segment_descriptors._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/target/target_core_xcopy.c", i32 351, i32 3}
!130 = !{ptr @target_xcopy_parse_segment_descriptors._entry.55, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @target_xcopy_parse_segment_descriptors._entry_ptr.57, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/target/target_core_xcopy.c", i32 373, i32 4}
!134 = !{ptr @target_xcopy_parse_segment_descriptors._entry.58, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @target_xcopy_parse_segment_descriptors._entry_ptr.60, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/target/target_core_xcopy.c", i32 306, i32 3}
!138 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @target_xcopy_parse_segdesc_02._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @target_xcopy_parse_segdesc_02._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/target_core_xcopy.c", i32 316, i32 3}
!143 = !{ptr @target_xcopy_parse_segdesc_02._entry.63, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @target_xcopy_parse_segdesc_02._entry_ptr.65, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/target/target_core_xcopy.c", i32 321, i32 2}
!147 = !{ptr @target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug178, !146, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/target/target_core_xcopy.c", i32 327, i32 2}
!150 = !{ptr @target_xcopy_parse_segdesc_02.__UNIQUE_ID_ddebug179, !149, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/target/target_core_xcopy.c", i32 214, i32 3}
!153 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @target_xcopy_parse_target_descriptors._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @target_xcopy_parse_target_descriptors._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/target/target_core_xcopy.c", i32 220, i32 3}
!158 = !{ptr @target_xcopy_parse_target_descriptors._entry.70, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @target_xcopy_parse_target_descriptors._entry_ptr.72, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/target/target_core_xcopy.c", i32 250, i32 4}
!162 = !{ptr @target_xcopy_parse_target_descriptors._entry.73, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @target_xcopy_parse_target_descriptors._entry_ptr.75, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/target/target_core_xcopy.c", i32 271, i32 3}
!166 = !{ptr @target_xcopy_parse_target_descriptors._entry.76, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @target_xcopy_parse_target_descriptors._entry_ptr.78, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/target/target_core_xcopy.c", i32 287, i32 2}
!170 = !{ptr @target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug176, !169, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/target/target_core_xcopy.c", i32 289, i32 2}
!173 = !{ptr @target_xcopy_parse_target_descriptors.__UNIQUE_ID_ddebug177, !172, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/target/target_core_xcopy.c", i32 125, i32 2}
!176 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug171, !175, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/target/target_core_xcopy.c", i32 130, i32 3}
!180 = !{ptr @target_xcopy_parse_tiddesc_e4._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @target_xcopy_parse_tiddesc_e4._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/target/target_core_xcopy.c", i32 134, i32 3}
!184 = !{ptr @target_xcopy_parse_tiddesc_e4._entry.84, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.86, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/target/target_core_xcopy.c", i32 138, i32 3}
!188 = !{ptr @target_xcopy_parse_tiddesc_e4._entry.87, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.89, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/target/target_core_xcopy.c", i32 148, i32 3}
!192 = !{ptr @target_xcopy_parse_tiddesc_e4._entry.90, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.92, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/target/target_core_xcopy.c", i32 151, i32 2}
!196 = !{ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug172, !195, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/target/target_core_xcopy.c", i32 156, i32 3}
!199 = !{ptr @target_xcopy_parse_tiddesc_e4._entry.94, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @target_xcopy_parse_tiddesc_e4._entry_ptr.96, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/target/target_core_xcopy.c", i32 162, i32 3}
!203 = !{ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug173, !202, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/target/target_core_xcopy.c", i32 176, i32 4}
!206 = !{ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug174, !205, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!207 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/target/target_core_xcopy.c", i32 193, i32 4}
!209 = !{ptr @target_xcopy_parse_tiddesc_e4.__UNIQUE_ID_ddebug175, !208, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/target/target_core_xcopy.c", i32 82, i32 2}
!212 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug161, !211, !"__UNIQUE_ID_ddebug161", i1 false, i1 false}
!214 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!215 = !{!"../drivers/target/target_core_xcopy.c", i32 87, i32 2}
!216 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!217 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!218 = !{!"../drivers/target/target_core_xcopy.c", i32 91, i32 14}
!219 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/target/target_core_xcopy.c", i32 105, i32 2}
!222 = !{ptr @target_xcopy_locate_se_dev_e4.__UNIQUE_ID_ddebug170, !221, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!223 = !{ptr @target_xcopy_locate_se_dev_e4._rs, !224, !"_rs", i1 false, i1 false}
!224 = !{!"../drivers/target/target_core_xcopy.c", i32 111, i32 2}
!225 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @target_xcopy_locate_se_dev_e4.descriptor, !224, !"descriptor", i1 false, i1 false}
!227 = distinct !{null, !228, !"__warned", i1 false, i1 false}
!228 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!229 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/target/target_core_xcopy.c", i32 50, i32 3}
!233 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug158, !232, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/target/target_core_xcopy.c", i32 59, i32 3}
!237 = !{ptr @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug159, !236, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/target/target_core_xcopy.c", i32 63, i32 2}
!240 = !{ptr @target_xcopy_locate_se_dev_e4_iter.__UNIQUE_ID_ddebug160, !239, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!241 = distinct !{null, !242, !"__already_done", i1 false, i1 false}
!242 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!243 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!244 = distinct !{null, !245, !"__warned", i1 false, i1 false}
!245 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!246 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/target/target_core_xcopy.c", i32 601, i32 2}
!249 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @target_xcopy_read_source.__UNIQUE_ID_ddebug185, !248, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/target/target_core_xcopy.c", i32 614, i32 2}
!253 = !{ptr @target_xcopy_read_source.__UNIQUE_ID_ddebug186, !252, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!254 = !{ptr @init_completion.__key, !255, !"__key", i1 false, i1 false}
!255 = !{!"../include/linux/completion.h", i32 87, i32 2}
!256 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.119, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/target/target_core_xcopy.c", i32 554, i32 2}
!259 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @target_xcopy_setup_pt_cmd.__UNIQUE_ID_ddebug183, !258, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!261 = !{ptr @.str.121, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/target/target_core_xcopy.c", i32 574, i32 2}
!263 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @target_xcopy_issue_pt_cmd.__UNIQUE_ID_ddebug184, !262, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!265 = !{ptr @.str.123, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/target/target_core_xcopy.c", i32 646, i32 2}
!267 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @target_xcopy_write_destination.__UNIQUE_ID_ddebug187, !266, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!269 = !{ptr @.str.125, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/target/target_core_xcopy.c", i32 408, i32 3}
!271 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug180, !270, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!273 = !{ptr @.str.127, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/target/target_core_xcopy.c", i32 410, i32 3}
!275 = !{ptr @xcopy_pt_undepend_remotedev.__UNIQUE_ID_ddebug181, !274, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!276 = !{ptr @.str.128, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/target/target_core_xcopy.c", i32 924, i32 3}
!278 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @target_rcr_operating_parameters._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @target_rcr_operating_parameters._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.131, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/target/target_core_xcopy.c", i32 930, i32 3}
!283 = !{ptr @target_rcr_operating_parameters._entry.130, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @target_rcr_operating_parameters._entry_ptr.132, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{!"sp"}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{i8 0, i8 2}
!296 = !{!"branch_weights", i32 2000, i32 1}
!297 = !{i64 2148227798, i64 2148227803, i64 2148227816, i64 2148227860, i64 2148227894, i64 2148227915}
!298 = !{i64 2149943943}
!299 = !{i64 1011752, i64 1011813}
!300 = !{i64 1014484}
!301 = !{!"branch_weights", i32 1, i32 2000}
!302 = !{i64 1014769}
!303 = !{i64 2148695548}
!304 = !{i64 2148610257, i64 2148610289, i64 2148610318, i64 2148610352, i64 2148610383, i64 2148610406}
!305 = !{i64 2148695777}
!306 = !{i64 2149944209}
!307 = !{i64 2148606491}
!308 = !{i64 1093091, i64 1093116, i64 1093138, i64 1093154, i64 1093166, i64 1093186, i64 1093210, i64 1093226, i64 1093238}
!309 = !{i64 2148606679}
