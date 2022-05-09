; ModuleID = '/llk/IR_all_yes/fs/dlm/member.c_pt.bc'
source_filename = "../fs/dlm/member.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.dlm_rcom = type { %struct.dlm_header, i32, i32, i64, i64, i64, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon, i32, i16, i8, i8 }
%union.anon = type { i32 }
%struct.dlm_member = type { %struct.list_head, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.42, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.42 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.43 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_slot = type { i32, i32 }
%struct.rcom_slot = type { i32, i16, i16, i64 }
%struct.dlm_lockspace_ops = type { ptr, ptr, ptr }
%struct.dlm_recover = type { %struct.list_head, ptr, i32, i64 }
%struct.dlm_config_node = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@dlm_slots_copy_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dlm: %s: dlm_slots_copy_in gen %u old %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlm_slots_copy_in\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/dlm/member.c\00", [16 x i8] zeroinitializer }, align 32
@dlm_slots_copy_in._entry_ptr = internal global ptr @dlm_slots_copy_in._entry, section ".printk_index", align 4
@dlm_slots_copy_in._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013dlm: %s: dlm_slots_copy_in our slot changed %d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dlm_slots_copy_in._entry_ptr.5 = internal global ptr @dlm_slots_copy_in._entry.3, section ".printk_index", align 4
@dlm_slots_copy_in._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dlm: %s: dlm_slots_copy_in nodeid %d no slot\0A\00", [48 x i8] zeroinitializer }, align 32
@dlm_slots_copy_in._entry_ptr.8 = internal global ptr @dlm_slots_copy_in._entry.6, section ".printk_index", align 4
@dlm_slots_assign._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dlm: %s: nodeid %d slot changed %d %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_slots_assign\00", [47 x i8] zeroinitializer }, align 32
@dlm_slots_assign._entry_ptr = internal global ptr @dlm_slots_assign._entry, section ".printk_index", align 4
@dlm_slots_assign._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dlm: %s: invalid slot number %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dlm_slots_assign._entry_ptr.13 = internal global ptr @dlm_slots_assign._entry.11, section ".printk_index", align 4
@dlm_slots_assign._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013dlm: %s: no free slot found\0A\00", [33 x i8] zeroinitializer }, align 32
@dlm_slots_assign._entry_ptr.16 = internal global ptr @dlm_slots_assign._entry.14, section ".printk_index", align 4
@dlm_slots_assign._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013dlm: %s: num_slots %d exceeds max_slots %d\0A\00", [50 x i8] zeroinitializer }, align 32
@dlm_slots_assign._entry_ptr.19 = internal global ptr @dlm_slots_assign._entry.17, section ".printk_index", align 4
@dlm_lsop_recover_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dlm: %s: dlm_lsop_recover_done bad num %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlm_lsop_recover_done\00", [42 x i8] zeroinitializer }, align 32
@dlm_lsop_recover_done._entry_ptr = internal global ptr @dlm_lsop_recover_done._entry, section ".printk_index", align 4
@dlm_config = external dso_local local_unnamed_addr global %struct.dlm_config_info, align 4
@dlm_recover_members._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016dlm: %s: prev removed member %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_recover_members\00", [44 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr = internal global ptr @dlm_recover_members._entry, section ".printk_index", align 4
@dlm_recover_members._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dlm: %s: prev removed member %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.26 = internal global ptr @dlm_recover_members._entry.24, section ".printk_index", align 4
@dlm_recover_members._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016dlm: %s: remove member %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.29 = internal global ptr @dlm_recover_members._entry.27, section ".printk_index", align 4
@dlm_recover_members._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017dlm: %s: remove member %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.32 = internal global ptr @dlm_recover_members._entry.30, section ".printk_index", align 4
@dlm_recover_members._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016dlm: %s: remove member %d comm_seq %u %u\0A\00", [52 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.35 = internal global ptr @dlm_recover_members._entry.33, section ".printk_index", align 4
@dlm_recover_members._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017dlm: %s: remove member %d comm_seq %u %u\0A\00", [52 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.38 = internal global ptr @dlm_recover_members._entry.36, section ".printk_index", align 4
@dlm_recover_members._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016dlm: %s: add member %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.41 = internal global ptr @dlm_recover_members._entry.39, section ".printk_index", align 4
@dlm_recover_members._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dlm: %s: add member %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.44 = internal global ptr @dlm_recover_members._entry.42, section ".printk_index", align 4
@dlm_recover_members._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.23, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dlm: %s: dlm_recover_members %d nodes\0A\00", [55 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.47 = internal global ptr @dlm_recover_members._entry.45, section ".printk_index", align 4
@dlm_recover_members._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.23, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dlm: %s: dlm_recover_members %d nodes\0A\00", [55 x i8] zeroinitializer }, align 32
@dlm_recover_members._entry_ptr.50 = internal global ptr @dlm_recover_members._entry.48, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dlm_ls_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dlm: %s: start ignored: lockspace running\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dlm_ls_start\00", [19 x i8] zeroinitializer }, align 32
@dlm_ls_start._entry_ptr = internal global ptr @dlm_ls_start._entry, section ".printk_index", align 4
@dlm_ls_start._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013dlm: %s: unused recovery %llx %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dlm_ls_start._entry_ptr.55 = internal global ptr @dlm_ls_start._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %d:%d\00", [25 x i8] zeroinitializer }, align 32
@log_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dlm: %s: generation %u slots %d%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"log_slots\00", [22 x i8] zeroinitializer }, align 32
@log_slots._entry_ptr = internal global ptr @log_slots._entry, section ".printk_index", align 4
@log_slots._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dlm: %s: generation %u slots %d%s\0A\00", [59 x i8] zeroinitializer }, align 32
@log_slots._entry_ptr.61 = internal global ptr @log_slots._entry.59, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@make_member_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013\0ADLM:  Assertion failed on line %d of file %s\0ADLM:  assertion:  \22%s\22\0ADLM:  time = %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"make_member_array\00", [46 x i8] zeroinitializer }, align 32
@make_member_array._entry_ptr = internal global ptr @make_member_array._entry, section ".printk_index", align 4
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"x < total\00", [22 x i8] zeroinitializer }, align 32
@make_member_array._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"total %d x %d\0A\00", [17 x i8] zeroinitializer }, align 32
@make_member_array._entry_ptr.67 = internal global ptr @make_member_array._entry.65, section ".printk_index", align 4
@make_member_array._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.63, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@make_member_array._entry_ptr.70 = internal global ptr @make_member_array._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DLM:  Record message above and reboot.\0A\00", [56 x i8] zeroinitializer }, align 32
@ping_members._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016dlm: %s: ping_members aborted %d last nodeid %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ping_members\00", [19 x i8] zeroinitializer }, align 32
@ping_members._entry_ptr = internal global ptr @ping_members._entry, section ".printk_index", align 4
@ping_members._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dlm: %s: ping_members aborted %d last nodeid %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ping_members._entry_ptr.76 = internal global ptr @ping_members._entry.74, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 112, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 141, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 152, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 211, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 232, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 264, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 278, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 509, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 545, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 557, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 560, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 578, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 604, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 707, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 720, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 78, i32 42 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 94, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 428, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [19 x i8] c"../fs/dlm/member.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 454, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @dlm_ls_start._entry, ptr @dlm_ls_start._entry.53, ptr @dlm_ls_start._entry_ptr, ptr @dlm_ls_start._entry_ptr.55, ptr @dlm_lsop_recover_done._entry, ptr @dlm_lsop_recover_done._entry_ptr, ptr @dlm_recover_members._entry, ptr @dlm_recover_members._entry.24, ptr @dlm_recover_members._entry.27, ptr @dlm_recover_members._entry.30, ptr @dlm_recover_members._entry.33, ptr @dlm_recover_members._entry.36, ptr @dlm_recover_members._entry.39, ptr @dlm_recover_members._entry.42, ptr @dlm_recover_members._entry.45, ptr @dlm_recover_members._entry.48, ptr @dlm_recover_members._entry_ptr, ptr @dlm_recover_members._entry_ptr.26, ptr @dlm_recover_members._entry_ptr.29, ptr @dlm_recover_members._entry_ptr.32, ptr @dlm_recover_members._entry_ptr.35, ptr @dlm_recover_members._entry_ptr.38, ptr @dlm_recover_members._entry_ptr.41, ptr @dlm_recover_members._entry_ptr.44, ptr @dlm_recover_members._entry_ptr.47, ptr @dlm_recover_members._entry_ptr.50, ptr @dlm_slots_assign._entry, ptr @dlm_slots_assign._entry.11, ptr @dlm_slots_assign._entry.14, ptr @dlm_slots_assign._entry.17, ptr @dlm_slots_assign._entry_ptr, ptr @dlm_slots_assign._entry_ptr.13, ptr @dlm_slots_assign._entry_ptr.16, ptr @dlm_slots_assign._entry_ptr.19, ptr @dlm_slots_copy_in._entry, ptr @dlm_slots_copy_in._entry.3, ptr @dlm_slots_copy_in._entry.6, ptr @dlm_slots_copy_in._entry_ptr, ptr @dlm_slots_copy_in._entry_ptr.5, ptr @dlm_slots_copy_in._entry_ptr.8, ptr @log_slots._entry, ptr @log_slots._entry.59, ptr @log_slots._entry_ptr, ptr @log_slots._entry_ptr.61, ptr @make_member_array._entry, ptr @make_member_array._entry.65, ptr @make_member_array._entry.68, ptr @make_member_array._entry_ptr, ptr @make_member_array._entry_ptr.67, ptr @make_member_array._entry_ptr.70, ptr @ping_members._entry, ptr @ping_members._entry.74, ptr @ping_members._entry_ptr, ptr @ping_members._entry_ptr.76, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_slots_copy_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_slots_copy_in._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_slots_copy_in._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_slots_assign._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_slots_assign._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_slots_assign._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_slots_assign._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lsop_recover_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_recover_members._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_ls_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_ls_start._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_slots._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_member_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_member_array._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_member_array._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_members._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_members._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dlm_slots_version(ptr nocapture noundef readonly %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dlm_slot_save(ptr nocapture noundef readnone %ls, ptr nocapture noundef readonly %rc, ptr nocapture noundef writeonly %memb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc, align 4
  %and.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rf_our_slot = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %rf_our_slot to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rf_our_slot, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %slot = getelementptr inbounds %struct.dlm_member, ptr %memb, i32 0, i32 3
  %5 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %slot, align 4
  %rf_generation = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 1, i32 1
  %6 = ptrtoint ptr %rf_generation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rf_generation, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %generation = getelementptr inbounds %struct.dlm_member, ptr %memb, i32 0, i32 6
  %9 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %generation, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_slots_copy_out(ptr nocapture noundef readonly %ls, ptr nocapture noundef writeonly %rc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_slots_size = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 39
  %0 = ptrtoint ptr %ls_slots_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_slots_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr %struct.dlm_rcom, ptr %rc, i32 1, i32 4
  %ls_slots = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ro.011 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %ro.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %ls_slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_slots, align 8
  %arrayidx = getelementptr %struct.dlm_slot, ptr %3, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %ro.011 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ro.011, align 8
  %slot2 = getelementptr %struct.dlm_slot, ptr %3, i32 %i.012, i32 1
  %8 = ptrtoint ptr %slot2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot2, align 4
  %conv = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %ro_slot = getelementptr inbounds %struct.rcom_slot, ptr %ro.011, i32 0, i32 1
  %11 = ptrtoint ptr %ro_slot to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ro_slot, align 4
  %incdec.ptr = getelementptr %struct.rcom_slot, ptr %ro.011, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %ro.1 = phi ptr [ %incdec.ptr, %if.end ], [ %ro.011, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.012, 1
  %12 = ptrtoint ptr %ls_slots_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ls_slots_size, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_slots_copy_in(ptr noundef %ls) local_unnamed_addr #5 align 64 {
entry:
  %line.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_buf = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 71
  %0 = ptrtoint ptr %ls_recover_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_recover_buf, align 8
  %call = tail call i32 @dlm_our_nodeid() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rf_generation = getelementptr inbounds %struct.dlm_rcom, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %rf_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rf_generation, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %ls_generation = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 3
  %7 = ptrtoint ptr %ls_generation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp ugt i32 %6, %8
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %ls_name, i32 noundef %6, i32 noundef %8) #16
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %9 = ptrtoint ptr %ls_generation to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %ls_generation, align 8
  %rf_num_slots = getelementptr inbounds %struct.dlm_rcom, ptr %1, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %rf_num_slots to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rf_num_slots, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not = icmp eq i16 %11, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %for.body.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %if.end6
  %add.ptr = getelementptr %struct.dlm_rcom, ptr %1, i32 1, i32 4
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ro.0148 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.0147 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %13 = ptrtoint ptr %ro.0148 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ro.0148, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %ro.0148 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ro.0148, align 8
  %ro_slot = getelementptr inbounds %struct.rcom_slot, ptr %ro.0148, i32 0, i32 1
  %17 = ptrtoint ptr %ro_slot to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ro_slot, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %ro_slot to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %ro_slot, align 4
  %inc = add nuw nsw i32 %i.0147, 1
  %incdec.ptr = getelementptr %struct.rcom_slot, ptr %ro.0148, i32 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line.i) #13
  %21 = call ptr @memset(ptr %line.i, i32 0, i32 128)
  %tobool11.not.i.not = icmp eq ptr %add.ptr, null
  br i1 %tobool11.not.i.not, label %for.end.do.body.i_crit_edge, label %for.end.for.body15.i_crit_edge

