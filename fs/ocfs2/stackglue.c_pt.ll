; ModuleID = '/llk/IR_all_yes/fs/ocfs2/stackglue.c_pt.bc'
source_filename = "../fs/ocfs2/stackglue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ocfs2_stack_glue_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_stack_glue_register\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_stack_glue_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_stack_glue_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_stack_glue_register\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_stack_glue_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_stack_glue_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_stack_glue_unregister\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_stack_glue_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_stack_glue_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_stack_glue_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_stack_glue_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_stack_glue_set_max_proto_version\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_stack_glue_set_max_proto_version\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_stack_glue_set_max_proto_version\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_stack_glue_set_max_proto_version:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_stack_glue_set_max_proto_version\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_stack_glue_set_max_proto_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_dlm_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_dlm_lock\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_dlm_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_dlm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_dlm_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_dlm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_dlm_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_dlm_unlock\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_dlm_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_dlm_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_dlm_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_dlm_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_dlm_lock_status\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_dlm_lock_status\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_dlm_lock_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_dlm_lock_status:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_dlm_lock_status\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_dlm_lock_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_dlm_lvb_valid\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_dlm_lvb_valid\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_dlm_lvb_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_dlm_lvb_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_dlm_lvb_valid\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_dlm_lvb_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_dlm_lvb\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_dlm_lvb\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_dlm_lvb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_dlm_lvb:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_dlm_lvb\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_dlm_lvb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_dlm_dump_lksb\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_dlm_dump_lksb\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_dlm_dump_lksb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_dlm_dump_lksb:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_dlm_dump_lksb\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_dlm_dump_lksb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_stack_supports_plocks\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_stack_supports_plocks\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_stack_supports_plocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_stack_supports_plocks:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_stack_supports_plocks\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_stack_supports_plocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_plock\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_plock\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_plock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_plock:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_plock\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_plock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_cluster_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_cluster_connect\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_cluster_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_cluster_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_cluster_connect\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_cluster_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_cluster_connect_agnostic\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_cluster_connect_agnostic\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_cluster_connect_agnostic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_cluster_connect_agnostic:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_cluster_connect_agnostic\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_cluster_connect_agnostic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_cluster_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_cluster_disconnect\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_cluster_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_cluster_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_cluster_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_cluster_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_cluster_hangup\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_cluster_hangup\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_cluster_hangup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_cluster_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_cluster_hangup\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_cluster_hangup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_cluster_this_node\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_cluster_this_node\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_cluster_this_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_cluster_this_node:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_cluster_this_node\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_cluster_this_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ocfs2_kset\22, \22a\22\09"
module asm "\09.weak\09__crc_ocfs2_kset\09\09\09\09"
module asm "\09.long\09__crc_ocfs2_kset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocfs2_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22ocfs2_kset\22\09\09\09\09\09"
module asm "__kstrtabns_ocfs2_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocfs2_protocol_version = type { i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ocfs2_stack_plugin = type { ptr, ptr, ptr, %struct.list_head, i32, %struct.ocfs2_protocol_version }
%struct.ocfs2_dlm_lksb = type { %union.anon, ptr }
%union.anon = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_stack_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ocfs2_cluster_connection = type { [65 x i8], i32, [17 x i8], i32, %struct.ocfs2_protocol_version, ptr, ptr, ptr, ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@ocfs2_stack_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@locking_max_version = internal global { %struct.ocfs2_protocol_version, [30 x i8] } zeroinitializer, align 32
@ocfs2_stack_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ocfs2_stack_list, ptr @ocfs2_stack_list }, [24 x i8] zeroinitializer }, align 32
@ocfs2_stack_glue_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ocfs2: Registered cluster interface %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ocfs2_stack_glue_register\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/ocfs2/stackglue.c\00", [43 x i8] zeroinitializer }, align 32
@ocfs2_stack_glue_register._entry_ptr = internal global ptr @ocfs2_stack_glue_register._entry, section ".printk_index", align 4
@ocfs2_stack_glue_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ocfs2: Stack \22%s\22 already registered\0A\00", [56 x i8] zeroinitializer }, align 32
@ocfs2_stack_glue_register._entry_ptr.5 = internal global ptr @ocfs2_stack_glue_register._entry.3, section ".printk_index", align 4
@__kstrtab_ocfs2_stack_glue_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_stack_glue_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_stack_glue_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_stack_glue_register to i32), ptr @__kstrtab_ocfs2_stack_glue_register, ptr @__kstrtabns_ocfs2_stack_glue_register }, section "___ksymtab_gpl+ocfs2_stack_glue_register", align 4
@active_stack = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ocfs2_stack_glue_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ocfs2: Unregistered cluster interface %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ocfs2_stack_glue_unregister\00", [36 x i8] zeroinitializer }, align 32
@ocfs2_stack_glue_unregister._entry_ptr = internal global ptr @ocfs2_stack_glue_unregister._entry, section ".printk_index", align 4
@ocfs2_stack_glue_unregister._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Stack \22%s\22 is not registered\0A\00", [32 x i8] zeroinitializer }, align 32
@ocfs2_stack_glue_unregister._entry_ptr.10 = internal global ptr @ocfs2_stack_glue_unregister._entry.8, section ".printk_index", align 4
@__kstrtab_ocfs2_stack_glue_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_stack_glue_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_stack_glue_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_stack_glue_unregister to i32), ptr @__kstrtab_ocfs2_stack_glue_unregister, ptr @__kstrtabns_ocfs2_stack_glue_unregister }, section "___ksymtab_gpl+ocfs2_stack_glue_unregister", align 4
@__kstrtab_ocfs2_stack_glue_set_max_proto_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_stack_glue_set_max_proto_version = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_stack_glue_set_max_proto_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_stack_glue_set_max_proto_version to i32), ptr @__kstrtab_ocfs2_stack_glue_set_max_proto_version, ptr @__kstrtabns_ocfs2_stack_glue_set_max_proto_version }, section "___ksymtab_gpl+ocfs2_stack_glue_set_max_proto_version", align 4
@__kstrtab_ocfs2_dlm_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_dlm_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_dlm_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_dlm_lock to i32), ptr @__kstrtab_ocfs2_dlm_lock, ptr @__kstrtabns_ocfs2_dlm_lock }, section "___ksymtab_gpl+ocfs2_dlm_lock", align 4
@__kstrtab_ocfs2_dlm_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_dlm_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_dlm_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_dlm_unlock to i32), ptr @__kstrtab_ocfs2_dlm_unlock, ptr @__kstrtabns_ocfs2_dlm_unlock }, section "___ksymtab_gpl+ocfs2_dlm_unlock", align 4
@__kstrtab_ocfs2_dlm_lock_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_dlm_lock_status = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_dlm_lock_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_dlm_lock_status to i32), ptr @__kstrtab_ocfs2_dlm_lock_status, ptr @__kstrtabns_ocfs2_dlm_lock_status }, section "___ksymtab_gpl+ocfs2_dlm_lock_status", align 4
@__kstrtab_ocfs2_dlm_lvb_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_dlm_lvb_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_dlm_lvb_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_dlm_lvb_valid to i32), ptr @__kstrtab_ocfs2_dlm_lvb_valid, ptr @__kstrtabns_ocfs2_dlm_lvb_valid }, section "___ksymtab_gpl+ocfs2_dlm_lvb_valid", align 4
@__kstrtab_ocfs2_dlm_lvb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_dlm_lvb = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_dlm_lvb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_dlm_lvb to i32), ptr @__kstrtab_ocfs2_dlm_lvb, ptr @__kstrtabns_ocfs2_dlm_lvb }, section "___ksymtab_gpl+ocfs2_dlm_lvb", align 4
@__kstrtab_ocfs2_dlm_dump_lksb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_dlm_dump_lksb = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_dlm_dump_lksb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_dlm_dump_lksb to i32), ptr @__kstrtab_ocfs2_dlm_dump_lksb, ptr @__kstrtabns_ocfs2_dlm_dump_lksb }, section "___ksymtab_gpl+ocfs2_dlm_dump_lksb", align 4
@__kstrtab_ocfs2_stack_supports_plocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_stack_supports_plocks = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_stack_supports_plocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_stack_supports_plocks to i32), ptr @__kstrtab_ocfs2_stack_supports_plocks, ptr @__kstrtabns_ocfs2_stack_supports_plocks }, section "___ksymtab_gpl+ocfs2_stack_supports_plocks", align 4
@ocfs2_plock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ocfs2_plock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_plock = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_plock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_plock to i32), ptr @__kstrtab_ocfs2_plock, ptr @__kstrtabns_ocfs2_plock }, section "___ksymtab_gpl+ocfs2_plock", align 4
@__kstrtab_ocfs2_cluster_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_cluster_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_cluster_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_cluster_connect to i32), ptr @__kstrtab_ocfs2_cluster_connect, ptr @__kstrtabns_ocfs2_cluster_connect }, section "___ksymtab_gpl+ocfs2_cluster_connect", align 4
@cluster_stack_name = internal global { [5 x i8], [27 x i8] } zeroinitializer, align 32
@__kstrtab_ocfs2_cluster_connect_agnostic = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_cluster_connect_agnostic = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_cluster_connect_agnostic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_cluster_connect_agnostic to i32), ptr @__kstrtab_ocfs2_cluster_connect_agnostic, ptr @__kstrtabns_ocfs2_cluster_connect_agnostic }, section "___ksymtab_gpl+ocfs2_cluster_connect_agnostic", align 4
@__kstrtab_ocfs2_cluster_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_cluster_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_cluster_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_cluster_disconnect to i32), ptr @__kstrtab_ocfs2_cluster_disconnect, ptr @__kstrtabns_ocfs2_cluster_disconnect }, section "___ksymtab_gpl+ocfs2_cluster_disconnect", align 4
@__kstrtab_ocfs2_cluster_hangup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_cluster_hangup = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_cluster_hangup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_cluster_hangup to i32), ptr @__kstrtab_ocfs2_cluster_hangup, ptr @__kstrtabns_ocfs2_cluster_hangup }, section "___ksymtab_gpl+ocfs2_cluster_hangup", align 4
@__kstrtab_ocfs2_cluster_this_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_cluster_this_node = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_cluster_this_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_cluster_this_node to i32), ptr @__kstrtab_ocfs2_cluster_this_node, ptr @__kstrtabns_ocfs2_cluster_this_node }, section "___ksymtab_gpl+ocfs2_cluster_this_node", align 4
@ocfs2_kset = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ocfs2_kset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocfs2_kset = external dso_local constant [0 x i8], align 1
@__ksymtab_ocfs2_kset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocfs2_kset to i32), ptr @__kstrtab_ocfs2_kset, ptr @__kstrtabns_ocfs2_kset }, section "___ksymtab_gpl+ocfs2_kset", align 4
@ocfs2_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author213 = internal constant [30 x i8] c"ocfs2_stackglue.author=Oracle\00", section ".modinfo", align 1
@__UNIQUE_ID_description214 = internal constant [59 x i8] c"ocfs2_stackglue.description=ocfs2 cluster stack glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [46 x i8] c"ocfs2_stackglue.file=fs/ocfs2/ocfs2_stackglue\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [28 x i8] c"ocfs2_stackglue.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ocfs2_stackglue__217_696_ocfs2_stack_glue_init6 = internal global ptr @ocfs2_stack_glue_init, section ".initcall6.init", align 4
@__exitcall_ocfs2_stack_glue_exit = internal global ptr @ocfs2_stack_glue_exit, section ".exitcall.exit", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocfs2_stack_lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"o2cb\00", [27 x i8] zeroinitializer }, align 32
@ocfs2_stack_driver_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ocfs2 passed an invalid cluster stack label: \22%s\22\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ocfs2_stack_driver_get\00", [41 x i8] zeroinitializer }, align 32
@ocfs2_stack_driver_get._entry_ptr = internal global ptr @ocfs2_stack_driver_get._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocfs2_stack_%s\00", [17 x i8] zeroinitializer }, align 32
@ocfs2_stack_driver_get._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ocfs2: Cluster stack driver \22%s\22 cannot be found\0A\00", [44 x i8] zeroinitializer }, align 32
@ocfs2_stack_driver_get._entry_ptr.19 = internal global ptr @ocfs2_stack_driver_get._entry.17, section ".printk_index", align 4
@ocfs2_stack_driver_get._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ocfs2: A different cluster stack is in use\0A\00", [50 x i8] zeroinitializer }, align 32
@ocfs2_stack_driver_get._entry_ptr.22 = internal global ptr @ocfs2_stack_driver_get._entry.20, section ".printk_index", align 4
@ocfs2_hb_ctl_path = internal global { [256 x i8], [64 x i8] } { [256 x i8] c"/sbin/ocfs2_hb_ctl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-K\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-u\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@ocfs2_leave_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ocfs2: Error %d running user helper \22%s %s %s %s\22\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ocfs2_leave_group\00", [46 x i8] zeroinitializer }, align 32
@ocfs2_leave_group._entry_ptr = internal global ptr @ocfs2_leave_group._entry, section ".printk_index", align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs/ocfs2/nm\00", [20 x i8] zeroinitializer }, align 32
@ocfs2_nm_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.32, ptr @ocfs2_hb_ctl_path, i32 256, i16 420, ptr null, ptr @proc_dostring, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ocfs2_stack_glue_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ocfs2 stack glue: unable to register sysctl\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ocfs2_stack_glue_init\00", [42 x i8] zeroinitializer }, align 32
@ocfs2_stack_glue_init._entry_ptr = internal global ptr @ocfs2_stack_glue_init._entry, section ".printk_index", align 4
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hb_ctl_path\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocfs2\00", [26 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@ocfs2_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ocfs2_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ocfs2_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @ocfs2_attr_max_locking_protocol, ptr @ocfs2_attr_loaded_cluster_plugins, ptr @ocfs2_attr_active_cluster_plugin, ptr @ocfs2_attr_cluster_stack, ptr @ocfs2_attr_dlm_recover_support, ptr null], [40 x i8] zeroinitializer }, align 32
@ocfs2_attr_max_locking_protocol = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_max_locking_protocol_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ocfs2_attr_loaded_cluster_plugins = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_loaded_cluster_plugins_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ocfs2_attr_active_cluster_plugin = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_active_cluster_plugin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ocfs2_attr_cluster_stack = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_cluster_stack_show, ptr @ocfs2_cluster_stack_store }, [36 x i8] zeroinitializer }, align 32
@ocfs2_attr_dlm_recover_support = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ocfs2_dlm_recover_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max_locking_protocol\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"loaded_cluster_plugins\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"active_cluster_plugin\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cluster_stack\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dlm_recover_callback_support\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967280, i64 4294967294]
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"ocfs2_stack_lock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"locking_max_version\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 29, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"ocfs2_stack_list\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 31, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 171, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 175, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"active_stack\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 39, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 196, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 199, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"cluster_stack_name\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 32, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"ocfs2_kset\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 618, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"ocfs2_table_header\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 664, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 30, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 110, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 120, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 128, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 132, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 137, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 141, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"ocfs2_hb_ctl_path\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 33, i32 13 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 422, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 423, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 428, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 429, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 434, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 674, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"ocfs2_nm_table\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 653, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 676, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 655, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 630, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"ocfs2_attr_group\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 614, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"ocfs2_attrs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 605, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant [32 x i8] c"ocfs2_attr_max_locking_protocol\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 488, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant [34 x i8] c"ocfs2_attr_loaded_cluster_plugins\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 516, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant [33 x i8] c"ocfs2_attr_active_cluster_plugin\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 538, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant [25 x i8] c"ocfs2_attr_cluster_stack\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 587, i32 30 }
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"ocfs2_attr_dlm_recover_support\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 601, i32 30 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 489, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 480, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 517, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 501, i32 31 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 539, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 588, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 602, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [24 x i8] c"../fs/ocfs2/stackglue.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 598, i32 34 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description214, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_ocfs2_stack_glue_exit, ptr @__initcall__kmod_ocfs2_stackglue__217_696_ocfs2_stack_glue_init6, ptr @__ksymtab_ocfs2_cluster_connect, ptr @__ksymtab_ocfs2_cluster_connect_agnostic, ptr @__ksymtab_ocfs2_cluster_disconnect, ptr @__ksymtab_ocfs2_cluster_hangup, ptr @__ksymtab_ocfs2_cluster_this_node, ptr @__ksymtab_ocfs2_dlm_dump_lksb, ptr @__ksymtab_ocfs2_dlm_lock, ptr @__ksymtab_ocfs2_dlm_lock_status, ptr @__ksymtab_ocfs2_dlm_lvb, ptr @__ksymtab_ocfs2_dlm_lvb_valid, ptr @__ksymtab_ocfs2_dlm_unlock, ptr @__ksymtab_ocfs2_kset, ptr @__ksymtab_ocfs2_plock, ptr @__ksymtab_ocfs2_stack_glue_register, ptr @__ksymtab_ocfs2_stack_glue_set_max_proto_version, ptr @__ksymtab_ocfs2_stack_glue_unregister, ptr @__ksymtab_ocfs2_stack_supports_plocks, ptr @ocfs2_leave_group._entry, ptr @ocfs2_leave_group._entry_ptr, ptr @ocfs2_stack_driver_get._entry, ptr @ocfs2_stack_driver_get._entry.17, ptr @ocfs2_stack_driver_get._entry.20, ptr @ocfs2_stack_driver_get._entry_ptr, ptr @ocfs2_stack_driver_get._entry_ptr.19, ptr @ocfs2_stack_driver_get._entry_ptr.22, ptr @ocfs2_stack_glue_exit, ptr @ocfs2_stack_glue_init._entry, ptr @ocfs2_stack_glue_init._entry_ptr, ptr @ocfs2_stack_glue_register._entry, ptr @ocfs2_stack_glue_register._entry.3, ptr @ocfs2_stack_glue_register._entry_ptr, ptr @ocfs2_stack_glue_register._entry_ptr.5, ptr @ocfs2_stack_glue_unregister._entry, ptr @ocfs2_stack_glue_unregister._entry.8, ptr @ocfs2_stack_glue_unregister._entry_ptr, ptr @ocfs2_stack_glue_unregister._entry_ptr.10, ptr @ocfs2_stack_lock, ptr @locking_max_version, ptr @ocfs2_stack_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @active_stack, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @cluster_stack_name, ptr @ocfs2_kset, ptr @ocfs2_table_header, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @ocfs2_hb_ctl_path, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ocfs2_nm_table, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ocfs2_attr_group, ptr @ocfs2_attrs, ptr @ocfs2_attr_max_locking_protocol, ptr @ocfs2_attr_loaded_cluster_plugins, ptr @ocfs2_attr_active_cluster_plugin, ptr @ocfs2_attr_cluster_stack, ptr @ocfs2_attr_dlm_recover_support, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @locking_max_version to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_glue_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_glue_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @active_stack to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_glue_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_glue_unregister._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_stack_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_driver_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_driver_get._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_driver_get._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_hb_ctl_path to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_leave_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_nm_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_stack_glue_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_attr_max_locking_protocol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_attr_loaded_cluster_plugins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_attr_active_cluster_plugin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_attr_cluster_stack to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_attr_dlm_recover_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_stack_glue_register(ptr noundef %plugin) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %0 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plugin, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @ocfs2_stack_lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %entry.for.cond.i_crit_edge, !prof !167

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @ocfs2_stack_list, %entry.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ocfs2_stack_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %p.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %4 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.0.i, align 4
  %call12.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %1) #15
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %ocfs2_stack_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

