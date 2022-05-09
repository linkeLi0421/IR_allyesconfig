; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_sbc.c_pt.bc'
source_filename = "../drivers/target/target_core_sbc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sbc_get_write_same_sectors\22, \22a\22\09"
module asm "\09.weak\09__crc_sbc_get_write_same_sectors\09\09\09\09"
module asm "\09.long\09__crc_sbc_get_write_same_sectors\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbc_get_write_same_sectors:\09\09\09\09\09"
module asm "\09.asciz \09\22sbc_get_write_same_sectors\22\09\09\09\09\09"
module asm "__kstrtabns_sbc_get_write_same_sectors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sbc_parse_cdb\22, \22a\22\09"
module asm "\09.weak\09__crc_sbc_parse_cdb\09\09\09\09"
module asm "\09.long\09__crc_sbc_parse_cdb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbc_parse_cdb:\09\09\09\09\09"
module asm "\09.asciz \09\22sbc_parse_cdb\22\09\09\09\09\09"
module asm "__kstrtabns_sbc_parse_cdb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sbc_get_device_type\22, \22a\22\09"
module asm "\09.weak\09__crc_sbc_get_device_type\09\09\09\09"
module asm "\09.long\09__crc_sbc_get_device_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbc_get_device_type:\09\09\09\09\09"
module asm "\09.asciz \09\22sbc_get_device_type\22\09\09\09\09\09"
module asm "__kstrtabns_sbc_get_device_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sbc_dif_copy_prot\22, \22a\22\09"
module asm "\09.weak\09__crc_sbc_dif_copy_prot\09\09\09\09"
module asm "\09.long\09__crc_sbc_dif_copy_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbc_dif_copy_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22sbc_dif_copy_prot\22\09\09\09\09\09"
module asm "__kstrtabns_sbc_dif_copy_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sbc_dif_verify\22, \22a\22\09"
module asm "\09.weak\09__crc_sbc_dif_verify\09\09\09\09"
module asm "\09.long\09__crc_sbc_dif_verify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbc_dif_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22sbc_dif_verify\22\09\09\09\09\09"
module asm "__kstrtabns_sbc_dif_verify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.percpu_ref = type { i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.target_backend = type { %struct.list_head, ptr, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type, %struct.config_item_type }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.sbc_ops = type { ptr, ptr, ptr, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.t10_pi_tuple = type { i16, i16, i32 }

@__kstrtab_sbc_get_write_same_sectors = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbc_get_write_same_sectors = external dso_local constant [0 x i8], align 1
@__ksymtab_sbc_get_write_same_sectors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbc_get_write_same_sectors to i32), ptr @__kstrtab_sbc_get_write_same_sectors, ptr @__kstrtabns_sbc_get_write_same_sectors }, section "___ksymtab+sbc_get_write_same_sectors", align 4
@sbc_parse_cdb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013WSNZ=1, WRITE_SAME w/sectors=0 not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sbc_parse_cdb\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/target/target_core_sbc.c\00", [63 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr = internal global ptr @sbc_parse_cdb._entry, section ".printk_index", align 4
@sbc_parse_cdb._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013VARIABLE_LENGTH_CMD service action 0x%04x not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.5 = internal global ptr @sbc_parse_cdb._entry.3, section ".printk_index", align 4
@sbc_parse_cdb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013se_device %s/%s (vpd_unit_serial %s) reject COMPARE_AND_WRITE\0A\00", [63 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.9 = internal global ptr @sbc_parse_cdb._entry.7, section ".printk_index", align 4
@sbc_parse_cdb._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013COMPARE_AND_WRITE contains NoLB: %u greater than 1\0A\00", [42 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.12 = internal global ptr @sbc_parse_cdb._entry.10, section ".printk_index", align 4
@sbc_parse_cdb._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Unsupported SA: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.15 = internal global ptr @sbc_parse_cdb._entry.13, section ".printk_index", align 4
@sbc_parse_cdb._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Got UNMAP, but backend device has emulate_tpu disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.18 = internal global ptr @sbc_parse_cdb._entry.16, section ".printk_index", align 4
@sbc_parse_cdb._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.20 = internal global ptr @sbc_parse_cdb._entry.19, section ".printk_index", align 4
@sbc_parse_cdb._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.22 = internal global ptr @sbc_parse_cdb._entry.21, section ".printk_index", align 4
@sbc_parse_cdb._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013cmd exceeds last lba %llu (lba %llu, sectors %u)\0A\00", [44 x i8] zeroinitializer }, align 32
@sbc_parse_cdb._entry_ptr.25 = internal global ptr @sbc_parse_cdb._entry.23, section ".printk_index", align 4
@__kstrtab_sbc_parse_cdb = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbc_parse_cdb = external dso_local constant [0 x i8], align 1
@__ksymtab_sbc_parse_cdb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbc_parse_cdb to i32), ptr @__kstrtab_sbc_parse_cdb, ptr @__kstrtabns_sbc_parse_cdb }, section "___ksymtab+sbc_parse_cdb", align 4
@__kstrtab_sbc_get_device_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbc_get_device_type = external dso_local constant [0 x i8], align 1
@__ksymtab_sbc_get_device_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbc_get_device_type to i32), ptr @__kstrtab_sbc_get_device_type, ptr @__kstrtabns_sbc_get_device_type }, section "___ksymtab+sbc_get_device_type", align 4
@sbc_dif_generate.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbc_dif_generate\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"DIF %s INSERT sector: %llu guard_tag: 0x%04x app_tag: 0x%04x ref_tag: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_sbc_dif_copy_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbc_dif_copy_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_sbc_dif_copy_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbc_dif_copy_prot to i32), ptr @__kstrtab_sbc_dif_copy_prot, ptr @__kstrtabns_sbc_dif_copy_prot }, section "___ksymtab+sbc_dif_copy_prot", align 4
@sbc_dif_verify.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sbc_dif_verify\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"DIF READ sector: %llu guard_tag: 0x%04x app_tag: 0x%04x ref_tag: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_sbc_dif_verify = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbc_dif_verify = external dso_local constant [0 x i8], align 1
@__ksymtab_sbc_dif_verify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbc_dif_verify to i32), ptr @__kstrtab_sbc_dif_verify, ptr @__kstrtabns_sbc_dif_verify }, section "___ksymtab+sbc_dif_verify", align 4
@sbc_check_dpofua._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013Got CDB: 0x%02x with DPO bit set, but device does not advertise support for DPO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbc_check_dpofua\00", [47 x i8] zeroinitializer }, align 32
@sbc_check_dpofua._entry_ptr = internal global ptr @sbc_check_dpofua._entry, section ".printk_index", align 4
@sbc_check_dpofua._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013Got CDB: 0x%02x with FUA bit set, but device does not advertise support for FUA write\0A\00", [39 x i8] zeroinitializer }, align 32
@sbc_check_dpofua._entry_ptr.37 = internal global ptr @sbc_check_dpofua._entry.35, section ".printk_index", align 4
@sbc_check_prot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013CDB contains protect bit, but device + fabric does not advertise PROTECT=1 feature bit\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sbc_check_prot\00", [17 x i8] zeroinitializer }, align 32
@sbc_check_prot._entry_ptr = internal global ptr @sbc_check_prot._entry, section ".printk_index", align 4
@sbc_check_prot._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013Unable to determine pi_prot_type for CDB: 0x%02x PROTECT: 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@sbc_check_prot._entry_ptr.42 = internal global ptr @sbc_check_prot._entry.40, section ".printk_index", align 4
@sbc_check_prot.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: prot_type=%d, data_length=%d, prot_length=%d prot_op=%d prot_checks=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sbc_set_prot_op_checks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unsupported protect field %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sbc_set_prot_op_checks\00", [41 x i8] zeroinitializer }, align 32
@sbc_set_prot_op_checks._entry_ptr = internal global ptr @sbc_set_prot_op_checks._entry, section ".printk_index", align 4
@sbc_set_prot_op_checks._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sbc_set_prot_op_checks._entry_ptr.47 = internal global ptr @sbc_set_prot_op_checks._entry.46, section ".printk_index", align 4
@xdreadwrite_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to allocate xor_callback buf\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xdreadwrite_callback\00", [43 x i8] zeroinitializer }, align 32
@xdreadwrite_callback._entry_ptr = internal global ptr @xdreadwrite_callback._entry, section ".printk_index", align 4
@sbc_setup_write_same._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013WRITE_SAME PBDATA and LBDATA bits not supported for Block Discard Emulation\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sbc_setup_write_same\00", [43 x i8] zeroinitializer }, align 32
@sbc_setup_write_same._entry_ptr = internal global ptr @sbc_setup_write_same._entry, section ".printk_index", align 4
@sbc_setup_write_same._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014WRITE_SAME sectors: %u exceeds max_write_same_len: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@sbc_setup_write_same._entry_ptr.54 = internal global ptr @sbc_setup_write_same._entry.52, section ".printk_index", align 4
@sbc_setup_write_same._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013WRITE_SAME exceeds last lba %llu (lba %llu, sectors %u)\0A\00", [37 x i8] zeroinitializer }, align 32
@sbc_setup_write_same._entry_ptr.57 = internal global ptr @sbc_setup_write_same._entry.55, section ".printk_index", align 4
@sbc_setup_write_same._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014WRITE SAME with ANCHOR not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@sbc_setup_write_same._entry_ptr.60 = internal global ptr @sbc_setup_write_same._entry.58, section ".printk_index", align 4
@sbc_setup_write_same._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013Got WRITE_SAME w/ UNMAP=1, but backend device has emulate_tpws disabled\0A\00", [53 x i8] zeroinitializer }, align 32
@sbc_setup_write_same._entry_ptr.63 = internal global ptr @sbc_setup_write_same._entry.61, section ".printk_index", align 4
@compare_and_write_callback.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"compare_and_write_callback\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"compare_and_write_callback: non zero scsi_status: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@compare_and_write_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to allocate compare_and_write sg\0A\00", [53 x i8] zeroinitializer }, align 32
@compare_and_write_callback._entry_ptr = internal global ptr @compare_and_write_callback._entry, section ".printk_index", align 4
@compare_and_write_do_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013sg_copy_to_buffer() failed for compare_and_write\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"compare_and_write_do_cmp\00", [39 x i8] zeroinitializer }, align 32
@compare_and_write_do_cmp._entry_ptr = internal global ptr @compare_and_write_do_cmp._entry, section ".printk_index", align 4
@compare_and_write_do_cmp._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014Detected MISCOMPARE at offset %u\0A\00", [60 x i8] zeroinitializer }, align 32
@compare_and_write_do_cmp._entry_ptr.71 = internal global ptr @compare_and_write_do_cmp._entry.69, section ".printk_index", align 4
@compare_and_write_do_cmp.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.68, ptr @.str.2, ptr @.str.72, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"COMPARE AND WRITE read data matches compare data\0A\00", [46 x i8] zeroinitializer }, align 32
@sbc_execute_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014UNMAP parameter list length %u too small\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sbc_execute_unmap\00", [46 x i8] zeroinitializer }, align 32
@sbc_execute_unmap._entry_ptr = internal global ptr @sbc_execute_unmap._entry, section ".printk_index", align 4
@sbc_execute_unmap._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014UNMAP parameter list length %u too small, ignoring bd_dl %u\0A\00", [33 x i8] zeroinitializer }, align 32
@sbc_execute_unmap._entry_ptr.77 = internal global ptr @sbc_execute_unmap._entry.75, section ".printk_index", align 4
@sbc_execute_unmap.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.74, ptr @.str.2, ptr @.str.78, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UNMAP: Sub: %s Using dl: %u bd_dl: %u size: %u ptr: %p\0A\00", [40 x i8] zeroinitializer }, align 32
@sbc_execute_unmap.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.74, ptr @.str.2, ptr @.str.79, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UNMAP: Using lba: %llu and range: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@sbc_dif_v1_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013DIFv1 checksum failed on sector %llu guard tag 0x%04x csum 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sbc_dif_v1_verify\00", [46 x i8] zeroinitializer }, align 32
@sbc_dif_v1_verify._entry_ptr = internal global ptr @sbc_dif_v1_verify._entry, section ".printk_index", align 4
@sbc_dif_v1_verify._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013DIFv1 Type 1 reference failed on sector: %llu tag: 0x%08x sector MSB: 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@sbc_dif_v1_verify._entry_ptr.84 = internal global ptr @sbc_dif_v1_verify._entry.82, section ".printk_index", align 4
@sbc_dif_v1_verify._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.2, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013DIFv1 Type 2 reference failed on sector: %llu tag: 0x%08x ei_lba: 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@sbc_dif_v1_verify._entry_ptr.87 = internal global ptr @sbc_dif_v1_verify._entry.85, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 65, i64 147]
@__sancov_gen_cov_switch_values.88 = internal global [28 x i64] [i64 26, i64 8, i64 1, i64 8, i64 10, i64 11, i64 27, i64 37, i64 40, i64 42, i64 43, i64 46, i64 47, i64 53, i64 65, i64 66, i64 83, i64 127, i64 136, i64 137, i64 138, i64 142, i64 143, i64 145, i64 147, i64 158, i64 168, i64 170]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 7, i64 13]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 19]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.93 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 65, i64 147]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 20]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 65, i64 147]
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 974, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 987, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 995, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1006, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1037, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1064, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1074, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1088, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1147, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1304, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1442, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 803, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 810, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 730, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 769, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 789, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 685, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 711, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 367, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 290, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 296, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 305, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 312, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 324, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 529, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 556, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 461, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 480, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 493, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1189, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1203, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1215, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1221, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1331, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1343, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [36 x i8] c"../drivers/target/target_core_sbc.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1351, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__ksymtab_sbc_dif_copy_prot, ptr @__ksymtab_sbc_dif_verify, ptr @__ksymtab_sbc_get_device_type, ptr @__ksymtab_sbc_get_write_same_sectors, ptr @__ksymtab_sbc_parse_cdb, ptr @compare_and_write_callback._entry, ptr @compare_and_write_callback._entry_ptr, ptr @compare_and_write_do_cmp._entry, ptr @compare_and_write_do_cmp._entry.69, ptr @compare_and_write_do_cmp._entry_ptr, ptr @compare_and_write_do_cmp._entry_ptr.71, ptr @sbc_check_dpofua._entry, ptr @sbc_check_dpofua._entry.35, ptr @sbc_check_dpofua._entry_ptr, ptr @sbc_check_dpofua._entry_ptr.37, ptr @sbc_check_prot._entry, ptr @sbc_check_prot._entry.40, ptr @sbc_check_prot._entry_ptr, ptr @sbc_check_prot._entry_ptr.42, ptr @sbc_dif_v1_verify._entry, ptr @sbc_dif_v1_verify._entry.82, ptr @sbc_dif_v1_verify._entry.85, ptr @sbc_dif_v1_verify._entry_ptr, ptr @sbc_dif_v1_verify._entry_ptr.84, ptr @sbc_dif_v1_verify._entry_ptr.87, ptr @sbc_execute_unmap._entry, ptr @sbc_execute_unmap._entry.75, ptr @sbc_execute_unmap._entry_ptr, ptr @sbc_execute_unmap._entry_ptr.77, ptr @sbc_parse_cdb._entry, ptr @sbc_parse_cdb._entry.10, ptr @sbc_parse_cdb._entry.13, ptr @sbc_parse_cdb._entry.16, ptr @sbc_parse_cdb._entry.19, ptr @sbc_parse_cdb._entry.21, ptr @sbc_parse_cdb._entry.23, ptr @sbc_parse_cdb._entry.3, ptr @sbc_parse_cdb._entry.7, ptr @sbc_parse_cdb._entry_ptr, ptr @sbc_parse_cdb._entry_ptr.12, ptr @sbc_parse_cdb._entry_ptr.15, ptr @sbc_parse_cdb._entry_ptr.18, ptr @sbc_parse_cdb._entry_ptr.20, ptr @sbc_parse_cdb._entry_ptr.22, ptr @sbc_parse_cdb._entry_ptr.25, ptr @sbc_parse_cdb._entry_ptr.5, ptr @sbc_parse_cdb._entry_ptr.9, ptr @sbc_set_prot_op_checks._entry, ptr @sbc_set_prot_op_checks._entry.46, ptr @sbc_set_prot_op_checks._entry_ptr, ptr @sbc_set_prot_op_checks._entry_ptr.47, ptr @sbc_setup_write_same._entry, ptr @sbc_setup_write_same._entry.52, ptr @sbc_setup_write_same._entry.55, ptr @sbc_setup_write_same._entry.58, ptr @sbc_setup_write_same._entry.61, ptr @sbc_setup_write_same._entry_ptr, ptr @sbc_setup_write_same._entry_ptr.54, ptr @sbc_setup_write_same._entry_ptr.57, ptr @sbc_setup_write_same._entry_ptr.60, ptr @sbc_setup_write_same._entry_ptr.63, ptr @xdreadwrite_callback._entry, ptr @xdreadwrite_callback._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @sbc_parse_cdb._rs, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_parse_cdb._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_check_dpofua._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_check_dpofua._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_check_prot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_check_prot._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_set_prot_op_checks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_set_prot_op_checks._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdreadwrite_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_setup_write_same._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_setup_write_same._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_setup_write_same._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_setup_write_same._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_setup_write_same._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_and_write_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_and_write_do_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compare_and_write_do_cmp._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_execute_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_execute_unmap._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_dif_v1_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_dif_v1_verify._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbc_dif_v1_verify._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @sbc_get_write_same_sectors(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %0 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_task_cdb, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.else14 [
    i8 65, label %if.then
    i8 -109, label %if.then10
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3 = getelementptr i8, ptr %1, i32 7
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx3, align 1
  %conv4 = zext i16 %6 to i32
  br label %if.end18

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr i8, ptr %1, i32 10
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx12, align 1
  br label %if.end18

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16 = getelementptr i8, ptr %1, i32 28
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx16, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then10, %if.then
  %num_blocks.0 = phi i32 [ %conv4, %if.then ], [ %8, %if.then10 ], [ %10, %if.else14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_blocks.0)
  %tobool.not = icmp eq i32 %num_blocks.0, 0
  br i1 %tobool.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = zext i32 %num_blocks.0 to i64
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %11 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %se_dev, align 4
  %transport = getelementptr inbounds %struct.se_device, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_blocks, align 4
  %call23 = tail call i64 %16(ptr noundef %12) #9
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %17 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %t_task_lba, align 8
  %sub = add i64 %call23, 1
  %add = sub i64 %sub, %18
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19
  %retval.0 = phi i64 [ %conv20, %if.then19 ], [ %add, %if.end21 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sbc_parse_cdb(ptr noundef %cmd, ptr noundef %ops) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %size, align 4, !annotation !172
  %protocol_data = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 29
  %5 = ptrtoint ptr %protocol_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %protocol_data, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %7, label %sw.default338 [
    i8 8, label %sw.bb
    i8 40, label %sw.bb3
    i8 -88, label %sw.bb19
    i8 -120, label %sw.bb39
    i8 10, label %sw.bb58
    i8 42, label %entry.sw.bb66_crit_edge
    i8 46, label %entry.sw.bb66_crit_edge792
    i8 -86, label %sw.bb86
    i8 -118, label %entry.sw.bb106_crit_edge
    i8 -114, label %entry.sw.bb106_crit_edge793
    i8 83, label %sw.bb125
    i8 127, label %sw.bb142
    i8 -119, label %sw.bb179
    i8 37, label %sw.bb218
    i8 -98, label %sw.bb220
    i8 27, label %sw.bb336
    i8 43, label %entry.sw.bb334_crit_edge
    i8 66, label %sw.bb262
    i8 -109, label %sw.bb279
    i8 65, label %sw.bb298
    i8 47, label %entry.sw.bb318_crit_edge
    i8 -113, label %entry.sw.bb318_crit_edge794
    i8 1, label %entry.sw.bb334_crit_edge795
    i8 11, label %entry.sw.bb334_crit_edge796
    i8 53, label %if.then247
    i8 -111, label %if.else
  ]

entry.sw.bb334_crit_edge796:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb334

entry.sw.bb334_crit_edge795:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb334

entry.sw.bb318_crit_edge794:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb318

entry.sw.bb318_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb318

entry.sw.bb334_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb334

entry.sw.bb106_crit_edge793:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb106

entry.sw.bb106_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb106

entry.sw.bb66_crit_edge792:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb66

entry.sw.bb66_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb66

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %3, i32 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %conv..i = select i1 %tobool.not.i, i32 256, i32 %conv.i
  %arrayidx.i600 = getelementptr i8, ptr %3, i32 1
  %11 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i600, align 1
  %conv.i.i.i = zext i8 %12 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %arrayidx1.i.i.i = getelementptr i8, ptr %3, i32 2
  %13 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv2.i.i.i = zext i8 %14 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %arrayidx4.i.i.i = getelementptr i8, ptr %3, i32 3
  %15 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv5.i.i.i = zext i8 %16 to i32
  %shl.i.i.masked.i = and i32 %shl.i.i.i, 2031616
  %or.i.i.masked.i = or i32 %shl3.i.i.i, %shl.i.i.masked.i
  %and.i = or i32 %or.i.i.masked.i, %conv5.i.i.i
  %conv2 = zext i32 %and.i to i64
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %17 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2, ptr %t_task_lba, align 8
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %18 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %se_cmd_flags, align 8
  %or = or i32 %19, 8
  store i32 %or, ptr %se_cmd_flags, align 8
  %execute_cmd = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %20 = ptrtoint ptr %execute_cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sbc_execute_rw, ptr %execute_cmd, align 4
  br label %sw.epilog343

sw.bb3:                                           ; preds = %entry
  %arrayidx.i601 = getelementptr i8, ptr %3, i32 7
  %21 = ptrtoint ptr %arrayidx.i601 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx.i601, align 1
  %conv.i602 = zext i16 %22 to i32
  %arrayidx.i603 = getelementptr i8, ptr %3, i32 2
  %23 = ptrtoint ptr %arrayidx.i603 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx.i603, align 1
  %conv6 = zext i32 %24 to i64
  %t_task_lba7 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %25 = ptrtoint ptr %t_task_lba7 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv6, ptr %t_task_lba7, align 8
  %arrayidx.i604 = getelementptr i8, ptr %3, i32 1
  %26 = ptrtoint ptr %arrayidx.i604 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i604, align 1
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i605 = icmp eq i8 %28, 0
  br i1 %tobool.not.i605, label %sw.bb3.if.end5.i_crit_edge, label %if.then.i

sw.bb3.if.end5.i_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %sw.bb3
  %call.i = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call.i, label %if.then.i.if.end5.i_crit_edge, label %do.end.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %conv3.i = zext i8 %30 to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3.i) #12
  br label %cleanup381

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %sw.bb3.if.end5.i_crit_edge
  %31 = ptrtoint ptr %arrayidx.i604 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i604, align 1
  %33 = and i8 %32, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool9.not.i = icmp eq i8 %33, 0
  br i1 %tobool9.not.i, label %if.end5.i.if.end_crit_edge, label %if.then10.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i:                                      ; preds = %if.end5.i
  %call11.i = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call11.i, label %if.end19.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %conv17.i = zext i8 %35 to i32
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17.i) #12
  br label %cleanup381