for.end.for.body15.i_crit_edge:                   ; preds = %for.end
  br label %for.body15.i

for.end.do.body.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.body15.i:                                     ; preds = %if.end26.i.for.body15.i_crit_edge, %for.end.for.body15.i_crit_edge
  %pos.291.i = phi i32 [ %add27.i, %if.end26.i.for.body15.i_crit_edge ], [ 0, %for.end.for.body15.i_crit_edge ]
  %i.190.i = phi i32 [ %inc29.i, %if.end26.i.for.body15.i_crit_edge ], [ 0, %for.end.for.body15.i_crit_edge ]
  %add.ptr17.i = getelementptr i8, ptr %line.i, i32 %pos.291.i
  %sub18.i = sub i32 127, %pos.291.i
  %arrayidx19.i = getelementptr %struct.rcom_slot, ptr %add.ptr, i32 %i.190.i
  %ro_slot.i = getelementptr %struct.rcom_slot, ptr %add.ptr, i32 %i.190.i, i32 1
  %22 = ptrtoint ptr %ro_slot.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ro_slot.i, align 4
  %conv.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx19.i, align 8
  %call21.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr17.i, i32 noundef %sub18.i, ptr noundef nonnull @.str.56, i32 noundef %conv.i, i32 noundef %25) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.i, i32 %sub18.i)
  %cmp23.not.i = icmp slt i32 %call21.i, %sub18.i
  br i1 %cmp23.not.i, label %if.end26.i, label %for.body15.i.do.body.i_crit_edge

for.body15.i.do.body.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end26.i:                                       ; preds = %for.body15.i
  %add27.i = add i32 %call21.i, %pos.291.i
  %inc29.i = add nuw nsw i32 %i.190.i, 1
  %exitcond93.not.i = icmp eq i32 %inc29.i, %conv
  br i1 %exitcond93.not.i, label %if.end26.i.do.body.i_crit_edge, label %if.end26.i.for.body15.i_crit_edge

if.end26.i.for.body15.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15.i

if.end26.i.do.body.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i:                                        ; preds = %if.end26.i.do.body.i_crit_edge, %for.body15.i.do.body.i_crit_edge, %for.end.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %26 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool33.not.i = icmp eq i32 %26, 0
  br i1 %tobool33.not.i, label %if.else39.i, label %do.body.i.do.end53.sink.split.i_crit_edge

do.body.i.do.end53.sink.split.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53.sink.split.i

if.else39.i:                                      ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %27 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool40.not.i = icmp eq i32 %27, 0
  br i1 %tobool40.not.i, label %if.else39.i.log_slots.exit_crit_edge, label %if.else39.i.do.end53.sink.split.i_crit_edge

if.else39.i.do.end53.sink.split.i_crit_edge:      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53.sink.split.i

if.else39.i.log_slots.exit_crit_edge:             ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %log_slots.exit

do.end53.sink.split.i:                            ; preds = %if.else39.i.do.end53.sink.split.i_crit_edge, %do.body.i.do.end53.sink.split.i_crit_edge
  %.str.60.sink.i = phi ptr [ @.str.57, %do.body.i.do.end53.sink.split.i_crit_edge ], [ @.str.60, %if.else39.i.do.end53.sink.split.i_crit_edge ]
  %ls_name46.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.60.sink.i, ptr noundef %ls_name46.i, i32 noundef %6, i32 noundef %conv, ptr noundef nonnull %line.i) #16
  br label %log_slots.exit

log_slots.exit:                                   ; preds = %do.end53.sink.split.i, %if.else39.i.log_slots.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line.i) #13
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  %ls_slot = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 37
  %umax156 = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.cond19

for.cond19:                                       ; preds = %if.end66.for.cond19_crit_edge, %log_slots.exit
  %memb.0.in = phi ptr [ %ls_nodes, %log_slots.exit ], [ %memb.0, %if.end66.for.cond19_crit_edge ]
  %28 = ptrtoint ptr %memb.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %memb.0 = load ptr, ptr %memb.0.in, align 4
  %cmp21.not = icmp eq ptr %memb.0, %ls_nodes
  br i1 %cmp21.not, label %for.cond19.cleanup_crit_edge, label %for.body27.lr.ph

for.cond19.cleanup_crit_edge:                     ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body27.lr.ph:                                 ; preds = %for.cond19
  %nodeid = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 1
  %29 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nodeid, align 4
  br label %for.body27

for.body27:                                       ; preds = %for.inc36.for.body27_crit_edge, %for.body27.lr.ph
  %ro.1151 = phi ptr [ %add.ptr, %for.body27.lr.ph ], [ %incdec.ptr38, %for.inc36.for.body27_crit_edge ]
  %i.1150 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc37, %for.inc36.for.body27_crit_edge ]
  %31 = ptrtoint ptr %ro.1151 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ro.1151, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp29.not = icmp eq i32 %32, %30
  br i1 %cmp29.not, label %if.end32, label %for.inc36

if.end32:                                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  %ro_slot33 = getelementptr inbounds %struct.rcom_slot, ptr %ro.1151, i32 0, i32 1
  %33 = ptrtoint ptr %ro_slot33 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ro_slot33, align 4
  %conv34 = zext i16 %34 to i32
  %slot = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 3
  %35 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv34, ptr %slot, align 4
  %slot_prev = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 4
  %36 = ptrtoint ptr %slot_prev to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv34, ptr %slot_prev, align 4
  br label %for.end39

for.inc36:                                        ; preds = %for.body27
  %inc37 = add nuw nsw i32 %i.1150, 1
  %incdec.ptr38 = getelementptr %struct.rcom_slot, ptr %ro.1151, i32 1
  %exitcond157.not = icmp eq i32 %inc37, %umax156
  br i1 %exitcond157.not, label %for.inc36.for.end39_crit_edge, label %for.inc36.for.body27_crit_edge

for.inc36.for.body27_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

for.inc36.for.end39_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end39

for.end39:                                        ; preds = %for.inc36.for.end39_crit_edge, %if.end32
  %nodeid40 = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 1
  %37 = ptrtoint ptr %nodeid40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nodeid40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call)
  %cmp41 = icmp eq i32 %38, %call
  br i1 %cmp41, label %if.then43, label %for.end39.if.end66_crit_edge

for.end39.if.end66_crit_edge:                     ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then43:                                        ; preds = %for.end39
  %39 = ptrtoint ptr %ls_slot to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ls_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool44.not = icmp eq i32 %40, 0
  %slot63 = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 3
  %41 = ptrtoint ptr %slot63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slot63, align 4
  br i1 %tobool44.not, label %if.then62, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp47.not = icmp eq i32 %40, %42
  br i1 %cmp47.not, label %land.lhs.true.if.end66_crit_edge, label %do.end52

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

do.end52:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %ls_name54 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %ls_name54, i32 noundef %40, i32 noundef %42) #16
  br label %cleanup

if.then62:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %ls_slot to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ls_slot, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %land.lhs.true.if.end66_crit_edge, %for.end39.if.end66_crit_edge
  %slot67 = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 3
  %44 = ptrtoint ptr %slot67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slot67, align 4
  %tobool68.not = icmp eq i32 %45, 0
  br i1 %tobool68.not, label %do.end72, label %if.end66.for.cond19_crit_edge

if.end66.for.cond19_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond19

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %nodeid40.le = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 1
  %ls_name74 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %46 = ptrtoint ptr %nodeid40.le to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nodeid40.le, align 4
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %ls_name74, i32 noundef %47) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %do.end52, %for.cond19.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end52 ], [ -1, %do.end72 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ 0, %for.cond19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_slots_assign(ptr noundef %ls, ptr nocapture noundef writeonly %num_slots, ptr nocapture noundef writeonly %slots_size, ptr nocapture noundef writeonly %slots_out, ptr nocapture noundef writeonly %gen_out) local_unnamed_addr #5 align 64 {
entry:
  %line.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_our_nodeid() #13
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %memb.0.in = phi ptr [ %ls_nodes, %entry ], [ %memb.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %memb.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %memb.0 = load ptr, ptr %memb.0.in, align 4
  %cmp.not = icmp eq ptr %memb.0, %ls_nodes
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %nodeid = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 1
  %1 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nodeid, align 4
  %cmp2 = icmp eq i32 %2, %call
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ls_slot = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 37
  %3 = ptrtoint ptr %ls_slot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_slot, align 4
  %slot = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 3
  %5 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %slot, align 4
  %ls_generation = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 3
  %6 = ptrtoint ptr %ls_generation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ls_generation, align 8
  %generation = getelementptr inbounds %struct.dlm_member, ptr %memb.0, i32 0, i32 6
  %8 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %generation, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %9 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %9)
  %memb.1305 = load ptr, ptr %ls_nodes, align 4
  %cmp16.not306 = icmp eq ptr %memb.1305, %ls_nodes
  br i1 %cmp16.not306, label %for.end.for.end60_crit_edge, label %for.end.for.body18_crit_edge

for.end.for.body18_crit_edge:                     ; preds = %for.end
  br label %for.body18

for.end.for.end60_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end60

for.body18:                                       ; preds = %if.end51.for.body18_crit_edge, %for.end.for.body18_crit_edge
  %memb.1310 = phi ptr [ %memb.1, %if.end51.for.body18_crit_edge ], [ %memb.1305, %for.end.for.body18_crit_edge ]
  %need.0309 = phi i32 [ %need.1, %if.end51.for.body18_crit_edge ], [ 0, %for.end.for.body18_crit_edge ]
  %max.0308 = phi i32 [ %max.1, %if.end51.for.body18_crit_edge ], [ 0, %for.end.for.body18_crit_edge ]
  %gen.0307 = phi i32 [ %12, %if.end51.for.body18_crit_edge ], [ 0, %for.end.for.body18_crit_edge ]
  %generation19 = getelementptr inbounds %struct.dlm_member, ptr %memb.1310, i32 0, i32 6
  %10 = ptrtoint ptr %generation19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generation19, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %gen.0307)
  %slot24 = getelementptr inbounds %struct.dlm_member, ptr %memb.1310, i32 0, i32 3
  %13 = ptrtoint ptr %slot24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slot24, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %for.body18.if.end30_crit_edge [
    i32 -1, label %for.body18.cleanup_crit_edge
    i32 0, label %if.then29
  ]

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body18.if.end30_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then29:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %need.0309, 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.body18.if.end30_crit_edge
  %need.1 = phi i32 [ %inc, %if.then29 ], [ %need.0309, %for.body18.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.0308)
  %tobool32.not = icmp eq i32 %max.0308, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0308, i32 %14)
  %cmp34 = icmp slt i32 %max.0308, %14
  %or.cond288 = select i1 %tobool32.not, i1 true, i1 %cmp34
  %max.1 = select i1 %or.cond288, i32 %14, i32 %max.0308
  %slot_prev = getelementptr inbounds %struct.dlm_member, ptr %memb.1310, i32 0, i32 4
  %16 = ptrtoint ptr %slot_prev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool38.not = icmp eq i32 %17, 0
  br i1 %tobool38.not, label %if.end30.if.end51_crit_edge, label %land.lhs.true

