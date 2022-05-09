; ModuleID = '/llk/IR_all_yes/fs/ocfs2/stack_user.c_pt.bc'
source_filename = "../fs/ocfs2/stack_user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ocfs2_stack_plugin = type { ptr, ptr, ptr, %struct.list_head, i32, %struct.ocfs2_protocol_version }
%struct.list_head = type { ptr, ptr }
%struct.ocfs2_protocol_version = type { i8, i8 }
%struct.ocfs2_stack_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dlm_lockspace_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ocfs2_live_connection = type { %struct.list_head, ptr, i32, %struct.atomic_t, i32, %struct.dlm_lksb, [64 x i8], %struct.completion, %struct.wait_queue_head }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ocfs2_cluster_connection = type { [65 x i8], i32, [17 x i8], i32, %struct.ocfs2_protocol_version, ptr, ptr, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.dlm_slot = type { i32, i32 }
%struct.ocfs2_dlm_lksb = type { %union.anon, ptr }
%union.anon = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.ocfs2_locking_protocol = type { %struct.ocfs2_protocol_version, ptr, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ocfs2_control_private = type { %struct.list_head, i32, i32, %struct.ocfs2_protocol_version }
%union.ocfs2_control_message = type { %struct.ocfs2_control_message_down }
%struct.ocfs2_control_message_down = type { [4 x i8], i8, [32 x i8], i8, [8 x i8], i8 }
%struct.ocfs2_control_message_setn = type { [4 x i8], i8, [8 x i8], i8 }
%struct.ocfs2_control_message_setv = type { [4 x i8], i8, [2 x i8], i8, [2 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ocfs2_user_plugin = internal global { %struct.ocfs2_stack_plugin, [36 x i8] } { %struct.ocfs2_stack_plugin { ptr @.str, ptr @ocfs2_user_plugin_ops, ptr null, %struct.list_head zeroinitializer, i32 0, %struct.ocfs2_protocol_version zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author223 = internal constant [31 x i8] c"ocfs2_stack_user.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [71 x i8] c"ocfs2_stack_user.description=ocfs2 driver for userspace cluster stacks\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [48 x i8] c"ocfs2_stack_user.file=fs/ocfs2/ocfs2_stack_user\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [29 x i8] c"ocfs2_stack_user.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ocfs2_stack_user__227_1123_ocfs2_user_plugin_init6 = internal global ptr @ocfs2_user_plugin_init, section ".initcall6.init", align 4
@__exitcall_ocfs2_user_plugin_exit = internal global ptr @ocfs2_user_plugin_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@ocfs2_user_plugin_ops = internal global { %struct.ocfs2_stack_operations, [56 x i8] } { %struct.ocfs2_stack_operations { ptr @user_cluster_connect, ptr @user_cluster_disconnect, ptr @user_cluster_this_node, ptr @user_dlm_lock, ptr @user_dlm_unlock, ptr @user_dlm_lock_status, ptr @user_dlm_lvb_valid, ptr @user_dlm_lvb, ptr @user_plock, ptr @user_dlm_dump_lksb }, [56 x i8] zeroinitializer }, align 32
@user_cluster_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&lc->oc_wait\00", [19 x i8] zeroinitializer }, align 32
@ocfs2_ls_ops = internal constant { %struct.dlm_lockspace_ops, [20 x i8] } { %struct.dlm_lockspace_ops { ptr @user_recover_prep, ptr @user_recover_slot, ptr @user_recover_done }, [20 x i8] zeroinitializer }, align 32
@user_cluster_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"\013ocfs2: Unable to create the lockspace %s (%d), because a ocfs2-tools program is running on this file system with the same name lockspace\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"user_cluster_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ocfs2/stack_user.c\00", [42 x i8] zeroinitializer }, align 32
@user_cluster_connect._entry_ptr = internal global ptr @user_cluster_connect._entry, section ".printk_index", align 4
@user_cluster_connect._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\015ocfs2: You seem to be using an older version of dlm_controld and/or ocfs2-tools. Please consider upgrading.\0A\00", [49 x i8] zeroinitializer }, align 32
@user_cluster_connect._entry_ptr.7 = internal global ptr @user_cluster_connect._entry.5, section ".printk_index", align 4
@user_cluster_connect._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ocfs2: Could not determine locking version\0A\00", [50 x i8] zeroinitializer }, align 32
@user_cluster_connect._entry_ptr.10 = internal global ptr @user_cluster_connect._entry.8, section ".printk_index", align 4
@running_proto.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@running_proto.1 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@user_cluster_connect._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013Unable to mount with fs locking protocol version %u.%u because negotiated protocol is %u.%u\0A\00", [33 x i8] zeroinitializer }, align 32
@user_cluster_connect._entry_ptr.13 = internal global ptr @user_cluster_connect._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@user_recover_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ocfs2: Node %d/%d down. Initiating recovery.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"user_recover_slot\00", [46 x i8] zeroinitializer }, align 32
@user_recover_slot._entry_ptr = internal global ptr @user_recover_slot._entry, section ".printk_index", align 4
@ocfs2_control_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ocfs2_control_lock, i64 52), ptr getelementptr (i8, ptr @ocfs2_control_lock, i64 52) }, ptr @ocfs2_control_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ocfs2_control_opened = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ocfs2_live_connection_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ocfs2_live_connection_list, ptr @ocfs2_live_connection_list }, [24 x i8] zeroinitializer }, align 32
@ocfs2_live_connection_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ocfs2: Userspace control daemon is not present\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ocfs2_live_connection_attach\00", [35 x i8] zeroinitializer }, align 32
@ocfs2_live_connection_attach._entry_ptr = internal global ptr @ocfs2_live_connection_attach._entry, section ".printk_index", align 4
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ocfs2_control_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ocfs2_control_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"version_lock\00", [19 x i8] zeroinitializer }, align 32
@sync_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s lkid %x flags %x mode %d error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync_lock\00", [22 x i8] zeroinitializer }, align 32
@sync_lock._entry_ptr = internal global ptr @sync_lock._entry, section ".printk_index", align 4
@sync_lock._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s lkid %x flags %x mode %d status %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sync_lock._entry_ptr.26 = internal global ptr @sync_lock._entry.24, section ".printk_index", align 4
@sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s lkid %x error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sync_unlock\00", [20 x i8] zeroinitializer }, align 32
@sync_unlock._entry_ptr = internal global ptr @sync_unlock._entry, section ".printk_index", align 4
@sync_unlock._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s lkid %x status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sync_unlock._entry_ptr.31 = internal global ptr @sync_unlock._entry.29, section ".printk_index", align 4
@ocfs2_control_this_node = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@ocfs2_control_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.32, ptr @ocfs2_control_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ocfs2_control\00", [18 x i8] zeroinitializer }, align 32
@ocfs2_control_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ocfs2_control_read, ptr @ocfs2_control_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ocfs2_control_open, ptr null, ptr @ocfs2_control_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T01\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SETN\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SETV\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@ocfs2_control_private_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ocfs2_control_private_list, ptr @ocfs2_control_private_list }, [24 x i8] zeroinitializer }, align 32
@ocfs2_control_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\013ocfs2: Unexpected release of ocfs2_control!\0A       Loss of cluster connection requires an emergency restart!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ocfs2_control_release\00", [42 x i8] zeroinitializer }, align 32
@ocfs2_control_release._entry_ptr = internal global ptr @ocfs2_control_release._entry, section ".printk_index", align 4
@ocfs2_control_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ocfs2: Unable to register ocfs2_control device (errno %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ocfs2_control_init\00", [45 x i8] zeroinitializer }, align 32
@ocfs2_control_init._entry_ptr = internal global ptr @ocfs2_control_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967225, i64 4294967279]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 12, i64 1029]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 11, i64 14, i64 47]
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"ocfs2_user_plugin\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1093, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1094, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"ocfs2_user_plugin_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1080, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 993, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"ocfs2_ls_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 965, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1004, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1014, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1030, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"running_proto.0\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"running_proto.1\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1043, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 87, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 941, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"ocfs2_control_lock\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"ocfs2_control_opened\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 163, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"ocfs2_live_connection_list\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 167, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 216, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 169, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 876, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 853, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 863, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 827, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 835, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [24 x i8] c"ocfs2_control_this_node\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 164, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"ocfs2_control_device\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 624, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 626, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"ocfs2_control_fops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 615, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 549, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 230, i32 6 }
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 214, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 156, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 488, i32 24 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 492, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 496, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"ocfs2_control_private_list\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 168, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 572, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [25 x i8] c"../fs/ocfs2/stack_user.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 638, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_ocfs2_user_plugin_exit, ptr @__initcall__kmod_ocfs2_stack_user__227_1123_ocfs2_user_plugin_init6, ptr @ocfs2_control_init._entry, ptr @ocfs2_control_init._entry_ptr, ptr @ocfs2_control_release._entry, ptr @ocfs2_control_release._entry_ptr, ptr @ocfs2_live_connection_attach._entry, ptr @ocfs2_live_connection_attach._entry_ptr, ptr @ocfs2_user_plugin_exit, ptr @sync_lock._entry, ptr @sync_lock._entry.24, ptr @sync_lock._entry_ptr, ptr @sync_lock._entry_ptr.26, ptr @sync_unlock._entry, ptr @sync_unlock._entry.29, ptr @sync_unlock._entry_ptr, ptr @sync_unlock._entry_ptr.31, ptr @user_cluster_connect._entry, ptr @user_cluster_connect._entry.11, ptr @user_cluster_connect._entry.5, ptr @user_cluster_connect._entry.8, ptr @user_cluster_connect._entry_ptr, ptr @user_cluster_connect._entry_ptr.10, ptr @user_cluster_connect._entry_ptr.13, ptr @user_cluster_connect._entry_ptr.7, ptr @user_recover_slot._entry, ptr @user_recover_slot._entry_ptr, ptr @ocfs2_user_plugin, ptr @.str, ptr @ocfs2_user_plugin_ops, ptr @user_cluster_connect.__key, ptr @.str.1, ptr @ocfs2_ls_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @running_proto.0, ptr @running_proto.1, ptr @.str.12, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ocfs2_control_lock, ptr @ocfs2_control_opened, ptr @ocfs2_live_connection_list, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @ocfs2_control_this_node, ptr @ocfs2_control_device, ptr @.str.32, ptr @ocfs2_control_fops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ocfs2_control_private_list, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_user_plugin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_user_plugin_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_cluster_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_ls_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_cluster_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_cluster_connect._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_cluster_connect._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @running_proto.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @running_proto.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_cluster_connect._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_recover_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_opened to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_live_connection_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_live_connection_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_lock._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_unlock._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_this_node to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_private_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_control_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_user_plugin_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ocfs2_stack_glue_unregister(ptr noundef nonnull @ocfs2_user_plugin) #13
  tail call void @misc_deregister(ptr noundef nonnull @ocfs2_control_device) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_stack_glue_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_user_plugin_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ocfs2_control_opened, i32 noundef 4) #13
  store volatile i32 0, ptr @ocfs2_control_opened, align 4
  %call.i = tail call i32 @misc_register(ptr noundef nonnull @ocfs2_control_device) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %ocfs2_control_init.exit