if.end19.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %36 = ptrtoint ptr %se_cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %se_cmd_flags.i, align 8
  %or.i = or i32 %37, 32
  store i32 %or.i, ptr %se_cmd_flags.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end19.i, %if.end5.i.if.end_crit_edge
  %38 = ptrtoint ptr %arrayidx.i604 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i604, align 1
  %40 = lshr i8 %39, 5
  %call12 = tail call fastcc i32 @sbc_check_prot(ptr noundef %1, ptr noundef %cmd, i8 noundef zeroext %40, i32 noundef %conv.i602, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup381_crit_edge

if.end.cleanup381_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags16 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %41 = ptrtoint ptr %se_cmd_flags16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %se_cmd_flags16, align 8
  %or17 = or i32 %42, 8
  store i32 %or17, ptr %se_cmd_flags16, align 8
  %execute_cmd18 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %43 = ptrtoint ptr %execute_cmd18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @sbc_execute_rw, ptr %execute_cmd18, align 4
  br label %sw.epilog343

sw.bb19:                                          ; preds = %entry
  %arrayidx.i606 = getelementptr i8, ptr %3, i32 6
  %44 = ptrtoint ptr %arrayidx.i606 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx.i606, align 1
  %arrayidx.i607 = getelementptr i8, ptr %3, i32 2
  %46 = ptrtoint ptr %arrayidx.i607 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx.i607, align 1
  %conv22 = zext i32 %47 to i64
  %t_task_lba23 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %48 = ptrtoint ptr %t_task_lba23 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv22, ptr %t_task_lba23, align 8
  %arrayidx.i608 = getelementptr i8, ptr %3, i32 1
  %49 = ptrtoint ptr %arrayidx.i608 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i608, align 1
  %51 = and i8 %50, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i609 = icmp eq i8 %51, 0
  br i1 %tobool.not.i609, label %sw.bb19.if.end5.i616_crit_edge, label %if.then.i611

sw.bb19.if.end5.i616_crit_edge:                   ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i616

if.then.i611:                                     ; preds = %sw.bb19
  %call.i610 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call.i610, label %if.then.i611.if.end5.i616_crit_edge, label %do.end.i614

if.then.i611.if.end5.i616_crit_edge:              ; preds = %if.then.i611
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i616

do.end.i614:                                      ; preds = %if.then.i611
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %3, align 1
  %conv3.i612 = zext i8 %53 to i32
  %call4.i613 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3.i612) #12
  br label %cleanup381

if.end5.i616:                                     ; preds = %if.then.i611.if.end5.i616_crit_edge, %sw.bb19.if.end5.i616_crit_edge
  %54 = ptrtoint ptr %arrayidx.i608 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i608, align 1
  %56 = and i8 %55, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool9.not.i615 = icmp eq i8 %56, 0
  br i1 %tobool9.not.i615, label %if.end5.i616.if.end27_crit_edge, label %if.then10.i618

if.end5.i616.if.end27_crit_edge:                  ; preds = %if.end5.i616
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then10.i618:                                   ; preds = %if.end5.i616
  %call11.i617 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call11.i617, label %if.end19.i624, label %do.end14.i621

do.end14.i621:                                    ; preds = %if.then10.i618
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %3, align 1
  %conv17.i619 = zext i8 %58 to i32
  %call18.i620 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17.i619) #12
  br label %cleanup381

if.end19.i624:                                    ; preds = %if.then10.i618
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags.i622 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %59 = ptrtoint ptr %se_cmd_flags.i622 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %se_cmd_flags.i622, align 8
  %or.i623 = or i32 %60, 32
  store i32 %or.i623, ptr %se_cmd_flags.i622, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end19.i624, %if.end5.i616.if.end27_crit_edge
  %61 = ptrtoint ptr %arrayidx.i608 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i608, align 1
  %63 = lshr i8 %62, 5
  %call32 = tail call fastcc i32 @sbc_check_prot(ptr noundef %1, ptr noundef %cmd, i8 noundef zeroext %63, i32 noundef %45, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end27.cleanup381_crit_edge

if.end27.cleanup381_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags36 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %64 = ptrtoint ptr %se_cmd_flags36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %se_cmd_flags36, align 8
  %or37 = or i32 %65, 8
  store i32 %or37, ptr %se_cmd_flags36, align 8
  %execute_cmd38 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %66 = ptrtoint ptr %execute_cmd38 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @sbc_execute_rw, ptr %execute_cmd38, align 4
  br label %sw.epilog343

sw.bb39:                                          ; preds = %entry
  %arrayidx.i627 = getelementptr i8, ptr %3, i32 10
  %67 = ptrtoint ptr %arrayidx.i627 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %arrayidx.i627, align 1
  %arrayidx.i628 = getelementptr i8, ptr %3, i32 2
  %69 = ptrtoint ptr %arrayidx.i628 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %arrayidx.i628, align 1
  %t_task_lba42 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %71 = ptrtoint ptr %t_task_lba42 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %t_task_lba42, align 8
  %arrayidx.i629 = getelementptr i8, ptr %3, i32 1
  %72 = ptrtoint ptr %arrayidx.i629 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i629, align 1
  %74 = and i8 %73, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i630 = icmp eq i8 %74, 0
  br i1 %tobool.not.i630, label %sw.bb39.if.end5.i637_crit_edge, label %if.then.i632

sw.bb39.if.end5.i637_crit_edge:                   ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i637

if.then.i632:                                     ; preds = %sw.bb39
  %call.i631 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call.i631, label %if.then.i632.if.end5.i637_crit_edge, label %do.end.i635

if.then.i632.if.end5.i637_crit_edge:              ; preds = %if.then.i632
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i637

do.end.i635:                                      ; preds = %if.then.i632
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %3, align 1
  %conv3.i633 = zext i8 %76 to i32
  %call4.i634 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3.i633) #12
  br label %cleanup381

if.end5.i637:                                     ; preds = %if.then.i632.if.end5.i637_crit_edge, %sw.bb39.if.end5.i637_crit_edge
  %77 = ptrtoint ptr %arrayidx.i629 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i629, align 1
  %79 = and i8 %78, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool9.not.i636 = icmp eq i8 %79, 0
  br i1 %tobool9.not.i636, label %if.end5.i637.if.end46_crit_edge, label %if.then10.i639

if.end5.i637.if.end46_crit_edge:                  ; preds = %if.end5.i637
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then10.i639:                                   ; preds = %if.end5.i637
  %call11.i638 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call11.i638, label %if.end19.i645, label %do.end14.i642

do.end14.i642:                                    ; preds = %if.then10.i639
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %3, align 1
  %conv17.i640 = zext i8 %81 to i32
  %call18.i641 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17.i640) #12
  br label %cleanup381

if.end19.i645:                                    ; preds = %if.then10.i639
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags.i643 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %82 = ptrtoint ptr %se_cmd_flags.i643 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %se_cmd_flags.i643, align 8
  %or.i644 = or i32 %83, 32
  store i32 %or.i644, ptr %se_cmd_flags.i643, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end19.i645, %if.end5.i637.if.end46_crit_edge
  %84 = ptrtoint ptr %arrayidx.i629 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i629, align 1
  %86 = lshr i8 %85, 5
  %call51 = tail call fastcc i32 @sbc_check_prot(ptr noundef %1, ptr noundef %cmd, i8 noundef zeroext %86, i32 noundef %68, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end46.cleanup381_crit_edge

if.end46.cleanup381_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags55 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %87 = ptrtoint ptr %se_cmd_flags55 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %se_cmd_flags55, align 8
  %or56 = or i32 %88, 8
  store i32 %or56, ptr %se_cmd_flags55, align 8
  %execute_cmd57 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %89 = ptrtoint ptr %execute_cmd57 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @sbc_execute_rw, ptr %execute_cmd57, align 4
  br label %sw.epilog343

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i648 = getelementptr i8, ptr %3, i32 4
  %90 = ptrtoint ptr %arrayidx.i648 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i648, align 1
  %conv.i649 = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i650 = icmp eq i8 %91, 0
  %conv..i651 = select i1 %tobool.not.i650, i32 256, i32 %conv.i649
  %arrayidx.i652 = getelementptr i8, ptr %3, i32 1
  %92 = ptrtoint ptr %arrayidx.i652 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i652, align 1
  %conv.i.i.i653 = zext i8 %93 to i32
  %shl.i.i.i654 = shl nuw nsw i32 %conv.i.i.i653, 16
  %arrayidx1.i.i.i655 = getelementptr i8, ptr %3, i32 2
  %94 = ptrtoint ptr %arrayidx1.i.i.i655 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx1.i.i.i655, align 1
  %conv2.i.i.i656 = zext i8 %95 to i32
  %shl3.i.i.i657 = shl nuw nsw i32 %conv2.i.i.i656, 8
  %arrayidx4.i.i.i658 = getelementptr i8, ptr %3, i32 3
  %96 = ptrtoint ptr %arrayidx4.i.i.i658 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx4.i.i.i658, align 1
  %conv5.i.i.i659 = zext i8 %97 to i32
  %shl.i.i.masked.i660 = and i32 %shl.i.i.i654, 2031616
  %or.i.i.masked.i661 = or i32 %shl3.i.i.i657, %shl.i.i.masked.i660
  %and.i662 = or i32 %or.i.i.masked.i661, %conv5.i.i.i659
  %conv61 = zext i32 %and.i662 to i64
  %t_task_lba62 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %98 = ptrtoint ptr %t_task_lba62 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv61, ptr %t_task_lba62, align 8
  %se_cmd_flags63 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %99 = ptrtoint ptr %se_cmd_flags63 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %se_cmd_flags63, align 8
  %or64 = or i32 %100, 8
  store i32 %or64, ptr %se_cmd_flags63, align 8
  %execute_cmd65 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %101 = ptrtoint ptr %execute_cmd65 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @sbc_execute_rw, ptr %execute_cmd65, align 4
  br label %sw.epilog343

sw.bb66:                                          ; preds = %entry.sw.bb66_crit_edge, %entry.sw.bb66_crit_edge792
  %arrayidx.i663 = getelementptr i8, ptr %3, i32 7
  %102 = ptrtoint ptr %arrayidx.i663 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %arrayidx.i663, align 1
  %conv.i664 = zext i16 %103 to i32
  %arrayidx.i665 = getelementptr i8, ptr %3, i32 2
  %104 = ptrtoint ptr %arrayidx.i665 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %arrayidx.i665, align 1
  %conv69 = zext i32 %105 to i64
  %t_task_lba70 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %106 = ptrtoint ptr %t_task_lba70 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv69, ptr %t_task_lba70, align 8
  %arrayidx.i666 = getelementptr i8, ptr %3, i32 1
  %107 = ptrtoint ptr %arrayidx.i666 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i666, align 1
  %109 = and i8 %108, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i667 = icmp eq i8 %109, 0
  br i1 %tobool.not.i667, label %sw.bb66.if.end5.i674_crit_edge, label %if.then.i669

sw.bb66.if.end5.i674_crit_edge:                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i674

if.then.i669:                                     ; preds = %sw.bb66
  %call.i668 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call.i668, label %if.then.i669.if.end5.i674_crit_edge, label %do.end.i672

if.then.i669.if.end5.i674_crit_edge:              ; preds = %if.then.i669
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i674

do.end.i672:                                      ; preds = %if.then.i669
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %3, align 1
  %conv3.i670 = zext i8 %111 to i32
  %call4.i671 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3.i670) #12
  br label %cleanup381

if.end5.i674:                                     ; preds = %if.then.i669.if.end5.i674_crit_edge, %sw.bb66.if.end5.i674_crit_edge
  %112 = ptrtoint ptr %arrayidx.i666 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i666, align 1
  %114 = and i8 %113, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool9.not.i673 = icmp eq i8 %114, 0
  br i1 %tobool9.not.i673, label %if.end5.i674.if.end74_crit_edge, label %if.then10.i676

if.end5.i674.if.end74_crit_edge:                  ; preds = %if.end5.i674
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then10.i676:                                   ; preds = %if.end5.i674
  %call11.i675 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call11.i675, label %if.end19.i682, label %do.end14.i679

do.end14.i679:                                    ; preds = %if.then10.i676
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %3, align 1
  %conv17.i677 = zext i8 %116 to i32
  %call18.i678 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17.i677) #12
  br label %cleanup381

if.end19.i682:                                    ; preds = %if.then10.i676
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags.i680 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %117 = ptrtoint ptr %se_cmd_flags.i680 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %se_cmd_flags.i680, align 8
  %or.i681 = or i32 %118, 32
  store i32 %or.i681, ptr %se_cmd_flags.i680, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end19.i682, %if.end5.i674.if.end74_crit_edge
  %119 = ptrtoint ptr %arrayidx.i666 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i666, align 1
  %121 = lshr i8 %120, 5
  %call79 = tail call fastcc i32 @sbc_check_prot(ptr noundef %1, ptr noundef %cmd, i8 noundef zeroext %121, i32 noundef %conv.i664, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end74.cleanup381_crit_edge

if.end74.cleanup381_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags83 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %122 = ptrtoint ptr %se_cmd_flags83 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %se_cmd_flags83, align 8
  %or84 = or i32 %123, 8
  store i32 %or84, ptr %se_cmd_flags83, align 8
  %execute_cmd85 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %124 = ptrtoint ptr %execute_cmd85 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @sbc_execute_rw, ptr %execute_cmd85, align 4
  br label %sw.epilog343

sw.bb86:                                          ; preds = %entry
  %arrayidx.i685 = getelementptr i8, ptr %3, i32 6
  %125 = ptrtoint ptr %arrayidx.i685 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %arrayidx.i685, align 1
  %arrayidx.i686 = getelementptr i8, ptr %3, i32 2
  %127 = ptrtoint ptr %arrayidx.i686 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %arrayidx.i686, align 1
  %conv89 = zext i32 %128 to i64
  %t_task_lba90 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %129 = ptrtoint ptr %t_task_lba90 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv89, ptr %t_task_lba90, align 8
  %arrayidx.i687 = getelementptr i8, ptr %3, i32 1
  %130 = ptrtoint ptr %arrayidx.i687 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i687, align 1
  %132 = and i8 %131, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i688 = icmp eq i8 %132, 0
  br i1 %tobool.not.i688, label %sw.bb86.if.end5.i695_crit_edge, label %if.then.i690

sw.bb86.if.end5.i695_crit_edge:                   ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i695

if.then.i690:                                     ; preds = %sw.bb86
  %call.i689 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call.i689, label %if.then.i690.if.end5.i695_crit_edge, label %do.end.i693

if.then.i690.if.end5.i695_crit_edge:              ; preds = %if.then.i690
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i695

do.end.i693:                                      ; preds = %if.then.i690
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %3, align 1
  %conv3.i691 = zext i8 %134 to i32
  %call4.i692 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3.i691) #12
  br label %cleanup381

if.end5.i695:                                     ; preds = %if.then.i690.if.end5.i695_crit_edge, %sw.bb86.if.end5.i695_crit_edge
  %135 = ptrtoint ptr %arrayidx.i687 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i687, align 1
  %137 = and i8 %136, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool9.not.i694 = icmp eq i8 %137, 0
  br i1 %tobool9.not.i694, label %if.end5.i695.if.end94_crit_edge, label %if.then10.i697

if.end5.i695.if.end94_crit_edge:                  ; preds = %if.end5.i695
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then10.i697:                                   ; preds = %if.end5.i695
  %call11.i696 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call11.i696, label %if.end19.i703, label %do.end14.i700

do.end14.i700:                                    ; preds = %if.then10.i697
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %3, align 1
  %conv17.i698 = zext i8 %139 to i32
  %call18.i699 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17.i698) #12
  br label %cleanup381

if.end19.i703:                                    ; preds = %if.then10.i697
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags.i701 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %140 = ptrtoint ptr %se_cmd_flags.i701 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %se_cmd_flags.i701, align 8
  %or.i702 = or i32 %141, 32
  store i32 %or.i702, ptr %se_cmd_flags.i701, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.end19.i703, %if.end5.i695.if.end94_crit_edge
  %142 = ptrtoint ptr %arrayidx.i687 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i687, align 1
  %144 = lshr i8 %143, 5
  %call99 = tail call fastcc i32 @sbc_check_prot(ptr noundef %1, ptr noundef %cmd, i8 noundef zeroext %144, i32 noundef %126, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end94.cleanup381_crit_edge

if.end94.cleanup381_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end102:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags103 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %145 = ptrtoint ptr %se_cmd_flags103 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %se_cmd_flags103, align 8
  %or104 = or i32 %146, 8
  store i32 %or104, ptr %se_cmd_flags103, align 8
  %execute_cmd105 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %147 = ptrtoint ptr %execute_cmd105 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @sbc_execute_rw, ptr %execute_cmd105, align 4
  br label %sw.epilog343

sw.bb106:                                         ; preds = %entry.sw.bb106_crit_edge, %entry.sw.bb106_crit_edge793
  %arrayidx.i706 = getelementptr i8, ptr %3, i32 10
  %148 = ptrtoint ptr %arrayidx.i706 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %arrayidx.i706, align 1
  %arrayidx.i707 = getelementptr i8, ptr %3, i32 2
  %150 = ptrtoint ptr %arrayidx.i707 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 8)
  %151 = load i64, ptr %arrayidx.i707, align 1
  %t_task_lba109 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %152 = ptrtoint ptr %t_task_lba109 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %t_task_lba109, align 8
  %arrayidx.i708 = getelementptr i8, ptr %3, i32 1
  %153 = ptrtoint ptr %arrayidx.i708 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i708, align 1
  %155 = and i8 %154, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i709 = icmp eq i8 %155, 0
  br i1 %tobool.not.i709, label %sw.bb106.if.end5.i716_crit_edge, label %if.then.i711

sw.bb106.if.end5.i716_crit_edge:                  ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i716

if.then.i711:                                     ; preds = %sw.bb106
  %call.i710 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call.i710, label %if.then.i711.if.end5.i716_crit_edge, label %do.end.i714

if.then.i711.if.end5.i716_crit_edge:              ; preds = %if.then.i711
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i716

do.end.i714:                                      ; preds = %if.then.i711
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %3, align 1
  %conv3.i712 = zext i8 %157 to i32
  %call4.i713 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3.i712) #12
  br label %cleanup381

if.end5.i716:                                     ; preds = %if.then.i711.if.end5.i716_crit_edge, %sw.bb106.if.end5.i716_crit_edge
  %158 = ptrtoint ptr %arrayidx.i708 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i708, align 1
  %160 = and i8 %159, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool9.not.i715 = icmp eq i8 %160, 0
  br i1 %tobool9.not.i715, label %if.end5.i716.if.end113_crit_edge, label %if.then10.i718

if.end5.i716.if.end113_crit_edge:                 ; preds = %if.end5.i716
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then10.i718:                                   ; preds = %if.end5.i716
  %call11.i717 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call11.i717, label %if.end19.i724, label %do.end14.i721

do.end14.i721:                                    ; preds = %if.then10.i718
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %3, align 1
  %conv17.i719 = zext i8 %162 to i32
  %call18.i720 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17.i719) #12
  br label %cleanup381

if.end19.i724:                                    ; preds = %if.then10.i718
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags.i722 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %163 = ptrtoint ptr %se_cmd_flags.i722 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %se_cmd_flags.i722, align 8
  %or.i723 = or i32 %164, 32
  store i32 %or.i723, ptr %se_cmd_flags.i722, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.end19.i724, %if.end5.i716.if.end113_crit_edge
  %165 = ptrtoint ptr %arrayidx.i708 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx.i708, align 1
  %167 = lshr i8 %166, 5
  %call118 = tail call fastcc i32 @sbc_check_prot(ptr noundef %1, ptr noundef %cmd, i8 noundef zeroext %167, i32 noundef %149, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end113.cleanup381_crit_edge

if.end113.cleanup381_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end121:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags122 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %168 = ptrtoint ptr %se_cmd_flags122 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %se_cmd_flags122, align 8
  %or123 = or i32 %169, 8
  store i32 %or123, ptr %se_cmd_flags122, align 8
  %execute_cmd124 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %170 = ptrtoint ptr %execute_cmd124 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @sbc_execute_rw, ptr %execute_cmd124, align 4
  br label %sw.epilog343

sw.bb125:                                         ; preds = %entry
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %171 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %172)
  %cmp.not = icmp eq i32 %172, 1
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb125.cleanup381_crit_edge

sw.bb125.cleanup381_crit_edge:                    ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

lor.lhs.false:                                    ; preds = %sw.bb125
  %se_cmd_flags127 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %173 = ptrtoint ptr %se_cmd_flags127 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %se_cmd_flags127, align 8
  %and = and i32 %174, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool128.not = icmp eq i32 %and, 0
  br i1 %tobool128.not, label %lor.lhs.false.cleanup381_crit_edge, label %if.end130

lor.lhs.false.cleanup381_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end130:                                        ; preds = %lor.lhs.false
  %arrayidx.i727 = getelementptr i8, ptr %3, i32 7
  %175 = ptrtoint ptr %arrayidx.i727 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %176 = load i16, ptr %arrayidx.i727, align 1
  %call132 = tail call fastcc i32 @sbc_check_dpofua(ptr noundef %1, ptr noundef %cmd, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end130.cleanup381_crit_edge

if.end130.cleanup381_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end135:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i728 = zext i16 %176 to i32
  %arrayidx.i729 = getelementptr i8, ptr %3, i32 2
  %177 = ptrtoint ptr %arrayidx.i729 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %arrayidx.i729, align 1
  %conv137 = zext i32 %178 to i64
  %t_task_lba138 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %179 = ptrtoint ptr %t_task_lba138 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %conv137, ptr %t_task_lba138, align 8
  %180 = ptrtoint ptr %se_cmd_flags127 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %se_cmd_flags127, align 8
  %or140 = or i32 %181, 8
  store i32 %or140, ptr %se_cmd_flags127, align 8
  %execute_cmd141 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %182 = ptrtoint ptr %execute_cmd141 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @sbc_execute_rw, ptr %execute_cmd141, align 4
  %transport_complete_callback = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 28
  %183 = ptrtoint ptr %transport_complete_callback to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @xdreadwrite_callback, ptr %transport_complete_callback, align 8
  br label %sw.epilog343

sw.bb142:                                         ; preds = %entry
  %arrayidx143 = getelementptr i8, ptr %3, i32 8
  %184 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 2)
  %185 = load i16, ptr %arrayidx143, align 1
  %186 = zext i16 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %185, label %do.end175 [
    i16 7, label %sw.bb146
    i16 13, label %sw.bb158
  ]