if.end30.if.end51_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool40.not = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %14)
  %cmp44.not = icmp eq i32 %17, %14
  %or.cond = select i1 %tobool40.not, i1 true, i1 %cmp44.not
  br i1 %or.cond, label %land.lhs.true.if.end51_crit_edge, label %do.end

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %nodeid47 = getelementptr inbounds %struct.dlm_member, ptr %memb.1310, i32 0, i32 1
  %18 = ptrtoint ptr %nodeid47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nodeid47, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %ls_name, i32 noundef %19, i32 noundef %17, i32 noundef %14) #16
  br label %cleanup

if.end51:                                         ; preds = %land.lhs.true.if.end51_crit_edge, %if.end30.if.end51_crit_edge
  %20 = ptrtoint ptr %slot_prev to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %14, ptr %slot_prev, align 4
  %21 = ptrtoint ptr %memb.1310 to i32
  call void @__asan_load4_noabort(i32 %21)
  %memb.1 = load ptr, ptr %memb.1310, align 4
  %cmp16.not = icmp eq ptr %memb.1, %ls_nodes
  br i1 %cmp16.not, label %for.end60.loopexit, label %if.end51.for.body18_crit_edge

if.end51.for.body18_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body18

for.end60.loopexit:                               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %22 = add i32 %need.1, %max.1
  %phi.bo = add i32 %12, 1
  br label %for.end60

for.end60:                                        ; preds = %for.end60.loopexit, %for.end.for.end60_crit_edge
  %gen.0.lcssa = phi i32 [ 1, %for.end.for.end60_crit_edge ], [ %phi.bo, %for.end60.loopexit ]
  %add = phi i32 [ 0, %for.end.for.end60_crit_edge ], [ %22, %for.end60.loopexit ]
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #13
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %for.end60.cleanup_crit_edge, label %if.end7.i.i, !prof !121

for.end60.cleanup_crit_edge:                      ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end60
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3392) #17
  %tobool62.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool62.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond70.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond70.preheader:                             ; preds = %if.end7.i.i
  %26 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %26)
  %memb.2313 = load ptr, ptr %ls_nodes, align 4
  %cmp73.not314 = icmp eq ptr %memb.2313, %ls_nodes
  br i1 %cmp73.not314, label %for.cond70.preheader.for.cond113.preheader_crit_edge, label %for.cond70.preheader.for.body75_crit_edge

for.cond70.preheader.for.body75_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body75

for.cond70.preheader.for.cond113.preheader_crit_edge: ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %for.inc101.for.cond113.preheader_crit_edge, %for.cond70.preheader.for.cond113.preheader_crit_edge
  %num.1.lcssa = phi i32 [ 0, %for.cond70.preheader.for.cond113.preheader_crit_edge ], [ %num.2, %for.inc101.for.cond113.preheader_crit_edge ]
  %27 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %27)
  %memb.3320 = load ptr, ptr %ls_nodes, align 4
  %cmp116.not321 = icmp eq ptr %memb.3320, %ls_nodes
  br i1 %cmp116.not321, label %for.cond113.preheader.for.cond.preheader.i_crit_edge, label %for.body118.lr.ph

for.cond113.preheader.for.cond.preheader.i_crit_edge: ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i

for.body118.lr.ph:                                ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp124318 = icmp sgt i32 %add, 0
  %ls_slot142 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 37
  br label %for.body118

for.body75:                                       ; preds = %for.inc101.for.body75_crit_edge, %for.cond70.preheader.for.body75_crit_edge
  %memb.2316 = phi ptr [ %memb.2, %for.inc101.for.body75_crit_edge ], [ %memb.2313, %for.cond70.preheader.for.body75_crit_edge ]
  %num.1315 = phi i32 [ %num.2, %for.inc101.for.body75_crit_edge ], [ 0, %for.cond70.preheader.for.body75_crit_edge ]
  %slot76 = getelementptr inbounds %struct.dlm_member, ptr %memb.2316, i32 0, i32 3
  %28 = ptrtoint ptr %slot76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool77.not = icmp eq i32 %29, 0
  br i1 %tobool77.not, label %for.body75.for.inc101_crit_edge, label %if.end79

for.body75.for.inc101_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc101

if.end79:                                         ; preds = %for.body75
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add)
  %cmp81 = icmp sgt i32 %29, %add
  br i1 %cmp81, label %do.end85, label %if.end91

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %ls_name87 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %ls_name87, i32 noundef %29) #16
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

if.end91:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %nodeid92 = getelementptr inbounds %struct.dlm_member, ptr %memb.2316, i32 0, i32 1
  %30 = ptrtoint ptr %nodeid92 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nodeid92, align 4
  %sub = add i32 %29, -1
  %arrayidx = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %sub
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx, align 8
  %33 = ptrtoint ptr %slot76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %slot76, align 4
  %sub97 = add i32 %34, -1
  %slot99 = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %sub97, i32 1
  %35 = ptrtoint ptr %slot99 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %slot99, align 4
  %inc100 = add i32 %num.1315, 1
  br label %for.inc101

for.inc101:                                       ; preds = %if.end91, %for.body75.for.inc101_crit_edge
  %num.2 = phi i32 [ %inc100, %if.end91 ], [ %num.1315, %for.body75.for.inc101_crit_edge ]
  %36 = ptrtoint ptr %memb.2316 to i32
  call void @__asan_load4_noabort(i32 %36)
  %memb.2 = load ptr, ptr %memb.2316, align 4
  %cmp73.not = icmp eq ptr %memb.2, %ls_nodes
  br i1 %cmp73.not, label %for.inc101.for.cond113.preheader_crit_edge, label %for.inc101.for.body75_crit_edge

for.inc101.for.body75_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body75

for.inc101.for.cond113.preheader_crit_edge:       ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond113.preheader

for.body118:                                      ; preds = %for.inc165.for.body118_crit_edge, %for.body118.lr.ph
  %memb.3323 = phi ptr [ %memb.3320, %for.body118.lr.ph ], [ %memb.3, %for.inc165.for.body118_crit_edge ]
  %num.3322 = phi i32 [ %num.1.lcssa, %for.body118.lr.ph ], [ %num.5, %for.inc165.for.body118_crit_edge ]
  %slot119 = getelementptr inbounds %struct.dlm_member, ptr %memb.3323, i32 0, i32 3
  %37 = ptrtoint ptr %slot119 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slot119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool120.not = icmp eq i32 %38, 0
  br i1 %tobool120.not, label %for.cond123.preheader, label %for.body118.for.inc165_crit_edge

for.body118.for.inc165_crit_edge:                 ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc165

for.cond123.preheader:                            ; preds = %for.body118
  br i1 %cmp124318, label %for.cond123.preheader.for.body125_crit_edge, label %for.cond123.preheader.do.end159_crit_edge

for.cond123.preheader.do.end159_crit_edge:        ; preds = %for.cond123.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end159

for.cond123.preheader.for.body125_crit_edge:      ; preds = %for.cond123.preheader
  br label %for.body125

for.body125:                                      ; preds = %for.inc151.for.body125_crit_edge, %for.cond123.preheader.for.body125_crit_edge
  %i.0319 = phi i32 [ %add131, %for.inc151.for.body125_crit_edge ], [ 0, %for.cond123.preheader.for.body125_crit_edge ]
  %arrayidx126 = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %i.0319
  %39 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool128.not = icmp eq i32 %40, 0
  %add131 = add nuw nsw i32 %i.0319, 1
  br i1 %tobool128.not, label %if.end130, label %for.inc151

if.end130:                                        ; preds = %for.body125
  %41 = ptrtoint ptr %slot119 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add131, ptr %slot119, align 4
  %slot_prev134 = getelementptr inbounds %struct.dlm_member, ptr %memb.3323, i32 0, i32 4
  %42 = ptrtoint ptr %slot_prev134 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add131, ptr %slot_prev134, align 4
  %nodeid135 = getelementptr inbounds %struct.dlm_member, ptr %memb.3323, i32 0, i32 1
  %43 = ptrtoint ptr %nodeid135 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nodeid135, align 4
  %45 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx126, align 8
  %46 = load i32, ptr %slot119, align 4
  %slot140 = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %i.0319, i32 1
  %47 = ptrtoint ptr %slot140 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %slot140, align 4
  %inc141 = add i32 %num.3322, 1
  %48 = ptrtoint ptr %ls_slot142 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ls_slot142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool143.not = icmp eq i32 %49, 0
  br i1 %tobool143.not, label %land.lhs.true144, label %if.end130.for.end153_crit_edge

if.end130.for.end153_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end153

land.lhs.true144:                                 ; preds = %if.end130
  %50 = ptrtoint ptr %nodeid135 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nodeid135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %call)
  %cmp146 = icmp eq i32 %51, %call
  br i1 %cmp146, label %if.then147, label %land.lhs.true144.for.end153_crit_edge

land.lhs.true144.for.end153_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end153

if.then147:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %slot119 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %slot119, align 4
  %54 = ptrtoint ptr %ls_slot142 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ls_slot142, align 4
  br label %for.end153

for.inc151:                                       ; preds = %for.body125
  %exitcond.not = icmp eq i32 %add131, %add
  br i1 %exitcond.not, label %for.inc151.for.end153_crit_edge, label %for.inc151.for.body125_crit_edge

for.inc151.for.body125_crit_edge:                 ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body125

for.inc151.for.end153_crit_edge:                  ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end153

for.end153:                                       ; preds = %for.inc151.for.end153_crit_edge, %if.then147, %land.lhs.true144.for.end153_crit_edge, %if.end130.for.end153_crit_edge
  %num.4.ph = phi i32 [ %inc141, %land.lhs.true144.for.end153_crit_edge ], [ %inc141, %if.then147 ], [ %inc141, %if.end130.for.end153_crit_edge ], [ %num.3322, %for.inc151.for.end153_crit_edge ]
  %55 = ptrtoint ptr %slot119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %slot119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool155.not = icmp eq i32 %.pr, 0
  br i1 %tobool155.not, label %for.end153.do.end159_crit_edge, label %for.end153.for.inc165_crit_edge

for.end153.for.inc165_crit_edge:                  ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc165

for.end153.do.end159_crit_edge:                   ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end159

do.end159:                                        ; preds = %for.end153.do.end159_crit_edge, %for.cond123.preheader.do.end159_crit_edge
  %ls_name161 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %ls_name161) #16
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

for.inc165:                                       ; preds = %for.end153.for.inc165_crit_edge, %for.body118.for.inc165_crit_edge
  %num.5 = phi i32 [ %num.3322, %for.body118.for.inc165_crit_edge ], [ %num.4.ph, %for.end153.for.inc165_crit_edge ]
  %56 = ptrtoint ptr %memb.3323 to i32
  call void @__asan_load4_noabort(i32 %56)
  %memb.3 = load ptr, ptr %memb.3323, align 4
  %cmp116.not = icmp eq ptr %memb.3, %ls_nodes
  br i1 %cmp116.not, label %for.inc165.for.cond.preheader.i_crit_edge, label %for.inc165.for.body118_crit_edge

for.inc165.for.body118_crit_edge:                 ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body118