ocfs2_control_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 0, %call.i
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %sub.i) #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ocfs2_stack_glue_register(ptr noundef nonnull @ocfs2_user_plugin) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @misc_deregister(ptr noundef nonnull @ocfs2_control_device) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %ocfs2_control_init.exit
  %rc.0 = phi i32 [ %call.i, %ocfs2_control_init.exit ], [ %call1, %if.then3 ], [ 0, %if.then.if.end4_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_cluster_connect(ptr noundef %conn) #2 align 64 {
entry:
  %fsdlm = alloca ptr, align 4
  %ops_rv = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdlm) #13
  %0 = ptrtoint ptr %fsdlm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdlm, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ops_rv) #13
  %1 = ptrtoint ptr %ops_rv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ops_rv, align 4, !annotation !128
  %cmp = icmp eq ptr %conn, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !129

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 987, 0\0A.popsection", ""() #13, !srcloc !130
  unreachable

do.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 212) #17
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %do.end7.cleanup99_crit_edge, label %do.body11

do.end7.cleanup99_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup99

do.body11:                                        ; preds = %do.end7
  %oc_wait = getelementptr inbounds %struct.ocfs2_live_connection, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %oc_wait, ptr noundef nonnull @.str.1, ptr noundef nonnull @user_cluster_connect.__key) #13
  %oc_sync_wait = getelementptr inbounds %struct.ocfs2_live_connection, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %oc_sync_wait to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %oc_sync_wait, align 8
  %wait.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #13
  %oc_this_node = getelementptr inbounds %struct.ocfs2_live_connection, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %oc_this_node, i32 noundef 4) #13
  %4 = ptrtoint ptr %oc_this_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %oc_this_node, align 8
  %cc_private = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 9
  %5 = ptrtoint ptr %cc_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %cc_private, align 4
  %oc_type = getelementptr inbounds %struct.ocfs2_live_connection, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %oc_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %oc_type, align 4
  %cc_cluster_name = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 2
  %call15 = call i32 @dlm_new_lockspace(ptr noundef nonnull %conn, ptr noundef %cc_cluster_name, i32 noundef 12, i32 noundef 64, ptr noundef nonnull @ocfs2_ls_ops, ptr noundef nonnull %conn, ptr noundef nonnull %ops_rv, ptr noundef nonnull %fsdlm) #13
  %7 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %do.body11.out_crit_edge [
    i32 0, label %if.end28
    i32 -17, label %do.body11.do.end23_crit_edge
    i32 -71, label %do.body11.do.end23_crit_edge166
  ]

do.body11.do.end23_crit_edge166:                  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.body11.do.end23_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.body11.out_crit_edge:                          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end23:                                         ; preds = %do.body11.do.end23_crit_edge, %do.body11.do.end23_crit_edge166
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %conn, i32 noundef %call15) #16
  br label %if.then97

if.end28:                                         ; preds = %do.body11
  %8 = ptrtoint ptr %ops_rv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ops_rv, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %9, label %if.end28.if.then97_crit_edge [
    i32 -95, label %if.then30
    i32 0, label %if.end28.if.end40_crit_edge
  ]

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.end28.if.then97_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then97

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %oc_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %oc_type, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %if.end28.if.end40_crit_edge
  %12 = ptrtoint ptr %fsdlm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsdlm, align 4
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %14 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %cc_lockspace, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %oc_conn.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %oc_conn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %conn, ptr %oc_conn.i, align 8
  %16 = ptrtoint ptr %oc_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %if.end40.if.then.i_crit_edge, label %lor.lhs.false.i

if.end40.if.then.i_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end40
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ocfs2_control_opened, i32 noundef 4) #13
  %18 = load volatile i32, ptr @ocfs2_control_opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %ocfs2_live_connection_attach.exit, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end40.if.then.i_crit_edge
  %19 = load ptr, ptr @ocfs2_live_connection_list, align 4
  %call.i.i4.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ocfs2_live_connection_list, ptr noundef %19) #13
  br i1 %call.i.i4.i, label %if.end.i.i.i, label %if.then.i.if.end44_crit_edge

if.then.i.if.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ocfs2_live_connection_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i, ptr @ocfs2_live_connection_list, align 4
  br label %if.end44

ocfs2_live_connection_attach.exit:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #16
  call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  br label %if.then97

if.end44:                                         ; preds = %if.end.i.i.i, %if.then.i.if.end44_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  %23 = ptrtoint ptr %oc_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp46 = icmp eq i32 %24, 1
  br i1 %cmp46, label %if.then47, label %if.end44.if.end81_crit_edge

if.end44.if.end81_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then47:                                        ; preds = %if.end44
  %25 = ptrtoint ptr %cc_private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cc_private, align 4
  %27 = load i8, ptr getelementptr inbounds (%struct.ocfs2_stack_plugin, ptr @ocfs2_user_plugin, i32 0, i32 5), align 4
  store i8 %27, ptr @running_proto.0, align 1
  %28 = load i8, ptr getelementptr inbounds (%struct.ocfs2_stack_plugin, ptr @ocfs2_user_plugin, i32 0, i32 5, i32 1), align 1
  store i8 %28, ptr @running_proto.1, align 1
  %oc_lvb.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %26, i32 0, i32 6
  %sb_lvbptr.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %26, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %oc_lvb.i, ptr %sb_lvbptr.i, align 4
  %call.i = call fastcc i32 @version_lock(ptr noundef nonnull %conn, i32 noundef 5, i32 noundef 9) #13
  %30 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i, label %if.then47.do.end53_crit_edge [
    i32 0, label %if.then.i138
    i32 -11, label %if.then5.i
  ]

if.then47.do.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

if.then.i138:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %31 = load i8, ptr @running_proto.0, align 1
  %cc_version.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4
  %32 = ptrtoint ptr %cc_version.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %cc_version.i, align 4
  %33 = load i8, ptr @running_proto.1, align 1
  %pv_minor.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %pv_minor.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %pv_minor.i, align 1
  %35 = ptrtoint ptr %oc_lvb.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %31, ptr %oc_lvb.i, align 1
  %pv_minor2.i.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %26, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %pv_minor2.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %33, ptr %pv_minor2.i.i, align 1
  %call4.i = call fastcc i32 @version_lock(ptr noundef nonnull %conn, i32 noundef 3, i32 noundef 12) #13
  br label %do.body59

if.then5.i:                                       ; preds = %if.then47
  %call6.i = call fastcc i32 @version_lock(ptr noundef nonnull %conn, i32 noundef 3, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i, label %if.then5.i.do.end53_crit_edge

if.then5.i.do.end53_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

if.end.i:                                         ; preds = %if.then5.i
  %37 = ptrtoint ptr %oc_lvb.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %oc_lvb.i, align 1
  %pv_minor.i.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %26, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %pv_minor.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pv_minor.i.i, align 1
  %41 = load i8, ptr @running_proto.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %41)
  %cmp13.not.i = icmp eq i8 %38, %41
  br i1 %cmp13.not.i, label %lor.lhs.false.i139, label %if.end.i.do.end53_crit_edge

if.end.i.do.end53_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

lor.lhs.false.i139:                               ; preds = %if.end.i
  %42 = load i8, ptr @running_proto.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp18.i = icmp ugt i8 %40, %42
  br i1 %cmp18.i, label %lor.lhs.false.i139.do.end53_crit_edge, label %if.end21.i

lor.lhs.false.i139.do.end53_crit_edge:            ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end53