sw.bb146:                                         ; preds = %sw.bb142
  %arrayidx.i730 = getelementptr i8, ptr %3, i32 28
  %187 = ptrtoint ptr %arrayidx.i730 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %arrayidx.i730, align 1
  %call148 = tail call fastcc i32 @sbc_check_dpofua(ptr noundef %1, ptr noundef %cmd, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %sw.bb146.cleanup381_crit_edge

sw.bb146.cleanup381_crit_edge:                    ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end151:                                        ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i731 = getelementptr i8, ptr %3, i32 12
  %189 = ptrtoint ptr %arrayidx.i731 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 8)
  %190 = load i64, ptr %arrayidx.i731, align 1
  %t_task_lba153 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %191 = ptrtoint ptr %t_task_lba153 to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %t_task_lba153, align 8
  %se_cmd_flags154 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %192 = ptrtoint ptr %se_cmd_flags154 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %se_cmd_flags154, align 8
  %or155 = or i32 %193, 8
  store i32 %or155, ptr %se_cmd_flags154, align 8
  %execute_cmd156 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %194 = ptrtoint ptr %execute_cmd156 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @sbc_execute_rw, ptr %execute_cmd156, align 4
  %transport_complete_callback157 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 28
  %195 = ptrtoint ptr %transport_complete_callback157 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @xdreadwrite_callback, ptr %transport_complete_callback157, align 8
  br label %sw.epilog343

sw.bb158:                                         ; preds = %sw.bb142
  %arrayidx.i732 = getelementptr i8, ptr %3, i32 28
  %196 = ptrtoint ptr %arrayidx.i732 to i32
  call void @__asan_loadN_noabort(i32 %196, i32 4)
  %197 = load i32, ptr %arrayidx.i732, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool160.not = icmp eq i32 %197, 0
  br i1 %tobool160.not, label %do.end, label %if.end163

do.end:                                           ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #11
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup381

if.end163:                                        ; preds = %sw.bb158
  %block_size.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %198 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %block_size.i, align 8
  %200 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %size, align 4
  %arrayidx165 = getelementptr i8, ptr %3, i32 12
  %201 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 8)
  %202 = load i64, ptr %arrayidx165, align 1
  %t_task_lba167 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %203 = ptrtoint ptr %t_task_lba167 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %t_task_lba167, align 8
  %arrayidx168 = getelementptr i8, ptr %3, i32 10
  %204 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx168, align 1
  %call169 = tail call fastcc i32 @sbc_setup_write_same(ptr noundef %cmd, i8 noundef zeroext %205, ptr noundef %ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end163.sw.epilog343_crit_edge, label %if.end163.cleanup381_crit_edge

if.end163.cleanup381_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end163.sw.epilog343_crit_edge:                 ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog343

do.end175:                                        ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #11
  %conv145 = zext i16 %185 to i32
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv145) #12
  br label %cleanup381

sw.bb179:                                         ; preds = %entry
  %emulate_caw = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 9
  %206 = ptrtoint ptr %emulate_caw to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %emulate_caw, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool180.not = icmp eq i8 %207, 0
  br i1 %tobool180.not, label %if.then181, label %if.end194

if.then181:                                       ; preds = %sw.bb179
  %call182 = tail call i32 @___ratelimit(ptr noundef nonnull @sbc_parse_cdb._rs, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then181.cleanup381_crit_edge, label %do.end187

if.then181.cleanup381_crit_edge:                  ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

do.end187:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  %se_hba = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 35
  %208 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %se_hba, align 8
  %backend = getelementptr inbounds %struct.se_hba, ptr %209, i32 0, i32 10
  %210 = ptrtoint ptr %backend to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %backend, align 4
  %ops189 = getelementptr inbounds %struct.target_backend, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %ops189 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ops189, align 4
  %dev_group = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 41
  %214 = ptrtoint ptr %dev_group to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev_group, align 4
  %unit_serial = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 36, i32 3
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %213, ptr noundef %215, ptr noundef %unit_serial) #12
  br label %cleanup381

if.end194:                                        ; preds = %sw.bb179
  %arrayidx195 = getelementptr i8, ptr %3, i32 13
  %216 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %217 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %217)
  %cmp197 = icmp ugt i8 %217, 1
  br i1 %cmp197, label %do.end202, label %if.end205

do.end202:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv196) #12
  br label %cleanup381

if.end205:                                        ; preds = %if.end194
  %arrayidx.i733 = getelementptr i8, ptr %3, i32 1
  %218 = ptrtoint ptr %arrayidx.i733 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i733, align 1
  %220 = and i8 %219, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool.not.i734 = icmp eq i8 %220, 0
  br i1 %tobool.not.i734, label %if.end205.if.end5.i741_crit_edge, label %if.then.i736

if.end205.if.end5.i741_crit_edge:                 ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i741

if.then.i736:                                     ; preds = %if.end205
  %call.i735 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call.i735, label %if.then.i736.if.end5.i741_crit_edge, label %do.end.i739

if.then.i736.if.end5.i741_crit_edge:              ; preds = %if.then.i736
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i741

do.end.i739:                                      ; preds = %if.then.i736
  call void @__sanitizer_cov_trace_pc() #11
  %221 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %3, align 1
  %conv3.i737 = zext i8 %222 to i32
  %call4.i738 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3.i737) #12
  br label %cleanup381

if.end5.i741:                                     ; preds = %if.then.i736.if.end5.i741_crit_edge, %if.end205.if.end5.i741_crit_edge
  %223 = ptrtoint ptr %arrayidx.i733 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx.i733, align 1
  %225 = and i8 %224, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool9.not.i740 = icmp eq i8 %225, 0
  br i1 %tobool9.not.i740, label %if.end5.i741.if.end209_crit_edge, label %if.then10.i743

if.end5.i741.if.end209_crit_edge:                 ; preds = %if.end5.i741
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then10.i743:                                   ; preds = %if.end5.i741
  %call11.i742 = tail call zeroext i1 @target_check_fua(ptr noundef %1) #9
  br i1 %call11.i742, label %if.end19.i749, label %do.end14.i746

do.end14.i746:                                    ; preds = %if.then10.i743
  call void @__sanitizer_cov_trace_pc() #11
  %226 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %3, align 1
  %conv17.i744 = zext i8 %227 to i32
  %call18.i745 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17.i744) #12
  br label %cleanup381

if.end19.i749:                                    ; preds = %if.then10.i743
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags.i747 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %228 = ptrtoint ptr %se_cmd_flags.i747 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %se_cmd_flags.i747, align 8
  %or.i748 = or i32 %229, 32
  store i32 %or.i748, ptr %se_cmd_flags.i747, align 8
  br label %if.end209

if.end209:                                        ; preds = %if.end19.i749, %if.end5.i741.if.end209_crit_edge
  %230 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %se_dev, align 4
  %block_size.i753 = getelementptr inbounds %struct.se_device, ptr %231, i32 0, i32 39, i32 21
  %232 = ptrtoint ptr %block_size.i753 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %block_size.i753, align 8
  %mul.i = shl nuw nsw i32 %conv196, 1
  %mul = mul i32 %mul.i, %233
  %234 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %mul, ptr %size, align 4
  %arrayidx211 = getelementptr i8, ptr %3, i32 2
  %235 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 8)
  %236 = load i64, ptr %arrayidx211, align 1
  %t_task_lba213 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %237 = ptrtoint ptr %t_task_lba213 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %236, ptr %t_task_lba213, align 8
  %t_task_nolb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 33
  %238 = ptrtoint ptr %t_task_nolb to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %conv196, ptr %t_task_nolb, align 8
  %se_cmd_flags214 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %239 = ptrtoint ptr %se_cmd_flags214 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %se_cmd_flags214, align 8
  %or215 = or i32 %240, 8200
  store i32 %or215, ptr %se_cmd_flags214, align 8
  %execute_cmd216 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %241 = ptrtoint ptr %execute_cmd216 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @sbc_compare_and_write, ptr %execute_cmd216, align 4
  %transport_complete_callback217 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 28
  %242 = ptrtoint ptr %transport_complete_callback217 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @compare_and_write_callback, ptr %transport_complete_callback217, align 8
  br label %sw.epilog343

sw.bb218:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %243 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 8, ptr %size, align 4
  %execute_cmd219 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %244 = ptrtoint ptr %execute_cmd219 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr @sbc_emulate_readcapacity, ptr %execute_cmd219, align 4
  br label %sw.epilog343

sw.bb220:                                         ; preds = %entry
  %arrayidx222 = getelementptr i8, ptr %3, i32 1
  %245 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx222, align 1
  %247 = and i8 %246, 31
  %and224 = zext i8 %247 to i32
  %248 = zext i32 %and224 to i64
  call void @__sanitizer_cov_trace_switch(i64 %248, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %and224, label %do.end232 [
    i32 16, label %sw.bb220.sw.epilog239_crit_edge
    i32 19, label %sw.bb227
  ]

sw.bb220.sw.epilog239_crit_edge:                  ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog239

sw.bb227:                                         ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog239

do.end232:                                        ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #11
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %and224) #12
  br label %cleanup381

sw.epilog239:                                     ; preds = %sw.bb227, %sw.bb220.sw.epilog239_crit_edge
  %target_emulate_report_referrals.sink = phi ptr [ @target_emulate_report_referrals, %sw.bb227 ], [ @sbc_emulate_readcapacity_16, %sw.bb220.sw.epilog239_crit_edge ]
  %execute_cmd228 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %249 = ptrtoint ptr %execute_cmd228 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %target_emulate_report_referrals.sink, ptr %execute_cmd228, align 4
  %arrayidx240 = getelementptr i8, ptr %3, i32 10
  %250 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load i32, ptr %arrayidx240, align 1
  %252 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %size, align 4
  br label %sw.epilog343

if.then247:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i754 = getelementptr i8, ptr %3, i32 7
  %253 = ptrtoint ptr %arrayidx.i754 to i32
  call void @__asan_loadN_noabort(i32 %253, i32 2)
  %254 = load i16, ptr %arrayidx.i754, align 1
  %conv.i755 = zext i16 %254 to i32
  %arrayidx.i756 = getelementptr i8, ptr %3, i32 2
  %255 = ptrtoint ptr %arrayidx.i756 to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %256 = load i32, ptr %arrayidx.i756, align 1
  %conv250 = zext i32 %256 to i64
  br label %if.end255

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i757 = getelementptr i8, ptr %3, i32 10
  %257 = ptrtoint ptr %arrayidx.i757 to i32
  call void @__asan_loadN_noabort(i32 %257, i32 4)
  %258 = load i32, ptr %arrayidx.i757, align 1
  %arrayidx.i758 = getelementptr i8, ptr %3, i32 2
  %259 = ptrtoint ptr %arrayidx.i758 to i32
  call void @__asan_loadN_noabort(i32 %259, i32 8)
  %260 = load i64, ptr %arrayidx.i758, align 1
  br label %if.end255

if.end255:                                        ; preds = %if.else, %if.then247
  %.sink791 = phi i64 [ %260, %if.else ], [ %conv250, %if.then247 ]
  %sectors.2 = phi i32 [ %258, %if.else ], [ %conv.i755, %if.then247 ]
  %t_task_lba254 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %261 = ptrtoint ptr %t_task_lba254 to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %.sink791, ptr %t_task_lba254, align 8
  %execute_sync_cache = getelementptr inbounds %struct.sbc_ops, ptr %ops, i32 0, i32 1
  %262 = ptrtoint ptr %execute_sync_cache to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %execute_sync_cache, align 4
  %tobool256.not = icmp eq ptr %263, null
  br i1 %tobool256.not, label %if.end260, label %if.end255.check_lba.sink.split_crit_edge

if.end255.check_lba.sink.split_crit_edge:         ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_lba.sink.split

if.end260:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  %264 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %size, align 4
  %execute_cmd261 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %265 = ptrtoint ptr %execute_cmd261 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @sbc_emulate_noop, ptr %execute_cmd261, align 4
  br label %sw.epilog343

sw.bb262:                                         ; preds = %entry
  %execute_unmap = getelementptr inbounds %struct.sbc_ops, ptr %ops, i32 0, i32 3
  %266 = ptrtoint ptr %execute_unmap to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %execute_unmap, align 4
  %tobool263.not = icmp eq ptr %267, null
  br i1 %tobool263.not, label %sw.bb262.cleanup381_crit_edge, label %if.end265

sw.bb262.cleanup381_crit_edge:                    ; preds = %sw.bb262
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end265:                                        ; preds = %sw.bb262
  %emulate_tpu = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 7
  %268 = ptrtoint ptr %emulate_tpu to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %emulate_tpu, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool267.not = icmp eq i8 %269, 0
  br i1 %tobool267.not, label %do.end271, label %if.end274

do.end271:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %cleanup381

if.end274:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx275 = getelementptr i8, ptr %3, i32 7
  %270 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_loadN_noabort(i32 %270, i32 2)
  %271 = load i16, ptr %arrayidx275, align 1
  %conv277 = zext i16 %271 to i32
  %272 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %conv277, ptr %size, align 4
  %execute_cmd278 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %273 = ptrtoint ptr %execute_cmd278 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr @sbc_execute_unmap, ptr %execute_cmd278, align 4
  br label %sw.epilog343

sw.bb279:                                         ; preds = %entry
  %arrayidx.i759 = getelementptr i8, ptr %3, i32 10
  %274 = ptrtoint ptr %arrayidx.i759 to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %arrayidx.i759, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool281.not = icmp eq i32 %275, 0
  br i1 %tobool281.not, label %do.end285, label %if.end288

do.end285:                                        ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #11
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup381

if.end288:                                        ; preds = %sw.bb279
  %block_size.i761 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %276 = ptrtoint ptr %block_size.i761 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %block_size.i761, align 8
  %278 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %size, align 4
  %arrayidx290 = getelementptr i8, ptr %3, i32 2
  %279 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_loadN_noabort(i32 %279, i32 8)
  %280 = load i64, ptr %arrayidx290, align 1
  %t_task_lba292 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %281 = ptrtoint ptr %t_task_lba292 to i32
  call void @__asan_store8_noabort(i32 %281)
  store i64 %280, ptr %t_task_lba292, align 8
  %arrayidx293 = getelementptr i8, ptr %3, i32 1
  %282 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx293, align 1
  %call294 = tail call fastcc i32 @sbc_setup_write_same(ptr noundef %cmd, i8 noundef zeroext %283, ptr noundef %ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.end288.sw.epilog343_crit_edge, label %if.end288.cleanup381_crit_edge

if.end288.cleanup381_crit_edge:                   ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end288.sw.epilog343_crit_edge:                 ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog343

sw.bb298:                                         ; preds = %entry
  %arrayidx.i762 = getelementptr i8, ptr %3, i32 7
  %284 = ptrtoint ptr %arrayidx.i762 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 2)
  %285 = load i16, ptr %arrayidx.i762, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %285)
  %tobool300.not = icmp eq i16 %285, 0
  br i1 %tobool300.not, label %do.end304, label %if.end307

do.end304:                                        ; preds = %sw.bb298
  call void @__sanitizer_cov_trace_pc() #11
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup381

if.end307:                                        ; preds = %sw.bb298
  %conv.i763 = zext i16 %285 to i32
  %block_size.i765 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %286 = ptrtoint ptr %block_size.i765 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %block_size.i765, align 8
  %288 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %size, align 4
  %arrayidx309 = getelementptr i8, ptr %3, i32 2
  %289 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_loadN_noabort(i32 %289, i32 4)
  %290 = load i32, ptr %arrayidx309, align 1
  %conv311 = zext i32 %290 to i64
  %t_task_lba312 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %291 = ptrtoint ptr %t_task_lba312 to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %conv311, ptr %t_task_lba312, align 8
  %arrayidx313 = getelementptr i8, ptr %3, i32 1
  %292 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx313, align 1
  %call314 = tail call fastcc i32 @sbc_setup_write_same(ptr noundef %cmd, i8 noundef zeroext %293, ptr noundef %ops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %if.end307.sw.epilog343_crit_edge, label %if.end307.cleanup381_crit_edge

if.end307.cleanup381_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end307.sw.epilog343_crit_edge:                 ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog343

sw.bb318:                                         ; preds = %entry.sw.bb318_crit_edge, %entry.sw.bb318_crit_edge794
  %294 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %size, align 4
  %295 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %296)
  %cmp321 = icmp eq i8 %296, 47
  br i1 %cmp321, label %if.then323, label %if.else328

if.then323:                                       ; preds = %sw.bb318
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i766 = getelementptr i8, ptr %3, i32 7
  %297 = ptrtoint ptr %arrayidx.i766 to i32
  call void @__asan_loadN_noabort(i32 %297, i32 2)
  %298 = load i16, ptr %arrayidx.i766, align 1
  %conv.i767 = zext i16 %298 to i32
  %arrayidx.i768 = getelementptr i8, ptr %3, i32 2
  %299 = ptrtoint ptr %arrayidx.i768 to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %arrayidx.i768, align 1
  %conv326 = zext i32 %300 to i64
  br label %if.end332

if.else328:                                       ; preds = %sw.bb318
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i769 = getelementptr i8, ptr %3, i32 10
  %301 = ptrtoint ptr %arrayidx.i769 to i32
  call void @__asan_loadN_noabort(i32 %301, i32 4)
  %302 = load i32, ptr %arrayidx.i769, align 1
  %arrayidx.i770 = getelementptr i8, ptr %3, i32 2
  %303 = ptrtoint ptr %arrayidx.i770 to i32
  call void @__asan_loadN_noabort(i32 %303, i32 8)
  %304 = load i64, ptr %arrayidx.i770, align 1
  br label %if.end332

if.end332:                                        ; preds = %if.else328, %if.then323
  %.sink = phi i64 [ %conv326, %if.then323 ], [ %304, %if.else328 ]
  %sectors.3 = phi i32 [ %conv.i767, %if.then323 ], [ %302, %if.else328 ]
  %305 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 %.sink, ptr %305, align 8
  br label %check_lba.sink.split

sw.bb334:                                         ; preds = %entry.sw.bb334_crit_edge, %entry.sw.bb334_crit_edge795, %entry.sw.bb334_crit_edge796
  %307 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 0, ptr %size, align 4
  %execute_cmd335 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %308 = ptrtoint ptr %execute_cmd335 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr @sbc_emulate_noop, ptr %execute_cmd335, align 4
  br label %sw.epilog343

sw.bb336:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %309 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 0, ptr %size, align 4
  %execute_cmd337 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %310 = ptrtoint ptr %execute_cmd337 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr @sbc_emulate_startstop, ptr %execute_cmd337, align 4
  br label %sw.epilog343

sw.default338:                                    ; preds = %entry
  %call339 = call i32 @spc_parse_cdb(ptr noundef %cmd, ptr noundef nonnull %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call339)
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %sw.default338.sw.epilog343_crit_edge, label %sw.default338.cleanup381_crit_edge

sw.default338.cleanup381_crit_edge:               ; preds = %sw.default338
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

sw.default338.sw.epilog343_crit_edge:             ; preds = %sw.default338
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog343

sw.epilog343:                                     ; preds = %sw.default338.sw.epilog343_crit_edge, %sw.bb336, %sw.bb334, %if.end307.sw.epilog343_crit_edge, %if.end288.sw.epilog343_crit_edge, %if.end274, %if.end260, %sw.epilog239, %sw.bb218, %if.end209, %if.end163.sw.epilog343_crit_edge, %if.end151, %if.end135, %if.end121, %if.end102, %if.end82, %sw.bb58, %if.end54, %if.end35, %if.end15, %sw.bb
  %sectors.4 = phi i32 [ 0, %sw.default338.sw.epilog343_crit_edge ], [ 0, %sw.bb336 ], [ 0, %sw.bb334 ], [ %conv.i763, %if.end307.sw.epilog343_crit_edge ], [ %275, %if.end288.sw.epilog343_crit_edge ], [ 0, %if.end274 ], [ %sectors.2, %if.end260 ], [ 0, %sw.epilog239 ], [ 0, %sw.bb218 ], [ %conv196, %if.end209 ], [ %conv.i728, %if.end135 ], [ %149, %if.end121 ], [ %126, %if.end102 ], [ %conv.i664, %if.end82 ], [ %conv..i651, %sw.bb58 ], [ %68, %if.end54 ], [ %45, %if.end35 ], [ %conv.i602, %if.end15 ], [ %conv..i, %sw.bb ], [ %197, %if.end163.sw.epilog343_crit_edge ], [ %188, %if.end151 ]
  %execute_cmd344 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %311 = ptrtoint ptr %execute_cmd344 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %execute_cmd344, align 4
  %tobool345.not = icmp eq ptr %312, null
  br i1 %tobool345.not, label %sw.epilog343.cleanup381_crit_edge, label %if.end347

sw.epilog343.cleanup381_crit_edge:                ; preds = %sw.epilog343
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup381

if.end347:                                        ; preds = %sw.epilog343
  %se_cmd_flags348 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %313 = ptrtoint ptr %se_cmd_flags348 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %se_cmd_flags348, align 8
  %and349 = and i32 %314, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %if.end347.if.end379_crit_edge, label %if.end347.check_lba_crit_edge

if.end347.check_lba_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_lba

if.end347.if.end379_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end379

check_lba.sink.split:                             ; preds = %if.end332, %if.end255.check_lba.sink.split_crit_edge
  %sbc_emulate_noop.sink = phi ptr [ @sbc_emulate_noop, %if.end332 ], [ %263, %if.end255.check_lba.sink.split_crit_edge ]
  %sectors.5.ph = phi i32 [ %sectors.3, %if.end332 ], [ %sectors.2, %if.end255.check_lba.sink.split_crit_edge ]
  %execute_cmd333 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %315 = ptrtoint ptr %execute_cmd333 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %sbc_emulate_noop.sink, ptr %execute_cmd333, align 4
  br label %check_lba

check_lba:                                        ; preds = %check_lba.sink.split, %if.end347.check_lba_crit_edge
  %sectors.5 = phi i32 [ %sectors.4, %if.end347.check_lba_crit_edge ], [ %sectors.5.ph, %check_lba.sink.split ]
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %316 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %317, i32 0, i32 20
  %318 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %get_blocks, align 4
  %call352 = call i64 %319(ptr noundef %1) #9
  %add = add i64 %call352, 1
  %t_task_lba353 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %320 = ptrtoint ptr %t_task_lba353 to i32
  call void @__asan_load8_noabort(i32 %320)
  %321 = load i64, ptr %t_task_lba353, align 8
  %conv354 = zext i32 %sectors.5 to i64
  %add355 = add i64 %321, %conv354
  call void @__sanitizer_cov_trace_cmp8(i64 %add355, i64 %321)
  %cmp357 = icmp ult i64 %add355, %321
  call void @__sanitizer_cov_trace_cmp8(i64 %add355, i64 %add)
  %cmp363 = icmp ugt i64 %add355, %add
  %or.cond = select i1 %cmp357, i1 true, i1 %cmp363
  br i1 %or.cond, label %do.end368, label %if.end372

do.end368:                                        ; preds = %check_lba
  call void @__sanitizer_cov_trace_pc() #11
  %call371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i64 noundef %add, i64 noundef %321, i32 noundef %sectors.5) #12
  br label %cleanup381

if.end372:                                        ; preds = %check_lba
  %se_cmd_flags373 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %322 = ptrtoint ptr %se_cmd_flags373 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %se_cmd_flags373, align 8
  %and374 = and i32 %323, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374)
  %tobool375.not = icmp eq i32 %and374, 0
  br i1 %tobool375.not, label %if.then376, label %if.end372.if.end379_crit_edge