for.inc165.for.cond.preheader.i_crit_edge:        ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.inc165.for.cond.preheader.i_crit_edge, %for.cond113.preheader.for.cond.preheader.i_crit_edge
  %num.3.lcssa = phi i32 [ %num.1.lcssa, %for.cond113.preheader.for.cond.preheader.i_crit_edge ], [ %num.5, %for.inc165.for.cond.preheader.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line.i) #13
  %57 = call ptr @memset(ptr %line.i, i32 0, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp85.i = icmp sgt i32 %add, 0
  br i1 %cmp85.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.body.i_crit_edge

for.cond.preheader.i.do.body.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pos.088.i = phi i32 [ %pos.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.086.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %i.086.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool1.not.i = icmp eq i32 %59, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %line.i, i32 %pos.088.i
  %sub.i = sub i32 127, %pos.088.i
  %slot.i = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %i.086.i, i32 1
  %60 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slot.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.56, i32 noundef %61, i32 noundef %59) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub.i)
  %cmp8.not.i = icmp slt i32 %call.i, %sub.i
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i32 %call.i, %pos.088.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %for.body.i.for.inc.i_crit_edge
  %pos.1.i = phi i32 [ %add.i, %if.end10.i ], [ %pos.088.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge, %for.cond.preheader.i.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %62 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool33.not.i = icmp eq i32 %62, 0
  br i1 %tobool33.not.i, label %if.else39.i, label %do.body.i.do.end53.sink.split.i_crit_edge

do.body.i.do.end53.sink.split.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53.sink.split.i

if.else39.i:                                      ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %63 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool40.not.i = icmp eq i32 %63, 0
  br i1 %tobool40.not.i, label %if.else39.i.log_slots.exit_crit_edge, label %if.else39.i.do.end53.sink.split.i_crit_edge

if.else39.i.do.end53.sink.split.i_crit_edge:      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53.sink.split.i

if.else39.i.log_slots.exit_crit_edge:             ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %log_slots.exit

do.end53.sink.split.i:                            ; preds = %if.else39.i.do.end53.sink.split.i_crit_edge, %do.body.i.do.end53.sink.split.i_crit_edge
  %.str.60.sink.i = phi ptr [ @.str.57, %do.body.i.do.end53.sink.split.i_crit_edge ], [ @.str.60, %if.else39.i.do.end53.sink.split.i_crit_edge ]
  %ls_name46.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.60.sink.i, ptr noundef %ls_name46.i, i32 noundef %gen.0.lcssa, i32 noundef %num.3.lcssa, ptr noundef nonnull %line.i) #16
  br label %log_slots.exit

log_slots.exit:                                   ; preds = %do.end53.sink.split.i, %if.else39.i.log_slots.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %num.3.lcssa)
  %cmp173 = icmp sgt i32 %num.3.lcssa, 249
  br i1 %cmp173, label %do.end177, label %if.end182

do.end177:                                        ; preds = %log_slots.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ls_name179 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %ls_name179, i32 noundef %num.3.lcssa, i32 noundef 249) #16
  call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

if.end182:                                        ; preds = %log_slots.exit
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %gen_out to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %gen.0.lcssa, ptr %gen_out, align 4
  %65 = ptrtoint ptr %slots_out to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call8.i.i, ptr %slots_out, align 4
  %66 = ptrtoint ptr %slots_size to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add, ptr %slots_size, align 4
  %67 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %num.3.lcssa, ptr %num_slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end182, %do.end177, %do.end159, %do.end85, %if.end7.i.i.cleanup_crit_edge, %for.end60.cleanup_crit_edge, %do.end, %for.body18.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end85 ], [ -1, %do.end159 ], [ -1, %do.end177 ], [ 0, %if.end182 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %for.end60.cleanup_crit_edge ], [ %14, %for.body18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_is_member(ptr noundef readonly %ls, i32 noundef %nodeid) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %memb.0.in.i = phi ptr [ %ls_nodes, %entry ], [ %memb.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %memb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %memb.0.i = load ptr, ptr %memb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %memb.0.i, %ls_nodes
  br i1 %cmp.not.i, label %for.cond.i.find_memb.exit_crit_edge, label %for.body.i

for.cond.i.find_memb.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_memb.exit

for.body.i:                                       ; preds = %for.cond.i
  %nodeid1.i = getelementptr inbounds %struct.dlm_member, ptr %memb.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %nodeid1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nodeid1.i, align 4
  %cmp2.i = icmp eq i32 %2, %nodeid
  br i1 %cmp2.i, label %for.body.i.find_memb.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.find_memb.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_memb.exit

find_memb.exit:                                   ; preds = %for.body.i.find_memb.exit_crit_edge, %for.cond.i.find_memb.exit_crit_edge
  %retval.0.i = phi ptr [ %memb.0.i, %for.body.i.find_memb.exit_crit_edge ], [ null, %for.cond.i.find_memb.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_is_removed(ptr noundef readonly %ls, i32 noundef %nodeid) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_nodes_gone = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %memb.0.in.i = phi ptr [ %ls_nodes_gone, %entry ], [ %memb.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %memb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %memb.0.i = load ptr, ptr %memb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %memb.0.i, %ls_nodes_gone
  br i1 %cmp.not.i, label %for.cond.i.find_memb.exit_crit_edge, label %for.body.i

for.cond.i.find_memb.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_memb.exit

for.body.i:                                       ; preds = %for.cond.i
  %nodeid1.i = getelementptr inbounds %struct.dlm_member, ptr %memb.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %nodeid1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nodeid1.i, align 4
  %cmp2.i = icmp eq i32 %2, %nodeid
  br i1 %cmp2.i, label %for.body.i.find_memb.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i.find_memb.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_memb.exit

find_memb.exit:                                   ; preds = %for.body.i.find_memb.exit_crit_edge, %for.cond.i.find_memb.exit_crit_edge
  %retval.0.i = phi ptr [ %memb.0.i, %for.body.i.find_memb.exit_crit_edge ], [ null, %for.cond.i.find_memb.exit_crit_edge ]
  %tobool.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_clear_members(ptr noundef %ls) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  %0 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ls_nodes, align 4
  %cmp.i.not6.i = icmp eq ptr %1, %ls_nodes
  br i1 %cmp.i.not6.i, label %entry.clear_memb_list.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.clear_memb_list.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_memb_list.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %14, %list_del.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %nodeid.i = getelementptr inbounds %struct.dlm_member, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nodeid.i, align 4
  tail call void @dlm_midcomms_remove_member(i32 noundef %12) #13
  tail call void @kfree(ptr noundef %2) #13
  %13 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ls_nodes, align 4
  %cmp.i.not.i = icmp eq ptr %14, %ls_nodes
  br i1 %cmp.i.not.i, label %list_del.exit.i.clear_memb_list.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

list_del.exit.i.clear_memb_list.exit_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_memb_list.exit

clear_memb_list.exit:                             ; preds = %list_del.exit.i.clear_memb_list.exit_crit_edge, %entry.clear_memb_list.exit_crit_edge
  %ls_num_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %15 = ptrtoint ptr %ls_num_nodes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ls_num_nodes, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_clear_members_gone(ptr noundef %ls) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_nodes_gone = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 32
  %0 = ptrtoint ptr %ls_nodes_gone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ls_nodes_gone, align 4
  %cmp.i.not6.i = icmp eq ptr %1, %ls_nodes_gone
  br i1 %cmp.i.not6.i, label %entry.clear_memb_list.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.clear_memb_list.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_memb_list.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %2) #13
  %11 = ptrtoint ptr %ls_nodes_gone to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ls_nodes_gone, align 4
  %cmp.i.not.i = icmp eq ptr %12, %ls_nodes_gone
  br i1 %cmp.i.not.i, label %list_del.exit.i.clear_memb_list.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

list_del.exit.i.clear_memb_list.exit_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clear_memb_list.exit

clear_memb_list.exit:                             ; preds = %list_del.exit.i.clear_memb_list.exit_crit_edge, %entry.clear_memb_list.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lsop_recover_done(ptr noundef %ls) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_ops = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 88
  %0 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %recover_done = getelementptr inbounds %struct.dlm_lockspace_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %recover_done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recover_done, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ls_num_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %4 = ptrtoint ptr %ls_num_nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ls_num_nodes, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 8) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !121

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #17
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end5

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  %9 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %9)
  %memb.055 = load ptr, ptr %ls_nodes, align 4
  %cmp.not56 = icmp eq ptr %memb.055, %ls_nodes
  br i1 %cmp.not56, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end5.for.body_crit_edge
  %memb.058 = phi ptr [ %memb.0, %if.end11.for.body_crit_edge ], [ %memb.055, %if.end5.for.body_crit_edge ]
  %i.057 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057, i32 %5)
  %cmp7 = icmp eq i32 %i.057, %5
  br i1 %cmp7, label %do.end, label %if.end11

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %ls_name, i32 noundef %5) #16
  br label %out

if.end11:                                         ; preds = %for.body
  %nodeid = getelementptr inbounds %struct.dlm_member, ptr %memb.058, i32 0, i32 1
  %10 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nodeid, align 4
  %arrayidx = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %i.057
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 8
  %slot = getelementptr inbounds %struct.dlm_member, ptr %memb.058, i32 0, i32 3
  %13 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slot, align 4
  %slot14 = getelementptr %struct.dlm_slot, ptr %call8.i.i, i32 %i.057, i32 1
  %15 = ptrtoint ptr %slot14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %slot14, align 4
  %inc = add i32 %i.057, 1
  %16 = ptrtoint ptr %memb.058 to i32
  call void @__asan_load4_noabort(i32 %16)
  %memb.0 = load ptr, ptr %memb.058, align 4
  %cmp.not = icmp eq ptr %memb.0, %ls_nodes
  br i1 %cmp.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %if.end5.for.end_crit_edge
  %17 = ptrtoint ptr %ls_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ls_ops, align 8
  %recover_done21 = getelementptr inbounds %struct.dlm_lockspace_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %recover_done21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recover_done21, align 4
  %ls_ops_arg = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 89
  %21 = ptrtoint ptr %ls_ops_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ls_ops_arg, align 4
  %ls_slot = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 37
  %23 = ptrtoint ptr %ls_slot to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ls_slot, align 4
  %ls_generation = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 3
  %25 = ptrtoint ptr %ls_generation to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ls_generation, align 8
  tail call void %20(ptr noundef %22, ptr noundef nonnull %call8.i.i, i32 noundef %5, i32 noundef %24, i32 noundef %26) #13
  br label %out

out:                                              ; preds = %for.end, %do.end
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_recover_members(ptr noundef %ls, ptr nocapture noundef readonly %rv, ptr nocapture noundef writeonly %neg_out) local_unnamed_addr #5 align 64 {
entry:
  %slot.i = alloca %struct.dlm_slot, align 4
  %seq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_nodes_gone = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 32
  %0 = ptrtoint ptr %ls_nodes_gone to i32
  call void @__asan_load4_noabort(i32 %0)
  %memb.0314 = load ptr, ptr %ls_nodes_gone, align 4
  %cmp.not315 = icmp eq ptr %memb.0314, %ls_nodes_gone
  br i1 %cmp.not315, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  br label %do.body

do.body:                                          ; preds = %do.end16.do.body_crit_edge, %do.body.lr.ph
  %memb.0317 = phi ptr [ %memb.0314, %do.body.lr.ph ], [ %memb.0, %do.end16.do.body_crit_edge ]
  %neg.0316 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.end16.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %do.body.do.end16.sink.split_crit_edge

do.body.do.end16.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16.sink.split

if.else:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.else.do.end16_crit_edge, label %if.else.do.end16.sink.split_crit_edge

if.else.do.end16.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16.sink.split

if.else.do.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end16

do.end16.sink.split:                              ; preds = %if.else.do.end16.sink.split_crit_edge, %do.body.do.end16.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.22, %do.body.do.end16.sink.split_crit_edge ], [ @.str.25, %if.else.do.end16.sink.split_crit_edge ]
  %nodeid12 = getelementptr inbounds %struct.dlm_member, ptr %memb.0317, i32 0, i32 1
  %3 = ptrtoint ptr %nodeid12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodeid12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.25.sink, ptr noundef %ls_name, i32 noundef %4) #16
  br label %do.end16

do.end16:                                         ; preds = %do.end16.sink.split, %if.else.do.end16_crit_edge
  %inc = add i32 %neg.0316, 1
  %5 = ptrtoint ptr %memb.0317 to i32
  call void @__asan_load4_noabort(i32 %5)
  %memb.0 = load ptr, ptr %memb.0317, align 4
  %cmp.not = icmp eq ptr %memb.0, %ls_nodes_gone
  br i1 %cmp.not, label %do.end16.for.end_crit_edge, label %do.end16.do.body_crit_edge