ocfs2_stack_lookup.exit:                          ; preds = %for.body.i
  %p.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %p.0.i.le, null
  br i1 %tobool.not, label %ocfs2_stack_lookup.exit.if.then_crit_edge, label %do.end5

ocfs2_stack_lookup.exit.if.then_crit_edge:        ; preds = %ocfs2_stack_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ocfs2_stack_lookup.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %sp_count = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 4
  %6 = ptrtoint ptr %sp_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sp_count, align 4
  %sp_max_proto = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 5
  %7 = load i16, ptr @locking_max_version, align 2
  %8 = ptrtoint ptr %sp_max_proto to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %sp_max_proto, align 4
  %sp_list = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 3
  %9 = load ptr, ptr @ocfs2_stack_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sp_list, ptr noundef nonnull @ocfs2_stack_list, ptr noundef %9) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sp_list, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %sp_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %sp_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ocfs2_stack_list, ptr %prev3.i.i, align 4
  store volatile ptr %sp_list, ptr @ocfs2_stack_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  %13 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plugin, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14) #16
  br label %if.end

do.end5:                                          ; preds = %ocfs2_stack_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %do.end5, %list_add.exit
  %rc.0 = phi i32 [ -17, %do.end5 ], [ 0, %list_add.exit ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_stack_glue_unregister(ptr noundef %plugin) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %0 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plugin, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @ocfs2_stack_lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %entry.for.cond.i_crit_edge, !prof !167

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @ocfs2_stack_list, %entry.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ocfs2_stack_list
  br i1 %cmp.not.i, label %for.cond.i.do.end53_crit_edge, label %for.body.i

for.cond.i.do.end53_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

for.body.i:                                       ; preds = %for.cond.i
  %p.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %4 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.0.i, align 4
  %call12.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %1) #15
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %ocfs2_stack_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