if.end21.i:                                       ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #15
  %cc_version23.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4
  %43 = ptrtoint ptr %cc_version23.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %38, ptr %cc_version23.i, align 4
  %pv_minor27.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %pv_minor27.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %40, ptr %pv_minor27.i, align 1
  br label %do.body59

do.end53:                                         ; preds = %lor.lhs.false.i139.do.end53_crit_edge, %if.end.i.do.end53_crit_edge, %if.then5.i.do.end53_crit_edge, %if.then47.do.end53_crit_edge
  %ret.0.i145 = phi i32 [ -22, %if.end.i.do.end53_crit_edge ], [ -22, %lor.lhs.false.i139.do.end53_crit_edge ], [ %call6.i, %if.then5.i.do.end53_crit_edge ], [ %call.i, %if.then47.do.end53_crit_edge ]
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  %call56 = call i32 @user_cluster_disconnect(ptr noundef nonnull %conn)
  br label %out

do.body59:                                        ; preds = %if.end21.i, %if.then.i138
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1035) #13
  %call.i.i136 = call zeroext i1 @__kasan_check_read(ptr noundef %oc_this_node, i32 noundef 4) #13
  %45 = ptrtoint ptr %oc_this_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %oc_this_node, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp67 = icmp sgt i32 %46, 0
  br i1 %cmp67, label %do.body59.if.end81_crit_edge, label %if.end69

do.body59.if.end81_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end69:                                         ; preds = %do.body59
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %47 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call71163 = call i32 @prepare_to_wait_event(ptr noundef %oc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i137164 = call zeroext i1 @__kasan_check_read(ptr noundef %oc_this_node, i32 noundef 4) #13
  %48 = ptrtoint ptr %oc_this_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %oc_this_node, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp74165 = icmp sgt i32 %49, 0
  br i1 %cmp74165, label %if.end69.for.end_crit_edge, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  br label %cleanup

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end69.cleanup_crit_edge
  call void @schedule() #13
  %call71 = call i32 @prepare_to_wait_event(ptr noundef %oc_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i137 = call zeroext i1 @__kasan_check_read(ptr noundef %oc_this_node, i32 noundef 4) #13
  %50 = ptrtoint ptr %oc_this_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %oc_this_node, align 8
  %cmp74 = icmp sgt i32 %51, 0
  br i1 %cmp74, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end69.for.end_crit_edge
  call void @finish_wait(ptr noundef %oc_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end81

if.end81:                                         ; preds = %for.end, %do.body59.if.end81_crit_edge, %if.end44.if.end81_crit_edge
  %cc_version = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4
  %52 = load i8, ptr @running_proto.0, align 1
  %53 = ptrtoint ptr %cc_version to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cc_version, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp.not.i = icmp eq i8 %52, %54
  br i1 %cmp.not.i, label %if.end.i140, label %if.end81.do.end87_crit_edge

if.end81.do.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end87

if.end.i140:                                      ; preds = %if.end81
  %55 = load i8, ptr @running_proto.1, align 1
  %pv_minor5.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %pv_minor5.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pv_minor5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp7.i = icmp ugt i8 %55, %57
  br i1 %cmp7.i, label %if.end.i140.do.end87_crit_edge, label %if.end10.i

if.end.i140.do.end87_crit_edge:                   ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end87

if.end10.i:                                       ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp15.i = icmp ult i8 %55, %57
  br i1 %cmp15.i, label %if.then17.i, label %if.end10.i.cleanup99_crit_edge

if.end10.i.cleanup99_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup99

if.then17.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %pv_minor5.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %55, ptr %pv_minor5.i, align 1
  br label %cleanup99

do.end87:                                         ; preds = %if.end.i140.do.end87_crit_edge, %if.end81.do.end87_crit_edge
  %conv = zext i8 %54 to i32
  %pv_minor = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %pv_minor to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pv_minor, align 1
  %conv91 = zext i8 %60 to i32
  %conv92 = zext i8 %52 to i32
  %61 = load i8, ptr @running_proto.1, align 1
  %conv93 = zext i8 %61 to i32
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv91, i32 noundef %conv92, i32 noundef %conv93) #16
  call fastcc void @ocfs2_live_connection_drop(ptr noundef nonnull %call7.i.i)
  br label %if.then97

out:                                              ; preds = %do.end53, %do.body11.out_crit_edge
  %rc.1 = phi i32 [ %ret.0.i145, %do.end53 ], [ %call15, %do.body11.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool96.not = icmp eq i32 %rc.1, 0
  br i1 %tobool96.not, label %out.cleanup99_crit_edge, label %out.if.then97_crit_edge

out.if.then97_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then97

out.cleanup99_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup99

if.then97:                                        ; preds = %out.if.then97_crit_edge, %do.end87, %ocfs2_live_connection_attach.exit, %if.end28.if.then97_crit_edge, %do.end23
  %lc.0158 = phi ptr [ %call7.i.i, %out.if.then97_crit_edge ], [ %call7.i.i, %if.end28.if.then97_crit_edge ], [ null, %do.end87 ], [ %call7.i.i, %ocfs2_live_connection_attach.exit ], [ %call7.i.i, %do.end23 ]
  %rc.1157 = phi i32 [ %rc.1, %out.if.then97_crit_edge ], [ %9, %if.end28.if.then97_crit_edge ], [ -71, %do.end87 ], [ -3, %ocfs2_live_connection_attach.exit ], [ %call15, %do.end23 ]
  call void @kfree(ptr noundef %lc.0158) #13
  br label %cleanup99

cleanup99:                                        ; preds = %if.then97, %out.cleanup99_crit_edge, %if.then17.i, %if.end10.i.cleanup99_crit_edge, %do.end7.cleanup99_crit_edge
  %retval.0 = phi i32 [ -12, %do.end7.cleanup99_crit_edge ], [ %rc.1157, %if.then97 ], [ 0, %out.cleanup99_crit_edge ], [ 0, %if.end10.i.cleanup99_crit_edge ], [ 0, %if.then17.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ops_rv) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdlm) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_cluster_disconnect(ptr noundef %conn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_private.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %cc_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_private.i, align 4
  %oc_version_lksb.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 5
  %cc_lockspace.i.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %2 = ptrtoint ptr %cc_lockspace.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_lockspace.i.i, align 4
  %sb_lkid.i.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %sb_lkid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_lkid.i.i, align 4
  %call.i.i = tail call i32 @dlm_unlock(ptr noundef %3, i32 noundef %5, i32 noundef 0, ptr noundef %oc_version_lksb.i, ptr noundef %conn) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %sb_lkid.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_lkid.i.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, i32 noundef %7, i32 noundef %call.i.i) #16
  br label %version_unlock.exit

if.end.i.i:                                       ; preds = %entry
  %oc_sync_wait.i.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %oc_sync_wait.i.i) #13
  %8 = ptrtoint ptr %oc_version_lksb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oc_version_lksb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65538, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, -65538
  br i1 %cmp.not.i.i, label %if.end.i.i.version_unlock.exit_crit_edge, label %do.end6.i.i

if.end.i.i.version_unlock.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %version_unlock.exit

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %sb_lkid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_lkid.i.i, align 4
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.21, i32 noundef %11, i32 noundef %9) #16
  br label %version_unlock.exit

version_unlock.exit:                              ; preds = %do.end6.i.i, %if.end.i.i.version_unlock.exit_crit_edge, %do.end.i.i
  %12 = ptrtoint ptr %cc_lockspace.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cc_lockspace.i.i, align 4
  %call1 = tail call i32 @dlm_release_lockspace(ptr noundef %13, i32 noundef 2) #13
  %14 = ptrtoint ptr %cc_lockspace.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cc_lockspace.i.i, align 4
  %15 = ptrtoint ptr %cc_private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc_private.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %version_unlock.exit.ocfs2_live_connection_drop.exit_crit_edge

version_unlock.exit.ocfs2_live_connection_drop.exit_crit_edge: ; preds = %version_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_live_connection_drop.exit

if.end.i.i.i:                                     ; preds = %version_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %ocfs2_live_connection_drop.exit