if.end372.if.end379_crit_edge:                    ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end379

if.then376:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #11
  %324 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %se_dev, align 4
  %block_size.i772 = getelementptr inbounds %struct.se_device, ptr %325, i32 0, i32 39, i32 21
  %326 = ptrtoint ptr %block_size.i772 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %block_size.i772, align 8
  %mul.i773 = mul i32 %327, %sectors.5
  %328 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %mul.i773, ptr %size, align 4
  br label %if.end379

if.end379:                                        ; preds = %if.then376, %if.end372.if.end379_crit_edge, %if.end347.if.end379_crit_edge
  %329 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %size, align 4
  %call380 = call i32 @target_cmd_size_check(ptr noundef %cmd, i32 noundef %330) #9
  br label %cleanup381

cleanup381:                                       ; preds = %if.end379, %do.end368, %sw.epilog343.cleanup381_crit_edge, %sw.default338.cleanup381_crit_edge, %if.end307.cleanup381_crit_edge, %do.end304, %if.end288.cleanup381_crit_edge, %do.end285, %do.end271, %sw.bb262.cleanup381_crit_edge, %do.end232, %do.end14.i746, %do.end.i739, %do.end202, %do.end187, %if.then181.cleanup381_crit_edge, %do.end175, %if.end163.cleanup381_crit_edge, %do.end, %sw.bb146.cleanup381_crit_edge, %if.end130.cleanup381_crit_edge, %lor.lhs.false.cleanup381_crit_edge, %sw.bb125.cleanup381_crit_edge, %if.end113.cleanup381_crit_edge, %do.end14.i721, %do.end.i714, %if.end94.cleanup381_crit_edge, %do.end14.i700, %do.end.i693, %if.end74.cleanup381_crit_edge, %do.end14.i679, %do.end.i672, %if.end46.cleanup381_crit_edge, %do.end14.i642, %do.end.i635, %if.end27.cleanup381_crit_edge, %do.end14.i621, %do.end.i614, %if.end.cleanup381_crit_edge, %do.end14.i, %do.end.i
  %retval.1 = phi i32 [ 17, %do.end368 ], [ %call380, %if.end379 ], [ 8, %do.end304 ], [ 8, %do.end285 ], [ 2, %do.end271 ], [ 8, %do.end232 ], [ 8, %do.end202 ], [ %call12, %if.end.cleanup381_crit_edge ], [ %call32, %if.end27.cleanup381_crit_edge ], [ %call51, %if.end46.cleanup381_crit_edge ], [ %call79, %if.end74.cleanup381_crit_edge ], [ %call99, %if.end94.cleanup381_crit_edge ], [ %call118, %if.end113.cleanup381_crit_edge ], [ 8, %lor.lhs.false.cleanup381_crit_edge ], [ 8, %sw.bb125.cleanup381_crit_edge ], [ 8, %if.end130.cleanup381_crit_edge ], [ 2, %do.end187 ], [ 2, %if.then181.cleanup381_crit_edge ], [ 2, %sw.bb262.cleanup381_crit_edge ], [ %call294, %if.end288.cleanup381_crit_edge ], [ %call314, %if.end307.cleanup381_crit_edge ], [ %call339, %sw.default338.cleanup381_crit_edge ], [ 2, %sw.epilog343.cleanup381_crit_edge ], [ 8, %do.end.i ], [ 8, %do.end14.i ], [ 8, %do.end.i614 ], [ 8, %do.end14.i621 ], [ 8, %do.end.i635 ], [ 8, %do.end14.i642 ], [ 8, %do.end.i672 ], [ 8, %do.end14.i679 ], [ 8, %do.end.i693 ], [ 8, %do.end14.i700 ], [ 8, %do.end.i714 ], [ 8, %do.end14.i721 ], [ 8, %do.end.i739 ], [ 8, %do.end14.i746 ], [ %call169, %if.end163.cleanup381_crit_edge ], [ 8, %sw.bb146.cleanup381_crit_edge ], [ 8, %do.end ], [ 2, %do.end175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_execute_rw(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_data = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 29
  %0 = ptrtoint ptr %protocol_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %4 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %6 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_data_nents, align 4
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  %8 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_direction, align 4
  %call = tail call i32 %3(ptr noundef %cmd, ptr noundef %5, i32 noundef %7, i32 noundef %9) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbc_check_dpofua(ptr noundef %dev, ptr nocapture noundef %cmd, ptr nocapture noundef readonly %cdb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %cdb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @target_check_fua(ptr noundef %dev) #9
  br i1 %call, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cdb, align 1
  %conv3 = zext i8 %4 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv3) #12
  br label %return

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end5.return_crit_edge, label %if.then10

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10:                                        ; preds = %if.end5
  %call11 = tail call zeroext i1 @target_check_fua(ptr noundef %dev) #9
  br i1 %call11, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cdb, align 1
  %conv17 = zext i8 %9 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv17) #12
  br label %return

if.end19:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %10 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %se_cmd_flags, align 8
  %or = or i32 %11, 32
  store i32 %or, ptr %se_cmd_flags, align 8
  br label %return

return:                                           ; preds = %if.end19, %do.end14, %if.end5.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ -22, %do.end ], [ 0, %if.end19 ], [ 0, %if.end5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbc_check_prot(ptr nocapture noundef readonly %dev, ptr noundef %cmd, i8 noundef zeroext %protect, i32 noundef %sectors, i1 noundef zeroext %is_write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %0 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_sess, align 4
  %sup_prot_ops = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sup_prot_ops, align 8
  %pi_prot_type1 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 12
  %4 = ptrtoint ptr %pi_prot_type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pi_prot_type1, align 4
  %t_prot_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %6 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_prot_sg, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %t_prot_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 56
  %8 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_prot_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %protect)
  %tobool3.not = icmp ne i8 %protect, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %land.rhs, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %if.then
  %sess_prot_type = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %sess_prot_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sess_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !174

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %if.then.if.end_crit_edge
  %prot_pto = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 52
  %12 = ptrtoint ptr %prot_pto to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prot_pto, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end.if.end16_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %lor.lhs.false.if.end16_crit_edge
  %14 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %5, label %if.end16.do.end60_crit_edge [
    i32 3, label %if.end16.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb19
    i32 1, label %if.end16.sw.epilog.sink.split.sink.split_crit_edge
    i32 0, label %sw.bb29
  ]

if.end16.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.sink.split

if.end16.sw.epilog.sink.split_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end16.do.end60_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %protect)
  %tobool20.not = icmp eq i8 %protect, 0
  br i1 %tobool20.not, label %sw.bb19.sw.epilog.sink.split.sink.split_crit_edge, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb19.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.sink.split

sw.bb29:                                          ; preds = %if.end16
  %cond.in.in.v = select i1 %is_write, i32 40, i32 17
  %cond.in.in = and i32 %3, %cond.in.in.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in)
  %cond.in.not = icmp eq i32 %cond.in.in, 0
  br i1 %cond.in.not, label %sw.bb29.if.end54_crit_edge, label %land.lhs.true47

sw.bb29.if.end54_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true47:                                  ; preds = %sw.bb29
  %sess_prot_type49 = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %sess_prot_type49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sess_prot_type49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool50.not = icmp eq i32 %16, 0
  br i1 %tobool50.not, label %land.lhs.true47.if.end54_crit_edge, label %land.lhs.true47.sw.epilog_crit_edge

land.lhs.true47.sw.epilog_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true47.if.end54_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true47.if.end54_crit_edge, %sw.bb29.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %protect)
  %tobool55.not = icmp eq i8 %protect, 0
  br i1 %tobool55.not, label %if.end54.cleanup_crit_edge, label %if.end54.do.end60_crit_edge

if.end54.do.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end60:                                         ; preds = %if.end54.do.end60_crit_edge, %if.end16.do.end60_crit_edge
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %17 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t_task_cdb, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv62 = zext i8 %20 to i32
  %conv63 = zext i8 %protect to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv62, i32 noundef %conv63) #12
  br label %cleanup

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb19.sw.epilog.sink.split.sink.split_crit_edge, %if.end16.sw.epilog.sink.split.sink.split_crit_edge
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %21 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %t_task_lba, align 8
  %conv23 = trunc i64 %22 to i32
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %if.end16.sw.epilog.sink.split_crit_edge
  %conv27.sink = phi i32 [ -1, %if.end16.sw.epilog.sink.split_crit_edge ], [ %conv23, %sw.epilog.sink.split.sink.split ]
  %reftag_seed28 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 54
  %23 = ptrtoint ptr %reftag_seed28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv27.sink, ptr %reftag_seed28, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true47.sw.epilog_crit_edge
  %fabric_prot.0.off0 = phi i1 [ true, %land.lhs.true47.sw.epilog_crit_edge ], [ false, %sw.epilog.sink.split ]
  %pi_prot_type.0 = phi i32 [ %16, %land.lhs.true47.sw.epilog_crit_edge ], [ %5, %sw.epilog.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %protect)
  %tobool3.not.i = icmp eq i8 %protect, 0
  br i1 %is_write, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog
  %cond.i = select i1 %tobool3.not.i, i32 2, i32 32
  %cond4.i = select i1 %fabric_prot.0.off0, i32 8, i32 %cond.i
  %prot_op.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 49
  %24 = ptrtoint ptr %prot_op.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond4.i, ptr %prot_op.i, align 8
  %25 = zext i8 %protect to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %protect, label %do.end.i [
    i8 0, label %if.then.i.sw.bb.i_crit_edge
    i8 3, label %if.then.i.sw.bb.i_crit_edge138
    i8 1, label %if.then.i.sw.bb6.i_crit_edge
    i8 5, label %if.then.i.sw.bb6.i_crit_edge139
    i8 2, label %sw.bb13.i
    i8 4, label %sw.bb19.i
  ]

if.then.i.sw.bb6.i_crit_edge139:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6.i

if.then.i.sw.bb6.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6.i

if.then.i.sw.bb.i_crit_edge138:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge138
  %prot_checks.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %26 = ptrtoint ptr %prot_checks.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %prot_checks.i, align 8
  br label %if.end70

sw.bb6.i:                                         ; preds = %if.then.i.sw.bb6.i_crit_edge, %if.then.i.sw.bb6.i_crit_edge139
  %prot_checks7.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pi_prot_type.0)
  %cmp.i = icmp eq i32 %pi_prot_type.0, 1
  %spec.store.select.i = select i1 %cmp.i, i8 5, i8 1
  %27 = ptrtoint ptr %prot_checks7.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.store.select.i, ptr %prot_checks7.i, align 8
  br label %if.end70

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pi_prot_type.0)
  %cmp14.i = icmp eq i32 %pi_prot_type.0, 1
  br i1 %cmp14.i, label %if.then16.i, label %sw.bb13.i.if.end70_crit_edge

sw.bb13.i.if.end70_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then16.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  %prot_checks17.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %28 = ptrtoint ptr %prot_checks17.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %prot_checks17.i, align 8
  br label %if.end70

sw.bb19.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prot_checks20.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %29 = ptrtoint ptr %prot_checks20.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %prot_checks20.i, align 8
  br label %if.end70

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i = zext i8 %protect to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv5.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %sw.epilog
  %cond28.i = select i1 %tobool3.not.i, i32 4, i32 16
  %cond30.i = select i1 %fabric_prot.0.off0, i32 1, i32 %cond28.i
  %prot_op31.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 49
  %30 = ptrtoint ptr %prot_op31.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond30.i, ptr %prot_op31.i, align 8
  %31 = zext i8 %protect to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %protect, label %do.end55.i [
    i8 0, label %if.else.i.sw.bb33.i_crit_edge
    i8 1, label %if.else.i.sw.bb33.i_crit_edge140
    i8 5, label %if.else.i.sw.bb33.i_crit_edge141
    i8 2, label %sw.bb43.i
    i8 3, label %sw.bb49.i
    i8 4, label %sw.bb51.i
  ]

if.else.i.sw.bb33.i_crit_edge141:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33.i

if.else.i.sw.bb33.i_crit_edge140:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33.i

if.else.i.sw.bb33.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %if.else.i.sw.bb33.i_crit_edge, %if.else.i.sw.bb33.i_crit_edge140, %if.else.i.sw.bb33.i_crit_edge141
  %prot_checks34.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pi_prot_type.0)
  %cmp35.i = icmp eq i32 %pi_prot_type.0, 1
  %spec.store.select81.i = select i1 %cmp35.i, i8 5, i8 1
  %32 = ptrtoint ptr %prot_checks34.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.store.select81.i, ptr %prot_checks34.i, align 8
  br label %if.end70

sw.bb43.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pi_prot_type.0)
  %cmp44.i = icmp eq i32 %pi_prot_type.0, 1
  br i1 %cmp44.i, label %if.then46.i, label %sw.bb43.i.if.end70_crit_edge

sw.bb43.i.if.end70_crit_edge:                     ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then46.i:                                      ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #11
  %prot_checks47.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %33 = ptrtoint ptr %prot_checks47.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %prot_checks47.i, align 8
  br label %if.end70

sw.bb49.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %prot_checks50.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %34 = ptrtoint ptr %prot_checks50.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %prot_checks50.i, align 8
  br label %if.end70

sw.bb51.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %prot_checks52.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %35 = ptrtoint ptr %prot_checks52.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %prot_checks52.i, align 8
  br label %if.end70

do.end55.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv32.i = zext i8 %protect to i32
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv32.i) #12
  br label %cleanup

if.end70:                                         ; preds = %sw.bb51.i, %sw.bb49.i, %if.then46.i, %sw.bb43.i.if.end70_crit_edge, %sw.bb33.i, %sw.bb19.i, %if.then16.i, %sw.bb13.i.if.end70_crit_edge, %sw.bb6.i, %sw.bb.i
  %prot_type = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 50
  %36 = ptrtoint ptr %prot_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %pi_prot_type.0, ptr %prot_type, align 4
  %prot_length = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 48
  %37 = ptrtoint ptr %prot_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prot_length, align 8
  %mul = mul i32 %38, %sectors
  %prot_length71 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 53
  %39 = ptrtoint ptr %prot_length71 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %prot_length71, align 4
  br i1 %tobool3.not.i, label %if.end70.do.body77_crit_edge, label %if.then73

if.end70.do.body77_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 21
  %40 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %block_size, align 8
  %mul75 = mul i32 %41, %sectors
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %42 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul75, ptr %data_length, align 4
  br label %do.body77

do.body77:                                        ; preds = %if.then73, %if.end70.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbc_check_prot.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbc_check_prot, %if.then88)) #9
          to label %cleanup [label %if.then88], !srcloc !175

if.then88:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prot_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prot_type, align 4
  %data_length90 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %45 = ptrtoint ptr %data_length90 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_length90, align 4
  %47 = ptrtoint ptr %prot_length71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %prot_length71, align 4
  %prot_op = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 49
  %49 = ptrtoint ptr %prot_op to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prot_op, align 8
  %prot_checks = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %51 = ptrtoint ptr %prot_checks to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %prot_checks, align 8
  %conv92 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbc_check_prot.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.39, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %conv92) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %do.body77, %do.end55.i, %do.end.i, %do.end60, %if.end54.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 8, %do.end60 ], [ 8, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 8, %sw.bb19.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %if.then88 ], [ 8, %do.end.i ], [ 8, %do.end55.i ], [ 0, %do.body77 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xdreadwrite_callback(ptr nocapture noundef readonly %cmd, i1 noundef zeroext %success, ptr nocapture noundef readnone %post_ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %success, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_length, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #13
  %tobool1.not = icmp eq ptr %call9.i, null
  br i1 %tobool1.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %2 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %4 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_data_nents, align 4
  %6 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_length, align 4
  %call6 = tail call i32 @sg_copy_to_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %call9.i, i32 noundef %7) #9
  %t_bidi_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 45
  %8 = ptrtoint ptr %t_bidi_data_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_bidi_data_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp64.not = icmp eq i32 %9, 0
  br i1 %cmp64.not, label %if.end4.out_crit_edge, label %for.body.preheader

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.preheader:                               ; preds = %if.end4
  %t_bidi_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 44
  %10 = ptrtoint ptr %t_bidi_data_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_bidi_data_sg, align 8
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.preheader
  %count.067 = phi i32 [ %inc29, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %offset.066 = phi i32 [ %add, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.065 = phi ptr [ %call30, %for.end.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %12 = ptrtoint ptr %sg.065 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg.065, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !176

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %13, -4
  %14 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %20 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %14, i32 noundef %or.i) #9
  %tobool9.not = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not, label %sg_page.exit.out_crit_edge, label %for.cond12.preheader

sg_page.exit.out_crit_edge:                       ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond12.preheader:                             ; preds = %sg_page.exit
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.065, i32 0, i32 2
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1362.not = icmp eq i32 %27, 0
  br i1 %cmp1362.not, label %for.cond12.preheader.for.end_crit_edge, label %for.body14.lr.ph

for.cond12.preheader.for.end_crit_edge:           ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body14.lr.ph:                                 ; preds = %for.cond12.preheader
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %offset.066
  %offset16 = getelementptr inbounds %struct.scatterlist, ptr %sg.065, i32 0, i32 1
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.063 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %for.body14.for.body14_crit_edge ]
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %i.063
  %28 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr15, align 1
  %30 = ptrtoint ptr %offset16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset16, align 4
  %add.ptr17 = getelementptr i8, ptr %call.i.i, i32 %31
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 %i.063
  %32 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr18, align 1
  %xor57 = xor i8 %33, %29
  store i8 %xor57, ptr %add.ptr18, align 1
  %inc = add nuw i32 %i.063, 1
  %34 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length, align 4
  %cmp13 = icmp ult i32 %inc, %35
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.end_crit_edge

for.body14.for.end_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.end:                                          ; preds = %for.body14.for.end_crit_edge, %for.cond12.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond12.preheader.for.end_crit_edge ], [ %35, %for.body14.for.end_crit_edge ]
  %add = add i32 %.lcssa, %offset.066
  tail call void @kunmap_local_indexed(ptr noundef nonnull %call.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %36 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %41, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %42 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %inc29 = add nuw i32 %count.067, 1
  %call30 = tail call ptr @sg_next(ptr noundef %sg.065) #9
  %46 = ptrtoint ptr %t_bidi_data_nents to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %t_bidi_data_nents, align 4
  %cmp = icmp ult i32 %inc29, %47
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out:                                              ; preds = %for.end.out_crit_edge, %sg_page.exit.out_crit_edge, %if.end4.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end4.out_crit_edge ], [ 18, %sg_page.exit.out_crit_edge ], [ 0, %for.end.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 18, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbc_setup_write_same(ptr noundef %cmd, i8 noundef zeroext %flags, ptr nocapture noundef readonly %ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_blocks, align 4
  %call = tail call i64 %5(ptr noundef %1) #9
  %add = add i64 %call, 1
  %t_task_cdb.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %6 = ptrtoint ptr %t_task_cdb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_task_cdb.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %9, label %if.else14.i [
    i8 65, label %if.then.i
    i8 -109, label %if.then10.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr i8, ptr %7, i32 7
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx3.i, align 1
  %conv4.i = zext i16 %12 to i32
  br label %if.end18.i

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.i = getelementptr i8, ptr %7, i32 10
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx12.i, align 1
  br label %if.end18.i

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i = getelementptr i8, ptr %7, i32 28
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx16.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else14.i, %if.then10.i, %if.then.i
  %num_blocks.0.i = phi i32 [ %conv4.i, %if.then.i ], [ %14, %if.then10.i ], [ %16, %if.else14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_blocks.0.i)
  %tobool.not.i = icmp eq i32 %num_blocks.0.i, 0
  br i1 %tobool.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i = zext i32 %num_blocks.0.i to i64
  br label %sbc_get_write_same_sectors.exit

if.end21.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %se_dev, align 4
  %transport.i = getelementptr inbounds %struct.se_device, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transport.i, align 8
  %get_blocks.i = getelementptr inbounds %struct.target_backend_ops, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %get_blocks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_blocks.i, align 4
  %call23.i = tail call i64 %22(ptr noundef %18) #9
  %t_task_lba.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %23 = ptrtoint ptr %t_task_lba.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %t_task_lba.i, align 8
  %sub.i = add i64 %call23.i, 1
  %add.i = sub i64 %sub.i, %24
  br label %sbc_get_write_same_sectors.exit

sbc_get_write_same_sectors.exit:                  ; preds = %if.end21.i, %if.then19.i
  %retval.0.i = phi i64 [ %conv20.i, %if.then19.i ], [ %add.i, %if.end21.i ]
  %conv = trunc i64 %retval.0.i to i32
  %conv2 = zext i8 %flags to i32
  %25 = and i32 %conv2, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.end, label %do.end

do.end:                                           ; preds = %sbc_get_write_same_sectors.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %cleanup

if.end:                                           ; preds = %sbc_get_write_same_sectors.exit
  %27 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %se_dev, align 4
  %max_write_same_len = getelementptr inbounds %struct.se_device, ptr %28, i32 0, i32 39, i32 30
  %29 = ptrtoint ptr %max_write_same_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_write_same_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv)
  %cmp = icmp ult i32 %30, %conv
  br i1 %cmp, label %do.end12, label %if.end18

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %conv, i32 noundef %30) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %31 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %t_task_lba, align 8
  %conv19 = and i64 %retval.0.i, 4294967295
  %add20 = add i64 %32, %conv19
  call void @__sanitizer_cov_trace_cmp8(i64 %add20, i64 %32)
  %cmp22 = icmp ult i64 %add20, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %add20, i64 %add)
  %cmp28 = icmp ugt i64 %add20, %add
  %or.cond105 = select i1 %cmp22, i1 true, i1 %cmp28
  br i1 %or.cond105, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i64 noundef %add, i64 noundef %32, i32 noundef %conv) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end18
  %and39 = and i32 %conv2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %and49 = and i32 %conv2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end64, label %if.then51