ocfs2_stack_lookup.exit:                          ; preds = %for.body.i
  %p.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool.not = icmp eq ptr %p.0.i.le, null
  br i1 %tobool.not, label %ocfs2_stack_lookup.exit.do.end53_crit_edge, label %do.body

ocfs2_stack_lookup.exit.do.end53_crit_edge:       ; preds = %ocfs2_stack_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

do.body:                                          ; preds = %ocfs2_stack_lookup.exit
  %cmp.not = icmp eq ptr %p.0.i.le, %plugin
  br i1 %cmp.not, label %do.body10, label %do.body4, !prof !169

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

do.body10:                                        ; preds = %do.body
  %6 = load ptr, ptr @active_stack, align 4
  %cmp11 = icmp eq ptr %6, %plugin
  br i1 %cmp11, label %do.body19, label %do.body28, !prof !167

do.body19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #12, !srcloc !171
  unreachable

do.body28:                                        ; preds = %do.body10
  %sp_count = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 4
  %7 = ptrtoint ptr %sp_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp29.not = icmp eq i32 %8, 0
  br i1 %cmp29.not, label %do.end45, label %do.body37, !prof !169

do.body37:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #12, !srcloc !172
  unreachable

do.end45:                                         ; preds = %do.body28
  %sp_list = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sp_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end45.list_del_init.exit_crit_edge

do.end45.list_del_init.exit_crit_edge:            ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %sp_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sp_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end45.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %sp_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %sp_list, ptr %sp_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %plugin, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sp_list, ptr %prev.i3.i, align 4
  %17 = ptrtoint ptr %plugin to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plugin, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %18) #16
  br label %if.end57

do.end53:                                         ; preds = %ocfs2_stack_lookup.exit.do.end53_crit_edge, %for.cond.i.do.end53_crit_edge
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %1) #16
  br label %if.end57