ocfs2_live_connection_drop.exit:                  ; preds = %if.end.i.i.i, %version_unlock.exit.ocfs2_live_connection_drop.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %16, ptr %prev.i3.i.i, align 4
  %oc_conn.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %oc_conn.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %oc_conn.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  tail call void @kfree(ptr noundef %16) #13
  %26 = ptrtoint ptr %cc_private.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cc_private.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_cluster_this_node(ptr nocapture noundef readonly %conn, ptr nocapture noundef writeonly %this_node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_private = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %cc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_private, align 4
  %oc_type = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %oc_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oc_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.end6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %5 = load i32, ptr @ocfs2_control_this_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %oc_this_node = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %oc_this_node, i32 noundef 4) #13
  %6 = ptrtoint ptr %oc_this_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %oc_this_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp slt i32 %7, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %rc.020 = phi i32 [ %7, %if.end6.if.end9_crit_edge ], [ %5, %if.then.if.end9_crit_edge ]
  %8 = ptrtoint ptr %this_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rc.020, ptr %this_node, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %7, %if.end6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_dlm_lock(ptr nocapture noundef readonly %conn, i32 noundef %mode, ptr noundef %lksb, i32 noundef %flags, ptr noundef %name, i32 noundef %namelen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 3
  %0 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_lvbptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %lksb, i32 16
  %2 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %sb_lvbptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %3 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cc_lockspace, align 4
  %or = or i32 %flags, 256
  %call = tail call i32 @dlm_lock(ptr noundef %4, i32 noundef %mode, ptr noundef %lksb, i32 noundef %or, ptr noundef %name, i32 noundef %namelen, i32 noundef 0, ptr noundef nonnull @fsdlm_lock_ast_wrapper, ptr noundef %lksb, ptr noundef nonnull @fsdlm_blocking_ast_wrapper) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_dlm_unlock(ptr nocapture noundef readonly %conn, ptr noundef %lksb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %0 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_lockspace, align 4
  %sb_lkid = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 1
  %2 = ptrtoint ptr %sb_lkid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_lkid, align 4
  %call = tail call i32 @dlm_unlock(ptr noundef %1, i32 noundef %3, i32 noundef %flags, ptr noundef %lksb, ptr noundef %lksb) #13
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @user_dlm_lock_status(ptr nocapture noundef readonly %lksb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lksb, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @user_dlm_lvb_valid(ptr nocapture noundef readonly %lksb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_flags = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 2
  %0 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_flags, align 4
  %2 = lshr i8 %1, 1
  %.lobit = and i8 %2, 1
  %3 = xor i8 %.lobit, 1
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @user_dlm_lvb(ptr noundef %lksb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_lvbptr = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 3
  %0 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_lvbptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %lksb, i32 16
  %2 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %sb_lvbptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %sb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sb_lvbptr, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_plock(ptr nocapture noundef readonly %conn, i64 noundef %ino, ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %cmd, label %entry.if.else_crit_edge [
    i32 1029, label %if.end.thread
    i32 5, label %entry.if.then3_crit_edge
    i32 12, label %entry.if.then3_crit_edge28
  ]

entry.if.then3_crit_edge28:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %1 = ptrtoint ptr %fl_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %fl_type, align 4
  br label %if.else

if.then3:                                         ; preds = %entry.if.then3_crit_edge, %entry.if.then3_crit_edge28
  %cc_lockspace = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %2 = ptrtoint ptr %cc_lockspace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_lockspace, align 4
  %call = tail call i32 @dlm_posix_get(ptr noundef %3, i64 noundef %ino, ptr noundef %file, ptr noundef %fl) #13
  br label %return

if.else:                                          ; preds = %if.end.thread, %entry.if.else_crit_edge
  %cmd.addr.027 = phi i32 [ 6, %if.end.thread ], [ %cmd, %entry.if.else_crit_edge ]
  %fl_type4 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %4 = ptrtoint ptr %fl_type4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fl_type4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp5 = icmp eq i8 %5, 2
  %cc_lockspace8 = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %6 = ptrtoint ptr %cc_lockspace8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc_lockspace8, align 4
  br i1 %cmp5, label %if.then7, label %if.else10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @dlm_posix_unlock(ptr noundef %7, i64 noundef %ino, ptr noundef %file, ptr noundef %fl) #13
  br label %return

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 @dlm_posix_lock(ptr noundef %7, i64 noundef %ino, ptr noundef %file, i32 noundef %cmd.addr.027, ptr noundef %fl) #13
  br label %return

return:                                           ; preds = %if.else10, %if.then7, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call9, %if.then7 ], [ %call12, %if.else10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @user_dlm_dump_lksb(ptr nocapture noundef %lksb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_new_lockspace(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_live_connection_drop(ptr noundef %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %c, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %c, ptr %c, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %c, ptr %prev.i3.i, align 4
  %oc_conn = getelementptr inbounds %struct.ocfs2_live_connection, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %oc_conn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %oc_conn, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  tail call void @kfree(ptr noundef %c) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @user_recover_prep(ptr nocapture noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_recover_slot(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot, align 4
  %slot1 = getelementptr inbounds %struct.dlm_slot, ptr %slot, i32 0, i32 1
  %2 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %1, i32 noundef %3) #16
  %cc_recovery_handler = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %arg, i32 0, i32 6
  %4 = ptrtoint ptr %cc_recovery_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc_recovery_handler, align 4
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot, align 4
  %cc_recovery_data = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %arg, i32 0, i32 7
  %8 = ptrtoint ptr %cc_recovery_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc_recovery_data, align 4
  tail call void %5(i32 noundef %7, ptr noundef %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @user_recover_done(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %slots, i32 noundef %num_slots, i32 noundef %our_slot, i32 noundef %generation) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_private = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %cc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_slots)
  %cmp11 = icmp sgt i32 %num_slots, 0
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %slot = getelementptr %struct.dlm_slot, ptr %slots, i32 %i.012, i32 1
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %our_slot)
  %cmp1 = icmp eq i32 %3, %our_slot
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.dlm_slot, ptr %slots, i32 %i.012
  %oc_this_node = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %oc_this_node, i32 noundef 4) #13
  %6 = ptrtoint ptr %oc_this_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %5, ptr %oc_this_node, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %num_slots
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %oc_our_slot = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %oc_our_slot to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %our_slot, ptr %oc_our_slot, align 4
  %oc_wait = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %oc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @version_lock(ptr noundef %conn, i32 noundef %mode, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_private = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 9
  %0 = ptrtoint ptr %cc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_private, align 4
  %oc_version_lksb = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 5
  %cc_lockspace.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %conn, i32 0, i32 8
  %2 = ptrtoint ptr %cc_lockspace.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_lockspace.i, align 4
  %call1.i = tail call i32 @dlm_lock(ptr noundef %3, i32 noundef %mode, ptr noundef %oc_version_lksb, i32 noundef %flags, ptr noundef nonnull @.str.21, i32 noundef 12, i32 noundef 0, ptr noundef nonnull @sync_wait_cb, ptr noundef %conn, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sb_lkid.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %sb_lkid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_lkid.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %5, i32 noundef %flags, i32 noundef %mode, i32 noundef %call1.i) #16
  br label %sync_lock.exit

if.end.i:                                         ; preds = %entry
  %oc_sync_wait.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %oc_sync_wait.i) #13
  %6 = ptrtoint ptr %oc_version_lksb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oc_version_lksb, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %7, label %do.end7.i [
    i32 0, label %if.end.i.sync_lock.exit_crit_edge
    i32 -11, label %if.end.i.sync_lock.exit_crit_edge2
  ]

if.end.i.sync_lock.exit_crit_edge2:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sync_lock.exit

if.end.i.sync_lock.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sync_lock.exit

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sb_lkid9.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %sb_lkid9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_lkid9.i, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef %10, i32 noundef %flags, i32 noundef %mode, i32 noundef %7) #16
  br label %sync_lock.exit

sync_lock.exit:                                   ; preds = %do.end7.i, %if.end.i.sync_lock.exit_crit_edge, %if.end.i.sync_lock.exit_crit_edge2, %do.end.i
  %retval.0.i = phi i32 [ %call1.i, %do.end.i ], [ %7, %if.end.i.sync_lock.exit_crit_edge ], [ %7, %if.end.i.sync_lock.exit_crit_edge2 ], [ %7, %do.end7.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_wait_cb(ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_private = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %cc_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc_private, align 4
  %oc_sync_wait = getelementptr inbounds %struct.ocfs2_live_connection, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %oc_sync_wait) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_release_lockspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_unlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsdlm_lock_ast_wrapper(ptr noundef %astarg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %astarg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %astarg, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65538, i32 %2)
  %switch = icmp eq i32 %2, -65538
  %lksb_conn = getelementptr inbounds %struct.ocfs2_dlm_lksb, ptr %astarg, i32 0, i32 1
  %3 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lksb_conn, align 4
  %cc_proto = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %cc_proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cc_proto, align 4
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lp_unlock_ast = getelementptr inbounds %struct.ocfs2_locking_protocol, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %lp_unlock_ast to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lp_unlock_ast, align 4
  tail call void %8(ptr noundef %astarg, i32 noundef 0) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lp_lock_ast = getelementptr inbounds %struct.ocfs2_locking_protocol, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %lp_lock_ast to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lp_lock_ast, align 4
  tail call void %10(ptr noundef %astarg) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsdlm_blocking_ast_wrapper(ptr noundef %astarg, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lksb_conn = getelementptr inbounds %struct.ocfs2_dlm_lksb, ptr %astarg, i32 0, i32 1
  %0 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lksb_conn, align 4
  %cc_proto = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cc_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc_proto, align 4
  %lp_blocking_ast = getelementptr inbounds %struct.ocfs2_locking_protocol, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %lp_blocking_ast to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp_blocking_ast, align 4
  tail call void %5(ptr noundef %astarg, i32 noundef %level) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_posix_get(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_posix_unlock(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_posix_lock(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_control_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @.str.33, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %1)
  %cmp1 = icmp sgt i64 %1, 3
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %op_state.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %op_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %op_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_control_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %p.i.i = alloca ptr, align 4
  %ptr.i54.i = alloca ptr, align 4
  %ptr.i.i = alloca ptr, align 4
  %msg.i = alloca %union.ocfs2_control_message, align 1
  %kbuf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %op_state.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %op_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_state.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %3, label %do.body [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %entry.sw.bb3_crit_edge
    i32 3, label %entry.sw.bb3_crit_edge14
  ]

entry.sw.bb3_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kbuf.i) #13
  %5 = ptrtoint ptr %kbuf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %kbuf.i, align 4
  %call.i = call fastcc i32 @ocfs2_control_cfu(ptr noundef nonnull %kbuf.i, i32 noundef 4, ptr noundef %buf, i32 noundef %count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb1.ocfs2_control_validate_protocol.exit_crit_edge

sw.bb1.ocfs2_control_validate_protocol.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_validate_protocol.exit

if.end.i:                                         ; preds = %sw.bb1
  %6 = ptrtoint ptr %kbuf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %lhsv.i = load i32, ptr %kbuf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1412444426, i32 %lhsv.i)
  %.not.i = icmp eq i32 %lhsv.i, 1412444426
  br i1 %.not.i, label %if.end5.i, label %if.end.i.ocfs2_control_validate_protocol.exit_crit_edge

if.end.i.ocfs2_control_validate_protocol.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_validate_protocol.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i, align 4
  %op_state.i.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %op_state.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %op_state.i.i, align 4
  br label %ocfs2_control_validate_protocol.exit

ocfs2_control_validate_protocol.exit:             ; preds = %if.end5.i, %if.end.i.ocfs2_control_validate_protocol.exit_crit_edge, %sw.bb1.ocfs2_control_validate_protocol.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end5.i ], [ %call.i, %sw.bb1.ocfs2_control_validate_protocol.exit_crit_edge ], [ -22, %if.end.i.ocfs2_control_validate_protocol.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kbuf.i) #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge14
  call void @llvm.lifetime.start.p0(i64 47, ptr nonnull %msg.i) #13
  %10 = call ptr @memset(ptr %msg.i, i32 0, i32 47)
  %call.i12 = call fastcc i32 @ocfs2_control_cfu(ptr noundef nonnull %msg.i, i32 noundef %count, ptr noundef %buf, i32 noundef %count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool15.not.i = icmp eq i32 %call.i12, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %sw.bb3.ocfs2_control_message.exit_crit_edge

sw.bb3.ocfs2_control_message.exit_crit_edge:      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_message.exit

if.end17.i:                                       ; preds = %sw.bb3
  %11 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %count, label %if.end17.i.ocfs2_control_message.exit_crit_edge [
    i32 14, label %land.lhs.true.i
    i32 11, label %land.lhs.true23.i
    i32 47, label %land.lhs.true31.i
  ]

if.end17.i.ocfs2_control_message.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_message.exit

land.lhs.true.i:                                  ; preds = %if.end17.i
  %bcmp53.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %msg.i, ptr noundef nonnull dereferenceable(4) @.str.37, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53.i)
  %tobool19.not.i = icmp eq i32 %bcmp53.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %land.lhs.true.i.ocfs2_control_message.exit_crit_edge

land.lhs.true.i.ocfs2_control_message.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_message.exit

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i.i) #13
  %12 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ptr.i.i, align 4
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data.i, align 4
  %op_state.i.i.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %op_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %op_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i.i = icmp eq i32 %16, 2
  br i1 %cmp.not.i.i, label %if.end3.i.i, label %if.then20.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge

if.then20.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setnode_msg.exit.i

if.end3.i.i:                                      ; preds = %if.then20.i
  %space.i.i = getelementptr inbounds %struct.ocfs2_control_message_setn, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %space.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %space.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %cmp4.not.i.i = icmp eq i8 %18, 32
  br i1 %cmp4.not.i.i, label %lor.lhs.false.i.i, label %if.end3.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge

if.end3.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setnode_msg.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end3.i.i
  %newline.i.i = getelementptr inbounds %struct.ocfs2_control_message_setn, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %newline.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %newline.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp7.not.i.i = icmp eq i8 %20, 10
  br i1 %cmp7.not.i.i, label %if.end10.i.i, label %lor.lhs.false.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge

lor.lhs.false.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setnode_msg.exit.i

if.end10.i.i:                                     ; preds = %lor.lhs.false.i.i
  %21 = ptrtoint ptr %newline.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %newline.i.i, align 1
  %22 = ptrtoint ptr %space.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %space.i.i, align 1
  %nodestr.i.i = getelementptr inbounds %struct.ocfs2_control_message_setn, ptr %msg.i, i32 0, i32 2
  %call14.i.i = call i32 @simple_strtol(ptr noundef %nodestr.i.i, ptr noundef nonnull %ptr.i.i, i32 noundef 16) #13
  %23 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %24, null
  br i1 %tobool15.not.i.i, label %if.end10.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge, label %lor.lhs.false16.i.i

if.end10.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setnode_msg.exit.i

lor.lhs.false16.i.i:                              ; preds = %if.end10.i.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %lor.lhs.false16.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge

lor.lhs.false16.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge: ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setnode_msg.exit.i

if.end20.i.i:                                     ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %call14.i.i)
  %27 = icmp ugt i32 %call14.i.i, 2147483646
  br i1 %27, label %if.end20.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge, label %if.end33.i.i

if.end20.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setnode_msg.exit.i

if.end33.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %op_this_node.i.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %op_this_node.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call14.i.i, ptr %op_this_node.i.i, align 4
  %call34.i.i = call fastcc i32 @ocfs2_control_install_private(ptr noundef %file) #13
  br label %ocfs2_control_do_setnode_msg.exit.i

ocfs2_control_do_setnode_msg.exit.i:              ; preds = %if.end33.i.i, %if.end20.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge, %lor.lhs.false16.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge, %if.end10.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge, %lor.lhs.false.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge, %if.end3.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge, %if.then20.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call34.i.i, %if.end33.i.i ], [ -22, %if.then20.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge ], [ -22, %if.end3.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false16.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge ], [ -22, %if.end10.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge ], [ -34, %if.end20.i.i.ocfs2_control_do_setnode_msg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i.i) #13
  br label %out.i

land.lhs.true23.i:                                ; preds = %if.end17.i
  %bcmp52.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %msg.i, ptr noundef nonnull dereferenceable(4) @.str.38, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52.i)
  %tobool26.not.i = icmp eq i32 %bcmp52.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %land.lhs.true23.i.ocfs2_control_message.exit_crit_edge

land.lhs.true23.i.ocfs2_control_message.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_message.exit

if.then27.i:                                      ; preds = %land.lhs.true23.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i54.i) #13
  %29 = ptrtoint ptr %ptr.i54.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ptr.i54.i, align 4
  %30 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data.i, align 4
  %op_state.i.i56.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %op_state.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %op_state.i.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.not.i57.i = icmp eq i32 %33, 2
  br i1 %cmp.not.i57.i, label %if.end3.i62.i, label %if.then27.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge

if.then27.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

if.end3.i62.i:                                    ; preds = %if.then27.i
  %space1.i.i = getelementptr inbounds %struct.ocfs2_control_message_setv, ptr %msg.i, i32 0, i32 1
  %34 = ptrtoint ptr %space1.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %space1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %35)
  %cmp4.not.i61.i = icmp eq i8 %35, 32
  br i1 %cmp4.not.i61.i, label %lor.lhs.false.i64.i, label %if.end3.i62.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge

if.end3.i62.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %if.end3.i62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

lor.lhs.false.i64.i:                              ; preds = %if.end3.i62.i
  %space2.i.i = getelementptr inbounds %struct.ocfs2_control_message_setv, ptr %msg.i, i32 0, i32 3
  %36 = ptrtoint ptr %space2.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %space2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %37)
  %cmp7.not.i63.i = icmp eq i8 %37, 32
  br i1 %cmp7.not.i63.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i64.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge

lor.lhs.false.i64.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %lor.lhs.false.i64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false.i64.i
  %newline.i65.i = getelementptr inbounds %struct.ocfs2_control_message_setv, ptr %msg.i, i32 0, i32 5
  %38 = ptrtoint ptr %newline.i65.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %newline.i65.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp11.not.i.i = icmp eq i8 %39, 10
  br i1 %cmp11.not.i.i, label %if.end14.i.i, label %lor.lhs.false9.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge

lor.lhs.false9.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

if.end14.i.i:                                     ; preds = %lor.lhs.false9.i.i
  %40 = ptrtoint ptr %newline.i65.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %newline.i65.i, align 1
  %41 = ptrtoint ptr %space2.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %space2.i.i, align 1
  %42 = ptrtoint ptr %space1.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %space1.i.i, align 1
  %major18.i.i = getelementptr inbounds %struct.ocfs2_control_message_setv, ptr %msg.i, i32 0, i32 2
  %call20.i.i = call i32 @simple_strtol(ptr noundef %major18.i.i, ptr noundef nonnull %ptr.i54.i, i32 noundef 16) #13
  %43 = ptrtoint ptr %ptr.i54.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ptr.i54.i, align 4
  %tobool21.not.i.i = icmp eq ptr %44, null
  br i1 %tobool21.not.i.i, label %if.end14.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, label %lor.lhs.false22.i.i

if.end14.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

lor.lhs.false22.i.i:                              ; preds = %if.end14.i.i
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool24.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool24.not.i.i, label %if.end26.i.i, label %lor.lhs.false22.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge

lor.lhs.false22.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

if.end26.i.i:                                     ; preds = %lor.lhs.false22.i.i
  %minor27.i.i = getelementptr inbounds %struct.ocfs2_control_message_setv, ptr %msg.i, i32 0, i32 4
  %call29.i.i = call i32 @simple_strtol(ptr noundef %minor27.i.i, ptr noundef nonnull %ptr.i54.i, i32 noundef 16) #13
  %47 = ptrtoint ptr %ptr.i54.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptr.i54.i, align 4
  %tobool30.not.i.i = icmp eq ptr %48, null
  br i1 %tobool30.not.i.i, label %if.end26.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, label %lor.lhs.false31.i.i

if.end26.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

lor.lhs.false31.i.i:                              ; preds = %if.end26.i.i
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool33.not.i.i = icmp eq i8 %50, 0
  br i1 %tobool33.not.i.i, label %if.end35.i.i, label %lor.lhs.false31.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge

lor.lhs.false31.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

if.end35.i.i:                                     ; preds = %lor.lhs.false31.i.i
  %call20.off.i.i = add i32 %call20.i.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20.off.i.i)
  %switch.i.i = icmp ult i32 %call20.off.i.i, 2
  br i1 %switch.i.i, label %if.end35.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, label %lor.lhs.false41.i.i

if.end35.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

lor.lhs.false41.i.i:                              ; preds = %if.end35.i.i
  %51 = add i32 %call20.i.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %51)
  %52 = icmp ult i32 %51, -255
  %call29.off.i.i = add i32 %call29.i.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call29.off.i.i)
  %switch105.i.i = icmp ult i32 %call29.off.i.i, 2
  %or.cond106.i.i = select i1 %52, i1 true, i1 %switch105.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call29.i.i)
  %53 = icmp ugt i32 %call29.i.i, 255
  %or.cond.i.i = select i1 %or.cond106.i.i, i1 true, i1 %53
  br i1 %or.cond.i.i, label %lor.lhs.false41.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, label %if.end61.i.i