if.then51:                                        ; preds = %if.end47
  %execute_unmap = getelementptr inbounds %struct.sbc_ops, ptr %ops, i32 0, i32 3
  %33 = ptrtoint ptr %execute_unmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %execute_unmap, align 4
  %tobool52.not = icmp eq ptr %34, null
  br i1 %tobool52.not, label %if.then51.cleanup_crit_edge, label %if.end54

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.then51
  %emulate_tpws = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 8
  %35 = ptrtoint ptr %emulate_tpws to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %emulate_tpws, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool56.not = icmp eq i8 %36, 0
  br i1 %tobool56.not, label %do.end60, label %if.end63

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %execute_cmd = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %37 = ptrtoint ptr %execute_cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @sbc_execute_write_same_unmap, ptr %execute_cmd, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.end47
  %execute_write_same = getelementptr inbounds %struct.sbc_ops, ptr %ops, i32 0, i32 2
  %38 = ptrtoint ptr %execute_write_same to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %execute_write_same, align 4
  %tobool65.not = icmp eq ptr %39, null
  br i1 %tobool65.not, label %if.end64.cleanup_crit_edge, label %if.end67

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.end64
  %40 = lshr i8 %flags, 5
  %call70 = tail call fastcc i32 @sbc_check_prot(ptr noundef %1, ptr noundef %cmd, i8 noundef zeroext %40, i32 noundef %conv, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %execute_write_same to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %execute_write_same, align 4
  %execute_cmd75 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %43 = ptrtoint ptr %execute_cmd75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %execute_cmd75, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end67.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end63, %do.end60, %if.then51.cleanup_crit_edge, %do.end44, %do.end33, %do.end12, %do.end
  %retval.0 = phi i32 [ 2, %do.end ], [ 8, %do.end12 ], [ 17, %do.end33 ], [ 8, %do.end44 ], [ 0, %if.end63 ], [ 2, %do.end60 ], [ 0, %if.end73 ], [ 2, %if.then51.cleanup_crit_edge ], [ 2, %if.end64.cleanup_crit_edge ], [ %call70, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_compare_and_write(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_data = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 29
  %0 = ptrtoint ptr %protocol_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol_data, align 4
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %2 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_dev, align 4
  %caw_sem = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 25
  %call = tail call i32 @down_interruptible(ptr noundef %caw_sem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %transport_complete_callback = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 28
  %4 = ptrtoint ptr %transport_complete_callback to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %transport_complete_callback, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_task_nolb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 33
  %5 = ptrtoint ptr %t_task_nolb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %t_task_nolb, align 8
  %block_size = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 39, i32 21
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_size, align 8
  %mul = mul i32 %8, %6
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %9 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %data_length, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %t_bidi_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 44
  %12 = ptrtoint ptr %t_bidi_data_sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t_bidi_data_sg, align 8
  %t_bidi_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 45
  %14 = ptrtoint ptr %t_bidi_data_nents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_bidi_data_nents, align 4
  %call1 = tail call i32 %11(ptr noundef %cmd, ptr noundef %13, i32 noundef %15, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %transport_complete_callback3 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 28
  %16 = ptrtoint ptr %transport_complete_callback3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %transport_complete_callback3, align 8
  tail call void @up(ptr noundef %caw_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 10, %if.then ], [ %call1, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compare_and_write_callback(ptr noundef %cmd, i1 noundef zeroext %success, ptr nocapture noundef writeonly %post_ret) #0 align 64 {
entry:
  %write_tbl = alloca %struct.sg_table, align 4
  %m = alloca %struct.sg_mapping_iter, align 4
  %miscmp_off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %write_tbl) #9
  %2 = call ptr @memset(ptr %write_tbl, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %m) #9
  %3 = call ptr @memset(ptr %m, i32 255, i32 44)
  %block_size1 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %4 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size1, align 8
  %t_task_nolb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 33
  %6 = ptrtoint ptr %t_task_nolb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_task_nolb, align 8
  %mul = mul i32 %7, %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %miscmp_off) #9
  %8 = ptrtoint ptr %miscmp_off to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %miscmp_off, align 4
  br i1 %success, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %9 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t_data_sg, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %t_bidi_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 44
  %11 = ptrtoint ptr %t_bidi_data_sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t_bidi_data_sg, align 8
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %13 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %if.end21, label %do.body

do.body:                                          ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @compare_and_write_callback.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@compare_and_write_callback, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !175

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scsi_status, align 4
  %conv = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @compare_and_write_callback.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.65, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %19 = ptrtoint ptr %post_ret to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %post_ret, align 4
  %20 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp = icmp eq i8 %21, 2
  %spec.select = select i1 %cmp, i32 10, i32 0
  br label %out

if.end21:                                         ; preds = %if.end6
  %t_bidi_data_sg22 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 44
  %22 = ptrtoint ptr %t_bidi_data_sg22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t_bidi_data_sg22, align 8
  %t_bidi_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 45
  %24 = ptrtoint ptr %t_bidi_data_nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_bidi_data_nents, align 4
  %t_data_sg23 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %26 = ptrtoint ptr %t_data_sg23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_data_sg23, align 4
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %28 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_data_nents, align 4
  %call24 = call fastcc i32 @compare_and_write_do_cmp(ptr noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %29, i32 noundef %mul, ptr noundef nonnull %miscmp_off)
  %30 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call24, label %if.end21.out_crit_edge [
    i32 20, label %if.then27
    i32 0, label %if.end32
  ]

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %miscmp_off to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %miscmp_off, align 4
  %conv28 = zext i32 %32 to i64
  %sense_info = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 58
  %33 = ptrtoint ptr %sense_info to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv28, ptr %sense_info, align 8
  br label %out

if.end32:                                         ; preds = %if.end21
  %34 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t_data_nents, align 4
  %call34 = call i32 @sg_alloc_table(ptr noundef nonnull %write_tbl, i32 noundef %35, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %out

if.end43:                                         ; preds = %if.end32
  %36 = ptrtoint ptr %write_tbl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_tbl, align 4
  %38 = ptrtoint ptr %t_data_sg23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t_data_sg23, align 4
  %40 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %t_data_nents, align 4
  call void @sg_miter_start(ptr noundef nonnull %m, ptr noundef %39, i32 noundef %41, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool46.not130 = icmp eq i32 %mul, 0
  br i1 %tobool46.not130, label %if.end43.while.end_crit_edge, label %while.body.lr.ph

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp48 = icmp ult i32 %5, 4096
  %piter55 = getelementptr inbounds %struct.sg_mapping_iter, ptr %m, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %while.body.lr.ph
  %i.0132 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end58.while.body_crit_edge ]
  %len.0131 = phi i32 [ %mul, %while.body.lr.ph ], [ %sub, %if.end58.while.body_crit_edge ]
  %call47 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %m) #9
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %while.body
  %42 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m, align 4
  %44 = ptrtoint ptr %43 to i32
  %and2.i.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !176

do.body5.i.i:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !182
  unreachable

do.body11.i.i:                                    ; preds = %if.then50
  %arrayidx = getelementptr %struct.scatterlist, ptr %37, i32 %i.0132
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %piter55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %piter55, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset, align 4
  %add = add i32 %50, %5
  %and.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.body11.i.i.if.end58_crit_edge, label %do.body19.i.i, !prof !176

do.body11.i.i.if.end58_crit_edge:                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !183
  unreachable

if.else51:                                        ; preds = %while.body
  %call52 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %m) #9
  %51 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %m, align 4
  %53 = ptrtoint ptr %52 to i32
  %and2.i.i117 = and i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %and2.i.i117, 0
  br i1 %tobool.not.i.i118, label %do.body11.i.i122, label %do.body5.i.i119, !prof !176

do.body5.i.i119:                                  ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !182
  unreachable

do.body11.i.i122:                                 ; preds = %if.else51
  %arrayidx53 = getelementptr %struct.scatterlist, ptr %37, i32 %i.0132
  %54 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx53, align 4
  %56 = ptrtoint ptr %piter55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %piter55, align 4
  %offset57 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %offset57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset57, align 4
  %and.i.i.i120 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i120)
  %tobool.i.not.i.i121 = icmp eq i32 %and.i.i.i120, 0
  br i1 %tobool.i.not.i.i121, label %do.body11.i.i122.if.end58_crit_edge, label %do.body19.i.i123, !prof !176

do.body11.i.i122.if.end58_crit_edge:              ; preds = %do.body11.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.body19.i.i123:                                 ; preds = %do.body11.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !183
  unreachable

if.end58:                                         ; preds = %do.body11.i.i122.if.end58_crit_edge, %do.body11.i.i.if.end58_crit_edge
  %.sink135 = phi i32 [ %46, %do.body11.i.i.if.end58_crit_edge ], [ %55, %do.body11.i.i122.if.end58_crit_edge ]
  %.sink134 = phi i32 [ %44, %do.body11.i.i.if.end58_crit_edge ], [ %53, %do.body11.i.i122.if.end58_crit_edge ]
  %arrayidx53.sink = phi ptr [ %arrayidx, %do.body11.i.i.if.end58_crit_edge ], [ %arrayidx53, %do.body11.i.i122.if.end58_crit_edge ]
  %.sink = phi i32 [ %add, %do.body11.i.i.if.end58_crit_edge ], [ %59, %do.body11.i.i122.if.end58_crit_edge ]
  %and.i.i124 = and i32 %.sink135, 3
  %or.i.i125 = or i32 %and.i.i124, %.sink134
  %60 = ptrtoint ptr %arrayidx53.sink to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i.i125, ptr %arrayidx53.sink, align 4
  %offset1.i126 = getelementptr %struct.scatterlist, ptr %37, i32 %i.0132, i32 1
  %61 = ptrtoint ptr %offset1.i126 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %offset1.i126, align 4
  %length.i127 = getelementptr %struct.scatterlist, ptr %37, i32 %i.0132, i32 2
  %62 = ptrtoint ptr %length.i127 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %5, ptr %length.i127, align 4
  %sub = sub i32 %len.0131, %5
  %inc = add i32 %i.0132, 1
  %tobool46.not = icmp eq i32 %sub, 0
  br i1 %tobool46.not, label %if.end58.while.end_crit_edge, label %if.end58.while.body_crit_edge

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end58.while.end_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end58.while.end_crit_edge, %if.end43.while.end_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %m) #9
  %63 = ptrtoint ptr %t_data_sg23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %t_data_sg23, align 4
  %t_data_sg_orig = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 40
  %65 = ptrtoint ptr %t_data_sg_orig to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %t_data_sg_orig, align 8
  store ptr %37, ptr %t_data_sg23, align 4
  %66 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %t_data_nents, align 4
  %t_data_nents_orig = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 42
  %68 = ptrtoint ptr %t_data_nents_orig to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %t_data_nents_orig, align 8
  store i32 1, ptr %t_data_nents, align 4
  %sam_task_attr = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 7
  %69 = ptrtoint ptr %sam_task_attr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 33, ptr %sam_task_attr, align 8
  %transport_complete_callback = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 28
  %70 = ptrtoint ptr %transport_complete_callback to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @compare_and_write_post, ptr %transport_complete_callback, align 8
  %execute_cmd = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 27
  %71 = ptrtoint ptr %execute_cmd to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sbc_execute_rw, ptr %execute_cmd, align 4
  %t_state_lock = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 35
  call void @_raw_spin_lock_irq(ptr noundef %t_state_lock) #9
  %t_state = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 10
  %72 = ptrtoint ptr %t_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 5, ptr %t_state, align 4
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 34
  %73 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %transport_state, align 4
  %or = or i32 %74, 18
  store i32 %or, ptr %transport_state, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %t_state_lock) #9
  call void @__target_execute_cmd(ptr noundef %cmd, i1 noundef zeroext false) #9
  br label %cleanup

out:                                              ; preds = %do.end40, %if.then27, %if.end21.out_crit_edge, %do.end, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 20, %if.then27 ], [ 18, %do.end40 ], [ 0, %if.end.out_crit_edge ], [ %spec.select, %do.end ], [ %call24, %if.end21.out_crit_edge ]
  %caw_sem = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 25
  call void @up(ptr noundef %caw_sem) #9
  call void @sg_free_table(ptr noundef nonnull %write_tbl) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %while.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %while.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %miscmp_off) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %m) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %write_tbl) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_emulate_readcapacity(ptr noundef %cmd) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb, align 8
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_blocks, align 4
  %call = tail call i64 %7(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf)
  %buf.4.buf.4..sroa_idx48 = getelementptr inbounds i8, ptr %buf, i32 4
  %arrayidx = getelementptr i8, ptr %3, i32 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr i8, ptr %3, i32 2
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1, align 1
  %arrayidx3 = getelementptr i8, ptr %3, i32 3
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3, align 1
  %or44 = or i8 %14, %12
  %arrayidx5 = getelementptr i8, ptr %3, i32 4
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5, align 1
  %or745 = or i8 %or44, %16
  %arrayidx8 = getelementptr i8, ptr %3, i32 5
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8, align 1
  %or1046 = or i8 %or745, %18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or1046)
  %tobool11.not = icmp eq i8 %or1046, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %call)
  %cmp = icmp ugt i64 %call, 4294967294
  %conv14 = trunc i64 %call to i32
  %blocks.0 = select i1 %cmp, i32 -1, i32 %conv14
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %blocks.0, ptr %buf, align 4
  %block_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %20 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %block_size, align 8
  %22 = ptrtoint ptr %buf.4.buf.4..sroa_idx48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %buf.4.buf.4..sroa_idx48, align 4
  %call18 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end.if.end23_crit_edge, label %if.then20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %23 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_length, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 8)
  %26 = call ptr @memcpy(ptr %call18, ptr %buf, i32 %25)
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end.if.end23_crit_edge
  tail call void @target_complete_cmd_with_length(ptr noundef %cmd, i8 noundef zeroext 0, i32 noundef 8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 8, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_emulate_readcapacity_16(ptr noundef %cmd) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  %pi_prot_type1 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %4 = ptrtoint ptr %pi_prot_type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pi_prot_type1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf)
  %buf.8.buf.8..sroa_idx92 = getelementptr inbounds i8, ptr %buf, i32 8
  %buf.12.buf.12..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 12
  %buf.13.buf.13..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 13
  %buf.14.buf.14..sroa_idx95 = getelementptr inbounds i8, ptr %buf, i32 14
  %transport = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transport, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_blocks, align 4
  %call = tail call i64 %9(ptr noundef %1) #9
  %10 = getelementptr inbounds i8, ptr %buf, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 24)
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call, ptr %buf, align 8
  %block_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_size, align 8
  %15 = ptrtoint ptr %buf.8.buf.8..sroa_idx92 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf.8.buf.8..sroa_idx92, align 8
  %sup_prot_ops = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sup_prot_ops, align 8
  %and = and i32 %17, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end, label %if.then.if.then7_crit_edge

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end:                                           ; preds = %if.then
  %sess_prot_type = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %sess_prot_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sess_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not = icmp eq i32 %19, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.then.if.then7_crit_edge
  %pi_prot_type.091 = phi i32 [ %19, %if.end.if.then7_crit_edge ], [ %5, %if.then.if.then7_crit_edge ]
  %pi_prot_type.0.tr = trunc i32 %pi_prot_type.091 to i8
  %20 = shl i8 %pi_prot_type.0.tr, 1
  %conv = add i8 %20, -1
  %21 = ptrtoint ptr %buf.12.buf.12..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %buf.12.buf.12..sroa_idx, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %22 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport, align 8
  %get_lbppbe = getelementptr inbounds %struct.target_backend_ops, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %get_lbppbe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_lbppbe, align 4
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %if.end10.if.end20_crit_edge, label %if.then13

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 %25(ptr noundef %1) #9
  %26 = trunc i32 %call16 to i8
  %conv18 = and i8 %26, 15
  %27 = ptrtoint ptr %buf.13.buf.13..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv18, ptr %buf.13.buf.13..sroa_idx, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end10.if.end20_crit_edge
  %28 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transport, align 8
  %get_alignment_offset_lbas = getelementptr inbounds %struct.target_backend_ops, ptr %29, i32 0, i32 21
  %30 = ptrtoint ptr %get_alignment_offset_lbas to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_alignment_offset_lbas, align 4
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %if.end20.if.end29_crit_edge, label %if.then23

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i64 %31(ptr noundef %1) #9
  %conv27 = trunc i64 %call26 to i16
  %32 = ptrtoint ptr %buf.14.buf.14..sroa_idx95 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv27, ptr %buf.14.buf.14..sroa_idx95, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end20.if.end29_crit_edge
  %emulate_tpu = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 7
  %33 = ptrtoint ptr %emulate_tpu to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %emulate_tpu, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool31.not = icmp eq i8 %34, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.end29.if.then36_crit_edge

if.end29.if.then36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end29
  %emulate_tpws = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 8
  %35 = ptrtoint ptr %emulate_tpws to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %emulate_tpws, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool34.not = icmp eq i8 %36, 0
  br i1 %tobool34.not, label %lor.lhs.false.if.end49_crit_edge, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end29.if.then36_crit_edge
  %37 = ptrtoint ptr %buf.14.buf.14..sroa_idx95 to i32
  call void @__asan_load1_noabort(i32 %37)
  %buf.14.buf.14. = load i8, ptr %buf.14.buf.14..sroa_idx95, align 2
  %38 = or i8 %buf.14.buf.14., -128
  store i8 %38, ptr %buf.14.buf.14..sroa_idx95, align 2
  %unmap_zeroes_data = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 19
  %39 = ptrtoint ptr %unmap_zeroes_data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %unmap_zeroes_data, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool42.not = icmp eq i8 %40, 0
  br i1 %tobool42.not, label %if.then36.if.end49_crit_edge, label %if.then43

if.then36.if.end49_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then43:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %41 = or i8 %buf.14.buf.14., -64
  %42 = ptrtoint ptr %buf.14.buf.14..sroa_idx95 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %buf.14.buf.14..sroa_idx95, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.then36.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge
  %call50 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #9
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end49.if.end55_crit_edge, label %if.then52

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %43 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_length, align 4
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 32)
  %46 = call ptr @memcpy(ptr %call50, ptr %buf, i32 %45)
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end49.if.end55_crit_edge
  tail call void @target_complete_cmd_with_length(ptr noundef %cmd, i8 noundef zeroext 0, i32 noundef 32) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_emulate_report_referrals(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_emulate_noop(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_execute_unmap(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_data = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 29
  %0 = ptrtoint ptr %protocol_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol_data, align 4
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %2 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %4 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %8 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp4 = icmp ult i32 %9, 8
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %9) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call8 = tail call ptr @transport_kmap_data_sg(ptr noundef %cmd) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %call8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %call8, align 1
  %conv = zext i16 %11 to i32
  %arrayidx14 = getelementptr i8, ptr %call8, i32 2
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx14, align 1
  %conv16 = zext i16 %13 to i32
  %14 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_length, align 4
  %sub = add i32 %15, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv16)
  %cmp18 = icmp slt i32 %sub, %conv16
  br i1 %cmp18, label %do.end23, label %if.end11.if.end27_crit_edge

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end23:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %15, i32 noundef %conv16) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %if.end11.if.end27_crit_edge
  %size.0 = phi i32 [ %sub, %do.end23 ], [ %conv16, %if.end11.if.end27_crit_edge ]
  %div = sdiv i32 %size.0, 16
  %max_unmap_block_desc_count = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 39, i32 27
  %16 = ptrtoint ptr %max_unmap_block_desc_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_unmap_block_desc_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %17)
  %cmp28 = icmp ugt i32 %div, %17
  br i1 %cmp28, label %if.end27.err.thread_crit_edge, label %if.end31

if.end27.err.thread_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread

if.end31:                                         ; preds = %if.end27
  %arrayidx32 = getelementptr i8, ptr %call8, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbc_execute_unmap.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbc_execute_unmap, %if.then39)) #9
          to label %do.end42 [label %if.then39], !srcloc !175

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %transport = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 46
  %18 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbc_execute_unmap.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.78, ptr noundef %19, i32 noundef %conv, i32 noundef %conv16, i32 noundef %size.0, ptr noundef %arrayidx32) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size.0)
  %cmp43143 = icmp sgt i32 %size.0, 15
  br i1 %cmp43143, label %while.body.lr.ph, label %do.end42.if.then88_crit_edge

do.end42.if.then88_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88

while.body.lr.ph:                                 ; preds = %do.end42
  %max_unmap_lba_count = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 39, i32 26
  %transport71 = getelementptr inbounds %struct.se_device, ptr %3, i32 0, i32 46
  %execute_unmap = getelementptr inbounds %struct.sbc_ops, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end85.while.body_crit_edge, %while.body.lr.ph
  %ptr.0145 = phi ptr [ %arrayidx32, %while.body.lr.ph ], [ %add.ptr, %if.end85.while.body_crit_edge ]
  %size.1144 = phi i32 [ %size.0, %while.body.lr.ph ], [ %sub86, %if.end85.while.body_crit_edge ]
  %20 = ptrtoint ptr %ptr.0145 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %ptr.0145, align 1
  %arrayidx47 = getelementptr i8, ptr %ptr.0145, i32 8
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx47, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbc_execute_unmap.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbc_execute_unmap, %if.then61)) #9
          to label %do.end64 [label %if.then61], !srcloc !175

if.then61:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbc_execute_unmap.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.79, i64 noundef %21, i32 noundef %23) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %while.body
  %24 = ptrtoint ptr %max_unmap_lba_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_unmap_lba_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp66 = icmp ugt i32 %23, %25
  br i1 %cmp66, label %do.end64.err.thread_crit_edge, label %if.end69

do.end64.err.thread_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread

if.end69:                                         ; preds = %do.end64
  %conv70 = zext i32 %23 to i64
  %add = add i64 %21, %conv70
  %26 = ptrtoint ptr %transport71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transport71, align 8
  %get_blocks = getelementptr inbounds %struct.target_backend_ops, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %get_blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_blocks, align 4
  %call72 = tail call i64 %29(ptr noundef %3) #9
  %add73 = add i64 %call72, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add73)
  %cmp74 = icmp ugt i64 %add, %add73
  br i1 %cmp74, label %if.end69.err.thread_crit_edge, label %if.end77

if.end69.err.thread_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread

if.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool78.not = icmp eq i32 %23, 0
  br i1 %tobool78.not, label %if.end77.if.end85_crit_edge, label %if.then79

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then79:                                        ; preds = %if.end77
  %30 = ptrtoint ptr %execute_unmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %execute_unmap, align 4
  %call81 = tail call i32 %31(ptr noundef %cmd, i64 noundef %21, i64 noundef %conv70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then79.if.end85_crit_edge, label %if.then79.err.thread_crit_edge

if.then79.err.thread_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.thread

if.then79.if.end85_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85:                                         ; preds = %if.then79.if.end85_crit_edge, %if.end77.if.end85_crit_edge
  %add.ptr = getelementptr i8, ptr %ptr.0145, i32 16
  %sub86 = add nsw i32 %size.1144, -16
  %cmp43 = icmp sgt i32 %size.1144, 31
  br i1 %cmp43, label %if.end85.while.body_crit_edge, label %if.end85.if.then88_crit_edge

if.end85.if.then88_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then88

if.end85.while.body_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

err.thread:                                       ; preds = %if.then79.err.thread_crit_edge, %if.end69.err.thread_crit_edge, %do.end64.err.thread_crit_edge, %if.end27.err.thread_crit_edge
  %ret.2.ph = phi i32 [ 9, %if.end27.err.thread_crit_edge ], [ %call81, %if.then79.err.thread_crit_edge ], [ 9, %do.end64.err.thread_crit_edge ], [ 17, %if.end69.err.thread_crit_edge ]
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #9
  br label %cleanup

if.then88:                                        ; preds = %if.end85.if.then88_crit_edge, %do.end42.if.then88_crit_edge
  tail call void @transport_kunmap_data_sg(ptr noundef %cmd) #9
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %err.thread, %if.end7.cleanup_crit_edge, %do.end, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 19, %do.end ], [ 8, %entry.cleanup_crit_edge ], [ 10, %if.end7.cleanup_crit_edge ], [ 0, %if.then88 ], [ %ret.2.ph, %err.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_emulate_startstop(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %0 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr i8, ptr %1, i32 2
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr i8, ptr %1, i32 3
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %arrayidx8 = getelementptr i8, ptr %1, i32 4
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %11 = and i8 %10, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %if.end29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ 8, %lor.lhs.false4.cleanup_crit_edge ], [ 8, %lor.lhs.false.cleanup_crit_edge ], [ 8, %entry.cleanup_crit_edge ], [ 8, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spc_parse_cdb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_cmd_size_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sbc_get_device_type(ptr nocapture readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sbc_dif_generate(ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %block_size1 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %2 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size1, align 8
  %t_prot_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 56
  %4 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_prot_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp306.not = icmp eq i32 %5, 0
  br i1 %cmp306.not, label %entry.cleanup117_crit_edge, label %for.body.lr.ph

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

for.body.lr.ph:                                   ; preds = %entry
  %t_prot_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %6 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t_prot_sg, align 4
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %8 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %t_task_lba, align 8
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %10 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_data_sg, align 4
  %prot_type = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 50
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.end98.for.body_crit_edge, %for.body.lr.ph
  %dsg.0311 = phi ptr [ %11, %for.body.lr.ph ], [ %dsg.1.lcssa, %do.end98.for.body_crit_edge ]
  %psg.0310 = phi ptr [ %7, %for.body.lr.ph ], [ %call115, %do.end98.for.body_crit_edge ]
  %offset.0309 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1.lcssa, %do.end98.for.body_crit_edge ]
  %i.0308 = phi i32 [ 0, %for.body.lr.ph ], [ %inc114, %do.end98.for.body_crit_edge ]
  %sector.0307 = phi i64 [ %9, %for.body.lr.ph ], [ %sector.1.lcssa, %do.end98.for.body_crit_edge ]
  %12 = ptrtoint ptr %psg.0310 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %psg.0310, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !176

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %13, -4
  %14 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %20 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %14, i32 noundef %or.i) #9
  %offset3 = getelementptr inbounds %struct.scatterlist, ptr %psg.0310, i32 0, i32 1
  %26 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset3, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %27
  %28 = ptrtoint ptr %dsg.0311 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dsg.0311, align 4
  %and.i.i189 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i189)
  %tobool.i.not.i190 = icmp eq i32 %and.i.i189, 0
  br i1 %tobool.i.not.i190, label %sg_page.exit193, label %do.body2.i191, !prof !176

do.body2.i191:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit193:                                  ; preds = %sg_page.exit
  %and.i192 = and i32 %29, -4
  %30 = inttoptr i32 %and.i192 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %31 = load i32, ptr @pgprot_kernel, align 4
  %or.i194 = or i32 %31, 512
  %32 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i195 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %add.i.i.i197 = add i32 %35, 1
  store volatile i32 %add.i.i.i197, ptr %preempt_count.i.i.i.i196, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %36 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i198 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i198 to ptr
  %task.i.i.i.i199 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i199, align 8
  %pagefault_disabled.i.i.i.i200 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i200, align 8
  %inc.i.i.i.i201 = add i32 %41, 1
  store i32 %inc.i.i.i.i201, ptr %pagefault_disabled.i.i.i.i200, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i202 = tail call ptr @__kmap_local_page_prot(ptr noundef %30, i32 noundef %or.i194) #9
  %offset6 = getelementptr inbounds %struct.scatterlist, ptr %dsg.0311, i32 0, i32 1
  %42 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset6, align 4
  %add.ptr7 = getelementptr i8, ptr %call.i.i202, i32 %43
  %length = getelementptr inbounds %struct.scatterlist, ptr %psg.0310, i32 0, i32 2
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp9296.not = icmp eq i32 %45, 0
  br i1 %cmp9296.not, label %sg_page.exit193.do.end98_crit_edge, label %sg_page.exit193.for.body10_crit_edge

sg_page.exit193.for.body10_crit_edge:             ; preds = %sg_page.exit193
  br label %for.body10

sg_page.exit193.do.end98_crit_edge:               ; preds = %sg_page.exit193
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %sg_page.exit193.for.body10_crit_edge
  %dsg.1302 = phi ptr [ %dsg.3, %for.inc.for.body10_crit_edge ], [ %dsg.0311, %sg_page.exit193.for.body10_crit_edge ]
  %offset.1301 = phi i32 [ %offset.3, %for.inc.for.body10_crit_edge ], [ %offset.0309, %sg_page.exit193.for.body10_crit_edge ]
  %j.0300 = phi i32 [ %add94, %for.inc.for.body10_crit_edge ], [ 0, %sg_page.exit193.for.body10_crit_edge ]
  %daddr.0299 = phi ptr [ %daddr.2, %for.inc.for.body10_crit_edge ], [ %add.ptr7, %sg_page.exit193.for.body10_crit_edge ]
  %sector.1297 = phi i64 [ %inc, %for.inc.for.body10_crit_edge ], [ %sector.0307, %sg_page.exit193.for.body10_crit_edge ]
  %length11 = getelementptr inbounds %struct.scatterlist, ptr %dsg.1302, i32 0, i32 2
  %46 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1301, i32 %47)
  %cmp12.not = icmp ult i32 %offset.1301, %47
  br i1 %cmp12.not, label %for.body10.if.end34_crit_edge, label %if.then

for.body10.if.end34_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then:                                          ; preds = %for.body10
  %sub = sub i32 %offset.1301, %47
  %offset15 = getelementptr inbounds %struct.scatterlist, ptr %dsg.1302, i32 0, i32 1
  %48 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset15, align 4
  %idx.neg = sub i32 0, %49
  %add.ptr16 = getelementptr i8, ptr %daddr.0299, i32 %idx.neg
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr16) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %50 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %55, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %56 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %call19 = tail call ptr @sg_next(ptr noundef %dsg.1302) #9
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %do.end24, label %if.end

do.end24:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset3, align 4
  %idx.neg26 = sub i32 0, %61
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %idx.neg26
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr27) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %62 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i203 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i203 to ptr
  %task.i.i.i204 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i.i.i204, align 8
  %pagefault_disabled.i.i.i205 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 213
  %66 = ptrtoint ptr %pagefault_disabled.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pagefault_disabled.i.i.i205, align 8
  %dec.i.i.i206 = add i32 %67, -1
  store i32 %dec.i.i.i206, ptr %pagefault_disabled.i.i.i205, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  br label %cleanup117.sink.split

if.end:                                           ; preds = %if.then
  %68 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call19, align 4
  %and.i.i210 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i210)
  %tobool.i.not.i211 = icmp eq i32 %and.i.i210, 0
  br i1 %tobool.i.not.i211, label %sg_page.exit214, label %do.body2.i212, !prof !176

do.body2.i212:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit214:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i213 = and i32 %69, -4
  %70 = inttoptr i32 %and.i213 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %71 = load i32, ptr @pgprot_kernel, align 4
  %or.i215 = or i32 %71, 512
  %72 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i216 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i216 to ptr
  %preempt_count.i.i.i.i217 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i217, align 4
  %add.i.i.i218 = add i32 %75, 1
  store volatile i32 %add.i.i.i218, ptr %preempt_count.i.i.i.i217, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %76 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i219 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i1.i.i219 to ptr
  %task.i.i.i.i220 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i.i.i.i220, align 8
  %pagefault_disabled.i.i.i.i221 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 213
  %80 = ptrtoint ptr %pagefault_disabled.i.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pagefault_disabled.i.i.i.i221, align 8
  %inc.i.i.i.i222 = add i32 %81, 1
  store i32 %inc.i.i.i.i222, ptr %pagefault_disabled.i.i.i.i221, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i223 = tail call ptr @__kmap_local_page_prot(ptr noundef %70, i32 noundef %or.i215) #9
  %offset32 = getelementptr inbounds %struct.scatterlist, ptr %call19, i32 0, i32 1
  %82 = ptrtoint ptr %offset32 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %offset32, align 4
  %add.ptr33 = getelementptr i8, ptr %call.i.i223, i32 %83
  br label %if.end34

if.end34:                                         ; preds = %sg_page.exit214, %for.body10.if.end34_crit_edge
  %daddr.1 = phi ptr [ %add.ptr33, %sg_page.exit214 ], [ %daddr.0299, %for.body10.if.end34_crit_edge ]
  %offset.2 = phi i32 [ %sub, %sg_page.exit214 ], [ %offset.1301, %for.body10.if.end34_crit_edge ]
  %dsg.2 = phi ptr [ %call19, %sg_page.exit214 ], [ %dsg.1302, %for.body10.if.end34_crit_edge ]
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %j.0300
  %length36 = getelementptr inbounds %struct.scatterlist, ptr %dsg.2, i32 0, i32 2
  %84 = ptrtoint ptr %length36 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length36, align 4
  %sub37 = sub i32 %85, %offset.2
  %86 = tail call i32 @llvm.umin.i32(i32 %3, i32 %sub37)
  %add.ptr39 = getelementptr i8, ptr %daddr.1, i32 %offset.2
  %call40 = tail call zeroext i16 @crc_t10dif(ptr noundef %add.ptr39, i32 noundef %86) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub37)
  %cmp41 = icmp ugt i32 %3, %sub37
  br i1 %cmp41, label %do.end46, label %if.else

do.end46:                                         ; preds = %if.end34
  %offset47 = getelementptr inbounds %struct.scatterlist, ptr %dsg.2, i32 0, i32 1
  %87 = ptrtoint ptr %offset47 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset47, align 4
  %idx.neg48 = sub i32 0, %88
  %add.ptr49 = getelementptr i8, ptr %daddr.1, i32 %idx.neg48
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr49) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %89 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i224 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i1.i224 to ptr
  %task.i.i.i225 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i.i225 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i.i225, align 8
  %pagefault_disabled.i.i.i226 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 213
  %93 = ptrtoint ptr %pagefault_disabled.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pagefault_disabled.i.i.i226, align 8
  %dec.i.i.i227 = add i32 %94, -1
  store i32 %dec.i.i.i227, ptr %pagefault_disabled.i.i.i226, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %95 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i228 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i228 to ptr
  %preempt_count.i.i.i229 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i229, align 4
  %sub.i.i230 = add i32 %98, -1
  store volatile i32 %sub.i.i230, ptr %preempt_count.i.i.i229, align 4
  %call52 = tail call ptr @sg_next(ptr noundef %dsg.2) #9
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %do.end58, label %if.end64

do.end58:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset3, align 4
  %idx.neg60 = sub i32 0, %100
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %idx.neg60
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr61) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %101 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i231 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i1.i231 to ptr
  %task.i.i.i232 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i.i.i232 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i.i.i232, align 8
  %pagefault_disabled.i.i.i233 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 213
  %105 = ptrtoint ptr %pagefault_disabled.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pagefault_disabled.i.i.i233, align 8
  %dec.i.i.i234 = add i32 %106, -1
  store i32 %dec.i.i.i234, ptr %pagefault_disabled.i.i.i233, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  br label %cleanup117.sink.split

if.end64:                                         ; preds = %do.end46
  %107 = ptrtoint ptr %call52 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call52, align 4
  %and.i.i238 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i238)
  %tobool.i.not.i239 = icmp eq i32 %and.i.i238, 0
  br i1 %tobool.i.not.i239, label %sg_page.exit242, label %do.body2.i240, !prof !176

do.body2.i240:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit242:                                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %and.i241 = and i32 %108, -4
  %109 = inttoptr i32 %and.i241 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %110 = load i32, ptr @pgprot_kernel, align 4
  %or.i243 = or i32 %110, 512
  %111 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i244 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i.i.i244 to ptr
  %preempt_count.i.i.i.i245 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %preempt_count.i.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %preempt_count.i.i.i.i245, align 4
  %add.i.i.i246 = add i32 %114, 1
  store volatile i32 %add.i.i.i246, ptr %preempt_count.i.i.i.i245, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %115 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i247 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i1.i.i247 to ptr
  %task.i.i.i.i248 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task.i.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task.i.i.i.i248, align 8
  %pagefault_disabled.i.i.i.i249 = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 213
  %119 = ptrtoint ptr %pagefault_disabled.i.i.i.i249 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pagefault_disabled.i.i.i.i249, align 8
  %inc.i.i.i.i250 = add i32 %120, 1
  store i32 %inc.i.i.i.i250, ptr %pagefault_disabled.i.i.i.i249, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i251 = tail call ptr @__kmap_local_page_prot(ptr noundef %109, i32 noundef %or.i243) #9
  %offset67 = getelementptr inbounds %struct.scatterlist, ptr %call52, i32 0, i32 1
  %121 = ptrtoint ptr %offset67 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %offset67, align 4
  %add.ptr68 = getelementptr i8, ptr %call.i.i251, i32 %122
  %sub69 = sub i32 %3, %86
  %call70 = tail call zeroext i16 @crc_t10dif_update(i16 noundef zeroext %call40, ptr noundef %add.ptr68, i32 noundef %sub69) #9
  br label %if.end71

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %offset.2, %3
  br label %if.end71

if.end71:                                         ; preds = %if.else, %sg_page.exit242
  %daddr.2 = phi ptr [ %add.ptr68, %sg_page.exit242 ], [ %daddr.1, %if.else ]
  %offset.3 = phi i32 [ %sub69, %sg_page.exit242 ], [ %add, %if.else ]
  %crc.0 = phi i16 [ %call70, %sg_page.exit242 ], [ %call40, %if.else ]
  %dsg.3 = phi ptr [ %call52, %sg_page.exit242 ], [ %dsg.2, %if.else ]
  %123 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %crc.0, ptr %add.ptr35, align 4
  %124 = ptrtoint ptr %prot_type to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp72 = icmp eq i32 %125, 1
  br i1 %cmp72, label %if.then73, label %if.end71.if.end74_crit_edge

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i64 %sector.1297 to i32
  %ref_tag = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr35, i32 0, i32 2
  %126 = ptrtoint ptr %ref_tag to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv, ptr %ref_tag, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71.if.end74_crit_edge
  %app_tag = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr35, i32 0, i32 1
  %127 = ptrtoint ptr %app_tag to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %app_tag, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbc_dif_generate.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbc_dif_generate, %if.then81)) #9
          to label %for.inc [label %if.then81], !srcloc !175

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp82 = icmp eq i32 %129, 1
  %cond84 = select i1 %cmp82, ptr @.str.29, ptr @.str.30
  %130 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %add.ptr35, align 4
  %conv86 = zext i16 %131 to i32
  %132 = ptrtoint ptr %app_tag to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %app_tag, align 2
  %conv88 = zext i16 %133 to i32
  %ref_tag89 = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr35, i32 0, i32 2
  %134 = ptrtoint ptr %ref_tag89 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ref_tag89, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbc_dif_generate.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond84, i64 noundef %sector.1297, i32 noundef %conv86, i32 noundef %conv88, i32 noundef %135) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.end74
  %inc = add i64 %sector.1297, 1
  %add94 = add i32 %j.0300, 8
  %136 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %length, align 4
  %cmp9 = icmp ult i32 %add94, %137
  br i1 %cmp9, label %for.inc.for.body10_crit_edge, label %for.inc.do.end98_crit_edge

for.inc.do.end98_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

do.end98:                                         ; preds = %for.inc.do.end98_crit_edge, %sg_page.exit193.do.end98_crit_edge
  %sector.1.lcssa = phi i64 [ %sector.0307, %sg_page.exit193.do.end98_crit_edge ], [ %inc, %for.inc.do.end98_crit_edge ]
  %daddr.0.lcssa = phi ptr [ %add.ptr7, %sg_page.exit193.do.end98_crit_edge ], [ %daddr.2, %for.inc.do.end98_crit_edge ]
  %offset.1.lcssa = phi i32 [ %offset.0309, %sg_page.exit193.do.end98_crit_edge ], [ %offset.3, %for.inc.do.end98_crit_edge ]
  %dsg.1.lcssa = phi ptr [ %dsg.0311, %sg_page.exit193.do.end98_crit_edge ], [ %dsg.3, %for.inc.do.end98_crit_edge ]
  %offset99 = getelementptr inbounds %struct.scatterlist, ptr %dsg.1.lcssa, i32 0, i32 1
  %138 = ptrtoint ptr %offset99 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %offset99, align 4
  %idx.neg100 = sub i32 0, %139
  %add.ptr101 = getelementptr i8, ptr %daddr.0.lcssa, i32 %idx.neg100
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr101) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %140 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i252 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i1.i252 to ptr
  %task.i.i.i253 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task.i.i.i253, align 8
  %pagefault_disabled.i.i.i254 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 213
  %144 = ptrtoint ptr %pagefault_disabled.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pagefault_disabled.i.i.i254, align 8
  %dec.i.i.i255 = add i32 %145, -1
  store i32 %dec.i.i.i255, ptr %pagefault_disabled.i.i.i254, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %146 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i256 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i.i256 to ptr
  %preempt_count.i.i.i257 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %preempt_count.i.i.i257 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %preempt_count.i.i.i257, align 4
  %sub.i.i258 = add i32 %149, -1
  store volatile i32 %sub.i.i258, ptr %preempt_count.i.i.i257, align 4
  %150 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %offset3, align 4
  %idx.neg109 = sub i32 0, %151
  %add.ptr110 = getelementptr i8, ptr %add.ptr, i32 %idx.neg109
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr110) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %152 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i259 = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i1.i259 to ptr
  %task.i.i.i260 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %task.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %task.i.i.i260, align 8
  %pagefault_disabled.i.i.i261 = getelementptr inbounds %struct.task_struct, ptr %155, i32 0, i32 213
  %156 = ptrtoint ptr %pagefault_disabled.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %pagefault_disabled.i.i.i261, align 8
  %dec.i.i.i262 = add i32 %157, -1
  store i32 %dec.i.i.i262, ptr %pagefault_disabled.i.i.i261, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %158 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i263 = and i32 %158, -16384
  %159 = inttoptr i32 %and.i.i.i.i263 to ptr
  %preempt_count.i.i.i264 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %preempt_count.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %preempt_count.i.i.i264, align 4
  %sub.i.i265 = add i32 %161, -1
  store volatile i32 %sub.i.i265, ptr %preempt_count.i.i.i264, align 4
  %inc114 = add nuw i32 %i.0308, 1
  %call115 = tail call ptr @sg_next(ptr noundef %psg.0310) #9
  %162 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %t_prot_nents, align 8
  %cmp = icmp ult i32 %inc114, %163
  br i1 %cmp, label %do.end98.for.body_crit_edge, label %do.end98.cleanup117_crit_edge

do.end98.cleanup117_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

do.end98.for.body_crit_edge:                      ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup117.sink.split:                            ; preds = %do.end58, %do.end24
  %164 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i235 = and i32 %164, -16384
  %165 = inttoptr i32 %and.i.i.i.i235 to ptr
  %preempt_count.i.i.i236 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %preempt_count.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %preempt_count.i.i.i236, align 4
  %sub.i.i209 = add i32 %167, -1
  store volatile i32 %sub.i.i209, ptr %preempt_count.i.i.i236, align 4
  br label %cleanup117