if.end57:                                         ; preds = %do.end53, %list_del_init.exit
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_stack_glue_set_max_proto_version(ptr nocapture noundef readonly %max_proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %max_proto, ptr noundef nonnull dereferenceable(2) @locking_max_version, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.body:                                          ; preds = %entry
  %0 = load i8, ptr @locking_max_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !169

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #12, !srcloc !173
  unreachable

do.end10:                                         ; preds = %do.body
  %1 = ptrtoint ptr %max_proto to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %max_proto, align 1
  store i16 %2, ptr @locking_max_version, align 2
  %.pn23 = load ptr, ptr @ocfs2_stack_list, align 4
  %cmp11.not24 = icmp eq ptr %.pn23, @ocfs2_stack_list
  br i1 %cmp11.not24, label %do.end10.if.end19_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.if.end19_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end10.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn23, %do.end10.for.body_crit_edge ]
  %sp_max_proto = getelementptr i8, ptr %.pn25, i32 12
  %3 = load i16, ptr @locking_max_version, align 2
  %4 = ptrtoint ptr %sp_max_proto to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %sp_max_proto, align 4
  %5 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp11.not = icmp eq ptr %.pn, @ocfs2_stack_list
  br i1 %cmp11.not, label %for.body.if.end19_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %for.body.if.end19_crit_edge, %do.end10.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_dlm_lock(ptr noundef %conn, i32 noundef %mode, ptr noundef %lksb, i32 noundef %flags, ptr noundef %name, i32 noundef %namelen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lksb_conn = getelementptr inbounds %struct.ocfs2_dlm_lksb, ptr %lksb, i32 0, i32 1
  %0 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lksb_conn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %conn, ptr %lksb_conn, align 4
  br label %if.end10

do.body:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %1, %conn
  br i1 %cmp.not, label %do.body.if.end10_crit_edge, label %do.body6, !prof !169

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #12, !srcloc !174
  unreachable

if.end10:                                         ; preds = %do.body.if.end10_crit_edge, %if.then
  %3 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sp_ops, align 4
  %dlm_lock = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dlm_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dlm_lock, align 4
  %call = tail call i32 %7(ptr noundef %conn, i32 noundef %mode, ptr noundef %lksb, i32 noundef %flags, ptr noundef %name, i32 noundef %namelen) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_dlm_unlock(ptr noundef %conn, ptr noundef %lksb, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lksb_conn = getelementptr inbounds %struct.ocfs2_dlm_lksb, ptr %lksb, i32 0, i32 1
  %0 = ptrtoint ptr %lksb_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lksb_conn, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %do.end5, !prof !167

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #12, !srcloc !175
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sp_ops, align 4
  %dlm_unlock = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %dlm_unlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dlm_unlock, align 4
  %call = tail call i32 %6(ptr noundef %conn, ptr noundef %lksb, i32 noundef %flags) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_dlm_lock_status(ptr noundef %lksb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %lock_status = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %lock_status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock_status, align 4
  %call = tail call i32 %4(ptr noundef %lksb) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_dlm_lvb_valid(ptr noundef %lksb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %lvb_valid = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %lvb_valid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lvb_valid, align 4
  %call = tail call i32 %4(ptr noundef %lksb) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocfs2_dlm_lvb(ptr noundef %lksb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %lock_lvb = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %lock_lvb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock_lvb, align 4
  %call = tail call ptr %4(ptr noundef %lksb) #12
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_dlm_dump_lksb(ptr noundef %lksb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %dump_lksb = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %dump_lksb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dump_lksb, align 4
  tail call void %4(ptr noundef %lksb) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocfs2_stack_supports_plocks() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @active_stack, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %plock = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %plock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plock, align 4
  %tobool1 = icmp ne ptr %4, null
  %phi.cast = zext i1 %tobool1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_plock(ptr noundef %conn, i64 noundef %ino, ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %plock = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %plock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plock, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %land.rhs, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @ocfs2_plock.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !169

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ocfs2_plock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 294, i32 noundef 9, ptr noundef null) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %5 = load ptr, ptr @active_stack, align 4
  %sp_ops35 = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sp_ops35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sp_ops35, align 4
  %plock36 = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %plock36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plock36, align 4
  %tobool37.not = icmp eq ptr %9, null
  br i1 %tobool37.not, label %if.end27.return_crit_edge, label %if.then38

if.end27.return_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %9(ptr noundef %conn, i64 noundef %ino, ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) #12
  br label %return

return:                                           ; preds = %if.then38, %if.end27.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then38 ], [ -95, %if.end27.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_cluster_connect(ptr noundef %stack_name, ptr noundef %cluster_name, i32 noundef %cluster_name_len, ptr noundef %group, i32 noundef %grouplen, ptr noundef %lproto, ptr noundef %recovery_handler, ptr noundef %recovery_data, ptr noundef writeonly %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %group, null
  br i1 %cmp, label %do.body2, label %do.body8, !prof !167

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 315, 0\0A.popsection", ""() #12, !srcloc !176
  unreachable

do.body8:                                         ; preds = %entry
  %cmp9 = icmp eq ptr %conn, null
  br i1 %cmp9, label %do.body17, label %do.body26, !prof !167

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #12, !srcloc !177
  unreachable

do.body26:                                        ; preds = %do.body8
  %cmp27 = icmp eq ptr %recovery_handler, null
  br i1 %cmp27, label %do.body35, label %do.end43, !prof !167

do.body35:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 317, 0\0A.popsection", ""() #12, !srcloc !178
  unreachable

do.end43:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %grouplen)
  %cmp44 = icmp sgt i32 %grouplen, 64
  br i1 %cmp44, label %do.end43.out_crit_edge, label %if.end46

do.end43.out_crit_edge:                           ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end46:                                         ; preds = %do.end43
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %lproto, ptr noundef nonnull dereferenceable(2) @locking_max_version, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool47.not = icmp eq i32 %bcmp, 0
  br i1 %tobool47.not, label %if.end49, label %if.end46.out_crit_edge

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end49:                                         ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #18
  %tobool51.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool51.not, label %if.end49.out_crit_edge, label %if.end53

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %group, i32 noundef 65) #12
  %cc_namelen = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cc_namelen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %grouplen, ptr %cc_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster_name_len)
  %tobool55.not = icmp eq i32 %cluster_name_len, 0
  br i1 %tobool55.not, label %if.end53.if.end59_crit_edge, label %if.then56

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %cc_cluster_name = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %call7.i.i, i32 0, i32 2
  %call58 = tail call i32 @strlcpy(ptr noundef %cc_cluster_name, ptr noundef %cluster_name, i32 noundef 17) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge
  %cc_cluster_name_len = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %cc_cluster_name_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cluster_name_len, ptr %cc_cluster_name_len, align 4
  %cc_recovery_handler = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %cc_recovery_handler to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %recovery_handler, ptr %cc_recovery_handler, align 8
  %cc_recovery_data = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %cc_recovery_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %recovery_data, ptr %cc_recovery_data, align 4
  %cc_proto = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %cc_proto to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lproto, ptr %cc_proto, align 4
  %cc_version = getelementptr inbounds %struct.ocfs2_cluster_connection, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %lproto to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %lproto, align 4
  %8 = ptrtoint ptr %cc_version to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %cc_version, align 8
  %tobool.not.i = icmp eq ptr %stack_name, null
  br i1 %tobool.not.i, label %if.end59.if.then.i_crit_edge, label %lor.lhs.false.i

if.end59.if.then.i_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end59
  %9 = ptrtoint ptr %stack_name to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stack_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end59.if.then.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %stack_name.addr.0.i = phi ptr [ %stack_name, %lor.lhs.false.i.if.end.i_crit_edge ], [ @.str.12, %if.then.i ]
  %call.i = tail call i32 @strlen(ptr noundef nonnull %stack_name.addr.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %stack_name.addr.0.i) #16
  br label %if.then70

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull %stack_name.addr.0.i, ptr noundef nonnull dereferenceable(5) @.str.12) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %spec.select.i = select i1 %tobool6.not.i, ptr @.str.12, ptr @.str.15
  %call9.i = tail call fastcc i32 @ocfs2_stack_driver_request(ptr noundef nonnull %stack_name.addr.0.i, ptr noundef nonnull %spec.select.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, -2
  br i1 %cmp10.i, label %if.then11.i, label %if.end4.i.if.end14.i_crit_edge

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call12.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.16, ptr noundef nonnull %spec.select.i) #12
  %call13.i = tail call fastcc i32 @ocfs2_stack_driver_request(ptr noundef nonnull %stack_name.addr.0.i, ptr noundef nonnull %spec.select.i) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end4.i.if.end14.i_crit_edge
  %rc.0.i = phi i32 [ %call13.i, %if.then11.i ], [ %call9.i, %if.end4.i.if.end14.i_crit_edge ]
  %11 = zext i32 %rc.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rc.0.i, label %if.end14.i.if.then70_crit_edge [
    i32 -2, label %do.end19.i
    i32 -16, label %do.end26.i
    i32 0, label %if.end64
  ]

if.end14.i.if.then70_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70

do.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %spec.select.i) #16
  br label %if.then70

do.end26.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %if.then70

if.end64:                                         ; preds = %if.end14.i
  %12 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sp_ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call65 = tail call i32 %16(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %out_free.thread98, label %if.then67

if.then67:                                        ; preds = %if.end64
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %17 = load ptr, ptr @active_stack, align 4
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %do.body2.i, label %do.body6.i, !prof !167

do.body2.i:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #12, !srcloc !179
  unreachable

do.body6.i:                                       ; preds = %if.then67
  %sp_count.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sp_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp7.i = icmp eq i32 %19, 0
  br i1 %cmp7.i, label %do.body15.i, label %do.end20.i, !prof !167

do.body15.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #12, !srcloc !180
  unreachable

do.end20.i:                                       ; preds = %do.body6.i
  %dec.i = add i32 %19, -1
  %20 = ptrtoint ptr %sp_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec.i, ptr %sp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %do.end20.i.ocfs2_stack_driver_put.exit_crit_edge

do.end20.i.ocfs2_stack_driver_put.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_stack_driver_put.exit

if.then24.i:                                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %sp_owner.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %sp_owner.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sp_owner.i, align 4
  tail call void @module_put(ptr noundef %22) #12
  store ptr null, ptr @active_stack, align 4
  br label %ocfs2_stack_driver_put.exit

ocfs2_stack_driver_put.exit:                      ; preds = %if.then24.i, %do.end20.i.ocfs2_stack_driver_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  br label %if.then70

out_free.thread98:                                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %conn, align 4
  br label %out

if.then70:                                        ; preds = %ocfs2_stack_driver_put.exit, %do.end26.i, %do.end19.i, %if.end14.i.if.then70_crit_edge, %do.end.i
  %rc.097 = phi i32 [ %call65, %ocfs2_stack_driver_put.exit ], [ -2, %do.end19.i ], [ -16, %do.end26.i ], [ -22, %do.end.i ], [ %rc.0.i, %if.end14.i.if.then70_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %out

out:                                              ; preds = %if.then70, %out_free.thread98, %if.end49.out_crit_edge, %if.end46.out_crit_edge, %do.end43.out_crit_edge
  %rc.1 = phi i32 [ %rc.097, %if.then70 ], [ -22, %do.end43.out_crit_edge ], [ -22, %if.end46.out_crit_edge ], [ -12, %if.end49.out_crit_edge ], [ 0, %out_free.thread98 ]
  ret i32 %rc.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_cluster_connect_agnostic(ptr noundef %group, i32 noundef %grouplen, ptr noundef %lproto, ptr noundef %recovery_handler, ptr noundef %recovery_data, ptr noundef %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @cluster_stack_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %spec.store.select = select i1 %tobool.not, ptr null, ptr @cluster_stack_name
  %call = tail call i32 @ocfs2_cluster_connect(ptr noundef %spec.store.select, ptr noundef null, i32 noundef 0, ptr noundef %group, i32 noundef %grouplen, ptr noundef %lproto, ptr noundef %recovery_handler, ptr noundef %recovery_data, ptr noundef %conn)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_cluster_disconnect(ptr noundef %conn, i32 noundef %hangup_pending) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %conn, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !167

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 397, 0\0A.popsection", ""() #12, !srcloc !181
  unreachable

do.end7:                                          ; preds = %entry
  %0 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %disconnect = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disconnect, align 4
  %call = tail call i32 %4(ptr noundef nonnull %conn) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %do.end7.if.end13_crit_edge

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %do.end7
  tail call void @kfree(ptr noundef nonnull %conn) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hangup_pending)
  %tobool10.not = icmp eq i32 %hangup_pending, 0
  br i1 %tobool10.not, label %if.then11, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %5 = load ptr, ptr @active_stack, align 4
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %do.body2.i, label %do.body6.i, !prof !167

do.body2.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #12, !srcloc !179
  unreachable

do.body6.i:                                       ; preds = %if.then11
  %sp_count.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sp_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.i = icmp eq i32 %7, 0
  br i1 %cmp7.i, label %do.body15.i, label %do.end20.i, !prof !167

do.body15.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #12, !srcloc !180
  unreachable

do.end20.i:                                       ; preds = %do.body6.i
  %dec.i = add i32 %7, -1
  %8 = ptrtoint ptr %sp_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %sp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %do.end20.i.ocfs2_stack_driver_put.exit_crit_edge

do.end20.i.ocfs2_stack_driver_put.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_stack_driver_put.exit

if.then24.i:                                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %sp_owner.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %sp_owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sp_owner.i, align 4
  tail call void @module_put(ptr noundef %10) #12
  store ptr null, ptr @active_stack, align 4
  br label %ocfs2_stack_driver_put.exit

ocfs2_stack_driver_put.exit:                      ; preds = %if.then24.i, %do.end20.i.ocfs2_stack_driver_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  br label %if.end13

if.end13:                                         ; preds = %ocfs2_stack_driver_put.exit, %if.then9.if.end13_crit_edge, %do.end7.if.end13_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_cluster_hangup(ptr noundef %group, i32 noundef %grouplen) #0 align 64 {
entry:
  %argv.i = alloca [5 x ptr], align 4
  %envp.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %group, null
  br i1 %cmp, label %do.body2, label %do.body6, !prof !167

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #12, !srcloc !182
  unreachable

do.body6:                                         ; preds = %entry
  %arrayidx = getelementptr i8, ptr %group, i32 %grouplen
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp7.not = icmp eq i8 %1, 0
  br i1 %cmp7.not, label %do.end21, label %do.body16, !prof !169

do.body16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 451, 0\0A.popsection", ""() #12, !srcloc !183
  unreachable

do.end21:                                         ; preds = %do.body6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %argv.i) #12
  %2 = getelementptr inbounds [5 x ptr], ptr %argv.i, i32 0, i32 1
  %3 = getelementptr inbounds [5 x ptr], ptr %argv.i, i32 0, i32 2
  %4 = getelementptr inbounds [5 x ptr], ptr %argv.i, i32 0, i32 3
  %5 = getelementptr inbounds [5 x ptr], ptr %argv.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %envp.i) #12
  %6 = getelementptr inbounds [3 x ptr], ptr %envp.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x ptr], ptr %envp.i, i32 0, i32 2
  %8 = ptrtoint ptr %argv.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ocfs2_hb_ctl_path, ptr %argv.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.23, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.24, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %group, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %5, align 4
  %13 = ptrtoint ptr %envp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.25, ptr %envp.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.26, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %7, align 4
  %call.i = call i32 @call_usermodehelper(ptr noundef nonnull @ocfs2_hb_ctl_path, ptr noundef nonnull %argv.i, ptr noundef nonnull %envp.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end21.ocfs2_leave_group.exit_crit_edge

do.end21.ocfs2_leave_group.exit_crit_edge:        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_leave_group.exit

do.end.i:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %argv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %argv.i, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %call.i, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef %23) #16
  br label %ocfs2_leave_group.exit

ocfs2_leave_group.exit:                           ; preds = %do.end.i, %do.end21.ocfs2_leave_group.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %envp.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %argv.i) #12
  call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %24 = load ptr, ptr @active_stack, align 4
  %cmp.i24 = icmp eq ptr %24, null
  br i1 %cmp.i24, label %do.body2.i, label %do.body6.i, !prof !167