do.end16.do.body_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end16.for.end_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end16.for.end_crit_edge, %entry.for.end_crit_edge
  %neg.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %do.end16.for.end_crit_edge ]
  %ls_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31
  %6 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ls_nodes, align 4
  %cmp34.not319 = icmp eq ptr %7, %ls_nodes
  br i1 %cmp34.not319, label %for.end.for.cond113.preheader_crit_edge, label %for.body36.lr.ph

for.end.for.cond113.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond113.preheader

for.body36.lr.ph:                                 ; preds = %for.end
  %nodes_count.i = getelementptr inbounds %struct.dlm_recover, ptr %rv, i32 0, i32 2
  %nodes.i = getelementptr inbounds %struct.dlm_recover, ptr %rv, i32 0, i32 1
  %ls_name79 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %ls_num_nodes = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %8 = getelementptr inbounds %struct.dlm_slot, ptr %slot.i, i32 0, i32 1
  %ls_ops.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 88
  %ls_ops_arg.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 89
  br label %for.body36

for.cond113.preheader:                            ; preds = %for.inc106.for.cond113.preheader_crit_edge, %for.end.for.cond113.preheader_crit_edge
  %neg.1.lcssa = phi i32 [ %neg.0.lcssa, %for.end.for.cond113.preheader_crit_edge ], [ %neg.2, %for.inc106.for.cond113.preheader_crit_edge ]
  %nodes_count = getelementptr inbounds %struct.dlm_recover, ptr %rv, i32 0, i32 2
  %9 = ptrtoint ptr %nodes_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nodes_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp114327 = icmp sgt i32 %10, 0
  br i1 %cmp114327, label %for.body115.lr.ph, label %for.cond113.preheader.for.cond156.preheader_crit_edge

for.cond113.preheader.for.cond156.preheader_crit_edge: ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond156.preheader

for.body115.lr.ph:                                ; preds = %for.cond113.preheader
  %nodes = getelementptr inbounds %struct.dlm_recover, ptr %rv, i32 0, i32 1
  %prev.i.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 31, i32 1
  %ls_num_nodes.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %ls_name129 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  br label %for.body115

for.body36:                                       ; preds = %for.inc106.for.body36_crit_edge, %for.body36.lr.ph
  %memb.1323 = phi ptr [ %7, %for.body36.lr.ph ], [ %safe.0325, %for.inc106.for.body36_crit_edge ]
  %neg.1320 = phi i32 [ %neg.0.lcssa, %for.body36.lr.ph ], [ %neg.2, %for.inc106.for.body36_crit_edge ]
  %11 = ptrtoint ptr %memb.1323 to i32
  call void @__asan_load4_noabort(i32 %11)
  %safe.0325 = load ptr, ptr %memb.1323, align 4
  %nodeid37 = getelementptr inbounds %struct.dlm_member, ptr %memb.1323, i32 0, i32 1
  %12 = ptrtoint ptr %nodeid37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nodeid37, align 4
  %14 = ptrtoint ptr %nodes_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nodes_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.i = icmp sgt i32 %15, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %for.body36.do.body45.critedge_crit_edge

for.body36.do.body45.critedge_crit_edge:          ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45.critedge

for.body.lr.ph.i:                                 ; preds = %for.body36
  %16 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nodes.i, align 8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond.i.do.body45.critedge_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.cond.i.do.body45.critedge_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45.critedge

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dlm_config_node, ptr %17, i32 %i.011.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp2.i = icmp eq i32 %19, %13
  br i1 %cmp2.i, label %find_config_node.exit, label %for.cond.i

find_config_node.exit:                            ; preds = %for.body.i
  %tobool39.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool39.not, label %find_config_node.exit.do.body45.critedge_crit_edge, label %land.lhs.true

find_config_node.exit.do.body45.critedge_crit_edge: ; preds = %find_config_node.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45.critedge

land.lhs.true:                                    ; preds = %find_config_node.exit
  %new = getelementptr %struct.dlm_config_node, ptr %17, i32 %i.011.i, i32 2
  %20 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool40.not = icmp eq i32 %21, 0
  br i1 %tobool40.not, label %land.lhs.true.for.inc106_crit_edge, label %do.body72

land.lhs.true.for.inc106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc106

do.body45.critedge:                               ; preds = %find_config_node.exit.do.body45.critedge_crit_edge, %for.cond.i.do.body45.critedge_crit_edge, %for.body36.do.body45.critedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %22 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool46.not = icmp eq i32 %22, 0
  br i1 %tobool46.not, label %if.else56, label %do.end50

do.end50:                                         ; preds = %do.body45.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ls_name79, i32 noundef %13) #16
  br label %if.end101

if.else56:                                        ; preds = %do.body45.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool57.not = icmp eq i32 %23, 0
  br i1 %tobool57.not, label %if.else56.if.end101_crit_edge, label %do.end61

if.else56.if.end101_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

do.end61:                                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ls_name79, i32 noundef %13) #16
  br label %if.end101

do.body72:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool73.not = icmp eq i32 %24, 0
  br i1 %tobool73.not, label %if.else84, label %do.end77

do.end77:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #15
  %comm_seq = getelementptr inbounds %struct.dlm_member, ptr %memb.1323, i32 0, i32 5
  %25 = ptrtoint ptr %comm_seq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %comm_seq, align 4
  %comm_seq82 = getelementptr %struct.dlm_config_node, ptr %17, i32 %i.011.i, i32 3
  %27 = ptrtoint ptr %comm_seq82 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %comm_seq82, align 4
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %ls_name79, i32 noundef %13, i32 noundef %26, i32 noundef %28) #16
  br label %if.end101

if.else84:                                        ; preds = %do.body72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %29 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool85.not = icmp eq i32 %29, 0
  br i1 %tobool85.not, label %if.else84.if.end101_crit_edge, label %do.end89

if.else84.if.end101_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

do.end89:                                         ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #15
  %comm_seq94 = getelementptr inbounds %struct.dlm_member, ptr %memb.1323, i32 0, i32 5
  %30 = ptrtoint ptr %comm_seq94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %comm_seq94, align 4
  %comm_seq95 = getelementptr %struct.dlm_config_node, ptr %17, i32 %i.011.i, i32 3
  %32 = ptrtoint ptr %comm_seq95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %comm_seq95, align 4
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %ls_name79, i32 noundef %13, i32 noundef %31, i32 noundef %33) #16
  br label %if.end101

if.end101:                                        ; preds = %do.end89, %if.else84.if.end101_crit_edge, %do.end77, %do.end61, %if.else56.if.end101_crit_edge, %do.end50
  %inc102 = add i32 %neg.1320, 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %memb.1323) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end101.__list_del_entry.exit.i_crit_edge

if.end101.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %memb.1323, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %memb.1323 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memb.1323, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end101.__list_del_entry.exit.i_crit_edge
  %40 = ptrtoint ptr %ls_nodes_gone to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ls_nodes_gone, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %memb.1323, ptr noundef %ls_nodes_gone, ptr noundef %41) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %memb.1323, ptr %prev1.i.i2.i, align 4
  %43 = ptrtoint ptr %memb.1323 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %memb.1323, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %memb.1323, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ls_nodes_gone, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %ls_nodes_gone to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %memb.1323, ptr %ls_nodes_gone, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %46 = ptrtoint ptr %nodeid37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nodeid37, align 4
  call void @dlm_midcomms_remove_member(i32 noundef %47) #13
  %48 = ptrtoint ptr %ls_num_nodes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ls_num_nodes, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %ls_num_nodes, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %slot.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq.i) #13
  %50 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %seq.i, align 4, !annotation !122
  %51 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ls_ops.i, align 8
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %list_move.exit.dlm_lsop_recover_slot.exit_crit_edge, label %lor.lhs.false.i

list_move.exit.dlm_lsop_recover_slot.exit_crit_edge: ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %dlm_lsop_recover_slot.exit

lor.lhs.false.i:                                  ; preds = %list_move.exit
  %recover_slot.i = getelementptr inbounds %struct.dlm_lockspace_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %recover_slot.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %recover_slot.i, align 4
  %tobool2.not.i = icmp eq ptr %54, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dlm_lsop_recover_slot.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dlm_lsop_recover_slot.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dlm_lsop_recover_slot.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %55 = ptrtoint ptr %nodeid37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nodeid37, align 4
  %call.i = call i32 @dlm_comm_seq(i32 noundef %56, ptr noundef nonnull %seq.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %57 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %seq.i, align 4
  %comm_seq.i = getelementptr inbounds %struct.dlm_member, ptr %memb.1323, i32 0, i32 5
  %59 = ptrtoint ptr %comm_seq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %comm_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i = icmp eq i32 %58, %60
  br i1 %cmp.i, label %land.lhs.true.i.dlm_lsop_recover_slot.exit_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

land.lhs.true.i.dlm_lsop_recover_slot.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dlm_lsop_recover_slot.exit

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %61 = ptrtoint ptr %nodeid37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nodeid37, align 4
  %63 = ptrtoint ptr %slot.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %slot.i, align 4
  %slot8.i = getelementptr inbounds %struct.dlm_member, ptr %memb.1323, i32 0, i32 3
  %64 = ptrtoint ptr %slot8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %slot8.i, align 4
  %66 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %8, align 4
  %67 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ls_ops.i, align 8
  %recover_slot11.i = getelementptr inbounds %struct.dlm_lockspace_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %recover_slot11.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %recover_slot11.i, align 4
  %71 = ptrtoint ptr %ls_ops_arg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ls_ops_arg.i, align 4
  call void %70(ptr noundef %72, ptr noundef nonnull %slot.i) #13
  br label %dlm_lsop_recover_slot.exit

dlm_lsop_recover_slot.exit:                       ; preds = %if.end5.i, %land.lhs.true.i.dlm_lsop_recover_slot.exit_crit_edge, %lor.lhs.false.i.dlm_lsop_recover_slot.exit_crit_edge, %list_move.exit.dlm_lsop_recover_slot.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %slot.i) #13
  br label %for.inc106

for.inc106:                                       ; preds = %dlm_lsop_recover_slot.exit, %land.lhs.true.for.inc106_crit_edge
  %neg.2 = phi i32 [ %inc102, %dlm_lsop_recover_slot.exit ], [ %neg.1320, %land.lhs.true.for.inc106_crit_edge ]
  %cmp34.not = icmp eq ptr %safe.0325, %ls_nodes
  br i1 %cmp34.not, label %for.inc106.for.cond113.preheader_crit_edge, label %for.inc106.for.body36_crit_edge

for.inc106.for.body36_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36

for.inc106.for.cond113.preheader_crit_edge:       ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond113.preheader

for.cond156.preheader:                            ; preds = %for.inc148.for.cond156.preheader_crit_edge, %for.cond113.preheader.for.cond156.preheader_crit_edge
  %73 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %73)
  %memb.2331 = load ptr, ptr %ls_nodes, align 4
  %cmp159.not332 = icmp eq ptr %memb.2331, %ls_nodes
  br i1 %cmp159.not332, label %for.cond156.preheader.for.end174_crit_edge, label %for.cond156.preheader.for.body161_crit_edge

for.cond156.preheader.for.body161_crit_edge:      ; preds = %for.cond156.preheader
  br label %for.body161

for.cond156.preheader.for.end174_crit_edge:       ; preds = %for.cond156.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end174