cleanup117:                                       ; preds = %cleanup117.sink.split, %do.end98.cleanup117_crit_edge, %entry.cleanup117_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_t10dif(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_t10dif_update(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sbc_dif_copy_prot(ptr nocapture noundef readonly %cmd, i32 noundef %sectors, i1 noundef zeroext %read, ptr noundef %sg, i32 noundef %sg_off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_prot_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 56
  %0 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_prot_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp122.not = icmp eq i32 %1, 0
  br i1 %cmp122.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %t_prot_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %2 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_prot_sg, align 4
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %4 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_dev, align 4
  %prot_length = getelementptr inbounds %struct.se_device, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %prot_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prot_length, align 8
  %mul = mul i32 %7, %sectors
  br label %for.body

for.body:                                         ; preds = %do.end40.for.body_crit_edge, %for.body.preheader
  %sg.addr.0127 = phi ptr [ %sg.addr.1.lcssa, %do.end40.for.body_crit_edge ], [ %sg, %for.body.preheader ]
  %offset.0126 = phi i32 [ %offset.1.lcssa, %do.end40.for.body_crit_edge ], [ %sg_off, %for.body.preheader ]
  %left.0125 = phi i32 [ %left.1.lcssa, %do.end40.for.body_crit_edge ], [ %mul, %for.body.preheader ]
  %i.0124 = phi i32 [ %inc, %do.end40.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %psg.0123 = phi ptr [ %call46, %do.end40.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %8 = ptrtoint ptr %psg.0123 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %psg.0123, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !176

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %16 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 213
  %20 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %10, i32 noundef %or.i) #9
  %offset2 = getelementptr inbounds %struct.scatterlist, ptr %psg.0123, i32 0, i32 1
  %22 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset2, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %23
  %length = getelementptr inbounds %struct.scatterlist, ptr %psg.0123, i32 0, i32 2
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %left.0125, i32 %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.not113 = icmp eq i32 %26, 0
  br i1 %tobool4.not113, label %sg_page.exit.do.end40_crit_edge, label %sg_page.exit.while.body_crit_edge

sg_page.exit.while.body_crit_edge:                ; preds = %sg_page.exit
  br label %while.body

sg_page.exit.do.end40_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %sg_page.exit.while.body_crit_edge
  %sg.addr.1119 = phi ptr [ %sg.addr.2, %if.end36.while.body_crit_edge ], [ %sg.addr.0127, %sg_page.exit.while.body_crit_edge ]
  %copied.0117 = phi i32 [ %add23, %if.end36.while.body_crit_edge ], [ 0, %sg_page.exit.while.body_crit_edge ]
  %psg_len.0116 = phi i32 [ %sub24, %if.end36.while.body_crit_edge ], [ %26, %sg_page.exit.while.body_crit_edge ]
  %offset.1115 = phi i32 [ %offset.2, %if.end36.while.body_crit_edge ], [ %offset.0126, %sg_page.exit.while.body_crit_edge ]
  %left.1114 = phi i32 [ %sub22, %if.end36.while.body_crit_edge ], [ %left.0125, %sg_page.exit.while.body_crit_edge ]
  %length5 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.1119, i32 0, i32 2
  %27 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length5, align 4
  %sub = sub i32 %28, %offset.1115
  %29 = tail call i32 @llvm.umin.i32(i32 %psg_len.0116, i32 %sub)
  %30 = ptrtoint ptr %sg.addr.1119 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sg.addr.1119, align 4
  %and.i.i89 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %tobool.i.not.i90 = icmp eq i32 %and.i.i89, 0
  br i1 %tobool.i.not.i90, label %sg_page.exit93, label %do.body2.i91, !prof !176

do.body2.i91:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit93:                                   ; preds = %while.body
  %and.i92 = and i32 %31, -4
  %32 = inttoptr i32 %and.i92 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %33 = load i32, ptr @pgprot_kernel, align 4
  %or.i94 = or i32 %33, 512
  %34 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i95 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %add.i.i.i97 = add i32 %37, 1
  store volatile i32 %add.i.i.i97, ptr %preempt_count.i.i.i.i96, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %38 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i98 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i1.i.i98 to ptr
  %task.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i.i99, align 8
  %pagefault_disabled.i.i.i.i100 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 213
  %42 = ptrtoint ptr %pagefault_disabled.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pagefault_disabled.i.i.i.i100, align 8
  %inc.i.i.i.i101 = add i32 %43, 1
  store i32 %inc.i.i.i.i101, ptr %pagefault_disabled.i.i.i.i100, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i102 = tail call ptr @__kmap_local_page_prot(ptr noundef %32, i32 noundef %or.i94) #9
  %offset14 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.1119, i32 0, i32 1
  %44 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset14, align 4
  %add.ptr15 = getelementptr i8, ptr %call.i.i102, i32 %45
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %offset.1115
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %copied.0117
  br i1 %read, label %if.then18, label %if.else

if.then18:                                        ; preds = %sg_page.exit93
  call void @__sanitizer_cov_trace_pc() #11
  %46 = call ptr @memcpy(ptr %add.ptr19, ptr %add.ptr16, i32 %29)
  br label %if.end21

if.else:                                          ; preds = %sg_page.exit93
  call void @__sanitizer_cov_trace_pc() #11
  %47 = call ptr @memcpy(ptr %add.ptr16, ptr %add.ptr19, i32 %29)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %sub22 = sub i32 %left.1114, %29
  %add = add i32 %29, %offset.1115
  %add23 = add i32 %29, %copied.0117
  %sub24 = sub i32 %psg_len.0116, %29
  %48 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset14, align 4
  %idx.neg = sub i32 0, %49
  %add.ptr27 = getelementptr i8, ptr %add.ptr16, i32 %idx.neg
  %idx.neg28 = sub i32 0, %add
  %add.ptr29 = getelementptr i8, ptr %add.ptr27, i32 %idx.neg28
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr29) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %50 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %55, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %56 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %60 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %61)
  %cmp33.not = icmp ult i32 %add, %61
  br i1 %cmp33.not, label %if.end21.if.end36_crit_edge, label %if.then34

if.end21.if.end36_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call ptr @sg_next(ptr noundef %sg.addr.1119) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end21.if.end36_crit_edge
  %offset.2 = phi i32 [ 0, %if.then34 ], [ %add, %if.end21.if.end36_crit_edge ]
  %sg.addr.2 = phi ptr [ %call35, %if.then34 ], [ %sg.addr.1119, %if.end21.if.end36_crit_edge ]
  %tobool4.not = icmp eq i32 %sub24, 0
  br i1 %tobool4.not, label %if.end36.do.end40_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end36.do.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end40:                                         ; preds = %if.end36.do.end40_crit_edge, %sg_page.exit.do.end40_crit_edge
  %left.1.lcssa = phi i32 [ %left.0125, %sg_page.exit.do.end40_crit_edge ], [ %sub22, %if.end36.do.end40_crit_edge ]
  %offset.1.lcssa = phi i32 [ %offset.0126, %sg_page.exit.do.end40_crit_edge ], [ %offset.2, %if.end36.do.end40_crit_edge ]
  %sg.addr.1.lcssa = phi ptr [ %sg.addr.0127, %sg_page.exit.do.end40_crit_edge ], [ %sg.addr.2, %if.end36.do.end40_crit_edge ]
  %62 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset2, align 4
  %idx.neg42 = sub i32 0, %63
  %add.ptr43 = getelementptr i8, ptr %add.ptr, i32 %idx.neg42
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr43) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %64 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i103 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i103 to ptr
  %task.i.i.i104 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i.i.i104, align 8
  %pagefault_disabled.i.i.i105 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 213
  %68 = ptrtoint ptr %pagefault_disabled.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pagefault_disabled.i.i.i105, align 8
  %dec.i.i.i106 = add i32 %69, -1
  store i32 %dec.i.i.i106, ptr %pagefault_disabled.i.i.i105, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %70 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i107 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i107 to ptr
  %preempt_count.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i108, align 4
  %sub.i.i109 = add i32 %73, -1
  store volatile i32 %sub.i.i109, ptr %preempt_count.i.i.i108, align 4
  %inc = add nuw i32 %i.0124, 1
  %call46 = tail call ptr @sg_next(ptr noundef %psg.0123) #9
  %74 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %t_prot_nents, align 8
  %cmp = icmp ult i32 %inc, %75
  br i1 %cmp, label %do.end40.for.body_crit_edge, label %do.end40.cleanup_crit_edge

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end40.for.body_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %do.end40.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sbc_dif_verify(ptr nocapture noundef %cmd, i64 noundef %start, i32 noundef %sectors, i32 noundef %ei_lba, ptr noundef %psg, i32 noundef %psg_off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %block_size1 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %2 = ptrtoint ptr %block_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size1, align 8
  %tobool.not409 = icmp eq ptr %psg, null
  br i1 %tobool.not409, label %entry.cleanup149_crit_edge, label %land.rhs.lr.ph

entry.cleanup149_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149

land.rhs.lr.ph:                                   ; preds = %entry
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %4 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t_data_sg, align 4
  %conv = zext i32 %sectors to i64
  %add = add i64 %conv, %start
  %prot_checks.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 51
  %prot_type.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 50
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %ei_lba.addr.0415 = phi i32 [ %ei_lba, %land.rhs.lr.ph ], [ %ei_lba.addr.1.lcssa, %for.end.land.rhs_crit_edge ]
  %psg.addr.0414 = phi ptr [ %psg, %land.rhs.lr.ph ], [ %call147, %for.end.land.rhs_crit_edge ]
  %dsg_off.0413 = phi i32 [ 0, %land.rhs.lr.ph ], [ %dsg_off.1.lcssa, %for.end.land.rhs_crit_edge ]
  %sector.0412 = phi i64 [ %start, %land.rhs.lr.ph ], [ %sector.1.lcssa, %for.end.land.rhs_crit_edge ]
  %dsg.0411 = phi ptr [ %5, %land.rhs.lr.ph ], [ %dsg.1.lcssa, %for.end.land.rhs_crit_edge ]
  %psg_off.addr.0410 = phi i32 [ %psg_off, %land.rhs.lr.ph ], [ 0, %for.end.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sector.0412, i64 %add)
  %cmp = icmp ult i64 %sector.0412, %add
  br i1 %cmp, label %for.body, label %land.rhs.cleanup149_crit_edge

land.rhs.cleanup149_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149

for.body:                                         ; preds = %land.rhs
  %6 = ptrtoint ptr %psg.addr.0414 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %psg.addr.0414, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !176

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %9 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %9, 512
  %10 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %14 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 213
  %18 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %19, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %8, i32 noundef %or.i) #9
  %offset = getelementptr inbounds %struct.scatterlist, ptr %psg.addr.0414, i32 0, i32 1
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %21
  %22 = ptrtoint ptr %dsg.0411 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dsg.0411, align 4
  %and.i.i228 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i228)
  %tobool.i.not.i229 = icmp eq i32 %and.i.i228, 0
  br i1 %tobool.i.not.i229, label %sg_page.exit232, label %do.body2.i230, !prof !176

do.body2.i230:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit232:                                  ; preds = %sg_page.exit
  %and.i231 = and i32 %23, -4
  %24 = inttoptr i32 %and.i231 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i233 = or i32 %25, 512
  %26 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i234 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i234 to ptr
  %preempt_count.i.i.i.i235 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i235, align 4
  %add.i.i.i236 = add i32 %29, 1
  store volatile i32 %add.i.i.i236, ptr %preempt_count.i.i.i.i235, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %30 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i237 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i.i237 to ptr
  %task.i.i.i.i238 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i.i238, align 8
  %pagefault_disabled.i.i.i.i239 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i.i239, align 8
  %inc.i.i.i.i240 = add i32 %35, 1
  store i32 %inc.i.i.i.i240, ptr %pagefault_disabled.i.i.i.i239, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i241 = tail call ptr @__kmap_local_page_prot(ptr noundef %24, i32 noundef %or.i233) #9
  %offset6 = getelementptr inbounds %struct.scatterlist, ptr %dsg.0411, i32 0, i32 1
  %36 = ptrtoint ptr %offset6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset6, align 4
  %add.ptr7 = getelementptr i8, ptr %call.i.i241, i32 %37
  %length = getelementptr inbounds %struct.scatterlist, ptr %psg.addr.0414, i32 0, i32 2
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %psg_off.addr.0410, i32 %39)
  %cmp9394 = icmp ult i32 %psg_off.addr.0410, %39
  br i1 %cmp9394, label %sg_page.exit232.for.body17_crit_edge, label %sg_page.exit232.for.end_crit_edge

sg_page.exit232.for.end_crit_edge:                ; preds = %sg_page.exit232
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sg_page.exit232.for.body17_crit_edge:             ; preds = %sg_page.exit232
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %sg_page.exit232.for.body17_crit_edge
  %ei_lba.addr.1403 = phi i32 [ %inc125, %for.inc.for.body17_crit_edge ], [ %ei_lba.addr.0415, %sg_page.exit232.for.body17_crit_edge ]
  %dsg_off.1402 = phi i32 [ %dsg_off.4, %for.inc.for.body17_crit_edge ], [ %dsg_off.0413, %sg_page.exit232.for.body17_crit_edge ]
  %i.0401 = phi i32 [ %add127, %for.inc.for.body17_crit_edge ], [ %psg_off.addr.0410, %sg_page.exit232.for.body17_crit_edge ]
  %daddr.0400 = phi ptr [ %daddr.3, %for.inc.for.body17_crit_edge ], [ %add.ptr7, %sg_page.exit232.for.body17_crit_edge ]
  %sector.1398 = phi i64 [ %inc, %for.inc.for.body17_crit_edge ], [ %sector.0412, %sg_page.exit232.for.body17_crit_edge ]
  %dsg.1397 = phi ptr [ %dsg.4, %for.inc.for.body17_crit_edge ], [ %dsg.0411, %sg_page.exit232.for.body17_crit_edge ]
  %length18 = getelementptr inbounds %struct.scatterlist, ptr %dsg.1397, i32 0, i32 2
  %40 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dsg_off.1402, i32 %41)
  %cmp19.not = icmp ult i32 %dsg_off.1402, %41
  br i1 %cmp19.not, label %for.body17.if.end43_crit_edge, label %if.then

for.body17.if.end43_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then:                                          ; preds = %for.body17
  %sub = sub i32 %dsg_off.1402, %41
  %offset23 = getelementptr inbounds %struct.scatterlist, ptr %dsg.1397, i32 0, i32 1
  %42 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset23, align 4
  %idx.neg = sub i32 0, %43
  %add.ptr24 = getelementptr i8, ptr %daddr.0400, i32 %idx.neg
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr24) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %44 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %49, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %50 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %call27 = tail call ptr @sg_next(ptr noundef %dsg.1397) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end33, label %if.end

do.end33:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset, align 4
  %idx.neg35 = sub i32 0, %55
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i32 %idx.neg35
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr36) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %56 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i242 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i1.i242 to ptr
  %task.i.i.i243 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i.i243 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i.i243, align 8
  %pagefault_disabled.i.i.i244 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 213
  %60 = ptrtoint ptr %pagefault_disabled.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pagefault_disabled.i.i.i244, align 8
  %dec.i.i.i245 = add i32 %61, -1
  store i32 %dec.i.i.i245, ptr %pagefault_disabled.i.i.i244, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %62 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i246 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i246 to ptr
  %preempt_count.i.i.i247 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i247, align 4
  %sub.i.i248 = add i32 %65, -1
  store volatile i32 %sub.i.i248, ptr %preempt_count.i.i.i247, align 4
  br label %cleanup149

if.end:                                           ; preds = %if.then
  %66 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %call27, align 4
  %and.i.i249 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i249)
  %tobool.i.not.i250 = icmp eq i32 %and.i.i249, 0
  br i1 %tobool.i.not.i250, label %sg_page.exit253, label %do.body2.i251, !prof !176

do.body2.i251:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit253:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i252 = and i32 %67, -4
  %68 = inttoptr i32 %and.i252 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %69 = load i32, ptr @pgprot_kernel, align 4
  %or.i254 = or i32 %69, 512
  %70 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i255 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i255 to ptr
  %preempt_count.i.i.i.i256 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i256, align 4
  %add.i.i.i257 = add i32 %73, 1
  store volatile i32 %add.i.i.i257, ptr %preempt_count.i.i.i.i256, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %74 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i258 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i1.i.i258 to ptr
  %task.i.i.i.i259 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %task.i.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task.i.i.i.i259, align 8
  %pagefault_disabled.i.i.i.i260 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 213
  %78 = ptrtoint ptr %pagefault_disabled.i.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pagefault_disabled.i.i.i.i260, align 8
  %inc.i.i.i.i261 = add i32 %79, 1
  store i32 %inc.i.i.i.i261, ptr %pagefault_disabled.i.i.i.i260, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i262 = tail call ptr @__kmap_local_page_prot(ptr noundef %68, i32 noundef %or.i254) #9
  %offset41 = getelementptr inbounds %struct.scatterlist, ptr %call27, i32 0, i32 1
  %80 = ptrtoint ptr %offset41 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset41, align 4
  %add.ptr42 = getelementptr i8, ptr %call.i.i262, i32 %81
  br label %if.end43

if.end43:                                         ; preds = %sg_page.exit253, %for.body17.if.end43_crit_edge
  %dsg.2 = phi ptr [ %call27, %sg_page.exit253 ], [ %dsg.1397, %for.body17.if.end43_crit_edge ]
  %daddr.1 = phi ptr [ %add.ptr42, %sg_page.exit253 ], [ %daddr.0400, %for.body17.if.end43_crit_edge ]
  %dsg_off.2 = phi i32 [ %sub, %sg_page.exit253 ], [ %dsg_off.1402, %for.body17.if.end43_crit_edge ]
  %add.ptr44 = getelementptr i8, ptr %add.ptr, i32 %i.0401
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbc_dif_verify.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbc_dif_verify, %if.then50)) #9
          to label %do.end55 [label %if.then50], !srcloc !175

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr44, align 4
  %conv51 = zext i16 %83 to i32
  %app_tag = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr44, i32 0, i32 1
  %84 = ptrtoint ptr %app_tag to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %app_tag, align 2
  %conv52 = zext i16 %85 to i32
  %ref_tag = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr44, i32 0, i32 2
  %86 = ptrtoint ptr %ref_tag to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ref_tag, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbc_dif_verify.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.32, i64 noundef %sector.1398, i32 noundef %conv51, i32 noundef %conv52, i32 noundef %87) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %if.end43
  %app_tag56 = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr44, i32 0, i32 1
  %88 = ptrtoint ptr %app_tag56 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %app_tag56, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %89)
  %cmp58 = icmp eq i16 %89, -1
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  %add61 = add i32 %dsg_off.2, %3
  br label %for.inc

if.end62:                                         ; preds = %do.end55
  %length63 = getelementptr inbounds %struct.scatterlist, ptr %dsg.2, i32 0, i32 2
  %90 = ptrtoint ptr %length63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %length63, align 4
  %sub64 = sub i32 %91, %dsg_off.2
  %92 = tail call i32 @llvm.umin.i32(i32 %3, i32 %sub64)
  %add.ptr68 = getelementptr i8, ptr %daddr.1, i32 %dsg_off.2
  %call69 = tail call zeroext i16 @crc_t10dif(ptr noundef %add.ptr68, i32 noundef %92) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub64)
  %cmp70 = icmp ugt i32 %3, %sub64
  br i1 %cmp70, label %do.end76, label %if.else

do.end76:                                         ; preds = %if.end62
  %offset77 = getelementptr inbounds %struct.scatterlist, ptr %dsg.2, i32 0, i32 1
  %93 = ptrtoint ptr %offset77 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset77, align 4
  %idx.neg78 = sub i32 0, %94
  %add.ptr79 = getelementptr i8, ptr %daddr.1, i32 %idx.neg78
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr79) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %95 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i263 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i1.i263 to ptr
  %task.i.i.i264 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i.i.i264, align 8
  %pagefault_disabled.i.i.i265 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 213
  %99 = ptrtoint ptr %pagefault_disabled.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pagefault_disabled.i.i.i265, align 8
  %dec.i.i.i266 = add i32 %100, -1
  store i32 %dec.i.i.i266, ptr %pagefault_disabled.i.i.i265, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %101 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i267 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i267 to ptr
  %preempt_count.i.i.i268 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i268, align 4
  %sub.i.i269 = add i32 %104, -1
  store volatile i32 %sub.i.i269, ptr %preempt_count.i.i.i268, align 4
  %call82 = tail call ptr @sg_next(ptr noundef %dsg.2) #9
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %do.end88, label %if.end94

do.end88:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset, align 4
  %idx.neg90 = sub i32 0, %106
  %add.ptr91 = getelementptr i8, ptr %add.ptr, i32 %idx.neg90
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr91) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %107 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i270 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i1.i270 to ptr
  %task.i.i.i271 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i.i.i271, align 8
  %pagefault_disabled.i.i.i272 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 213
  %111 = ptrtoint ptr %pagefault_disabled.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pagefault_disabled.i.i.i272, align 8
  %dec.i.i.i273 = add i32 %112, -1
  store i32 %dec.i.i.i273, ptr %pagefault_disabled.i.i.i272, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %113 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i274 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i274 to ptr
  %preempt_count.i.i.i275 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i275, align 4
  %sub.i.i276 = add i32 %116, -1
  store volatile i32 %sub.i.i276, ptr %preempt_count.i.i.i275, align 4
  br label %cleanup149

if.end94:                                         ; preds = %do.end76
  %117 = ptrtoint ptr %call82 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %call82, align 4
  %and.i.i277 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277)
  %tobool.i.not.i278 = icmp eq i32 %and.i.i277, 0
  br i1 %tobool.i.not.i278, label %sg_page.exit281, label %do.body2.i279, !prof !176

do.body2.i279:                                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit281:                                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %and.i280 = and i32 %118, -4
  %119 = inttoptr i32 %and.i280 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %120 = load i32, ptr @pgprot_kernel, align 4
  %or.i282 = or i32 %120, 512
  %121 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i283 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i.i.i283 to ptr
  %preempt_count.i.i.i.i284 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %preempt_count.i.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %preempt_count.i.i.i.i284, align 4
  %add.i.i.i285 = add i32 %124, 1
  store volatile i32 %add.i.i.i285, ptr %preempt_count.i.i.i.i284, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %125 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i286 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i1.i.i286 to ptr
  %task.i.i.i.i287 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task.i.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task.i.i.i.i287, align 8
  %pagefault_disabled.i.i.i.i288 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 213
  %129 = ptrtoint ptr %pagefault_disabled.i.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pagefault_disabled.i.i.i.i288, align 8
  %inc.i.i.i.i289 = add i32 %130, 1
  store i32 %inc.i.i.i.i289, ptr %pagefault_disabled.i.i.i.i288, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i290 = tail call ptr @__kmap_local_page_prot(ptr noundef %119, i32 noundef %or.i282) #9
  %offset97 = getelementptr inbounds %struct.scatterlist, ptr %call82, i32 0, i32 1
  %131 = ptrtoint ptr %offset97 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %offset97, align 4
  %add.ptr98 = getelementptr i8, ptr %call.i.i290, i32 %132
  %sub99 = sub i32 %3, %92
  %call100 = tail call zeroext i16 @crc_t10dif_update(i16 noundef zeroext %call69, ptr noundef %add.ptr98, i32 noundef %sub99) #9
  br label %if.end102

if.else:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %add101 = add i32 %dsg_off.2, %3
  br label %if.end102

if.end102:                                        ; preds = %if.else, %sg_page.exit281
  %dsg.3 = phi ptr [ %call82, %sg_page.exit281 ], [ %dsg.2, %if.else ]
  %daddr.2 = phi ptr [ %add.ptr98, %sg_page.exit281 ], [ %daddr.1, %if.else ]
  %dsg_off.3 = phi i32 [ %sub99, %sg_page.exit281 ], [ %add101, %if.else ]
  %crc.0 = phi i16 [ %call100, %sg_page.exit281 ], [ %call69, %if.else ]
  %133 = ptrtoint ptr %prot_checks.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %prot_checks.i, align 8
  %135 = and i8 %134, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i, label %if.end102.check_ref.i_crit_edge, label %if.end.i

if.end102.check_ref.i_crit_edge:                  ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_ref.i

if.end.i:                                         ; preds = %if.end102
  %136 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr44, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %137, i16 %crc.0)
  %cmp.not.i = icmp eq i16 %137, %crc.0
  br i1 %cmp.not.i, label %if.end.i.check_ref.i_crit_edge, label %do.end.i

if.end.i.check_ref.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_ref.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv2.i = zext i16 %crc.0 to i32
  %conv1.i = zext i16 %137 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i64 noundef %sector.1398, i32 noundef %conv1.i, i32 noundef %conv2.i) #12
  br label %do.end109

check_ref.i:                                      ; preds = %if.end.i.check_ref.i_crit_edge, %if.end102.check_ref.i_crit_edge
  %138 = and i8 %134, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool12.not.i = icmp eq i8 %138, 0
  br i1 %tobool12.not.i, label %check_ref.i.for.inc_crit_edge, label %if.end14.i

check_ref.i.for.inc_crit_edge:                    ; preds = %check_ref.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end14.i:                                       ; preds = %check_ref.i
  %139 = ptrtoint ptr %prot_type.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %prot_type.i, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %140, label %if.end14.i.for.inc_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %land.lhs.true34.i
  ]

if.end14.i.for.inc_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end14.i
  %ref_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr44, i32 0, i32 2
  %142 = ptrtoint ptr %ref_tag.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %ref_tag.i, align 4
  %144 = trunc i64 %sector.1398 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %144)
  %cmp19.not.i = icmp eq i32 %143, %144
  br i1 %cmp19.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %do.end24.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end24.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %145 = trunc i64 %sector.1398 to i32
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i64 noundef %sector.1398, i32 noundef %143, i32 noundef %145) #12
  br label %do.end109

land.lhs.true34.i:                                ; preds = %if.end14.i
  %ref_tag35.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %add.ptr44, i32 0, i32 2
  %146 = ptrtoint ptr %ref_tag35.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ref_tag35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %ei_lba.addr.1403)
  %cmp36.not.i = icmp eq i32 %147, %ei_lba.addr.1403
  br i1 %cmp36.not.i, label %land.lhs.true34.i.for.inc_crit_edge, label %do.end41.i

land.lhs.true34.i.for.inc_crit_edge:              ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end41.i:                                       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i64 noundef %sector.1398, i32 noundef %147, i32 noundef %ei_lba.addr.1403) #12
  br label %do.end109