lor.lhs.false41.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %lor.lhs.false41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

if.end61.i.i:                                     ; preds = %lor.lhs.false41.i.i
  %54 = load i8, ptr getelementptr inbounds (%struct.ocfs2_stack_plugin, ptr @ocfs2_user_plugin, i32 0, i32 5), align 4
  %conv62.i.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i.i, i32 %conv62.i.i)
  %cmp63.not.i.i = icmp eq i32 %call20.i.i, %conv62.i.i
  br i1 %cmp63.not.i.i, label %lor.lhs.false65.i.i, label %if.end61.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge

if.end61.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

lor.lhs.false65.i.i:                              ; preds = %if.end61.i.i
  %55 = load i8, ptr getelementptr inbounds (%struct.ocfs2_stack_plugin, ptr @ocfs2_user_plugin, i32 0, i32 5, i32 1), align 1
  %conv66.i.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i.i, i32 %conv66.i.i)
  %cmp67.i.i = icmp ugt i32 %call29.i.i, %conv66.i.i
  br i1 %cmp67.i.i, label %lor.lhs.false65.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, label %if.end70.i.i

lor.lhs.false65.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge: ; preds = %lor.lhs.false65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_setversion_msg.exit.i

if.end70.i.i:                                     ; preds = %lor.lhs.false65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv71.i.i = trunc i32 %call20.i.i to i8
  %op_proto.i.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %31, i32 0, i32 3
  %56 = ptrtoint ptr %op_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv71.i.i, ptr %op_proto.i.i, align 4
  %conv73.i.i = trunc i32 %call29.i.i to i8
  %pv_minor75.i.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %31, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %pv_minor75.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv73.i.i, ptr %pv_minor75.i.i, align 1
  %call76.i.i = call fastcc i32 @ocfs2_control_install_private(ptr noundef %file) #13
  br label %ocfs2_control_do_setversion_msg.exit.i