for.body115:                                      ; preds = %for.inc148.for.body115_crit_edge, %for.body115.lr.ph
  %i.0328 = phi i32 [ 0, %for.body115.lr.ph ], [ %inc149, %for.inc148.for.body115_crit_edge ]
  %74 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nodes, align 8
  %arrayidx = getelementptr %struct.dlm_config_node, ptr %75, i32 %i.0328
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body115
  %memb.0.in.i.i = phi ptr [ %ls_nodes, %for.body115 ], [ %memb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %78 = ptrtoint ptr %memb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %memb.0.i.i = load ptr, ptr %memb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %memb.0.i.i, %ls_nodes
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end120_crit_edge, label %for.body.i.i

for.cond.i.i.if.end120_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

for.body.i.i:                                     ; preds = %for.cond.i.i
  %nodeid1.i.i = getelementptr inbounds %struct.dlm_member, ptr %memb.0.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %nodeid1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nodeid1.i.i, align 4
  %cmp2.i.i = icmp eq i32 %80, %77
  br i1 %cmp2.i.i, label %dlm_is_member.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

dlm_is_member.exit:                               ; preds = %for.body.i.i
  %tobool.not.i270.not = icmp eq ptr %memb.0.i.i, null
  br i1 %tobool.not.i270.not, label %dlm_is_member.exit.if.end120_crit_edge, label %dlm_is_member.exit.for.inc148_crit_edge

dlm_is_member.exit.for.inc148_crit_edge:          ; preds = %dlm_is_member.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc148

dlm_is_member.exit.if.end120_crit_edge:           ; preds = %dlm_is_member.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.end120:                                        ; preds = %dlm_is_member.exit.if.end120_crit_edge, %for.cond.i.i.if.end120_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3392, i32 noundef 32) #18
  %tobool.not.i271 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i271, label %if.end120.dlm_add_member.exit_crit_edge, label %if.end.i273

if.end120.dlm_add_member.exit_crit_edge:          ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %dlm_add_member.exit

if.end.i273:                                      ; preds = %if.end120
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx, align 4
  %call1.i = call i32 @dlm_lowcomms_connect_node(i32 noundef %83) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i272 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i272, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %dlm_add_member.exit

if.end3.i:                                        ; preds = %if.end.i273
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx, align 4
  %nodeid5.i = getelementptr inbounds %struct.dlm_member, ptr %call7.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %nodeid5.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %nodeid5.i, align 8
  %weight.i = getelementptr %struct.dlm_config_node, ptr %75, i32 %i.0328, i32 1
  %87 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %weight.i, align 4
  %weight6.i = getelementptr inbounds %struct.dlm_member, ptr %call7.i.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %weight6.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %weight6.i, align 4
  %comm_seq.i274 = getelementptr %struct.dlm_config_node, ptr %75, i32 %i.0328, i32 3
  %90 = ptrtoint ptr %comm_seq.i274 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %comm_seq.i274, align 4
  %comm_seq7.i = getelementptr inbounds %struct.dlm_member, ptr %call7.i.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %comm_seq7.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %comm_seq7.i, align 8
  call void @dlm_midcomms_add_member(i32 noundef %85) #13
  %93 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %93)
  %tmp.026.i.i = load ptr, ptr %ls_nodes, align 4
  %cmp.i.not27.i.i = icmp eq ptr %tmp.026.i.i, %ls_nodes
  br i1 %cmp.i.not27.i.i, label %if.end3.i.if.then5.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end3.i.if.then5.i.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end3.i
  %94 = ptrtoint ptr %nodeid5.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nodeid5.i, align 8
  br label %for.body.i.i276

for.cond.i.i275:                                  ; preds = %for.body.i.i276
  %96 = ptrtoint ptr %tmp.028.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %tmp.0.i.i = load ptr, ptr %tmp.028.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %tmp.0.i.i, %ls_nodes
  br i1 %cmp.i.not.i.i, label %for.cond.i.i275.for.end.i.i_crit_edge, label %for.cond.i.i275.for.body.i.i276_crit_edge

for.cond.i.i275.for.body.i.i276_crit_edge:        ; preds = %for.cond.i.i275
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i276

for.cond.i.i275.for.end.i.i_crit_edge:            ; preds = %for.cond.i.i275
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i276:                                  ; preds = %for.cond.i.i275.for.body.i.i276_crit_edge, %for.body.lr.ph.i.i
  %tmp.028.i.i = phi ptr [ %tmp.026.i.i, %for.body.lr.ph.i.i ], [ %tmp.0.i.i, %for.cond.i.i275.for.body.i.i276_crit_edge ]
  %nodeid2.i.i = getelementptr inbounds %struct.dlm_member, ptr %tmp.028.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %nodeid2.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nodeid2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %98)
  %cmp.i.i = icmp slt i32 %95, %98
  br i1 %cmp.i.i, label %for.body.i.i276.for.end.i.i_crit_edge, label %for.cond.i.i275

for.body.i.i276.for.end.i.i_crit_edge:            ; preds = %for.body.i.i276
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i276.for.end.i.i_crit_edge, %for.cond.i.i275.for.end.i.i_crit_edge
  %tmp.0.lcssa.i.i = phi ptr [ %ls_nodes, %for.cond.i.i275.for.end.i.i_crit_edge ], [ %tmp.028.i.i, %for.body.i.i276.for.end.i.i_crit_edge ]
  %tobool4.not.i.i = icmp eq ptr %tmp.028.i.i, null
  br i1 %tobool4.not.i.i, label %for.end.i.i.if.then5.i.i_crit_edge, label %if.else.i.i

for.end.i.i.if.then5.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %for.end.i.i.if.then5.i.i_crit_edge, %if.end3.i.if.then5.i.i_crit_edge
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %100, ptr noundef %ls_nodes) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then5.i.i.add_ordered_member.exit.i_crit_edge

if.then5.i.i.add_ordered_member.exit.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_ordered_member.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %102 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %ls_nodes, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %call7.i.i.i, ptr %100, align 4
  br label %add_ordered_member.exit.i

if.else.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i277 = getelementptr inbounds %struct.list_head, ptr %tmp.0.lcssa.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i277 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i277, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %prev6.i.i, align 4
  %108 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %tmp.0.lcssa.i.i, ptr %call7.i.i.i, align 8
  %109 = load ptr, ptr %prev.i.i277, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call7.i.i.i, ptr %109, align 4
  store ptr %call7.i.i.i, ptr %prev.i.i277, align 4
  br label %add_ordered_member.exit.i

add_ordered_member.exit.i:                        ; preds = %if.else.i.i, %if.end.i.i.i.i, %if.then5.i.i.add_ordered_member.exit.i_crit_edge
  %111 = ptrtoint ptr %ls_num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ls_num_nodes.i, align 4
  %inc.i278 = add i32 %112, 1
  store i32 %inc.i278, ptr %ls_num_nodes.i, align 4
  br label %dlm_add_member.exit

dlm_add_member.exit:                              ; preds = %add_ordered_member.exit.i, %if.then2.i, %if.end120.dlm_add_member.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %113 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool123.not = icmp eq i32 %113, 0
  br i1 %tobool123.not, label %if.else133, label %dlm_add_member.exit.for.inc148.sink.split_crit_edge

dlm_add_member.exit.for.inc148.sink.split_crit_edge: ; preds = %dlm_add_member.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc148.sink.split

if.else133:                                       ; preds = %dlm_add_member.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %114 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool134.not = icmp eq i32 %114, 0
  br i1 %tobool134.not, label %if.else133.for.inc148_crit_edge, label %if.else133.for.inc148.sink.split_crit_edge

if.else133.for.inc148.sink.split_crit_edge:       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc148.sink.split

if.else133.for.inc148_crit_edge:                  ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc148

for.inc148.sink.split:                            ; preds = %if.else133.for.inc148.sink.split_crit_edge, %dlm_add_member.exit.for.inc148.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.40, %dlm_add_member.exit.for.inc148.sink.split_crit_edge ], [ @.str.43, %if.else133.for.inc148.sink.split_crit_edge ]
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx, align 4
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.40.sink, ptr noundef %ls_name129, i32 noundef %116) #16
  br label %for.inc148

for.inc148:                                       ; preds = %for.inc148.sink.split, %if.else133.for.inc148_crit_edge, %dlm_is_member.exit.for.inc148_crit_edge
  %inc149 = add nuw nsw i32 %i.0328, 1
  %117 = ptrtoint ptr %nodes_count to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nodes_count, align 4
  %cmp114 = icmp slt i32 %inc149, %118
  br i1 %cmp114, label %for.inc148.for.body115_crit_edge, label %for.inc148.for.cond156.preheader_crit_edge

for.inc148.for.cond156.preheader_crit_edge:       ; preds = %for.inc148
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond156.preheader

for.inc148.for.body115_crit_edge:                 ; preds = %for.inc148
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body115

for.body161:                                      ; preds = %for.inc168.for.body161_crit_edge, %for.cond156.preheader.for.body161_crit_edge
  %memb.2334 = phi ptr [ %memb.2, %for.inc168.for.body161_crit_edge ], [ %memb.2331, %for.cond156.preheader.for.body161_crit_edge ]
  %low.0333 = phi i32 [ %low.1, %for.inc168.for.body161_crit_edge ], [ -1, %for.cond156.preheader.for.body161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %low.0333)
  %cmp162 = icmp eq i32 %low.0333, -1
  br i1 %cmp162, label %for.body161.if.then165_crit_edge, label %lor.lhs.false

for.body161.if.then165_crit_edge:                 ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then165

lor.lhs.false:                                    ; preds = %for.body161
  %nodeid163 = getelementptr inbounds %struct.dlm_member, ptr %memb.2334, i32 0, i32 1
  %119 = ptrtoint ptr %nodeid163 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nodeid163, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %low.0333)
  %cmp164 = icmp slt i32 %120, %low.0333
  br i1 %cmp164, label %lor.lhs.false.if.then165_crit_edge, label %lor.lhs.false.for.inc168_crit_edge

lor.lhs.false.for.inc168_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc168

lor.lhs.false.if.then165_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then165

if.then165:                                       ; preds = %lor.lhs.false.if.then165_crit_edge, %for.body161.if.then165_crit_edge
  %nodeid166 = getelementptr inbounds %struct.dlm_member, ptr %memb.2334, i32 0, i32 1
  %121 = ptrtoint ptr %nodeid166 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nodeid166, align 4
  br label %for.inc168

for.inc168:                                       ; preds = %if.then165, %lor.lhs.false.for.inc168_crit_edge
  %low.1 = phi i32 [ %122, %if.then165 ], [ %low.0333, %lor.lhs.false.for.inc168_crit_edge ]
  %123 = ptrtoint ptr %memb.2334 to i32
  call void @__asan_load4_noabort(i32 %123)
  %memb.2 = load ptr, ptr %memb.2334, align 4
  %cmp159.not = icmp eq ptr %memb.2, %ls_nodes
  br i1 %cmp159.not, label %for.inc168.for.end174_crit_edge, label %for.inc168.for.body161_crit_edge

for.inc168.for.body161_crit_edge:                 ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body161

for.inc168.for.end174_crit_edge:                  ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end174

for.end174:                                       ; preds = %for.inc168.for.end174_crit_edge, %for.cond156.preheader.for.end174_crit_edge
  %low.0.lcssa = phi i32 [ -1, %for.cond156.preheader.for.end174_crit_edge ], [ %low.1, %for.inc168.for.end174_crit_edge ]
  %ls_low_nodeid = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 34
  %124 = ptrtoint ptr %ls_low_nodeid to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %low.0.lcssa, ptr %ls_low_nodeid, align 8
  %ls_node_array.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 36
  %125 = ptrtoint ptr %ls_node_array.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ls_node_array.i, align 8
  call void @kfree(ptr noundef %126) #13
  %127 = ptrtoint ptr %ls_node_array.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %ls_node_array.i, align 8
  %128 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %128)
  %memb.0100.i = load ptr, ptr %ls_nodes, align 4
  %cmp.not101.i = icmp eq ptr %memb.0100.i, %ls_nodes
  br i1 %cmp.not101.i, label %for.end174.if.then10.i_crit_edge, label %for.end174.for.body.i281_crit_edge

for.end174.for.body.i281_crit_edge:               ; preds = %for.end174
  br label %for.body.i281

for.end174.if.then10.i_crit_edge:                 ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i

for.body.i281:                                    ; preds = %for.body.i281.for.body.i281_crit_edge, %for.end174.for.body.i281_crit_edge
  %memb.0103.i = phi ptr [ %memb.0.i, %for.body.i281.for.body.i281_crit_edge ], [ %memb.0100.i, %for.end174.for.body.i281_crit_edge ]
  %total.0102.i = phi i32 [ %add.i, %for.body.i281.for.body.i281_crit_edge ], [ 0, %for.end174.for.body.i281_crit_edge ]
  %weight.i280 = getelementptr inbounds %struct.dlm_member, ptr %memb.0103.i, i32 0, i32 2
  %129 = ptrtoint ptr %weight.i280 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %weight.i280, align 4
  %add.i = add i32 %130, %total.0102.i
  %131 = ptrtoint ptr %memb.0103.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %memb.0.i = load ptr, ptr %memb.0103.i, align 4
  %cmp.not.i = icmp eq ptr %memb.0.i, %ls_nodes
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i281.for.body.i281_crit_edge