do.body2.i:                                       ; preds = %ocfs2_leave_group.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #12, !srcloc !179
  unreachable

do.body6.i:                                       ; preds = %ocfs2_leave_group.exit
  %sp_count.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %sp_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7.i = icmp eq i32 %26, 0
  br i1 %cmp7.i, label %do.body15.i, label %do.end20.i, !prof !167

do.body15.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #12, !srcloc !180
  unreachable

do.end20.i:                                       ; preds = %do.body6.i
  %dec.i = add i32 %26, -1
  %27 = ptrtoint ptr %sp_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec.i, ptr %sp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %do.end20.i.ocfs2_stack_driver_put.exit_crit_edge

do.end20.i.ocfs2_stack_driver_put.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ocfs2_stack_driver_put.exit

if.then24.i:                                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %sp_owner.i = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %24, i32 0, i32 2
  %28 = ptrtoint ptr %sp_owner.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sp_owner.i, align 4
  call void @module_put(ptr noundef %29) #12
  store ptr null, ptr @active_stack, align 4
  br label %ocfs2_stack_driver_put.exit

ocfs2_stack_driver_put.exit:                      ; preds = %if.then24.i, %do.end20.i.ocfs2_stack_driver_put.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_cluster_this_node(ptr noundef %conn, ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @active_stack, align 4
  %sp_ops = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %sp_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp_ops, align 4
  %this_node = getelementptr inbounds %struct.ocfs2_stack_operations, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %this_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %this_node, align 4
  %call = tail call i32 %4(ptr noundef %conn, ptr noundef %node) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_stack_glue_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  store i16 0, ptr @locking_max_version, align 2
  %0 = load ptr, ptr @ocfs2_kset, align 4
  tail call void @kset_unregister(ptr noundef %0) #12
  %1 = load ptr, ptr @ocfs2_table_header, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_sysctl_table(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_stack_glue_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @cluster_stack_name, ptr @.str.12, i32 5)
  %call1 = tail call ptr @register_sysctl(ptr noundef nonnull @.str.29, ptr noundef nonnull @ocfs2_nm_table) #12
  store ptr %call1, ptr @ocfs2_table_header, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %1 = load ptr, ptr @fs_kobj, align 4
  %call.i = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef %1) #12
  store ptr %call.i, ptr @ocfs2_kset, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.end
  %kobj.i = getelementptr inbounds %struct.kset, ptr %call.i, i32 0, i32 2
  %call1.i = tail call i32 @sysfs_create_group(ptr noundef %kobj.i, ptr noundef nonnull @ocfs2_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %error.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

error.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load ptr, ptr @ocfs2_kset, align 4
  tail call void @kset_unregister(ptr noundef %2) #12
  br label %return

return:                                           ; preds = %error.i, %if.end.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call1.i, %error.i ], [ -12, %if.end.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_stack_driver_request(ptr nocapture noundef readonly %stack_name, ptr nocapture noundef readonly %plugin_name) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %call = tail call i32 @strcmp(ptr noundef %stack_name, ptr noundef nonnull @cluster_stack_name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @active_stack, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end7, label %out

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr @ocfs2_stack_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %if.end7.for.cond.i_crit_edge, !prof !167

if.end7.for.cond.i_crit_edge:                     ; preds = %if.end7
  br label %for.cond.i

do.body4.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/stackglue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @ocfs2_stack_list, %if.end7.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ocfs2_stack_list
  br i1 %cmp.not.i, label %for.cond.i.if.end15_crit_edge, label %for.body.i

for.cond.i.if.end15_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

for.body.i:                                       ; preds = %for.cond.i
  %p.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %3 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p.0.i, align 4
  %call12.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %plugin_name) #15
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %ocfs2_stack_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

ocfs2_stack_lookup.exit:                          ; preds = %for.body.i
  %p.0.i.le = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool9.not = icmp eq ptr %p.0.i.le, null
  br i1 %tobool9.not, label %ocfs2_stack_lookup.exit.if.end15_crit_edge, label %lor.lhs.false

ocfs2_stack_lookup.exit.if.end15_crit_edge:       ; preds = %ocfs2_stack_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

lor.lhs.false:                                    ; preds = %ocfs2_stack_lookup.exit
  %sp_owner = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %sp_owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sp_owner, align 4
  %call10 = tail call zeroext i1 @try_module_get(ptr noundef %6) #12
  br i1 %call10, label %out.thread26, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

out.thread26:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %p.0.i.le, ptr @active_stack, align 4
  br label %if.then14

out:                                              ; preds = %if.end
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %plugin_name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %out.if.then14_crit_edge, label %out.if.end15_crit_edge

out.if.end15_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

out.if.then14_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %out.if.then14_crit_edge, %out.thread26
  %9 = load ptr, ptr @active_stack, align 4
  %sp_count = getelementptr inbounds %struct.ocfs2_stack_plugin, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sp_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sp_count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %sp_count, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %out.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge, %ocfs2_stack_lookup.exit.if.end15_crit_edge, %for.cond.i.if.end15_crit_edge, %entry.if.end15_crit_edge
  %rc.025 = phi i32 [ 0, %if.then14 ], [ -16, %out.if.end15_crit_edge ], [ -2, %ocfs2_stack_lookup.exit.if.end15_crit_edge ], [ -2, %lor.lhs.false.if.end15_crit_edge ], [ -16, %entry.if.end15_crit_edge ], [ -2, %for.cond.i.if.end15_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret i32 %rc.025
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_max_locking_protocol_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %0 = load i8, ptr @locking_max_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr getelementptr inbounds (%struct.ocfs2_protocol_version, ptr @locking_max_version, i32 0, i32 1), align 1
  %conv1 = zext i8 %1 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_loaded_cluster_plugins_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %.pn13 = load ptr, ptr @ocfs2_stack_list, align 4
  %cmp.not14 = icmp eq ptr %.pn13, @ocfs2_stack_list
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn13, %entry.for.body_crit_edge ]
  %total.016 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %remain.015 = phi i32 [ %sub, %if.end.for.body_crit_edge ], [ 4096, %entry.for.body_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn17, i32 -12
  %0 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p.0, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %remain.015, ptr noundef nonnull @.str.37, ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %remain.015, i32 %call)
  %cmp1.not = icmp sgt i32 %remain.015, %call
  br i1 %cmp1.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.body
  %add = add i32 %call, %total.016
  %sub = sub i32 %remain.015, %call
  %2 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, @ocfs2_stack_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %total.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -7, %for.body.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret i32 %total.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_active_cluster_plugin_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %0 = load ptr, ptr @active_stack, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call)
  %cmp = icmp ugt i32 %call, 4095
  %spec.store.select = select i1 %cmp, i32 -7, i32 %call
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry.if.end2_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.then ], [ 0, %entry.if.end2_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_cluster_stack_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull @cluster_stack_name)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_cluster_stack_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp1 = icmp eq i8 %1, 10
  %spec.select = select i1 %cmp1, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp5.not = icmp eq i32 %spec.select, 4
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call i32 @strnlen(ptr noundef %buf, i32 noundef 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp7.not = icmp eq i32 %call, 4
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @ocfs2_stack_lock) #12
  %2 = load ptr, ptr @active_stack, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @cluster_stack_name, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %count. = select i1 %tobool13.not, i32 %count, i32 -16
  br label %if.end17