ocfs2_control_do_setversion_msg.exit.i:           ; preds = %if.end70.i.i, %lor.lhs.false65.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %if.end61.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %lor.lhs.false41.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %if.end35.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %lor.lhs.false31.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %if.end26.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %lor.lhs.false22.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %if.end14.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %lor.lhs.false9.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %lor.lhs.false.i64.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %if.end3.i62.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge, %if.then27.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge
  %retval.0.i66.i = phi i32 [ %call76.i.i, %if.end70.i.i ], [ -22, %if.then27.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false9.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false.i64.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %if.end3.i62.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false22.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %if.end14.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false31.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %if.end26.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -34, %if.end35.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -34, %lor.lhs.false41.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false65.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ], [ -22, %if.end61.i.i.ocfs2_control_do_setversion_msg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i54.i) #13
  br label %out.i

land.lhs.true31.i:                                ; preds = %if.end17.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %msg.i, ptr noundef nonnull dereferenceable(4) @.str.39, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool34.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %land.lhs.true31.i.ocfs2_control_message.exit_crit_edge

land.lhs.true31.i.ocfs2_control_message.exit_crit_edge: ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_message.exit

if.then35.i:                                      ; preds = %land.lhs.true31.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i.i) #13
  %58 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %p.i.i, align 4
  %59 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %private_data.i, align 4
  %op_state.i.i67.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %op_state.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %op_state.i.i67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp.not.i68.i = icmp eq i32 %62, 3
  br i1 %cmp.not.i68.i, label %if.end3.i74.i, label %if.then35.i.ocfs2_control_do_down_msg.exit.i_crit_edge

if.then35.i.ocfs2_control_do_down_msg.exit.i_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_down_msg.exit.i

if.end3.i74.i:                                    ; preds = %if.then35.i
  %space1.i72.i = getelementptr inbounds %struct.ocfs2_control_message_down, ptr %msg.i, i32 0, i32 1
  %63 = ptrtoint ptr %space1.i72.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %space1.i72.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %64)
  %cmp4.not.i73.i = icmp eq i8 %64, 32
  br i1 %cmp4.not.i73.i, label %lor.lhs.false.i77.i, label %if.end3.i74.i.ocfs2_control_do_down_msg.exit.i_crit_edge

if.end3.i74.i.ocfs2_control_do_down_msg.exit.i_crit_edge: ; preds = %if.end3.i74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_down_msg.exit.i

lor.lhs.false.i77.i:                              ; preds = %if.end3.i74.i
  %space2.i75.i = getelementptr inbounds %struct.ocfs2_control_message_down, ptr %msg.i, i32 0, i32 3
  %65 = ptrtoint ptr %space2.i75.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %space2.i75.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %66)
  %cmp7.not.i76.i = icmp eq i8 %66, 32
  br i1 %cmp7.not.i76.i, label %lor.lhs.false9.i80.i, label %lor.lhs.false.i77.i.ocfs2_control_do_down_msg.exit.i_crit_edge

lor.lhs.false.i77.i.ocfs2_control_do_down_msg.exit.i_crit_edge: ; preds = %lor.lhs.false.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_down_msg.exit.i

lor.lhs.false9.i80.i:                             ; preds = %lor.lhs.false.i77.i
  %newline.i78.i = getelementptr inbounds %struct.ocfs2_control_message_down, ptr %msg.i, i32 0, i32 5
  %67 = ptrtoint ptr %newline.i78.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %newline.i78.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %68)
  %cmp11.not.i79.i = icmp eq i8 %68, 10
  br i1 %cmp11.not.i79.i, label %if.end14.i82.i, label %lor.lhs.false9.i80.i.ocfs2_control_do_down_msg.exit.i_crit_edge

lor.lhs.false9.i80.i.ocfs2_control_do_down_msg.exit.i_crit_edge: ; preds = %lor.lhs.false9.i80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_down_msg.exit.i

if.end14.i82.i:                                   ; preds = %lor.lhs.false9.i80.i
  %69 = ptrtoint ptr %newline.i78.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %newline.i78.i, align 1
  %70 = ptrtoint ptr %space2.i75.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %space2.i75.i, align 1
  %71 = ptrtoint ptr %space1.i72.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %space1.i72.i, align 1
  %nodestr.i81.i = getelementptr inbounds %struct.ocfs2_control_message_down, ptr %msg.i, i32 0, i32 4
  %call19.i.i = call i32 @simple_strtol(ptr noundef %nodestr.i81.i, ptr noundef nonnull %p.i.i, i32 noundef 16) #13
  %72 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %p.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %73, null
  br i1 %tobool20.not.i.i, label %if.end14.i82.i.ocfs2_control_do_down_msg.exit.i_crit_edge, label %lor.lhs.false21.i.i

if.end14.i82.i.ocfs2_control_do_down_msg.exit.i_crit_edge: ; preds = %if.end14.i82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_down_msg.exit.i

lor.lhs.false21.i.i:                              ; preds = %if.end14.i82.i
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool23.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %lor.lhs.false21.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge

lor.lhs.false21.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge: ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_down_msg.exit.i

if.end25.i.i:                                     ; preds = %lor.lhs.false21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %call19.i.i)
  %76 = icmp ugt i32 %call19.i.i, 2147483646
  br i1 %76, label %if.end25.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge, label %if.end38.i.i

if.end25.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ocfs2_control_do_down_msg.exit.i

if.end38.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %uuid.i.i = getelementptr inbounds %struct.ocfs2_control_message_down, ptr %msg.i, i32 0, i32 2
  call fastcc void @ocfs2_control_send_down(ptr noundef %uuid.i.i, i32 noundef %call19.i.i) #13
  br label %ocfs2_control_do_down_msg.exit.i