for.body.i281.for.body.i281_crit_edge:            ; preds = %for.body.i281
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i281

for.end.i:                                        ; preds = %for.body.i281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool9.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool9.not.i, label %for.end.i.if.then10.i_crit_edge, label %for.end.i.if.end11.i_crit_edge

for.end.i.if.end11.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

for.end.i.if.then10.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i

if.then10.i:                                      ; preds = %for.end.i.if.then10.i_crit_edge, %for.end174.if.then10.i_crit_edge
  %ls_num_nodes.i282 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %132 = ptrtoint ptr %ls_num_nodes.i282 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ls_num_nodes.i282, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %for.end.i.if.end11.i_crit_edge
  %tobool9.not115.i = phi i1 [ false, %for.end.i.if.end11.i_crit_edge ], [ true, %if.then10.i ]
  %total.2.i = phi i32 [ %add.i, %for.end.i.if.end11.i_crit_edge ], [ %133, %if.then10.i ]
  %ls_total_weight.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 35
  %134 = ptrtoint ptr %ls_total_weight.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %total.2.i, ptr %ls_total_weight.i, align 4
  %135 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %total.2.i, i32 4) #13
  %136 = extractvalue { i32, i1 } %135, 1
  br i1 %136, label %if.end11.i.make_member_array.exit_crit_edge, label %if.end7.i.i, !prof !121

if.end11.i.make_member_array.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %make_member_array.exit

if.end7.i.i:                                      ; preds = %if.end11.i
  %137 = extractvalue { i32, i1 } %135, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %137, i32 noundef 3136) #17
  %tobool12.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not.i, label %if.end7.i.i.make_member_array.exit_crit_edge, label %for.cond20.preheader.i

if.end7.i.i.make_member_array.exit_crit_edge:     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %make_member_array.exit

for.cond20.preheader.i:                           ; preds = %if.end7.i.i
  %138 = ptrtoint ptr %ls_nodes to i32
  call void @__asan_load4_noabort(i32 %138)
  %memb.1108.i = load ptr, ptr %ls_nodes, align 4
  %cmp23.not109.i = icmp eq ptr %memb.1108.i, %ls_nodes
  br i1 %cmp23.not109.i, label %for.cond20.preheader.i.for.end62.i_crit_edge, label %for.cond20.preheader.i.for.body25.i_crit_edge

for.cond20.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond20.preheader.i
  br label %for.body25.i

for.cond20.preheader.i.for.end62.i_crit_edge:     ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end62.i

for.body25.i:                                     ; preds = %for.inc56.i.for.body25.i_crit_edge, %for.cond20.preheader.i.for.body25.i_crit_edge
  %memb.1111.i = phi ptr [ %memb.1.i, %for.inc56.i.for.body25.i_crit_edge ], [ %memb.1108.i, %for.cond20.preheader.i.for.body25.i_crit_edge ]
  %x.0110.i = phi i32 [ %x.2.i, %for.inc56.i.for.body25.i_crit_edge ], [ 0, %for.cond20.preheader.i.for.body25.i_crit_edge ]
  br i1 %tobool9.not115.i, label %if.end34.thread.i, label %land.lhs.true.i288

land.lhs.true.i288:                               ; preds = %for.body25.i
  %weight27.i = getelementptr inbounds %struct.dlm_member, ptr %memb.1111.i, i32 0, i32 2
  %139 = ptrtoint ptr %weight27.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %weight27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool28.not.i = icmp eq i32 %140, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i288.for.inc56.i_crit_edge, label %if.end34.i

land.lhs.true.i288.for.inc56.i_crit_edge:         ; preds = %land.lhs.true.i288
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc56.i

if.end34.i:                                       ; preds = %land.lhs.true.i288
  call void @__sanitizer_cov_trace_cmp4(i32 %x.0110.i, i32 %total.2.i)
  %cmp35.i = icmp slt i32 %x.0110.i, %total.2.i
  br i1 %cmp35.i, label %for.cond50.preheader.i, label %if.end34.i.do.end.i_crit_edge

if.end34.i.do.end.i_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end34.thread.i:                                ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %x.0110.i, i32 %total.2.i)
  %cmp35122.i = icmp slt i32 %x.0110.i, %total.2.i
  br i1 %cmp35122.i, label %if.end34.thread.i.for.body52.lr.ph.i_crit_edge, label %if.end34.thread.i.do.end.i_crit_edge

if.end34.thread.i.do.end.i_crit_edge:             ; preds = %if.end34.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end34.thread.i.for.body52.lr.ph.i_crit_edge:   ; preds = %if.end34.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body52.lr.ph.i

for.cond50.preheader.i:                           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp51104.i = icmp sgt i32 %140, 0
  br i1 %cmp51104.i, label %for.cond50.preheader.i.for.body52.lr.ph.i_crit_edge, label %for.cond50.preheader.i.for.inc56.i_crit_edge

for.cond50.preheader.i.for.inc56.i_crit_edge:     ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc56.i

for.cond50.preheader.i.for.body52.lr.ph.i_crit_edge: ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body52.lr.ph.i

for.body52.lr.ph.i:                               ; preds = %for.cond50.preheader.i.for.body52.lr.ph.i_crit_edge, %if.end34.thread.i.for.body52.lr.ph.i_crit_edge
  %w.0123126.i = phi i32 [ %140, %for.cond50.preheader.i.for.body52.lr.ph.i_crit_edge ], [ 1, %if.end34.thread.i.for.body52.lr.ph.i_crit_edge ]
  %nodeid.i289 = getelementptr inbounds %struct.dlm_member, ptr %memb.1111.i, i32 0, i32 1
  %141 = add i32 %w.0123126.i, %x.0110.i
  br label %for.body52.i

do.end.i:                                         ; preds = %if.end34.thread.i.do.end.i_crit_edge, %if.end34.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %142 = load volatile i32, ptr @jiffies, align 128
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 428, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.64, i32 noundef %142) #16
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %total.2.i, i32 noundef %x.0110.i) #16
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #16
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.71) #19
  unreachable

for.body52.i:                                     ; preds = %for.body52.i.for.body52.i_crit_edge, %for.body52.lr.ph.i
  %x.1105.i = phi i32 [ %x.0110.i, %for.body52.lr.ph.i ], [ %inc.i290, %for.body52.i.for.body52.i_crit_edge ]
  %143 = ptrtoint ptr %nodeid.i289 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nodeid.i289, align 4
  %inc.i290 = add i32 %x.1105.i, 1
  %arrayidx.i291 = getelementptr i32, ptr %call8.i.i, i32 %x.1105.i
  %145 = ptrtoint ptr %arrayidx.i291 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx.i291, align 4
  %exitcond.not.i292 = icmp eq i32 %inc.i290, %141
  br i1 %exitcond.not.i292, label %for.body52.i.for.inc56.i_crit_edge, label %for.body52.i.for.body52.i_crit_edge

for.body52.i.for.body52.i_crit_edge:              ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body52.i

for.body52.i.for.inc56.i_crit_edge:               ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc56.i

for.inc56.i:                                      ; preds = %for.body52.i.for.inc56.i_crit_edge, %for.cond50.preheader.i.for.inc56.i_crit_edge, %land.lhs.true.i288.for.inc56.i_crit_edge
  %x.2.i = phi i32 [ %x.0110.i, %land.lhs.true.i288.for.inc56.i_crit_edge ], [ %x.0110.i, %for.cond50.preheader.i.for.inc56.i_crit_edge ], [ %141, %for.body52.i.for.inc56.i_crit_edge ]
  %146 = ptrtoint ptr %memb.1111.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %memb.1.i = load ptr, ptr %memb.1111.i, align 4
  %cmp23.not.i = icmp eq ptr %memb.1.i, %ls_nodes
  br i1 %cmp23.not.i, label %for.inc56.i.for.end62.i_crit_edge, label %for.inc56.i.for.body25.i_crit_edge

for.inc56.i.for.body25.i_crit_edge:               ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body25.i

for.inc56.i.for.end62.i_crit_edge:                ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end62.i

for.end62.i:                                      ; preds = %for.inc56.i.for.end62.i_crit_edge, %for.cond20.preheader.i.for.end62.i_crit_edge
  %147 = ptrtoint ptr %ls_node_array.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call8.i.i, ptr %ls_node_array.i, align 8
  br label %make_member_array.exit

make_member_array.exit:                           ; preds = %for.end62.i, %if.end7.i.i.make_member_array.exit_crit_edge, %if.end11.i.make_member_array.exit_crit_edge
  %148 = ptrtoint ptr %neg_out to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %neg.1.lcssa, ptr %neg_out, align 4
  %ls_flags.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  br label %for.cond.i296

for.cond.i296:                                    ; preds = %if.end.i301.for.cond.i296_crit_edge, %make_member_array.exit
  %memb.0.in.i = phi ptr [ %ls_nodes, %make_member_array.exit ], [ %memb.0.i294, %if.end.i301.for.cond.i296_crit_edge ]
  %149 = ptrtoint ptr %memb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %memb.0.i294 = load ptr, ptr %memb.0.in.i, align 4
  %cmp.not.i295 = icmp eq ptr %memb.0.i294, %ls_nodes
  br i1 %cmp.not.i295, label %for.cond.i296.ping_members.exit.thread_crit_edge, label %for.body.i298

for.cond.i296.ping_members.exit.thread_crit_edge: ; preds = %for.cond.i296
  call void @__sanitizer_cov_trace_pc() #15
  br label %ping_members.exit.thread

for.body.i298:                                    ; preds = %for.cond.i296
  %150 = ptrtoint ptr %ls_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %ls_flags.i.i, align 4
  %and1.i.i.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i297 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i297, label %if.end.i301, label %for.body.i298.do.body.i_crit_edge

for.body.i298.do.body.i_crit_edge:                ; preds = %for.body.i298
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end.i301:                                      ; preds = %for.body.i298
  %nodeid.i299 = getelementptr inbounds %struct.dlm_member, ptr %memb.0.i294, i32 0, i32 1
  %152 = ptrtoint ptr %nodeid.i299 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %nodeid.i299, align 4
  %call2.i = call i32 @dlm_rcom_status(ptr noundef %ls, i32 noundef %153, i32 noundef 0) #13
  %tobool3.not.i300 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i300, label %if.end.i301.for.cond.i296_crit_edge, label %if.end.i301.do.body.i_crit_edge

if.end.i301.do.body.i_crit_edge:                  ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.end.i301.for.cond.i296_crit_edge:              ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i296

do.body.i:                                        ; preds = %if.end.i301.do.body.i_crit_edge, %for.body.i298.do.body.i_crit_edge
  %error.1.ph.i = phi i32 [ -4, %for.body.i298.do.body.i_crit_edge ], [ %call2.i, %if.end.i301.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %154 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool13.not.i = icmp eq i32 %154, 0
  br i1 %tobool13.not.i, label %if.else.i, label %do.body.i.if.end32.sink.split.i_crit_edge

do.body.i.if.end32.sink.split.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.sink.split.i

if.else.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %155 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool18.not.i = icmp eq i32 %155, 0
  br i1 %tobool18.not.i, label %if.else.i.ping_members.exit_crit_edge, label %if.else.i.if.end32.sink.split.i_crit_edge

if.else.i.if.end32.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32.sink.split.i

if.else.i.ping_members.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ping_members.exit

if.end32.sink.split.i:                            ; preds = %if.else.i.if.end32.sink.split.i_crit_edge, %do.body.i.if.end32.sink.split.i_crit_edge
  %.str.72.sink.i = phi ptr [ @.str.72, %do.body.i.if.end32.sink.split.i_crit_edge ], [ @.str.75, %if.else.i.if.end32.sink.split.i_crit_edge ]
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %ls_recover_nodeid.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 72
  %156 = ptrtoint ptr %ls_recover_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ls_recover_nodeid.i, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.72.sink.i, ptr noundef %ls_name.i, i32 noundef %error.1.ph.i, i32 noundef %157) #16
  br label %ping_members.exit