if.else16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %buf, align 1
  store i32 %4, ptr @cluster_stack_name, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then11
  %ret.0 = phi i32 [ %count, %if.else16 ], [ %count., %if.then11 ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ocfs2_stack_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end17 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ocfs2_dlm_recover_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.41, i32 3)
  ret i32 2
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !86, !87, !88, !90, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/stackglue.c", i32 171, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ocfs2_stack_glue_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ocfs2_stack_glue_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ocfs2/stackglue.c", i32 175, i32 3}
!8 = !{ptr @ocfs2_stack_glue_register._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ocfs2_stack_glue_register._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_ocfs2_stack_glue_register, !11, !"__ksymtab_ocfs2_stack_glue_register", i1 false, i1 false}
!11 = !{!"../fs/ocfs2/stackglue.c", i32 183, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/stackglue.c", i32 196, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ocfs2_stack_glue_unregister._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ocfs2_stack_glue_unregister._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/stackglue.c", i32 199, i32 3}
!19 = !{ptr @ocfs2_stack_glue_unregister._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ocfs2_stack_glue_unregister._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_ocfs2_stack_glue_unregister, !22, !"__ksymtab_ocfs2_stack_glue_unregister", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/stackglue.c", i32 204, i32 1}
!23 = !{ptr @__ksymtab_ocfs2_stack_glue_set_max_proto_version, !24, !"__ksymtab_ocfs2_stack_glue_set_max_proto_version", i1 false, i1 false}
!24 = !{!"../fs/ocfs2/stackglue.c", i32 222, i32 1}
!25 = !{ptr @__ksymtab_ocfs2_dlm_lock, !26, !"__ksymtab_ocfs2_dlm_lock", i1 false, i1 false}
!26 = !{!"../fs/ocfs2/stackglue.c", i32 245, i32 1}
!27 = !{ptr @__ksymtab_ocfs2_dlm_unlock, !28, !"__ksymtab_ocfs2_dlm_unlock", i1 false, i1 false}
!28 = !{!"../fs/ocfs2/stackglue.c", i32 255, i32 1}
!29 = !{ptr @__ksymtab_ocfs2_dlm_lock_status, !30, !"__ksymtab_ocfs2_dlm_lock_status", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/stackglue.c", i32 261, i32 1}
!31 = !{ptr @__ksymtab_ocfs2_dlm_lvb_valid, !32, !"__ksymtab_ocfs2_dlm_lvb_valid", i1 false, i1 false}
!32 = !{!"../fs/ocfs2/stackglue.c", i32 267, i32 1}
!33 = !{ptr @__ksymtab_ocfs2_dlm_lvb, !34, !"__ksymtab_ocfs2_dlm_lvb", i1 false, i1 false}
!34 = !{!"../fs/ocfs2/stackglue.c", i32 273, i32 1}
!35 = !{ptr @__ksymtab_ocfs2_dlm_dump_lksb, !36, !"__ksymtab_ocfs2_dlm_dump_lksb", i1 false, i1 false}
!36 = !{!"../fs/ocfs2/stackglue.c", i32 279, i32 1}
!37 = !{ptr @__ksymtab_ocfs2_stack_supports_plocks, !38, !"__ksymtab_ocfs2_stack_supports_plocks", i1 false, i1 false}
!38 = !{!"../fs/ocfs2/stackglue.c", i32 285, i32 1}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/ocfs2/stackglue.c", i32 294, i32 2}
!41 = !{ptr @__ksymtab_ocfs2_plock, !42, !"__ksymtab_ocfs2_plock", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/stackglue.c", i32 299, i32 1}
!43 = !{ptr @__ksymtab_ocfs2_cluster_connect, !44, !"__ksymtab_ocfs2_cluster_connect", i1 false, i1 false}
!44 = !{!"../fs/ocfs2/stackglue.c", i32 370, i32 1}
!45 = !{ptr @__ksymtab_ocfs2_cluster_connect_agnostic, !46, !"__ksymtab_ocfs2_cluster_connect_agnostic", i1 false, i1 false}
!46 = !{!"../fs/ocfs2/stackglue.c", i32 389, i32 1}
!47 = !{ptr @__ksymtab_ocfs2_cluster_disconnect, !48, !"__ksymtab_ocfs2_cluster_disconnect", i1 false, i1 false}
!48 = !{!"../fs/ocfs2/stackglue.c", i32 410, i32 1}
!49 = !{ptr @__ksymtab_ocfs2_cluster_hangup, !50, !"__ksymtab_ocfs2_cluster_hangup", i1 false, i1 false}
!50 = !{!"../fs/ocfs2/stackglue.c", i32 458, i32 1}
!51 = !{ptr @__ksymtab_ocfs2_cluster_this_node, !52, !"__ksymtab_ocfs2_cluster_this_node", i1 false, i1 false}
!52 = !{!"../fs/ocfs2/stackglue.c", i32 465, i32 1}
!53 = !{ptr @__ksymtab_ocfs2_kset, !54, !"__ksymtab_ocfs2_kset", i1 false, i1 false}
!54 = !{!"../fs/ocfs2/stackglue.c", i32 619, i32 1}
!55 = !{ptr @__UNIQUE_ID_author213, !56, !"__UNIQUE_ID_author213", i1 false, i1 false}
!56 = !{!"../fs/ocfs2/stackglue.c", i32 693, i32 1}
!57 = !{ptr @__UNIQUE_ID_description214, !58, !"__UNIQUE_ID_description214", i1 false, i1 false}
!58 = !{!"../fs/ocfs2/stackglue.c", i32 694, i32 1}
!59 = !{ptr @__UNIQUE_ID_file215, !60, !"__UNIQUE_ID_file215", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/stackglue.c", i32 695, i32 1}
!61 = !{ptr @__UNIQUE_ID_license216, !60, !"__UNIQUE_ID_license216", i1 false, i1 false}
!62 = !{ptr @__initcall__kmod_ocfs2_stackglue__217_696_ocfs2_stack_glue_init6, !63, !"__initcall__kmod_ocfs2_stackglue__217_696_ocfs2_stack_glue_init6", i1 false, i1 false}
!63 = !{!"../fs/ocfs2/stackglue.c", i32 696, i32 1}
!64 = !{ptr @__exitcall_ocfs2_stack_glue_exit, !65, !"__exitcall_ocfs2_stack_glue_exit", i1 false, i1 false}
!65 = !{!"../fs/ocfs2/stackglue.c", i32 697, i32 1}
!66 = !{ptr @locking_max_version, !67, !"locking_max_version", i1 false, i1 false}
!67 = !{!"../fs/ocfs2/stackglue.c", i32 29, i32 38}
!68 = !{ptr @cluster_stack_name, !69, !"cluster_stack_name", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/stackglue.c", i32 32, i32 13}
!70 = !{ptr @active_stack, !71, !"active_stack", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/stackglue.c", i32 39, i32 35}
!72 = !{ptr @ocfs2_kset, !73, !"ocfs2_kset", i1 false, i1 false}
!73 = !{!"../fs/ocfs2/stackglue.c", i32 618, i32 14}
!74 = !{ptr @ocfs2_table_header, !75, !"ocfs2_table_header", i1 false, i1 false}
!75 = !{!"../fs/ocfs2/stackglue.c", i32 664, i32 33}
!76 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ocfs2/stackglue.c", i32 30, i32 8}
!78 = !{ptr @ocfs2_stack_lock, !77, !"ocfs2_stack_lock", i1 false, i1 false}
!79 = !{ptr @ocfs2_stack_list, !80, !"ocfs2_stack_list", i1 false, i1 false}
!80 = !{!"../fs/ocfs2/stackglue.c", i32 31, i32 8}
!81 = !{ptr @.str.12, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ocfs2/stackglue.c", i32 110, i32 22}
!83 = !{ptr @.str.13, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ocfs2/stackglue.c", i32 120, i32 3}
!85 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ocfs2_stack_driver_get._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ocfs2_stack_driver_get._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.15, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ocfs2/stackglue.c", i32 128, i32 17}
!90 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ocfs2/stackglue.c", i32 132, i32 3}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ocfs2/stackglue.c", i32 137, i32 3}
!94 = !{ptr @ocfs2_stack_driver_get._entry.17, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ocfs2_stack_driver_get._entry_ptr.19, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ocfs2/stackglue.c", i32 141, i32 3}
!98 = !{ptr @ocfs2_stack_driver_get._entry.20, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ocfs2_stack_driver_get._entry_ptr.22, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ocfs2/stackglue.c", i32 422, i32 12}
!102 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ocfs2/stackglue.c", i32 423, i32 12}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/stackglue.c", i32 428, i32 12}
!106 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ocfs2/stackglue.c", i32 429, i32 12}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ocfs2/stackglue.c", i32 434, i32 3}
!110 = !{ptr @.str.28, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @ocfs2_leave_group._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @ocfs2_leave_group._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ocfs2_hb_ctl_path, !114, !"ocfs2_hb_ctl_path", i1 false, i1 false}
!114 = !{!"../fs/ocfs2/stackglue.c", i32 33, i32 13}
!115 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ocfs2/stackglue.c", i32 674, i32 39}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ocfs2/stackglue.c", i32 676, i32 3}
!119 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ocfs2_stack_glue_init._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ocfs2_stack_glue_init._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ocfs2/stackglue.c", i32 655, i32 15}
!124 = !{ptr @ocfs2_nm_table, !125, !"ocfs2_nm_table", i1 false, i1 false}
!125 = !{!"../fs/ocfs2/stackglue.c", i32 653, i32 25}
!126 = !{ptr @.str.33, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ocfs2/stackglue.c", i32 630, i32 35}
!128 = !{ptr @ocfs2_attr_group, !129, !"ocfs2_attr_group", i1 false, i1 false}
!129 = !{!"../fs/ocfs2/stackglue.c", i32 614, i32 37}
!130 = !{ptr @ocfs2_attrs, !131, !"ocfs2_attrs", i1 false, i1 false}
!131 = !{!"../fs/ocfs2/stackglue.c", i32 605, i32 26}
!132 = !{ptr @.str.34, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ocfs2/stackglue.c", i32 489, i32 2}
!134 = !{ptr @ocfs2_attr_max_locking_protocol, !135, !"ocfs2_attr_max_locking_protocol", i1 false, i1 false}
!135 = !{!"../fs/ocfs2/stackglue.c", i32 488, i32 30}
!136 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ocfs2/stackglue.c", i32 480, i32 34}
!138 = !{ptr @.str.36, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ocfs2/stackglue.c", i32 517, i32 2}
!140 = !{ptr @ocfs2_attr_loaded_cluster_plugins, !141, !"ocfs2_attr_loaded_cluster_plugins", i1 false, i1 false}
!141 = !{!"../fs/ocfs2/stackglue.c", i32 516, i32 30}
!142 = !{ptr @.str.37, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ocfs2/stackglue.c", i32 501, i32 31}
!144 = !{ptr @.str.38, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ocfs2/stackglue.c", i32 539, i32 2}
!146 = !{ptr @ocfs2_attr_active_cluster_plugin, !147, !"ocfs2_attr_active_cluster_plugin", i1 false, i1 false}
!147 = !{!"../fs/ocfs2/stackglue.c", i32 538, i32 30}
!148 = !{ptr @.str.39, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ocfs2/stackglue.c", i32 588, i32 2}
!150 = !{ptr @ocfs2_attr_cluster_stack, !151, !"ocfs2_attr_cluster_stack", i1 false, i1 false}
!151 = !{!"../fs/ocfs2/stackglue.c", i32 587, i32 30}
!152 = !{ptr @.str.40, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ocfs2/stackglue.c", i32 602, i32 2}
!154 = !{ptr @ocfs2_attr_dlm_recover_support, !155, !"ocfs2_attr_dlm_recover_support", i1 false, i1 false}
!155 = !{!"../fs/ocfs2/stackglue.c", i32 601, i32 30}
!156 = !{ptr @.str.41, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ocfs2/stackglue.c", i32 598, i32 34}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"branch_weights", i32 1, i32 2000}
!168 = !{i64 2153258162, i64 2153258646, i64 2153258199, i64 2153258255, i64 2153258289, i64 2153258313, i64 2153258354, i64 2153258375, i64 2153258403, i64 2153258437}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2153275895, i64 2153280441, i64 2153275932, i64 2153275988, i64 2153276022, i64 2153276046, i64 2153276087, i64 2153276108, i64 2153276136, i64 2153276170}
!171 = !{i64 2153281559, i64 2153282044, i64 2153281596, i64 2153281652, i64 2153281686, i64 2153281710, i64 2153281751, i64 2153281772, i64 2153281800, i64 2153281834}
!172 = !{i64 2153283160, i64 2153283645, i64 2153283197, i64 2153283253, i64 2153283287, i64 2153283311, i64 2153283352, i64 2153283373, i64 2153283401, i64 2153283435}
!173 = !{i64 2153289560, i64 2153290045, i64 2153289597, i64 2153289653, i64 2153289687, i64 2153289711, i64 2153289752, i64 2153289773, i64 2153289801, i64 2153289835}
!174 = !{i64 2153296483, i64 2153296968, i64 2153296520, i64 2153296576, i64 2153296610, i64 2153296634, i64 2153296675, i64 2153296696, i64 2153296724, i64 2153296758}
!175 = !{i64 2153299534, i64 2153300019, i64 2153299571, i64 2153299627, i64 2153299661, i64 2153299685, i64 2153299726, i64 2153299747, i64 2153299775, i64 2153299809}
!176 = !{i64 2153316914, i64 2153317399, i64 2153316951, i64 2153317007, i64 2153317041, i64 2153317065, i64 2153317106, i64 2153317127, i64 2153317155, i64 2153317189}
!177 = !{i64 2153318523, i64 2153319008, i64 2153318560, i64 2153318616, i64 2153318650, i64 2153318674, i64 2153318715, i64 2153318736, i64 2153318764, i64 2153318798}
!178 = !{i64 2153320156, i64 2153320641, i64 2153320193, i64 2153320249, i64 2153320283, i64 2153320307, i64 2153320348, i64 2153320369, i64 2153320397, i64 2153320431}
!179 = !{i64 2153267925, i64 2153268410, i64 2153267962, i64 2153268018, i64 2153268052, i64 2153268076, i64 2153268117, i64 2153268138, i64 2153268166, i64 2153268200}
!180 = !{i64 2153269538, i64 2153270023, i64 2153269575, i64 2153269631, i64 2153269665, i64 2153269689, i64 2153269730, i64 2153269751, i64 2153269779, i64 2153269813}
!181 = !{i64 2153325403, i64 2153325888, i64 2153325440, i64 2153325496, i64 2153325530, i64 2153325554, i64 2153325595, i64 2153325616, i64 2153325644, i64 2153325678}
!182 = !{i64 2153330441, i64 2153330926, i64 2153330478, i64 2153330534, i64 2153330568, i64 2153330592, i64 2153330633, i64 2153330654, i64 2153330682, i64 2153330716}
!183 = !{i64 2153332046, i64 2153332531, i64 2153332083, i64 2153332139, i64 2153332173, i64 2153332197, i64 2153332238, i64 2153332259, i64 2153332287, i64 2153332321}