do.end109:                                        ; preds = %do.end41.i, %do.end24.i, %do.end.i
  %retval.0.i291 = phi i32 [ 21, %do.end.i ], [ 23, %do.end24.i ], [ 23, %do.end41.i ]
  %offset110 = getelementptr inbounds %struct.scatterlist, ptr %dsg.3, i32 0, i32 1
  %148 = ptrtoint ptr %offset110 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %offset110, align 4
  %idx.neg111 = sub i32 0, %149
  %add.ptr112 = getelementptr i8, ptr %daddr.2, i32 %idx.neg111
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr112) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %150 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i292 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i1.i292 to ptr
  %task.i.i.i293 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %task.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %task.i.i.i293, align 8
  %pagefault_disabled.i.i.i294 = getelementptr inbounds %struct.task_struct, ptr %153, i32 0, i32 213
  %154 = ptrtoint ptr %pagefault_disabled.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pagefault_disabled.i.i.i294, align 8
  %dec.i.i.i295 = add i32 %155, -1
  store i32 %dec.i.i.i295, ptr %pagefault_disabled.i.i.i294, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %156 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i296 = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i.i296 to ptr
  %preempt_count.i.i.i297 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i.i297, align 4
  %sub.i.i298 = add i32 %159, -1
  store volatile i32 %sub.i.i298, ptr %preempt_count.i.i.i297, align 4
  %160 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %offset, align 4
  %idx.neg120 = sub i32 0, %161
  %add.ptr121 = getelementptr i8, ptr %add.ptr, i32 %idx.neg120
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr121) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %162 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i299 = and i32 %162, -16384
  %163 = inttoptr i32 %and.i.i.i1.i299 to ptr
  %task.i.i.i300 = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %task.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %task.i.i.i300, align 8
  %pagefault_disabled.i.i.i301 = getelementptr inbounds %struct.task_struct, ptr %165, i32 0, i32 213
  %166 = ptrtoint ptr %pagefault_disabled.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pagefault_disabled.i.i.i301, align 8
  %dec.i.i.i302 = add i32 %167, -1
  store i32 %dec.i.i.i302, ptr %pagefault_disabled.i.i.i301, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %168 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i303 = and i32 %168, -16384
  %169 = inttoptr i32 %and.i.i.i.i303 to ptr
  %preempt_count.i.i.i304 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %preempt_count.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %preempt_count.i.i.i304, align 4
  %sub.i.i305 = add i32 %171, -1
  store volatile i32 %sub.i.i305, ptr %preempt_count.i.i.i304, align 4
  %sense_info = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 58
  %172 = ptrtoint ptr %sense_info to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %sector.1398, ptr %sense_info, align 8
  br label %cleanup149

for.inc:                                          ; preds = %land.lhs.true34.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end14.i.for.inc_crit_edge, %check_ref.i.for.inc_crit_edge, %if.then60
  %dsg.4 = phi ptr [ %dsg.2, %if.then60 ], [ %dsg.3, %check_ref.i.for.inc_crit_edge ], [ %dsg.3, %land.lhs.true34.i.for.inc_crit_edge ], [ %dsg.3, %land.lhs.true.i.for.inc_crit_edge ], [ %dsg.3, %if.end14.i.for.inc_crit_edge ]
  %daddr.3 = phi ptr [ %daddr.1, %if.then60 ], [ %daddr.2, %check_ref.i.for.inc_crit_edge ], [ %daddr.2, %land.lhs.true34.i.for.inc_crit_edge ], [ %daddr.2, %land.lhs.true.i.for.inc_crit_edge ], [ %daddr.2, %if.end14.i.for.inc_crit_edge ]
  %dsg_off.4 = phi i32 [ %add61, %if.then60 ], [ %dsg_off.3, %check_ref.i.for.inc_crit_edge ], [ %dsg_off.3, %land.lhs.true34.i.for.inc_crit_edge ], [ %dsg_off.3, %land.lhs.true.i.for.inc_crit_edge ], [ %dsg_off.3, %if.end14.i.for.inc_crit_edge ]
  %inc = add nuw i64 %sector.1398, 1
  %inc125 = add i32 %ei_lba.addr.1403, 1
  %add127 = add i32 %i.0401, 8
  %173 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add127, i32 %174)
  %cmp9 = icmp ult i32 %add127, %174
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %add)
  %cmp14 = icmp ult i64 %inc, %add
  %or.cond = select i1 %cmp9, i1 %cmp14, i1 false
  br i1 %or.cond, label %for.inc.for.body17_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sg_page.exit232.for.end_crit_edge
  %dsg.1.lcssa = phi ptr [ %dsg.0411, %sg_page.exit232.for.end_crit_edge ], [ %dsg.4, %for.inc.for.end_crit_edge ]
  %sector.1.lcssa = phi i64 [ %sector.0412, %sg_page.exit232.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %daddr.0.lcssa = phi ptr [ %add.ptr7, %sg_page.exit232.for.end_crit_edge ], [ %daddr.3, %for.inc.for.end_crit_edge ]
  %dsg_off.1.lcssa = phi i32 [ %dsg_off.0413, %sg_page.exit232.for.end_crit_edge ], [ %dsg_off.4, %for.inc.for.end_crit_edge ]
  %ei_lba.addr.1.lcssa = phi i32 [ %ei_lba.addr.0415, %sg_page.exit232.for.end_crit_edge ], [ %inc125, %for.inc.for.end_crit_edge ]
  %offset132 = getelementptr inbounds %struct.scatterlist, ptr %dsg.1.lcssa, i32 0, i32 1
  %175 = ptrtoint ptr %offset132 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %offset132, align 4
  %idx.neg133 = sub i32 0, %176
  %add.ptr134 = getelementptr i8, ptr %daddr.0.lcssa, i32 %idx.neg133
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr134) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %177 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i306 = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i1.i306 to ptr
  %task.i.i.i307 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %task.i.i.i307 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %task.i.i.i307, align 8
  %pagefault_disabled.i.i.i308 = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 213
  %181 = ptrtoint ptr %pagefault_disabled.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pagefault_disabled.i.i.i308, align 8
  %dec.i.i.i309 = add i32 %182, -1
  store i32 %dec.i.i.i309, ptr %pagefault_disabled.i.i.i308, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %183 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i310 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i.i.i310 to ptr
  %preempt_count.i.i.i311 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %preempt_count.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %preempt_count.i.i.i311, align 4
  %sub.i.i312 = add i32 %186, -1
  store volatile i32 %sub.i.i312, ptr %preempt_count.i.i.i311, align 4
  %187 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %offset, align 4
  %idx.neg142 = sub i32 0, %188
  %add.ptr143 = getelementptr i8, ptr %add.ptr, i32 %idx.neg142
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr143) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %189 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i313 = and i32 %189, -16384
  %190 = inttoptr i32 %and.i.i.i1.i313 to ptr
  %task.i.i.i314 = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %task.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %task.i.i.i314, align 8
  %pagefault_disabled.i.i.i315 = getelementptr inbounds %struct.task_struct, ptr %192, i32 0, i32 213
  %193 = ptrtoint ptr %pagefault_disabled.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %pagefault_disabled.i.i.i315, align 8
  %dec.i.i.i316 = add i32 %194, -1
  store i32 %dec.i.i.i316, ptr %pagefault_disabled.i.i.i315, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %195 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i317 = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i317 to ptr
  %preempt_count.i.i.i318 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %preempt_count.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %preempt_count.i.i.i318, align 4
  %sub.i.i319 = add i32 %198, -1
  store volatile i32 %sub.i.i319, ptr %preempt_count.i.i.i318, align 4
  %call147 = tail call ptr @sg_next(ptr noundef nonnull %psg.addr.0414) #9
  %tobool.not = icmp eq ptr %call147, null
  br i1 %tobool.not, label %for.end.cleanup149_crit_edge, label %for.end.land.rhs_crit_edge

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end.cleanup149_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149

cleanup149:                                       ; preds = %for.end.cleanup149_crit_edge, %do.end109, %do.end88, %do.end33, %land.rhs.cleanup149_crit_edge, %entry.cleanup149_crit_edge
  %retval.3 = phi i32 [ 0, %do.end33 ], [ 0, %do.end88 ], [ %retval.0.i291, %do.end109 ], [ 0, %entry.cleanup149_crit_edge ], [ 0, %land.rhs.cleanup149_crit_edge ], [ 0, %for.end.cleanup149_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_check_fua(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbc_execute_write_same_unmap(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol_data = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 29
  %0 = ptrtoint ptr %protocol_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %protocol_data, align 4
  %t_task_cdb.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %5, label %if.else14.i [
    i8 65, label %if.then.i
    i8 -109, label %if.then10.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr i8, ptr %3, i32 7
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx3.i, align 1
  %conv4.i = zext i16 %8 to i32
  br label %if.end18.i

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.i = getelementptr i8, ptr %3, i32 10
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx12.i, align 1
  br label %if.end18.i

if.else14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx16.i = getelementptr i8, ptr %3, i32 28
  %11 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx16.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else14.i, %if.then10.i, %if.then.i
  %num_blocks.0.i = phi i32 [ %conv4.i, %if.then.i ], [ %10, %if.then10.i ], [ %12, %if.else14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_blocks.0.i)
  %tobool.not.i = icmp eq i32 %num_blocks.0.i, 0
  br i1 %tobool.not.i, label %sbc_get_write_same_sectors.exit, label %sbc_get_write_same_sectors.exit.thread

sbc_get_write_same_sectors.exit.thread:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i = zext i32 %num_blocks.0.i to i64
  br label %if.then

sbc_get_write_same_sectors.exit:                  ; preds = %if.end18.i
  %se_dev.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %13 = ptrtoint ptr %se_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_dev.i, align 4
  %transport.i = getelementptr inbounds %struct.se_device, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transport.i, align 8
  %get_blocks.i = getelementptr inbounds %struct.target_backend_ops, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %get_blocks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_blocks.i, align 4
  %call23.i = tail call i64 %18(ptr noundef %14) #9
  %t_task_lba.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %19 = ptrtoint ptr %t_task_lba.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %t_task_lba.i, align 8
  %sub.i = add i64 %call23.i, 1
  %add.i = sub i64 %sub.i, %20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %tobool.not = icmp eq i64 %add.i, 0
  br i1 %tobool.not, label %sbc_get_write_same_sectors.exit.if.end4_crit_edge, label %sbc_get_write_same_sectors.exit.if.then_crit_edge

sbc_get_write_same_sectors.exit.if.then_crit_edge: ; preds = %sbc_get_write_same_sectors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sbc_get_write_same_sectors.exit.if.end4_crit_edge: ; preds = %sbc_get_write_same_sectors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %sbc_get_write_same_sectors.exit.if.then_crit_edge, %sbc_get_write_same_sectors.exit.thread
  %retval.0.i15 = phi i64 [ %conv20.i, %sbc_get_write_same_sectors.exit.thread ], [ %add.i, %sbc_get_write_same_sectors.exit.if.then_crit_edge ]
  %execute_unmap = getelementptr inbounds %struct.sbc_ops, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %execute_unmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %execute_unmap, align 4
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %23 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %t_task_lba, align 8
  %call1 = tail call i32 %22(ptr noundef %cmd, i64 noundef %24, i64 noundef %retval.0.i15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %sbc_get_write_same_sectors.exit.if.end4_crit_edge
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @compare_and_write_do_cmp(ptr noundef %read_sgl, i32 noundef %read_nents, ptr noundef %cmp_sgl, i32 noundef %cmp_nents, i32 noundef %cmp_len, ptr nocapture noundef writeonly %miscmp_off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cmp_len, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sg_copy_to_buffer(ptr noundef %cmp_sgl, i32 noundef %cmp_nents, ptr noundef nonnull %call9.i.i, i32 noundef %cmp_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_nents)
  %cmp106.not = icmp eq i32 %read_nents, 0
  br i1 %cmp106.not, label %for.cond.preheader.do.body46_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body46_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %cleanup56

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cmp_len.addr.0110 = phi i32 [ %sub, %for.inc42.for.body_crit_edge ], [ %cmp_len, %for.cond.preheader.for.body_crit_edge ]
  %sg.0109 = phi ptr [ %call44, %for.inc42.for.body_crit_edge ], [ %read_sgl, %for.cond.preheader.for.body_crit_edge ]
  %sg_cnt.0108 = phi i32 [ %inc43, %for.inc42.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %offset.0107 = phi i32 [ %add37, %for.inc42.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0109, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %cmp_len.addr.0110)
  %3 = ptrtoint ptr %sg.0109 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sg.0109, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !176

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !177
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !178
  %11 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %5, i32 noundef %or.i) #9
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %offset.0107
  %bcmp = tail call i32 @bcmp(ptr %call.i.i, ptr %add.ptr, i32 %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %sg_page.exit.do.end30_crit_edge, label %for.cond13.preheader

sg_page.exit.do.end30_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

for.cond13.preheader:                             ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp14103.not = icmp eq i32 %2, 0
  br i1 %cmp14103.not, label %for.cond13.preheader.for.end_crit_edge, label %for.cond13.preheader.land.rhs_crit_edge

for.cond13.preheader.land.rhs_crit_edge:          ; preds = %for.cond13.preheader
  br label %land.rhs

for.cond13.preheader.for.end_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond13.preheader.land.rhs_crit_edge
  %i.0104 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond13.preheader.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 %i.0104
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %add = add i32 %i.0104, %offset.0107
  %arrayidx15 = getelementptr i8, ptr %call9.i.i, i32 %add
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp17 = icmp eq i8 %18, %20
  br i1 %cmp17, label %for.inc, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond13.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond13.preheader.for.end_crit_edge ], [ %2, %for.inc.for.end_crit_edge ], [ %i.0104, %land.rhs.for.end_crit_edge ]
  %add20 = add i32 %i.0.lcssa, %offset.0107
  %21 = ptrtoint ptr %miscmp_off to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add20, ptr %miscmp_off, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %add20) #12
  br label %do.end30

do.end30:                                         ; preds = %for.end, %sg_page.exit.do.end30_crit_edge
  %ret.1 = phi i32 [ 20, %for.end ], [ 0, %sg_page.exit.do.end30_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %22 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  %28 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br i1 %tobool11.not, label %if.end36, label %do.end30.cleanup56_crit_edge

do.end30.cleanup56_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.end36:                                         ; preds = %do.end30
  %sub = sub i32 %cmp_len.addr.0110, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool38.not = icmp eq i32 %sub, 0
  br i1 %tobool38.not, label %if.end36.do.body46_crit_edge, label %for.inc42

if.end36.do.body46_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

for.inc42:                                        ; preds = %if.end36
  %add37 = add i32 %2, %offset.0107
  %inc43 = add nuw i32 %sg_cnt.0108, 1
  %call44 = tail call ptr @sg_next(ptr noundef %sg.0109) #9
  %exitcond112.not = icmp eq i32 %inc43, %read_nents
  br i1 %exitcond112.not, label %for.inc42.do.body46_crit_edge, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc42.do.body46_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

do.body46:                                        ; preds = %for.inc42.do.body46_crit_edge, %if.end36.do.body46_crit_edge, %for.cond.preheader.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @compare_and_write_do_cmp.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@compare_and_write_do_cmp, %if.then52)) #9
          to label %cleanup56 [label %if.then52], !srcloc !175

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @compare_and_write_do_cmp.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.72) #9
  br label %cleanup56

cleanup56:                                        ; preds = %if.then52, %do.body46, %do.end30.cleanup56_crit_edge, %do.end, %entry.cleanup56_crit_edge
  %retval.1.i.i92 = phi ptr [ %call9.i.i, %if.then52 ], [ %call9.i.i, %do.end ], [ null, %entry.cleanup56_crit_edge ], [ %call9.i.i, %do.body46 ], [ %call9.i.i, %do.end30.cleanup56_crit_edge ]
  %ret.3 = phi i32 [ 0, %if.then52 ], [ 18, %do.end ], [ 18, %entry.cleanup56_crit_edge ], [ 0, %do.body46 ], [ %ret.1, %do.end30.cleanup56_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i.i92) #9
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compare_and_write_post(ptr noundef %cmd, i1 noundef zeroext %success, ptr nocapture noundef writeonly %post_ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_state_lock = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 35
  tail call void @_raw_spin_lock_irq(ptr noundef %t_state_lock) #9
  br i1 %success, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %post_ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %post_ret, align 4
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %scsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp eq i8 %4, 2
  %spec.select = select i1 %cmp, i32 10, i32 0
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ %spec.select, %if.then ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %t_state_lock) #9
  %caw_sem = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 25
  tail call void @up(ptr noundef %caw_sem) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__target_execute_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_kmap_data_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_kunmap_data_sg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd_with_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__ksymtab_sbc_get_write_same_sectors, !1, !"__ksymtab_sbc_get_write_same_sectors", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_sbc.c", i32 190, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_sbc.c", i32 974, i32 5}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sbc_parse_cdb._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @sbc_parse_cdb._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/target_core_sbc.c", i32 987, i32 4}
!10 = !{ptr @sbc_parse_cdb._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sbc_parse_cdb._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/target/target_core_sbc.c", i32 995, i32 4}
!14 = !{ptr @sbc_parse_cdb._rs, !13, !"_rs", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sbc_parse_cdb._entry.7, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @sbc_parse_cdb._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/target_core_sbc.c", i32 1006, i32 4}
!20 = !{ptr @sbc_parse_cdb._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sbc_parse_cdb._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/target/target_core_sbc.c", i32 1037, i32 4}
!24 = !{ptr @sbc_parse_cdb._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sbc_parse_cdb._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/target_core_sbc.c", i32 1064, i32 4}
!28 = !{ptr @sbc_parse_cdb._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sbc_parse_cdb._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @sbc_parse_cdb._entry.19, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/target/target_core_sbc.c", i32 1074, i32 4}
!32 = !{ptr @sbc_parse_cdb._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sbc_parse_cdb._entry.21, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/target/target_core_sbc.c", i32 1088, i32 4}
!35 = !{ptr @sbc_parse_cdb._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/target/target_core_sbc.c", i32 1147, i32 4}
!38 = !{ptr @sbc_parse_cdb._entry.23, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sbc_parse_cdb._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_sbc_parse_cdb, !41, !"__ksymtab_sbc_parse_cdb", i1 false, i1 false}
!41 = !{!"../drivers/target/target_core_sbc.c", i32 1159, i32 1}
!42 = !{ptr @__ksymtab_sbc_get_device_type, !43, !"__ksymtab_sbc_get_device_type", i1 false, i1 false}
!43 = !{!"../drivers/target/target_core_sbc.c", i32 1165, i32 1}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_sbc.c", i32 1304, i32 4}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sbc_dif_generate.__UNIQUE_ID_ddebug300, !45, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!49 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__ksymtab_sbc_dif_copy_prot, !52, !"__ksymtab_sbc_dif_copy_prot", i1 false, i1 false}
!52 = !{!"../drivers/target/target_core_sbc.c", i32 1403, i32 1}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/target/target_core_sbc.c", i32 1442, i32 4}
!55 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sbc_dif_verify.__UNIQUE_ID_ddebug311, !54, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!57 = !{ptr @__ksymtab_sbc_dif_verify, !58, !"__ksymtab_sbc_dif_verify", i1 false, i1 false}
!58 = !{!"../drivers/target/target_core_sbc.c", i32 1487, i32 1}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/target/target_core_sbc.c", i32 803, i32 4}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sbc_check_dpofua._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sbc_check_dpofua._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/target_core_sbc.c", i32 810, i32 4}
!66 = !{ptr @sbc_check_dpofua._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sbc_check_dpofua._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/target_core_sbc.c", i32 730, i32 4}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sbc_check_prot._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sbc_check_prot._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/target_core_sbc.c", i32 769, i32 3}
!75 = !{ptr @sbc_check_prot._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sbc_check_prot._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/target_core_sbc.c", i32 789, i32 2}
!79 = !{ptr @sbc_check_prot.__UNIQUE_ID_ddebug291, !78, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/target_core_sbc.c", i32 685, i32 4}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sbc_set_prot_op_checks._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sbc_set_prot_op_checks._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @sbc_set_prot_op_checks._entry.46, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/target/target_core_sbc.c", i32 711, i32 4}
!87 = !{ptr @sbc_set_prot_op_checks._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/target_core_sbc.c", i32 367, i32 3}
!90 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @xdreadwrite_callback._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @xdreadwrite_callback._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/target_core_sbc.c", i32 290, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sbc_setup_write_same._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @sbc_setup_write_same._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/target/target_core_sbc.c", i32 296, i32 3}
!100 = !{ptr @sbc_setup_write_same._entry.52, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sbc_setup_write_same._entry_ptr.54, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/target_core_sbc.c", i32 305, i32 3}
!104 = !{ptr @sbc_setup_write_same._entry.55, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @sbc_setup_write_same._entry_ptr.57, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/target_core_sbc.c", i32 312, i32 3}
!108 = !{ptr @sbc_setup_write_same._entry.58, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @sbc_setup_write_same._entry_ptr.60, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/target/target_core_sbc.c", i32 324, i32 4}
!112 = !{ptr @sbc_setup_write_same._entry.61, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sbc_setup_write_same._entry_ptr.63, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/target_core_sbc.c", i32 529, i32 3}
!116 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @compare_and_write_callback.__UNIQUE_ID_ddebug290, !115, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/target/target_core_sbc.c", i32 556, i32 3}
!120 = !{ptr @compare_and_write_callback._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @compare_and_write_callback._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/target/target_core_sbc.c", i32 461, i32 3}
!124 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @compare_and_write_do_cmp._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @compare_and_write_do_cmp._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/target_core_sbc.c", i32 480, i32 4}
!129 = !{ptr @compare_and_write_do_cmp._entry.69, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @compare_and_write_do_cmp._entry_ptr.71, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/target_core_sbc.c", i32 493, i32 2}
!133 = !{ptr @compare_and_write_do_cmp.__UNIQUE_ID_ddebug289, !132, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/target/target_core_sbc.c", i32 1189, i32 3}
!136 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @sbc_execute_unmap._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @sbc_execute_unmap._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/target/target_core_sbc.c", i32 1203, i32 3}
!141 = !{ptr @sbc_execute_unmap._entry.75, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @sbc_execute_unmap._entry_ptr.77, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/target/target_core_sbc.c", i32 1215, i32 2}
!145 = !{ptr @sbc_execute_unmap.__UNIQUE_ID_ddebug292, !144, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/target_core_sbc.c", i32 1221, i32 3}
!148 = !{ptr @sbc_execute_unmap.__UNIQUE_ID_ddebug293, !147, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/target_core_sbc.c", i32 1331, i32 3}
!151 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @sbc_dif_v1_verify._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @sbc_dif_v1_verify._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/target/target_core_sbc.c", i32 1343, i32 3}
!156 = !{ptr @sbc_dif_v1_verify._entry.82, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @sbc_dif_v1_verify._entry_ptr.84, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/target/target_core_sbc.c", i32 1351, i32 3}
!160 = !{ptr @sbc_dif_v1_verify._entry.85, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sbc_dif_v1_verify._entry_ptr.87, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"auto-init"}
!173 = !{i8 0, i8 2}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 2148728631, i64 2148728636, i64 2148728649, i64 2148728693, i64 2148728727, i64 2148728748}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i64 2154348816, i64 2154349308, i64 2154348853, i64 2154348909, i64 2154348943, i64 2154348967, i64 2154349008, i64 2154349029, i64 2154349057, i64 2154349091}
!178 = !{i64 2153901220}
!179 = !{i64 2152572937}
!180 = !{i64 2152573144}
!181 = !{i64 2153903991}
!182 = !{i64 2154345258, i64 2154345750, i64 2154345295, i64 2154345351, i64 2154345385, i64 2154345409, i64 2154345450, i64 2154345471, i64 2154345499, i64 2154345533}
!183 = !{i64 2154346868, i64 2154347360, i64 2154346905, i64 2154346961, i64 2154346995, i64 2154347019, i64 2154347060, i64 2154347081, i64 2154347109, i64 2154347143}