ping_members.exit:                                ; preds = %if.end32.sink.split.i, %if.else.i.ping_members.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %error.1.ph.i)
  %cmp176 = icmp eq i32 %error.1.ph.i, -4
  %spec.select = select i1 %cmp176, i32 0, i32 %error.1.ph.i
  br label %ping_members.exit.thread

ping_members.exit.thread:                         ; preds = %ping_members.exit, %for.cond.i296.ping_members.exit.thread_crit_edge
  %158 = phi i32 [ %spec.select, %ping_members.exit ], [ 0, %for.cond.i296.ping_members.exit.thread_crit_edge ]
  %ls_members_result = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 52
  %159 = ptrtoint ptr %ls_members_result to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %ls_members_result, align 4
  %ls_members_done = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 51
  call void @complete(ptr noundef %ls_members_done) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %160 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool180.not = icmp eq i32 %160, 0
  br i1 %tobool180.not, label %if.else190, label %ping_members.exit.thread.do.end204.sink.split_crit_edge

ping_members.exit.thread.do.end204.sink.split_crit_edge: ; preds = %ping_members.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end204.sink.split

if.else190:                                       ; preds = %ping_members.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %161 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool191.not = icmp eq i32 %161, 0
  br i1 %tobool191.not, label %if.else190.do.end204_crit_edge, label %if.else190.do.end204.sink.split_crit_edge

if.else190.do.end204.sink.split_crit_edge:        ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end204.sink.split

if.else190.do.end204_crit_edge:                   ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end204

do.end204.sink.split:                             ; preds = %if.else190.do.end204.sink.split_crit_edge, %ping_members.exit.thread.do.end204.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.46, %ping_members.exit.thread.do.end204.sink.split_crit_edge ], [ @.str.49, %if.else190.do.end204.sink.split_crit_edge ]
  %ls_name197 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %ls_num_nodes199 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 33
  %162 = ptrtoint ptr %ls_num_nodes199 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ls_num_nodes199, align 4
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.49.sink, ptr noundef %ls_name197, i32 noundef %163) #16
  br label %do.end204

do.end204:                                        ; preds = %do.end204.sink.split, %if.else190.do.end204_crit_edge
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_midcomms_remove_member(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_ls_stop(ptr noundef %ls) local_unnamed_addr #5 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recv_active = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 66
  tail call void @down_write(ptr noundef %ls_recv_active) #13
  %ls_recover_lock = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  tail call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #13
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %ls_flags) #13
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %ls_flags) #13
  %ls_recover_seq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 63
  %0 = ptrtoint ptr %ls_recover_seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ls_recover_seq, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %ls_recover_seq, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #13
  tail call void @up_write(ptr noundef %ls_recv_active) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then:                                          ; preds = %entry
  tail call void @_set_bit(i32 noundef 1, ptr noundef %ls_flags) #13
  %ls_recoverd_task = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 58
  %2 = ptrtoint ptr %ls_recoverd_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_recoverd_task, align 8
  %call5 = tail call i32 @wake_up_process(ptr noundef %3) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 659) #13
  %4 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ls_flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %if.end, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %ls_recover_lock_wait = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 84
  %call1460 = call i32 @prepare_to_wait_event(ptr noundef %ls_recover_lock_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %8 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %ls_flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not61 = icmp eq i32 %10, 0
  br i1 %tobool17.not61, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #13
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %ls_recover_lock_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %11 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %ls_flags, align 4
  %13 = and i32 %12, 4
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %ls_recover_lock_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  call void @dlm_recoverd_suspend(ptr noundef %ls) #13
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #13
  %ls_slots = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 40
  %14 = ptrtoint ptr %ls_slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ls_slots, align 8
  call void @kfree(ptr noundef %15) #13
  %16 = ptrtoint ptr %ls_slots to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ls_slots, align 8
  %ls_num_slots = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 38
  %17 = ptrtoint ptr %ls_num_slots to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ls_num_slots, align 8
  %ls_slots_size = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 39
  %18 = ptrtoint ptr %ls_slots_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ls_slots_size, align 4
  %ls_recover_status = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 62
  %19 = ptrtoint ptr %ls_recover_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ls_recover_status, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #13
  call void @dlm_recoverd_resume(ptr noundef %ls) #13
  %ls_recover_begin = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 61
  %20 = ptrtoint ptr %ls_recover_begin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ls_recover_begin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %if.then28, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %ls_recover_begin to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ls_recover_begin, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end23.if.end30_crit_edge
  %ls_ops.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 88
  %24 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ls_ops.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end30.dlm_lsop_recover_prep.exit_crit_edge, label %lor.lhs.false.i

if.end30.dlm_lsop_recover_prep.exit_crit_edge:    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %dlm_lsop_recover_prep.exit

lor.lhs.false.i:                                  ; preds = %if.end30
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dlm_lsop_recover_prep.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dlm_lsop_recover_prep.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dlm_lsop_recover_prep.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %ls_ops_arg.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 89
  %28 = ptrtoint ptr %ls_ops_arg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ls_ops_arg.i, align 4
  call void %27(ptr noundef %29) #13
  br label %dlm_lsop_recover_prep.exit

dlm_lsop_recover_prep.exit:                       ; preds = %if.end.i, %lor.lhs.false.i.dlm_lsop_recover_prep.exit_crit_edge, %if.end30.dlm_lsop_recover_prep.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recoverd_suspend(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recoverd_resume(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_ls_start(ptr noundef %ls) local_unnamed_addr #5 align 64 {
entry:
  %nodes = alloca ptr, align 4
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodes) #13
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %nodes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #13
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %count, align 4, !annotation !122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 24) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %call1 = call i32 @dlm_config_nodes(ptr noundef %ls_name, ptr noundef nonnull %nodes, ptr noundef nonnull %count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.fail_rv_crit_edge, label %if.end3

if.end.fail_rv_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_rv

if.end3:                                          ; preds = %if.end
  %ls_recover_lock = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 60
  call void @_raw_spin_lock(ptr noundef %ls_recover_lock) #13
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %3 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ls_flags.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.not = icmp eq i32 %5, 0
  br i1 %tobool5.not.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #13
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %ls_name) #16
  %6 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nodes, align 4
  call void @kfree(ptr noundef %7) #13
  br label %fail_rv

if.end11:                                         ; preds = %if.end3
  %8 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nodes, align 4
  %nodes12 = getelementptr inbounds %struct.dlm_recover, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %nodes12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %nodes12, align 8
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %nodes_count = getelementptr inbounds %struct.dlm_recover, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %nodes_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nodes_count, align 4
  %ls_recover_seq = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 63
  %14 = ptrtoint ptr %ls_recover_seq to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ls_recover_seq, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %ls_recover_seq, align 8
  %seq = getelementptr inbounds %struct.dlm_recover, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %inc, ptr %seq, align 8
  %ls_recover_args = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 64
  %17 = ptrtoint ptr %ls_recover_args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ls_recover_args, align 8
  store ptr %call7.i.i, ptr %ls_recover_args, align 8
  call void @_raw_spin_unlock(ptr noundef %ls_recover_lock) #13
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.end11.if.end27_crit_edge, label %do.end19

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %seq23 = getelementptr inbounds %struct.dlm_recover, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %seq23 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %seq23, align 8
  %nodes_count24 = getelementptr inbounds %struct.dlm_recover, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %nodes_count24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nodes_count24, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %ls_name, i64 noundef %20, i32 noundef %22) #16
  %nodes26 = getelementptr inbounds %struct.dlm_recover, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %nodes26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nodes26, align 8
  call void @kfree(ptr noundef %24) #13
  call void @kfree(ptr noundef nonnull %18) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end19, %if.end11.if.end27_crit_edge
  call void @_set_bit(i32 noundef 3, ptr noundef %ls_flags.i) #13
  %ls_recoverd_task = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 58
  %25 = ptrtoint ptr %ls_recoverd_task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ls_recoverd_task, align 8
  %call28 = call i32 @wake_up_process(ptr noundef %26) #13
  br label %cleanup

fail_rv:                                          ; preds = %if.then6, %if.end.fail_rv_crit_edge
  %error.0 = phi i32 [ %call1, %if.end.fail_rv_crit_edge ], [ -22, %if.then6 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %fail_rv, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %fail_rv ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodes) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_config_nodes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_comm_seq(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lowcomms_connect_node(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_midcomms_add_member(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_rcom_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/member.c", i32 112, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dlm_slots_copy_in._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dlm_slots_copy_in._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/dlm/member.c", i32 141, i32 5}
!8 = !{ptr @dlm_slots_copy_in._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dlm_slots_copy_in._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/dlm/member.c", i32 152, i32 4}
!12 = !{ptr @dlm_slots_copy_in._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dlm_slots_copy_in._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/dlm/member.c", i32 211, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dlm_slots_assign._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dlm_slots_assign._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/dlm/member.c", i32 232, i32 4}
!21 = !{ptr @dlm_slots_assign._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dlm_slots_assign._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/dlm/member.c", i32 264, i32 4}
!25 = !{ptr @dlm_slots_assign._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dlm_slots_assign._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/dlm/member.c", i32 278, i32 3}
!29 = !{ptr @dlm_slots_assign._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dlm_slots_assign._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/dlm/member.c", i32 509, i32 4}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dlm_lsop_recover_done._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @dlm_lsop_recover_done._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/dlm/member.c", i32 545, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dlm_recover_members._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @dlm_recover_members._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dlm_recover_members._entry.24, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @dlm_recover_members._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/dlm/member.c", i32 557, i32 4}
!46 = !{ptr @dlm_recover_members._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dlm_recover_members._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dlm_recover_members._entry.30, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @dlm_recover_members._entry_ptr.32, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/dlm/member.c", i32 560, i32 4}
!53 = !{ptr @dlm_recover_members._entry.33, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @dlm_recover_members._entry_ptr.35, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.37, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dlm_recover_members._entry.36, !52, !"_entry", i1 false, i1 false}
!57 = !{ptr @dlm_recover_members._entry_ptr.38, !52, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/dlm/member.c", i32 578, i32 3}
!60 = !{ptr @dlm_recover_members._entry.39, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dlm_recover_members._entry_ptr.41, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dlm_recover_members._entry.42, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @dlm_recover_members._entry_ptr.44, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.46, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/dlm/member.c", i32 604, i32 2}
!67 = !{ptr @dlm_recover_members._entry.45, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @dlm_recover_members._entry_ptr.47, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.49, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dlm_recover_members._entry.48, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @dlm_recover_members._entry_ptr.50, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.51, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/dlm/member.c", i32 707, i32 3}
!74 = !{ptr @.str.52, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dlm_ls_start._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dlm_ls_start._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.54, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/dlm/member.c", i32 720, i32 3}
!79 = !{ptr @dlm_ls_start._entry.53, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @dlm_ls_start._entry_ptr.55, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/dlm/member.c", i32 78, i32 42}
!83 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/dlm/member.c", i32 94, i32 2}
!85 = !{ptr @.str.58, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @log_slots._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @log_slots._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.60, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @log_slots._entry.59, !84, !"_entry", i1 false, i1 false}
!90 = !{ptr @log_slots._entry_ptr.61, !84, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.62, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/dlm/member.c", i32 428, i32 3}
!93 = !{ptr @.str.63, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @make_member_array._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @make_member_array._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.64, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.66, !92, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @make_member_array._entry.65, !92, !"_entry", i1 false, i1 false}
!99 = !{ptr @make_member_array._entry_ptr.67, !92, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.69, !92, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @make_member_array._entry.68, !92, !"_entry", i1 false, i1 false}
!102 = !{ptr @make_member_array._entry_ptr.70, !92, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.71, !92, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.72, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/dlm/member.c", i32 454, i32 3}
!106 = !{ptr @.str.73, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ping_members._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @ping_members._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.75, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ping_members._entry.74, !105, !"_entry", i1 false, i1 false}
!111 = !{ptr @ping_members._entry_ptr.76, !105, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{!"auto-init"}