ocfs2_control_do_down_msg.exit.i:                 ; preds = %if.end38.i.i, %if.end25.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge, %lor.lhs.false21.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge, %if.end14.i82.i.ocfs2_control_do_down_msg.exit.i_crit_edge, %lor.lhs.false9.i80.i.ocfs2_control_do_down_msg.exit.i_crit_edge, %lor.lhs.false.i77.i.ocfs2_control_do_down_msg.exit.i_crit_edge, %if.end3.i74.i.ocfs2_control_do_down_msg.exit.i_crit_edge, %if.then35.i.ocfs2_control_do_down_msg.exit.i_crit_edge
  %retval.0.i83.i = phi i32 [ 0, %if.end38.i.i ], [ -22, %if.then35.i.ocfs2_control_do_down_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false9.i80.i.ocfs2_control_do_down_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false.i77.i.ocfs2_control_do_down_msg.exit.i_crit_edge ], [ -22, %if.end3.i74.i.ocfs2_control_do_down_msg.exit.i_crit_edge ], [ -22, %lor.lhs.false21.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge ], [ -22, %if.end14.i82.i.ocfs2_control_do_down_msg.exit.i_crit_edge ], [ -34, %if.end25.i.i.ocfs2_control_do_down_msg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i) #13
  br label %out.i

out.i:                                            ; preds = %ocfs2_control_do_down_msg.exit.i, %ocfs2_control_do_setversion_msg.exit.i, %ocfs2_control_do_setnode_msg.exit.i
  %ret.0.i = phi i32 [ %retval.0.i83.i, %ocfs2_control_do_down_msg.exit.i ], [ %retval.0.i66.i, %ocfs2_control_do_setversion_msg.exit.i ], [ %retval.0.i.i, %ocfs2_control_do_setnode_msg.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool41.not.i = icmp eq i32 %ret.0.i, 0
  %spec.select.i = select i1 %tobool41.not.i, i32 %count, i32 %ret.0.i
  br label %ocfs2_control_message.exit

ocfs2_control_message.exit:                       ; preds = %out.i, %land.lhs.true31.i.ocfs2_control_message.exit_crit_edge, %land.lhs.true23.i.ocfs2_control_message.exit_crit_edge, %land.lhs.true.i.ocfs2_control_message.exit_crit_edge, %if.end17.i.ocfs2_control_message.exit_crit_edge, %sw.bb3.ocfs2_control_message.exit_crit_edge
  %77 = phi i32 [ -22, %land.lhs.true23.i.ocfs2_control_message.exit_crit_edge ], [ -22, %land.lhs.true.i.ocfs2_control_message.exit_crit_edge ], [ -22, %land.lhs.true31.i.ocfs2_control_message.exit_crit_edge ], [ -22, %if.end17.i.ocfs2_control_message.exit_crit_edge ], [ %call.i12, %sw.bb3.ocfs2_control_message.exit_crit_edge ], [ %spec.select.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 47, ptr nonnull %msg.i) #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 529, 0\0A.popsection", ""() #13, !srcloc !131
  unreachable

sw.epilog:                                        ; preds = %ocfs2_control_message.exit, %ocfs2_control_validate_protocol.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %77, %ocfs2_control_message.exit ], [ %retval.0.i, %ocfs2_control_validate_protocol.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_control_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_this_node = getelementptr inbounds %struct.ocfs2_control_private, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %op_this_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %op_this_node, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %private_data, align 4
  %3 = load ptr, ptr @ocfs2_control_private_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ocfs2_control_private_list, ptr noundef %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ocfs2_control_private_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @ocfs2_control_private_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_control_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %op_state.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %op_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ocfs2_control_opened, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr nonnull @ocfs2_control_opened, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ocfs2_control_opened, ptr nonnull @ocfs2_control_opened, i32 1, ptr nonnull elementtype(i32) @ocfs2_control_opened) #13, !srcloc !133
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then2:                                         ; preds = %if.end
  %7 = load volatile ptr, ptr @ocfs2_live_connection_list, align 4
  %cmp.i.not = icmp eq ptr %7, @ocfs2_live_connection_list
  br i1 %cmp.i.not, label %if.then2.if.end6_crit_edge, label %do.end

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #16
  tail call void @emergency_restart() #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then2.if.end6_crit_edge
  store i32 -1, ptr @ocfs2_control_this_node, align 4
  store i8 0, ptr @running_proto.0, align 1
  store i8 0, ptr @running_proto.1, align 1
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %call.i.i12 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #13
  br i1 %call.i.i12, label %if.end.i.i, label %out.list_del_init.exit_crit_edge

out.list_del_init.exit_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %out.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %private_data, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  tail call void @kfree(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_control_cfu(ptr noundef %target, i32 noundef %target_len, ptr noundef %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %count, i32 %target_len)
  %cmp.not = icmp ne i32 %count, %target_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %count)
  %cmp1 = icmp ugt i32 %count, 47
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.then.i.i.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %target, i32 noundef %count, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #19, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !136

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %target, i32 noundef %count) #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !118) #13
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !137
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !139
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %target, ptr noundef %buf, i32 noundef %count) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #13, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !139
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.return_crit_edge, label %if.then11.i.i, !prof !136

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %target, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %return

return:                                           ; preds = %if.then11.i.i, %if.end.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end.i.i.return_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_control_install_private(ptr nocapture noundef readonly %file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %op_state = getelementptr inbounds %struct.ocfs2_control_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !136

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #13, !srcloc !140
  unreachable

do.end7:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %op_this_node = getelementptr inbounds %struct.ocfs2_control_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %op_this_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op_this_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp slt i32 %5, 0
  br i1 %cmp8, label %do.end7.if.end15_crit_edge, label %if.else

do.end7.if.end15_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.else:                                          ; preds = %do.end7
  %6 = load i32, ptr @ocfs2_control_this_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp slt i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp12.not = icmp eq i32 %6, %5
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %if.else.if.end15_crit_edge, label %if.else.out_unlock.thread_crit_edge

if.else.out_unlock.thread_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.thread

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %do.end7.if.end15_crit_edge
  %set_p.0 = phi i32 [ 1, %if.else.if.end15_crit_edge ], [ 0, %do.end7.if.end15_crit_edge ]
  %op_proto = getelementptr inbounds %struct.ocfs2_control_private, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %op_proto to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %op_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end15.out_unlock.thread_crit_edge, label %if.else18

if.end15.out_unlock.thread_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.thread

if.else18:                                        ; preds = %if.end15
  %9 = load volatile ptr, ptr @ocfs2_live_connection_list, align 4
  %cmp.i.not = icmp eq ptr %9, @ocfs2_live_connection_list
  br i1 %cmp.i.not, label %if.end33, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.else18
  %10 = load i8, ptr @running_proto.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %8)
  %cmp24.not = icmp eq i8 %10, %8
  br i1 %cmp24.not, label %lor.lhs.false, label %land.lhs.true20.out_unlock.thread_crit_edge

land.lhs.true20.out_unlock.thread_crit_edge:      ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.thread

lor.lhs.false:                                    ; preds = %land.lhs.true20
  %11 = load i8, ptr @running_proto.1, align 1
  %pv_minor = getelementptr inbounds %struct.ocfs2_control_private, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %pv_minor to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pv_minor, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp29.not = icmp ne i8 %11, %13
  %brmerge = select i1 %cmp29.not, i1 true, i1 %cmp8
  %.mux62 = select i1 %cmp29.not, i32 -22, i32 0
  %set_p.0.mux = select i1 %cmp29.not, i32 %set_p.0, i32 0
  br i1 %brmerge, label %lor.lhs.false.out_unlock_crit_edge, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end33:                                         ; preds = %if.else18
  br i1 %cmp8, label %if.end33.out_unlock.thread_crit_edge, label %if.end33.if.then35_crit_edge

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then35

if.end33.out_unlock.thread_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.thread

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %lor.lhs.false.if.then35_crit_edge
  store i32 %5, ptr @ocfs2_control_this_node, align 4
  store i8 %8, ptr @running_proto.0, align 1
  %pv_minor40 = getelementptr inbounds %struct.ocfs2_control_private, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %pv_minor40 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pv_minor40, align 1
  store i8 %15, ptr @running_proto.1, align 1
  br label %out_unlock

out_unlock.thread:                                ; preds = %if.end33.out_unlock.thread_crit_edge, %land.lhs.true20.out_unlock.thread_crit_edge, %if.end15.out_unlock.thread_crit_edge, %if.else.out_unlock.thread_crit_edge
  %rc.0.ph = phi i32 [ 0, %if.end15.out_unlock.thread_crit_edge ], [ -22, %land.lhs.true20.out_unlock.thread_crit_edge ], [ -22, %if.else.out_unlock.thread_crit_edge ], [ 0, %if.end33.out_unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  br label %if.end46

out_unlock:                                       ; preds = %if.then35, %lor.lhs.false.out_unlock_crit_edge
  %tobool42.not = phi i1 [ false, %if.then35 ], [ %cmp29.not, %lor.lhs.false.out_unlock_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.then35 ], [ %.mux62, %lor.lhs.false.out_unlock_crit_edge ]
  %set_p.2 = phi i32 [ 1, %if.then35 ], [ %set_p.0.mux, %lor.lhs.false.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_p.2)
  %tobool44.not = icmp eq i32 %set_p.2, 0
  %or.cond59 = or i1 %tobool42.not, %tobool44.not
  br i1 %or.cond59, label %out_unlock.if.end46_crit_edge, label %if.then45

out_unlock.if.end46_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then45:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ocfs2_control_opened, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @ocfs2_control_opened, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ocfs2_control_opened, ptr nonnull @ocfs2_control_opened, i32 1, ptr nonnull elementtype(i32) @ocfs2_control_opened) #13, !srcloc !141
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 4
  %op_state.i = getelementptr inbounds %struct.ocfs2_control_private, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %op_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %op_state.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %out_unlock.if.end46_crit_edge, %out_unlock.thread
  %rc.068 = phi i32 [ %rc.0.ph, %out_unlock.thread ], [ %rc.0, %if.then45 ], [ %rc.0, %out_unlock.if.end46_crit_edge ]
  ret i32 %rc.068
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_control_send_down(ptr nocapture noundef readonly %uuid, i32 noundef %nodenum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ocfs2_control_lock, i32 noundef 0) #13
  %call.i = tail call i32 @strlen(ptr noundef %uuid) #18
  %call1.i = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @ocfs2_control_lock) #13
  br i1 %call1.i, label %for.cond.preheader.i, label %do.body4.i, !prof !136

for.cond.preheader.i:                             ; preds = %entry
  %c.029.i = load ptr, ptr @ocfs2_live_connection_list, align 4
  %cmp.not30.i = icmp eq ptr %c.029.i, @ocfs2_live_connection_list
  br i1 %cmp.not30.i, label %for.cond.preheader.i.if.end12_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end12_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #13, !srcloc !142
  unreachable

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %c.031.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.029.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %oc_conn.i = getelementptr inbounds %struct.ocfs2_live_connection, ptr %c.031.i, i32 0, i32 1
  %0 = ptrtoint ptr %oc_conn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oc_conn.i, align 4
  %cc_namelen.i = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cc_namelen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cc_namelen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call.i)
  %cmp12.i = icmp eq i32 %3, %call.i
  br i1 %cmp12.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call14.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef %uuid, i32 noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %ocfs2_connection_find.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %c.031.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.0.i = load ptr, ptr %c.031.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, @ocfs2_live_connection_list
  br i1 %cmp.not.i, label %for.inc.i.if.end12_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

ocfs2_connection_find.exit:                       ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %c.031.i, null
  br i1 %tobool.not, label %ocfs2_connection_find.exit.if.end12_crit_edge, label %do.body

ocfs2_connection_find.exit.if.end12_crit_edge:    ; preds = %ocfs2_connection_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

do.body:                                          ; preds = %ocfs2_connection_find.exit
  %oc_conn.i.le = getelementptr inbounds %struct.ocfs2_live_connection, ptr %c.031.i, i32 0, i32 1
  %5 = ptrtoint ptr %oc_conn.i.le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oc_conn.i.le, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %do.body4, label %do.end9, !prof !129

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stack_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #13, !srcloc !143
  unreachable

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %cc_recovery_handler = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %cc_recovery_handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cc_recovery_handler, align 4
  %cc_recovery_data = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %cc_recovery_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cc_recovery_data, align 4
  tail call void %8(i32 noundef %nodenum, ptr noundef %10) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %ocfs2_connection_find.exit.if.end12_crit_edge, %for.inc.i.if.end12_crit_edge, %for.cond.preheader.i.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ocfs2_control_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_stack_glue_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/stack_user.c", i32 1120, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../fs/ocfs2/stack_user.c", i32 1121, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../fs/ocfs2/stack_user.c", i32 1122, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ocfs2_stack_user__227_1123_ocfs2_user_plugin_init6, !8, !"__initcall__kmod_ocfs2_stack_user__227_1123_ocfs2_user_plugin_init6", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/stack_user.c", i32 1123, i32 1}
!9 = !{ptr @__exitcall_ocfs2_user_plugin_exit, !10, !"__exitcall_ocfs2_user_plugin_exit", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/stack_user.c", i32 1124, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ocfs2/stack_user.c", i32 1094, i32 13}
!13 = !{ptr @ocfs2_user_plugin, !14, !"ocfs2_user_plugin", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/stack_user.c", i32 1093, i32 34}
!15 = !{ptr @ocfs2_user_plugin_ops, !16, !"ocfs2_user_plugin_ops", i1 false, i1 false}
!16 = !{!"../fs/ocfs2/stack_user.c", i32 1080, i32 38}
!17 = !{ptr @user_cluster_connect.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/stack_user.c", i32 993, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ocfs2/stack_user.c", i32 1004, i32 4}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @user_cluster_connect._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @user_cluster_connect._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ocfs2/stack_user.c", i32 1014, i32 3}
!28 = !{ptr @user_cluster_connect._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @user_cluster_connect._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ocfs2/stack_user.c", i32 1030, i32 4}
!32 = !{ptr @user_cluster_connect._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @user_cluster_connect._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/stack_user.c", i32 1043, i32 3}
!36 = !{ptr @user_cluster_connect._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @user_cluster_connect._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ocfs2_ls_ops, !42, !"ocfs2_ls_ops", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/stack_user.c", i32 965, i32 39}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/stack_user.c", i32 941, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @user_recover_slot._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @user_recover_slot._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ocfs2/stack_user.c", i32 216, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ocfs2_live_connection_attach._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ocfs2_live_connection_attach._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/stack_user.c", i32 169, i32 8}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ocfs2_control_lock, !54, !"ocfs2_control_lock", i1 false, i1 false}
!57 = !{ptr @ocfs2_control_opened, !58, !"ocfs2_control_opened", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/stack_user.c", i32 163, i32 17}
!59 = !{ptr @ocfs2_live_connection_list, !60, !"ocfs2_live_connection_list", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/stack_user.c", i32 167, i32 8}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/stack_user.c", i32 876, i32 26}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/stack_user.c", i32 853, i32 3}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sync_lock._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sync_lock._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/stack_user.c", i32 863, i32 3}
!70 = !{ptr @sync_lock._entry.24, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @sync_lock._entry_ptr.26, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"running_proto", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/stack_user.c", i32 165, i32 38}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ocfs2/stack_user.c", i32 827, i32 3}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sync_unlock._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sync_unlock._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/stack_user.c", i32 835, i32 3}
!81 = !{ptr @sync_unlock._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sync_unlock._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @ocfs2_control_this_node, !84, !"ocfs2_control_this_node", i1 false, i1 false}
!84 = !{!"../fs/ocfs2/stack_user.c", i32 164, i32 12}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ocfs2/stack_user.c", i32 626, i32 11}
!87 = !{ptr @ocfs2_control_device, !88, !"ocfs2_control_device", i1 false, i1 false}
!88 = !{!"../fs/ocfs2/stack_user.c", i32 624, i32 26}
!89 = !{ptr @ocfs2_control_fops, !90, !"ocfs2_control_fops", i1 false, i1 false}
!90 = !{!"../fs/ocfs2/stack_user.c", i32 615, i32 37}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ocfs2/stack_user.c", i32 549, i32 4}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!95 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ocfs2/stack_user.c", i32 488, i32 24}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ocfs2/stack_user.c", i32 492, i32 22}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/stack_user.c", i32 496, i32 22}
!106 = !{ptr @ocfs2_control_private_list, !107, !"ocfs2_control_private_list", i1 false, i1 false}
!107 = !{!"../fs/ocfs2/stack_user.c", i32 168, i32 8}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ocfs2/stack_user.c", i32 572, i32 4}
!110 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ocfs2_control_release._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @ocfs2_control_release._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ocfs2/stack_user.c", i32 638, i32 3}
!115 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ocfs2_control_init._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ocfs2_control_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2153476138, i64 2153476624, i64 2153476175, i64 2153476231, i64 2153476265, i64 2153476289, i64 2153476330, i64 2153476351, i64 2153476379, i64 2153476413}
!131 = !{i64 2153462505, i64 2153462991, i64 2153462542, i64 2153462598, i64 2153462632, i64 2153462656, i64 2153462697, i64 2153462718, i64 2153462746, i64 2153462780}
!132 = !{i64 2148456063}
!133 = !{i64 2148370772, i64 2148370804, i64 2148370833, i64 2148370867, i64 2148370898, i64 2148370921}
!134 = !{i64 2148456292}
!135 = !{i64 2152432204, i64 2152432229}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 4927759}
!138 = !{i64 4927956}
!139 = !{i64 2152413189}
!140 = !{i64 2153459725, i64 2153460211, i64 2153459762, i64 2153459818, i64 2153459852, i64 2153459876, i64 2153459917, i64 2153459938, i64 2153459966, i64 2153460000}
!141 = !{i64 2148367587, i64 2148367613, i64 2148367642, i64 2148367676, i64 2148367707, i64 2148367730}
!142 = !{i64 2153451297, i64 2153451783, i64 2153451334, i64 2153451390, i64 2153451424, i64 2153451448, i64 2153451489, i64 2153451510, i64 2153451538, i64 2153451572}
!143 = !{i64 2153458123, i64 2153458609, i64 2153458160, i64 2153458216, i64 2153458250, i64 2153458274, i64 2153458315, i64 2153458336, i64 2153458364, i64 2153458398}
