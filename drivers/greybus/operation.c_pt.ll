; ModuleID = '/llk/IR_all_yes/drivers/greybus/operation.c_pt.bc'
source_filename = "../drivers/greybus/operation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gb_operation_result\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_result\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_result\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_result:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_result\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_result:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_response_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_response_alloc\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_response_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_response_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_response_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_response_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_create_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_create_flags\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_create_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_create_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_create_flags\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_create_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_get_payload_size_max\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_get_payload_size_max\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_get_payload_size_max\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_get_payload_size_max:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_get_payload_size_max\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_get_payload_size_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_get\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_get\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_get\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_put\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_put\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_put:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_put\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_request_send\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_request_send\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_request_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_request_send:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_request_send\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_request_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_request_send_sync_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_request_send_sync_timeout\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_request_send_sync_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_request_send_sync_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_request_send_sync_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_request_send_sync_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+greybus_message_sent\22, \22a\22\09"
module asm "\09.weak\09__crc_greybus_message_sent\09\09\09\09"
module asm "\09.long\09__crc_greybus_message_sent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_greybus_message_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22greybus_message_sent\22\09\09\09\09\09"
module asm "__kstrtabns_greybus_message_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_cancel\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_cancel\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_cancel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_sync_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_sync_timeout\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_sync_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_sync_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_sync_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_sync_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gb_operation_unidirectional_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_gb_operation_unidirectional_timeout\09\09\09\09"
module asm "\09.long\09__crc_gb_operation_unidirectional_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gb_operation_unidirectional_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22gb_operation_unidirectional_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_gb_operation_unidirectional_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.gb_host_device = type { %struct.device, i32, ptr, %struct.list_head, %struct.list_head, %struct.ida, i32, i32, ptr, [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_hd_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/greybus/operation.c\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_gb_operation_result = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_result = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_result = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_result to i32), ptr @__kstrtab_gb_operation_result, ptr @__kstrtabns_gb_operation_result }, section "___ksymtab_gpl+gb_operation_result", align 4
@__kstrtab_gb_operation_response_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_response_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_response_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_response_alloc to i32), ptr @__kstrtab_gb_operation_response_alloc, ptr @__kstrtabns_gb_operation_response_alloc }, section "___ksymtab_gpl+gb_operation_response_alloc", align 4
@gb_operation_create_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gb_operation_create_flags.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@gb_operation_create_flags.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_gb_operation_create_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_create_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_create_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_create_flags to i32), ptr @__kstrtab_gb_operation_create_flags, ptr @__kstrtabns_gb_operation_create_flags }, section "___ksymtab_gpl+gb_operation_create_flags", align 4
@__kstrtab_gb_operation_get_payload_size_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_get_payload_size_max = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_get_payload_size_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_get_payload_size_max to i32), ptr @__kstrtab_gb_operation_get_payload_size_max, ptr @__kstrtabns_gb_operation_get_payload_size_max }, section "___ksymtab_gpl+gb_operation_get_payload_size_max", align 4
@__kstrtab_gb_operation_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_get to i32), ptr @__kstrtab_gb_operation_get, ptr @__kstrtabns_gb_operation_get }, section "___ksymtab_gpl+gb_operation_get", align 4
@__kstrtab_gb_operation_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_put = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_put to i32), ptr @__kstrtab_gb_operation_put, ptr @__kstrtabns_gb_operation_put }, section "___ksymtab_gpl+gb_operation_put", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_gb_operation_request_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_request_send = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_request_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_request_send to i32), ptr @__kstrtab_gb_operation_request_send, ptr @__kstrtabns_gb_operation_request_send }, section "___ksymtab_gpl+gb_operation_request_send", align 4
@__kstrtab_gb_operation_request_send_sync_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_request_send_sync_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_request_send_sync_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_request_send_sync_timeout to i32), ptr @__kstrtab_gb_operation_request_send_sync_timeout, ptr @__kstrtabns_gb_operation_request_send_sync_timeout }, section "___ksymtab_gpl+gb_operation_request_send_sync_timeout", align 4
@greybus_message_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 892, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: error sending response 0x%02x: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"greybus_message_sent\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@greybus_message_sent._entry_ptr = internal global ptr @greybus_message_sent._entry, section ".printk_index", align 4
@gb_operation_completion_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_greybus_message_sent = external dso_local constant [0 x i8], align 1
@__kstrtabns_greybus_message_sent = external dso_local constant [0 x i8], align 1
@__ksymtab_greybus_message_sent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @greybus_message_sent to i32), ptr @__kstrtab_greybus_message_sent, ptr @__kstrtabns_greybus_message_sent }, section "___ksymtab_gpl+greybus_message_sent", align 4
@gb_connection_recv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.gb_connection_recv = private unnamed_addr constant [19 x i8] c"gb_connection_recv\00", align 1
@gb_connection_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.gb_connection_recv, ptr @.str, i32 1036, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: dropping %zu received bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gb_connection_recv._entry_ptr = internal global ptr @gb_connection_recv._entry, section ".printk_index", align 4
@gb_connection_recv._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gb_connection_recv._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.gb_connection_recv, ptr @.str, i32 1042, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: short message received\0A\00", [36 x i8] zeroinitializer }, align 32
@gb_connection_recv._entry_ptr.13 = internal global ptr @gb_connection_recv._entry.11, section ".printk_index", align 4
@gb_connection_recv._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gb_connection_recv._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.gb_connection_recv, ptr @.str, i32 1054, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: incomplete message 0x%04x of type 0x%02x received (%zu < %zu)\0A\00", [61 x i8] zeroinitializer }, align 32
@gb_connection_recv._entry_ptr.17 = internal global ptr @gb_connection_recv._entry.15, section ".printk_index", align 4
@gb_operation_cancellation_queue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.57, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @gb_operation_cancellation_queue, i64 44), ptr getelementptr (i8, ptr @gb_operation_cancellation_queue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_gb_operation_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_cancel to i32), ptr @__kstrtab_gb_operation_cancel, ptr @__kstrtabns_gb_operation_cancel }, section "___ksymtab_gpl+gb_operation_cancel", align 4
@gb_operation_sync_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 1163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: synchronous operation id 0x%04x of type 0x%02x failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_operation_sync_timeout\00", [38 x i8] zeroinitializer }, align 32
@gb_operation_sync_timeout._entry_ptr = internal global ptr @gb_operation_sync_timeout._entry, section ".printk_index", align 4
@__kstrtab_gb_operation_sync_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_sync_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_sync_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_sync_timeout to i32), ptr @__kstrtab_gb_operation_sync_timeout, ptr @__kstrtabns_gb_operation_sync_timeout }, section "___ksymtab_gpl+gb_operation_sync_timeout", align 4
@gb_operation_unidirectional_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 1216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: unidirectional operation of type 0x%02x failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"gb_operation_unidirectional_timeout\00", [60 x i8] zeroinitializer }, align 32
@gb_operation_unidirectional_timeout._entry_ptr = internal global ptr @gb_operation_unidirectional_timeout._entry, section ".printk_index", align 4
@__kstrtab_gb_operation_unidirectional_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_gb_operation_unidirectional_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_gb_operation_unidirectional_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gb_operation_unidirectional_timeout to i32), ptr @__kstrtab_gb_operation_unidirectional_timeout, ptr @__kstrtabns_gb_operation_unidirectional_timeout }, section "___ksymtab_gpl+gb_operation_unidirectional_timeout", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gb_message_cache\00", [47 x i8] zeroinitializer }, align 32
@gb_message_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gb_operation_cache\00", [45 x i8] zeroinitializer }, align 32
@gb_operation_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"greybus_completion\00", [45 x i8] zeroinitializer }, align 32
@gb_operation_message_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 370, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"requested message size too big (%zu > %zu)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_operation_message_alloc\00", [37 x i8] zeroinitializer }, align 32
@gb_operation_message_alloc._entry_ptr = internal global ptr @gb_operation_message_alloc._entry, section ".printk_index", align 4
@gb_operation_create_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&operation->timer)\00", [44 x i8] zeroinitializer }, align 32
@gb_operation_create_common.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&operation->work)\00", [60 x i8] zeroinitializer }, align 32
@gb_operation_request_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: unexpected incoming request of type 0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gb_operation_request_handle\00", [36 x i8] zeroinitializer }, align 32
@gb_operation_request_handle._entry_ptr = internal global ptr @gb_operation_request_handle._entry, section ".printk_index", align 4
@gb_operation_request_handle._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: failed to send response %d for type 0x%02x: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@gb_operation_request_handle._entry_ptr.34 = internal global ptr @gb_operation_request_handle._entry.32, section ".printk_index", align 4
@gb_operation_response_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 837, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request result already set\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_operation_response_send\00", [37 x i8] zeroinitializer }, align 32
@gb_operation_response_send._entry_ptr = internal global ptr @gb_operation_response_send._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_gb_operation_create = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/greybus/greybus_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_gb_operation_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_gb_operation_create_core = external dso_local global %struct.tracepoint, align 4
@trace_gb_operation_create_core.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_operation_destroy = external dso_local global %struct.tracepoint, align 4
@trace_gb_operation_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gb_operations_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gb_operations_lock\00", [45 x i8] zeroinitializer }, align 32
@__tracepoint_gb_operation_get_active = external dso_local global %struct.tracepoint, align 4
@trace_gb_operation_get_active.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_message_send = external dso_local global %struct.tracepoint, align 4
@trace_gb_message_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_operation_put_active = external dso_local global %struct.tracepoint, align 4
@trace_gb_operation_put_active.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gb_connection_recv_response._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gb_connection_recv_response = private unnamed_addr constant [28 x i8] c"gb_connection_recv_response\00", align 1
@gb_connection_recv_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.gb_connection_recv_response, ptr @.str, i32 972, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: invalid response id 0 received\0A\00", [60 x i8] zeroinitializer }, align 32
@gb_connection_recv_response._entry_ptr = internal global ptr @gb_connection_recv_response._entry, section ".printk_index", align 4
@gb_connection_recv_response._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gb_connection_recv_response._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.gb_connection_recv_response, ptr @.str, i32 980, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: unexpected response id 0x%04x received\0A\00", [52 x i8] zeroinitializer }, align 32
@gb_connection_recv_response._entry_ptr.46 = internal global ptr @gb_connection_recv_response._entry.44, section ".printk_index", align 4
@gb_connection_recv_response._rs.47 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gb_connection_recv_response._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.gb_connection_recv_response, ptr @.str, i32 991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: malformed response 0x%02x received (%zu > %zu)\0A\00", [44 x i8] zeroinitializer }, align 32
@gb_connection_recv_response._entry_ptr.50 = internal global ptr @gb_connection_recv_response._entry.48, section ".printk_index", align 4
@gb_connection_recv_response._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gb_connection_recv_response._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.gb_connection_recv_response, ptr @.str, i32 1000, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: short response 0x%02x received (%zu < %zu)\0A\00", [48 x i8] zeroinitializer }, align 32
@gb_connection_recv_response._entry_ptr.54 = internal global ptr @gb_connection_recv_response._entry.52, section ".printk_index", align 4
@__tracepoint_gb_message_recv_response = external dso_local global %struct.tracepoint, align 4
@trace_gb_message_recv_response.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gb_connection_recv_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 930, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: can't create incoming operation\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gb_connection_recv_request\00", [37 x i8] zeroinitializer }, align 32
@gb_connection_recv_request._entry_ptr = internal global ptr @gb_connection_recv_request._entry, section ".printk_index", align 4
@__tracepoint_gb_operation_create_incoming = external dso_local global %struct.tracepoint, align 4
@trace_gb_operation_create_incoming.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_message_recv_request = external dso_local global %struct.tracepoint, align 4
@trace_gb_message_recv_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gb_message_cancel_outgoing = external dso_local global %struct.tracepoint, align 4
@trace_gb_message_cancel_outgoing.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"gb_operation_cancellation_queue.lock\00", [59 x i8] zeroinitializer }, align 32
@__tracepoint_gb_message_cancel_incoming = external dso_local global %struct.tracepoint, align 4
@trace_gb_message_cancel_incoming.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967243]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967243]
@__sancov_gen_cov_switch_values.60 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 255]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967243]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967181, i64 4294967243]
@__sancov_gen_cov_switch_values.63 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 4294967186, i64 4294967203, i64 4294967206, i64 4294967212, i64 4294967274, i64 4294967277, i64 4294967284, i64 4294967285, i64 4294967292]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 4294967181, i64 4294967186, i64 4294967243]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 184, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 890, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"gb_operation_completion_wq\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 23, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1035, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1041, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1050, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [32 x i8] c"gb_operation_cancellation_queue\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1161, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1214, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1227, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"gb_message_cache\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 20, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1233, i32 41 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"gb_operation_cache\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 19, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1239, i32 47 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 369, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 544, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 551, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 245, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 254, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 837, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 87, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [35 x i8] c"../drivers/greybus/greybus_trace.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 130, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 108, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"gb_operations_lock\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 31, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 970, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 978, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 988, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 997, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 928, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [31 x i8] c"../drivers/greybus/operation.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 26, i32 8 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__ksymtab_gb_operation_cancel, ptr @__ksymtab_gb_operation_create_flags, ptr @__ksymtab_gb_operation_get, ptr @__ksymtab_gb_operation_get_payload_size_max, ptr @__ksymtab_gb_operation_put, ptr @__ksymtab_gb_operation_request_send, ptr @__ksymtab_gb_operation_request_send_sync_timeout, ptr @__ksymtab_gb_operation_response_alloc, ptr @__ksymtab_gb_operation_result, ptr @__ksymtab_gb_operation_sync_timeout, ptr @__ksymtab_gb_operation_unidirectional_timeout, ptr @__ksymtab_greybus_message_sent, ptr @gb_connection_recv._entry, ptr @gb_connection_recv._entry.11, ptr @gb_connection_recv._entry.15, ptr @gb_connection_recv._entry_ptr, ptr @gb_connection_recv._entry_ptr.13, ptr @gb_connection_recv._entry_ptr.17, ptr @gb_connection_recv_request._entry, ptr @gb_connection_recv_request._entry_ptr, ptr @gb_connection_recv_response._entry, ptr @gb_connection_recv_response._entry.44, ptr @gb_connection_recv_response._entry.48, ptr @gb_connection_recv_response._entry.52, ptr @gb_connection_recv_response._entry_ptr, ptr @gb_connection_recv_response._entry_ptr.46, ptr @gb_connection_recv_response._entry_ptr.50, ptr @gb_connection_recv_response._entry_ptr.54, ptr @gb_operation_message_alloc._entry, ptr @gb_operation_message_alloc._entry_ptr, ptr @gb_operation_request_handle._entry, ptr @gb_operation_request_handle._entry.32, ptr @gb_operation_request_handle._entry_ptr, ptr @gb_operation_request_handle._entry_ptr.34, ptr @gb_operation_response_send._entry, ptr @gb_operation_response_send._entry_ptr, ptr @gb_operation_sync_timeout._entry, ptr @gb_operation_sync_timeout._entry_ptr, ptr @gb_operation_unidirectional_timeout._entry, ptr @gb_operation_unidirectional_timeout._entry_ptr, ptr @greybus_message_sent._entry, ptr @greybus_message_sent._entry_ptr, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @gb_operation_completion_wq, ptr @gb_connection_recv._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @gb_connection_recv._rs.10, ptr @.str.12, ptr @gb_connection_recv._rs.14, ptr @.str.16, ptr @gb_operation_cancellation_queue, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @gb_message_cache, ptr @.str.23, ptr @gb_operation_cache, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @gb_operation_create_common.__key, ptr @.str.27, ptr @gb_operation_create_common.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @init_completion.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @gb_operations_lock, ptr @.str.41, ptr @gb_connection_recv_response._rs, ptr @.str.42, ptr @gb_connection_recv_response._rs.43, ptr @.str.45, ptr @gb_connection_recv_response._rs.47, ptr @.str.49, ptr @gb_connection_recv_response._rs.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_message_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_completion_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_cancellation_queue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_sync_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_unidirectional_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_message_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_message_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_create_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_create_common.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_request_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_request_handle._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operation_response_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_operations_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._rs.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_response._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_connection_recv_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_operation_result(ptr nocapture noundef readonly %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %errno = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 6
  %0 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errno, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end42_crit_edge [
    i32 -53, label %entry.if.end42.sink.split_crit_edge
    i32 -115, label %do.end36
  ], !prof !187

entry.if.end42.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.end36:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %do.end36, %entry.if.end42.sink.split_crit_edge
  %.sink = phi i32 [ 185, %do.end36 ], [ 184, %entry.if.end42.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #11
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %entry.if.end42_crit_edge
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gb_operation_response_alloc(ptr noundef %operation, i32 noundef %response_size, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %type2 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 4
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type2, align 4
  %6 = or i8 %5, -128
  %call = tail call fastcc ptr @gb_operation_message_alloc(ptr noundef %3, i8 noundef zeroext %6, i32 noundef %response_size, i32 noundef %gfp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %operation, ptr %call, align 4
  %request = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 4
  %header = getelementptr inbounds %struct.gb_message, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %header, align 4
  %operation_id = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %operation_id to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %operation_id, align 1
  %header5 = getelementptr inbounds %struct.gb_message, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %header5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %header5, align 4
  %operation_id6 = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %operation_id6 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %13, ptr %operation_id6, align 1
  %response7 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 2
  %17 = ptrtoint ptr %response7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %response7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %18 = xor i1 %tobool.not, true
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gb_operation_message_alloc(ptr noundef %hd, i8 noundef zeroext %type, i32 noundef %payload_size, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %payload_size, 8
  %buffer_size_max = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 7
  %0 = ptrtoint ptr %buffer_size_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_size_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %hd, ptr noundef nonnull @.str.25, i32 noundef %add, i32 noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @gb_message_cache, align 4
  %or.i = or i32 %gfp_flags, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef %or.i) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %or.i) #15
  %buffer = getelementptr inbounds %struct.gb_message, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %buffer, align 8
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %err_free_message, label %if.end8

if.end8:                                          ; preds = %if.end8.i.i
  %header1.i = getelementptr inbounds %struct.gb_message, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %header1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %header1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload_size)
  %tobool.not.i = icmp eq i32 %payload_size, 0
  %add.ptr.i = getelementptr %struct.gb_operation_msg_hdr, ptr %call9.i.i, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %payload.i = getelementptr inbounds %struct.gb_message, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i, ptr %payload.i, align 8
  %payload_size2.i = getelementptr inbounds %struct.gb_message, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %payload_size2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %payload_size, ptr %payload_size2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %type)
  %cmp.not.i = icmp eq i8 %type, 127
  br i1 %cmp.not.i, label %if.end8.cleanup_crit_edge, label %if.then.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %7 = trunc i32 %payload_size to i16
  %conv4.i = add i16 %7, 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #11
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %call9.i.i, align 128
  %operation_id5.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %call9.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %operation_id5.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %operation_id5.i, align 2
  %type6.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %call9.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %type6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %type, ptr %type6.i, align 4
  %result.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %call9.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %result.i, align 1
  br label %cleanup

err_free_message:                                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load ptr, ptr @gb_message_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free_message, %if.then.i, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %err_free_message ], [ null, %if.end.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gb_operation_create_flags(ptr noundef %connection, i8 noundef zeroext %type, i32 noundef %request_size, i32 noundef %response_size, i32 noundef %flags, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %type)
  %cmp = icmp eq i8 %type, 127
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b182 = load i1, ptr @gb_operation_create_flags.__already_done, align 1
  br i1 %.b182, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !188

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @gb_operation_create_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 582, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %type)
  %tobool42.not = icmp sgt i8 %type, -1
  br i1 %tobool42.not, label %if.end39.if.end88_crit_edge, label %land.rhs50

if.end39.if.end88_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.rhs50:                                       ; preds = %if.end39
  %.b178181 = load i1, ptr @gb_operation_create_flags.__already_done.1, align 1
  br i1 %.b178181, label %land.rhs50.if.end88_crit_edge, label %if.then61, !prof !188

land.rhs50.if.end88_crit_edge:                    ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then61:                                        ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @gb_operation_create_flags.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then61, %land.rhs50.if.end88_crit_edge, %if.end39.if.end88_crit_edge
  %and99 = and i8 %type, 127
  %and103 = and i32 %flags, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end88.if.end150_crit_edge, label %land.rhs112

if.end88.if.end150_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

land.rhs112:                                      ; preds = %if.end88
  %.b179180 = load i1, ptr @gb_operation_create_flags.__already_done.2, align 1
  br i1 %.b179180, label %land.rhs112.if.end150_crit_edge, label %if.then123, !prof !188

land.rhs112.if.end150_crit_edge:                  ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then123:                                       ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @gb_operation_create_flags.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 9, ptr noundef null) #11
  br label %if.end150

if.end150:                                        ; preds = %if.then123, %land.rhs112.if.end150_crit_edge, %if.end88.if.end150_crit_edge
  %and160 = and i32 %flags, 6
  %call = tail call fastcc ptr @gb_operation_create_common(ptr noundef %connection, i8 noundef zeroext %and99, i32 noundef %request_size, i32 noundef %response_size, i32 noundef %and160, i32 noundef %gfp)
  %tobool162.not = icmp eq ptr %call, null
  br i1 %tobool162.not, label %if.end150.cleanup_crit_edge, label %if.then163

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then163:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_gb_operation_create(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then163, %if.end150.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ %call, %if.then163 ], [ null, %if.end150.cleanup_crit_edge ], [ null, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gb_operation_create_common(ptr noundef %connection, i8 noundef zeroext %type, i32 noundef %request_size, i32 noundef %response_size, i32 noundef %op_flags, i32 noundef %gfp_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %2 = load ptr, ptr @gb_operation_cache, align 4
  %or.i = or i32 %gfp_flags, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef %or.i) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %connection, ptr %call.i, align 8
  %call3 = tail call fastcc ptr @gb_operation_message_alloc(ptr noundef %1, i8 noundef zeroext %type, i32 noundef %request_size, i32 noundef %gfp_flags)
  %request = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %request, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.err_cache_crit_edge, label %if.end7

if.end.err_cache_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cache

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %call3, align 4
  %and = and i32 %op_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %type2.i = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %type2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type2.i, align 8
  %12 = or i8 %11, -128
  %call.i53 = tail call fastcc ptr @gb_operation_message_alloc(ptr noundef %9, i8 noundef zeroext %12, i32 noundef %response_size, i32 noundef %gfp_flags) #11
  %tobool.not.i = icmp eq ptr %call.i53, null
  br i1 %tobool.not.i, label %err_request, label %do.body

do.body:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call.i53 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %call.i53, align 4
  %14 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %request, align 4
  %header.i = getelementptr inbounds %struct.gb_message, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %header.i, align 4
  %operation_id.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %operation_id.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %operation_id.i, align 1
  %header5.i = getelementptr inbounds %struct.gb_message, ptr %call.i53, i32 0, i32 1
  %20 = ptrtoint ptr %header5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %header5.i, align 4
  %operation_id6.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %operation_id6.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %19, ptr %operation_id6.i, align 1
  %response7.i = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %response7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i53, ptr %response7.i, align 8
  %timer = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 10
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @gb_operation_timeout, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @gb_operation_create_common.__key) #11
  br label %if.end15

if.end15:                                         ; preds = %do.body, %if.end7.if.end15_crit_edge
  %flags = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %op_flags, ptr %flags, align 4
  %type16 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %type16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %type, ptr %type16, align 8
  %errno = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -53, ptr %errno, align 4
  %work = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #11
  %27 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @gb_operation_create_common.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry21 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry21, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gb_operation_work, ptr %func, align 4
  %completion = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %completion, align 8
  %wait.i = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #11
  %kref = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %32 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %kref, align 8
  %waiters = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %waiters, i32 noundef 4) #11
  %33 = ptrtoint ptr %waiters to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %waiters, align 4
  br label %cleanup

err_request:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %request, align 4
  %buffer.i = getelementptr inbounds %struct.gb_message, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %37) #11
  %38 = load ptr, ptr @gb_message_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %35) #11
  br label %err_cache

err_cache:                                        ; preds = %err_request, %if.end.err_cache_crit_edge
  %39 = load ptr, ptr @gb_operation_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %39, ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_cache, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end15 ], [ null, %err_cache ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_operation_create(ptr noundef %operation) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create, i32 0, i32 1), ptr blockaddress(@trace_gb_operation_create, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  %call42 = tail call i32 @__traceiter_gb_operation_create(ptr noundef null, ptr noundef %operation) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_operation_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_operation_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 130, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gb_operation_create_core(ptr noundef %connection, i8 noundef zeroext %type, i32 noundef %request_size, i32 noundef %response_size, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %flags, 8
  %call = tail call fastcc ptr @gb_operation_create_common(ptr noundef %connection, i8 noundef zeroext %type, i32 noundef %request_size, i32 noundef %response_size, i32 noundef %or, i32 noundef %gfp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trace_gb_operation_create_core(ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_operation_create_core(ptr noundef %operation) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create_core, i32 0, i32 1), ptr blockaddress(@trace_gb_operation_create_core, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !194
  %call42 = tail call i32 @__traceiter_gb_operation_create_core(ptr noundef null, ptr noundef %operation) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !195
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create_core, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create_core, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_operation_create_core.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_operation_create_core.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 135, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gb_operation_get_payload_size_max(ptr nocapture noundef readonly %connection) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %buffer_size_max = getelementptr inbounds %struct.gb_host_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %buffer_size_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_size_max, align 8
  %sub = add i32 %3, -8
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_operation_get(ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !196
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !197

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_operation_put(ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %operation, null
  br i1 %tobool.not, label %do.end, label %if.end23.critedge, !prof !197

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end23.critedge:                                ; preds = %entry
  %kref = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !199
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !188

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %return

if.then.i:                                        ; preds = %if.end23.critedge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !200
  tail call fastcc void @trace_gb_operation_destroy(ptr noundef nonnull %operation) #11
  %response.i.i = getelementptr %struct.gb_operation, ptr %operation, i32 0, i32 2
  %1 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %response.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i._gb_operation_destroy.exit.i_crit_edge, label %if.then.i.i

if.then.i._gb_operation_destroy.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_gb_operation_destroy.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %buffer.i.i.i = getelementptr inbounds %struct.gb_message, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer.i.i.i, align 4
  tail call void @kfree(ptr noundef %4) #11
  %5 = load ptr, ptr @gb_message_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef nonnull %2) #11
  br label %_gb_operation_destroy.exit.i

_gb_operation_destroy.exit.i:                     ; preds = %if.then.i.i, %if.then.i._gb_operation_destroy.exit.i_crit_edge
  %request.i.i = getelementptr %struct.gb_operation, ptr %operation, i32 0, i32 1
  %6 = ptrtoint ptr %request.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request.i.i, align 4
  %buffer.i6.i.i = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %buffer.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.i6.i.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %10 = load ptr, ptr @gb_message_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef %7) #11
  %11 = load ptr, ptr @gb_operation_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef nonnull %operation) #11
  br label %return

return:                                           ; preds = %_gb_operation_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_operation_request_send(ptr noundef %operation, ptr noundef %callback, i32 noundef %timeout, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %flags.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %callback, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %callback4 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 8
  %4 = ptrtoint ptr %callback4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %callback, ptr %callback4, align 4
  %flags.i50 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i50, align 4
  %and.i51 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.i52.not = icmp eq i32 %and.i51, 0
  br i1 %tobool.i52.not, label %if.else, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %op_cycle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %op_cycle, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr %op_cycle, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %op_cycle, ptr %op_cycle, i32 1, ptr elementtype(i32) %op_cycle) #11, !srcloc !202
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  %rem = urem i32 %asmresult.i.i.i.i, 65535
  %8 = trunc i32 %rem to i16
  %conv = add nuw i16 %8, 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end3.if.end9_crit_edge
  %.sink = phi i16 [ %conv, %if.else ], [ 0, %if.end3.if.end9_crit_edge ]
  %9 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink, ptr %9, align 2
  %request = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %11 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request, align 4
  %header10 = getelementptr inbounds %struct.gb_message, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %header10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %header10, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %.sink)
  %operation_id = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %operation_id to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %operation_id, align 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gb_operations_lock) #11
  %errno.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 6
  %17 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %errno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53, i32 %18)
  %cmp6.i = icmp eq i32 %18, -53
  %..i = select i1 %cmp6.i, i32 -115, i32 -84
  %19 = ptrtoint ptr %errno.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %..i, ptr %errno.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gb_operations_lock, i32 noundef %call3.i) #11
  br i1 %cmp6.i, label %if.end9.gb_operation_result_set.exit_crit_edge, label %do.end23.i, !prof !188

if.end9.gb_operation_result_set.exit_crit_edge:   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_result_set.exit

do.end23.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #11
  br label %gb_operation_result_set.exit

gb_operation_result_set.exit:                     ; preds = %do.end23.i, %if.end9.gb_operation_result_set.exit_crit_edge
  %kref.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #11, !srcloc !196
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %gb_operation_result_set.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !197

gb_operation_result_set.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %gb_operation_result_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %gb_operation_result_set.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.gb_operation_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.gb_operation_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %gb_operation_result_set.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %gb_operation_result_set.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %gb_operation_get.exit

gb_operation_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.gb_operation_get.exit_crit_edge
  %call13 = tail call fastcc i32 @gb_operation_get_active(ptr noundef %operation)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %gb_operation_get.exit.err_put_crit_edge

gb_operation_get.exit.err_put_crit_edge:          ; preds = %gb_operation_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end16:                                         ; preds = %gb_operation_get.exit
  %22 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %request, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call fastcc void @trace_gb_message_send(ptr noundef %23) #11
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %driver.i = getelementptr inbounds %struct.gb_host_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver.i, align 4
  %message_send.i = getelementptr inbounds %struct.gb_hd_driver, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %message_send.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %message_send.i, align 4
  %hd_cport_id.i = getelementptr inbounds %struct.gb_connection, ptr %27, i32 0, i32 4
  %34 = ptrtoint ptr %hd_cport_id.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hd_cport_id.i, align 4
  %call.i = tail call i32 %33(ptr noundef %29, i16 noundef zeroext %35, ptr noundef %23, i32 noundef %gfp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end21, label %err_put_active

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool22.not = icmp eq i32 %timeout, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #11
  %add25 = add i32 %call2.i, %36
  %timer = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 10
  %expires = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add25, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #11
  br label %cleanup

err_put_active:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @gb_operation_put_active(ptr noundef %operation)
  br label %err_put

err_put:                                          ; preds = %err_put_active, %gb_operation_get.exit.err_put_crit_edge
  %ret.0 = phi i32 [ %call13, %gb_operation_get.exit.err_put_crit_edge ], [ %call.i, %err_put_active ]
  tail call void @gb_operation_put(ptr noundef %operation)
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.then23, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gb_operation_result_set(ptr nocapture noundef %operation, i32 noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %result)
  %cmp = icmp eq i32 %result, -115
  br i1 %cmp, label %do.body1, label %if.end37

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gb_operations_lock) #11
  %errno = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 6
  %0 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53, i32 %1)
  %cmp6 = icmp eq i32 %1, -53
  %. = select i1 %cmp6, i32 -115, i32 -84
  %2 = ptrtoint ptr %errno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %., ptr %errno, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gb_operations_lock, i32 noundef %call3) #11
  br i1 %cmp6, label %do.body1.cleanup_crit_edge, label %do.end23, !prof !188

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end23:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53, i32 %result)
  %cmp39 = icmp eq i32 %result, -53
  br i1 %cmp39, label %do.end56, label %if.end37.if.end62_crit_edge, !prof !197

if.end37.if.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.end56:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef null) #11
  br label %if.end62

if.end62:                                         ; preds = %do.end56, %if.end37.if.end62_crit_edge
  %call81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gb_operations_lock) #11
  %errno86 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 6
  %3 = ptrtoint ptr %errno86 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %errno86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %4)
  %cmp87 = icmp eq i32 %4, -115
  br i1 %cmp87, label %if.then89, label %if.end62.if.end91_crit_edge

if.end62.if.end91_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then89:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select = select i1 %cmp39, i32 -84, i32 %result
  %5 = ptrtoint ptr %errno86 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %errno86, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end62.if.end91_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gb_operations_lock, i32 noundef %call81) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end23, %do.body1.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp87, %if.end91 ], [ true, %do.end23 ], [ true, %do.body1.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_operation_get_active(ptr noundef %operation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %lock = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %state = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 3, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %flags.i28 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i28, align 4
  %and.i29 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.i30.not = icmp eq i32 %and.i29, 0
  br i1 %tobool.i30.not, label %sw.bb7.cleanup_crit_edge, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %active = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 13
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11 = icmp eq i32 %10, 0
  br i1 %cmp11, label %if.then13, label %sw.epilog.if.end14_crit_edge

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %sw.epilog
  %links = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 14
  %operations = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %links, ptr noundef %12, ptr noundef %operations) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.if.end14_crit_edge

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %links, ptr %prev.i, align 4
  %14 = ptrtoint ptr %links to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %operations, ptr %links, align 4
  %prev3.i.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %links, ptr %12, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i, %if.then13.if.end14_crit_edge, %sw.epilog.if.end14_crit_edge
  tail call fastcc void @trace_gb_operation_get_active(ptr noundef %operation)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -107, %entry.cleanup_crit_edge ], [ -107, %sw.bb7.cleanup_crit_edge ], [ -107, %sw.bb.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gb_operation_put_active(ptr noundef %operation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %operation, align 4
  %lock = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call fastcc void @trace_gb_operation_put_active(ptr noundef %operation)
  %active = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 13
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  br i1 %cmp6, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %links = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 14
  %call.i.i17 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %links) #11
  br i1 %call.i.i17, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %links, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %links to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %links, align 4
  %prev.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 14, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %waiters = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %waiters, i32 noundef 4) #11
  %12 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %waiters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %list_del.exit.if.end10_crit_edge, label %if.then9

list_del.exit.if.end10_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wake_up(ptr noundef nonnull @gb_operation_cancellation_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %list_del.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef %operation, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gb_operation_request_send(ptr noundef %operation, ptr noundef nonnull @gb_operation_sync_callback, i32 noundef %timeout, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %completion = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 9
  %call1 = tail call i32 @wait_for_completion_interruptible(ptr noundef %completion) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_operation_cancel(ptr noundef %operation, i32 noundef -125)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %errno.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 6
  %0 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errno.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %if.end3.cleanup_crit_edge [
    i32 -53, label %if.end3.if.end42.sink.split.i_crit_edge
    i32 -115, label %do.end36.i
  ], !prof !187

if.end3.if.end42.sink.split.i_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end36.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i

if.end42.sink.split.i:                            ; preds = %do.end36.i, %if.end3.if.end42.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 185, %do.end36.i ], [ 184, %if.end3.if.end42.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end42.sink.split.i, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %1, %if.end3.cleanup_crit_edge ], [ %1, %if.end42.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_operation_sync_callback(ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 9
  tail call void @complete(ptr noundef %completion) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_operation_cancel(ptr noundef %operation, i32 noundef %errno) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end21.critedge, label %do.end, !prof !188

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1073, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end21.critedge:                                ; preds = %entry
  %call22 = tail call fastcc zeroext i1 @gb_operation_result_set(ptr noundef %operation, i32 noundef %errno)
  br i1 %call22, label %if.then23, label %if.end21.critedge.if.end25_crit_edge

if.end21.critedge.if.end25_crit_edge:             ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %request = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %driver.i = getelementptr inbounds %struct.gb_host_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i, align 4
  %message_cancel.i = getelementptr inbounds %struct.gb_hd_driver, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %message_cancel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %message_cancel.i, align 4
  tail call void %13(ptr noundef %3) #11
  %14 = load ptr, ptr @gb_operation_completion_wq, align 4
  %work = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.critedge.if.end25_crit_edge
  %request26 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 1
  %15 = ptrtoint ptr %request26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request26, align 4
  tail call fastcc void @trace_gb_message_cancel_outgoing(ptr noundef %16)
  %waiters = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %waiters, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %waiters, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %waiters, ptr %waiters, i32 1, ptr elementtype(i32) %waiters) #11, !srcloc !204
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1084) #11
  %18 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %operation, align 4
  %lock.i = getelementptr inbounds %struct.gb_connection, ptr %19, i32 0, i32 11
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %active.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 13
  %20 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i55.not = icmp eq i32 %21, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br i1 %tobool.i55.not, label %if.end25.do.end43_crit_edge, label %if.end36

if.end25.do.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

if.end36:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %22 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call3762 = call i32 @prepare_to_wait_event(ptr noundef nonnull @gb_operation_cancellation_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %operation, align 4
  %lock.i5663 = getelementptr inbounds %struct.gb_connection, ptr %24, i32 0, i32 11
  %call3.i5764 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i5663) #11
  %25 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i59.not65 = icmp eq i32 %26, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i5663, i32 noundef %call3.i5764) #11
  br i1 %tobool.i59.not65, label %if.end36.for.end_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  br label %cleanup

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  call void @schedule() #11
  %call37 = call i32 @prepare_to_wait_event(ptr noundef nonnull @gb_operation_cancellation_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %27 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %operation, align 4
  %lock.i56 = getelementptr inbounds %struct.gb_connection, ptr %28, i32 0, i32 11
  %call3.i57 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i56) #11
  %29 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %active.i, align 4
  %tobool.i59.not = icmp eq i32 %30, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i56, i32 noundef %call3.i57) #11
  br i1 %tobool.i59.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end36.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @gb_operation_cancellation_queue, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end43

do.end43:                                         ; preds = %for.end, %if.end25.do.end43_crit_edge
  %call.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %waiters, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %waiters, i32 1, i32 3, i32 1) #11
  %31 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %waiters, ptr %waiters, i32 1, ptr elementtype(i32) %waiters) #11, !srcloc !205
  br label %return

return:                                           ; preds = %do.end43, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @greybus_message_sent(ptr nocapture readnone %hd, ptr noundef readonly %message, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %response = getelementptr inbounds %struct.gb_operation, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %response, align 4
  %cmp = icmp eq ptr %5, %message
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 14
  %type = getelementptr inbounds %struct.gb_operation, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %conv, i32 noundef %status) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call fastcc void @gb_operation_put_active(ptr noundef %1)
  tail call void @gb_operation_put(ptr noundef %1)
  br label %if.end13

if.else:                                          ; preds = %entry
  br i1 %tobool.not, label %lor.lhs.false, label %if.else.if.then7_crit_edge

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.gb_operation, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.else.if.then7_crit_edge
  %call8 = tail call fastcc zeroext i1 @gb_operation_result_set(ptr noundef %1, i32 noundef %status)
  br i1 %call8, label %if.then9, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = load ptr, ptr @gb_operation_completion_wq, align 4
  %work = getelementptr inbounds %struct.gb_operation, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then7.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge, %if.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_connection_recv(ptr noundef %connection, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %state = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 9
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end7, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @gb_connection_recv._rs, ptr noundef nonnull @__func__.gb_connection_recv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %size) #14
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp8 = icmp ult i32 %size, 8
  br i1 %cmp8, label %do.body10, label %if.end22

do.body10:                                        ; preds = %if.end7
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @gb_connection_recv._rs.10, ptr noundef nonnull @__func__.gb_connection_recv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %do.end16

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  %name17 = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %name17) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %data, align 1
  %header.sroa.0.0.extract.shift = lshr i64 %7, 48
  %header.sroa.0.0.extract.trunc = trunc i64 %header.sroa.0.0.extract.shift to i16
  %header.sroa.5.0.extract.shift = lshr i64 %7, 32
  %header.sroa.5.0.extract.trunc = trunc i64 %header.sroa.5.0.extract.shift to i16
  %header.sroa.9.0.extract.shift = lshr i64 %7, 24
  %header.sroa.9.0.extract.trunc = trunc i64 %header.sroa.9.0.extract.shift to i8
  %header.sroa.15.0.extract.shift = lshr i64 %7, 16
  %header.sroa.15.0.extract.trunc = trunc i64 %header.sroa.15.0.extract.shift to i8
  %8 = tail call i16 @llvm.bswap.i16(i16 %header.sroa.0.0.extract.trunc)
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %size)
  %cmp24 = icmp ugt i32 %conv, %size
  br i1 %cmp24, label %do.body27, label %if.end41

do.body27:                                        ; preds = %if.end22
  %call28 = tail call i32 @___ratelimit(ptr noundef nonnull @gb_connection_recv._rs.14, ptr noundef nonnull @__func__.gb_connection_recv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %do.end33

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  %name34 = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  %9 = tail call i16 @llvm.bswap.i16(i16 %header.sroa.5.0.extract.trunc)
  %conv36 = zext i16 %9 to i32
  %10 = trunc i64 %header.sroa.9.0.extract.shift to i32
  %conv37 = and i32 %10, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %name34, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %size, i32 noundef %conv) #14
  br label %cleanup

if.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %header.sroa.9.0.extract.trunc)
  %tobool44.not = icmp sgt i8 %header.sroa.9.0.extract.trunc, -1
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end41
  %11 = tail call i16 @llvm.bswap.i16(i16 %header.sroa.5.0.extract.trunc) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %header.sroa.5.0.extract.trunc)
  %tobool.not.i = icmp eq i16 %header.sroa.5.0.extract.trunc, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.then45
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @gb_connection_recv_response._rs, ptr noundef nonnull @__func__.gb_connection_recv_response) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connection, align 4
  %name.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.42, ptr noundef %name.i) #14
  br label %cleanup

if.end7.i:                                        ; preds = %if.then45
  %lock.i.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #11
  %operations.i.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 13
  %14 = ptrtoint ptr %operations.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn33.i.i = load ptr, ptr %operations.i.i, align 4
  %cmp7.not34.i.i = icmp eq ptr %.pn33.i.i, %operations.i.i
  br i1 %cmp7.not34.i.i, label %if.end7.i.gb_operation_find_outgoing.exit.thread.i_crit_edge, label %if.end7.i.for.body.i.i_crit_edge

if.end7.i.for.body.i.i_crit_edge:                 ; preds = %if.end7.i
  br label %for.body.i.i

if.end7.i.gb_operation_find_outgoing.exit.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_find_outgoing.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end7.i.for.body.i.i_crit_edge
  %.pn35.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn33.i.i, %if.end7.i.for.body.i.i_crit_edge ]
  %id.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -170
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %11)
  %cmp11.i.i = icmp eq i16 %16, %11
  br i1 %cmp11.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %flags.i.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -176
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %flags.i.i.i.le = getelementptr i8, ptr %.pn35.i.i, i32 -176
  %kref.i.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -12
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i.i.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i.i, ptr %kref.i.i.i, i32 1, ptr elementtype(i32) %kref.i.i.i) #11, !srcloc !196
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !197

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.gb_operation_find_outgoing.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.gb_operation_find_outgoing.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_find_outgoing.exit.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #11
  br label %gb_operation_find_outgoing.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %21 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i.i = load ptr, ptr %.pn35.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, %operations.i.i
  br i1 %cmp7.not.i.i, label %for.inc.i.i.gb_operation_find_outgoing.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.gb_operation_find_outgoing.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_find_outgoing.exit.thread.i

gb_operation_find_outgoing.exit.thread.i:         ; preds = %for.inc.i.i.gb_operation_find_outgoing.exit.thread.i_crit_edge, %if.end7.i.gb_operation_find_outgoing.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  br label %do.body11.i

gb_operation_find_outgoing.exit.i:                ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.gb_operation_find_outgoing.exit.i_crit_edge
  %operation.0.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -188
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #11
  %tobool9.not.i = icmp eq ptr %operation.0.i.i, null
  br i1 %tobool9.not.i, label %gb_operation_find_outgoing.exit.i.do.body11.i_crit_edge, label %if.end25.i

gb_operation_find_outgoing.exit.i.do.body11.i_crit_edge: ; preds = %gb_operation_find_outgoing.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

do.body11.i:                                      ; preds = %gb_operation_find_outgoing.exit.i.do.body11.i_crit_edge, %gb_operation_find_outgoing.exit.thread.i
  %call12.i = tail call i32 @___ratelimit(ptr noundef nonnull @gb_connection_recv_response._rs.43, ptr noundef nonnull @__func__.gb_connection_recv_response) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.cleanup_crit_edge, label %do.end17.i

do.body11.i.cleanup_crit_edge:                    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end17.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %connection, align 4
  %name20.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  %conv.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.45, ptr noundef %name20.i, i32 noundef %conv.i) #14
  br label %cleanup

if.end25.i:                                       ; preds = %gb_operation_find_outgoing.exit.i
  %24 = zext i8 %header.sroa.15.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %header.sroa.15.0.extract.trunc, label %sw.default.i.i [
    i8 0, label %gb_operation_status_map.exit.i
    i8 1, label %if.end25.i.if.else.thread.i_crit_edge
    i8 2, label %sw.bb2.i.i
    i8 3, label %sw.bb3.i.i
    i8 4, label %sw.bb4.i.i
    i8 5, label %sw.bb5.i.i
    i8 6, label %sw.bb6.i.i
    i8 7, label %sw.bb7.i.i
    i8 8, label %sw.bb8.i.i
    i8 -1, label %sw.bb9.i.i
  ]

if.end25.i.if.else.thread.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb2.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb3.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb4.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb5.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb6.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb7.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb8.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.bb9.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

sw.default.i.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread.i

if.else.thread.i:                                 ; preds = %sw.default.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %if.end25.i.if.else.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -110, %sw.bb2.i.i ], [ -12, %sw.bb3.i.i ], [ -93, %sw.bb4.i.i ], [ -90, %sw.bb5.i.i ], [ -22, %sw.bb6.i.i ], [ -11, %sw.bb7.i.i ], [ -19, %sw.bb8.i.i ], [ -84, %sw.bb9.i.i ], [ -5, %sw.default.i.i ], [ -4, %if.end25.i.if.else.thread.i_crit_edge ]
  %response118.i = getelementptr i8, ptr %.pn35.i.i, i32 -180
  %25 = ptrtoint ptr %response118.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %response118.i, align 4
  br label %if.end72.i

gb_operation_status_map.exit.i:                   ; preds = %if.end25.i
  %response.i = getelementptr i8, ptr %.pn35.i.i, i32 -180
  %27 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %response.i, align 4
  %payload_size.i = getelementptr inbounds %struct.gb_message, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %payload_size.i, align 4
  %add.i = add i32 %30, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp.i = icmp ult i32 %add.i, %conv
  br i1 %cmp.i, label %do.body30.i, label %land.lhs.true46.i

do.body30.i:                                      ; preds = %gb_operation_status_map.exit.i
  %call31.i = tail call i32 @___ratelimit(ptr noundef nonnull @gb_connection_recv_response._rs.47, ptr noundef nonnull @__func__.gb_connection_recv_response) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.if.end72.i_crit_edge, label %do.end36.i

do.body30.i.if.end72.i_crit_edge:                 ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

do.end36.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connection, align 4
  %name39.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  %33 = trunc i64 %header.sroa.9.0.extract.shift to i32
  %conv41.i = and i32 %33, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.49, ptr noundef %name39.i, i32 noundef %conv41.i, i32 noundef %conv, i32 noundef %add.i) #14
  br label %if.end72.i

land.lhs.true46.i:                                ; preds = %gb_operation_status_map.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv)
  %cmp47.i = icmp ugt i32 %add.i, %conv
  br i1 %cmp47.i, label %if.then49.i, label %land.lhs.true46.i.if.end72.i_crit_edge

land.lhs.true46.i.if.end72.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

if.then49.i:                                      ; preds = %land.lhs.true46.i
  %34 = ptrtoint ptr %flags.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i.i.le, align 4
  %and.i.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body54.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add nsw i32 %conv, -8
  %36 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i, ptr %payload_size.i, align 4
  br label %if.end72.i

do.body54.i:                                      ; preds = %if.then49.i
  %call55.i = tail call i32 @___ratelimit(ptr noundef nonnull @gb_connection_recv_response._rs.51, ptr noundef nonnull @__func__.gb_connection_recv_response) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.if.end72.i_crit_edge, label %do.end60.i

do.body54.i.if.end72.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72.i

do.end60.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %connection, align 4
  %name63.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  %39 = trunc i64 %header.sroa.9.0.extract.shift to i32
  %conv66.i = and i32 %39, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.53, ptr noundef %name63.i, i32 noundef %conv66.i, i32 noundef %conv, i32 noundef %add.i) #14
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end60.i, %do.body54.i.if.end72.i_crit_edge, %if.then51.i, %land.lhs.true46.i.if.end72.i_crit_edge, %do.end36.i, %do.body30.i.if.end72.i_crit_edge, %if.else.thread.i
  %errno.0134.i = phi i32 [ 0, %if.then51.i ], [ 0, %land.lhs.true46.i.if.end72.i_crit_edge ], [ %retval.0.i.ph.i, %if.else.thread.i ], [ -90, %do.body54.i.if.end72.i_crit_edge ], [ -90, %do.end60.i ], [ -90, %do.body30.i.if.end72.i_crit_edge ], [ -90, %do.end36.i ]
  %40 = phi ptr [ %28, %if.then51.i ], [ %28, %land.lhs.true46.i.if.end72.i_crit_edge ], [ %26, %if.else.thread.i ], [ %28, %do.body54.i.if.end72.i_crit_edge ], [ %28, %do.end60.i ], [ %28, %do.body30.i.if.end72.i_crit_edge ], [ %28, %do.end36.i ]
  %41 = phi i32 [ %conv, %if.then51.i ], [ %conv, %land.lhs.true46.i.if.end72.i_crit_edge ], [ 8, %if.else.thread.i ], [ 8, %do.body54.i.if.end72.i_crit_edge ], [ 8, %do.end60.i ], [ 8, %do.body30.i.if.end72.i_crit_edge ], [ 8, %do.end36.i ]
  %call76.i = tail call fastcc zeroext i1 @gb_operation_result_set(ptr noundef nonnull %operation.0.i.i, i32 noundef %errno.0134.i) #11
  br i1 %call76.i, label %if.then77.i, label %if.end72.i.if.end79.i_crit_edge

if.end72.i.if.end79.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.then77.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  %buffer.i = getelementptr inbounds %struct.gb_message, ptr %40, i32 0, i32 4
  %42 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer.i, align 4
  %44 = call ptr @memcpy(ptr %43, ptr %data, i32 %41)
  tail call fastcc void @trace_gb_message_recv_response(ptr noundef %40) #11
  %45 = load ptr, ptr @gb_operation_completion_wq, align 4
  %work.i = getelementptr i8, ptr %.pn35.i.i, i32 -164
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %work.i) #11
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then77.i, %if.end72.i.if.end79.i_crit_edge
  tail call void @gb_operation_put(ptr noundef nonnull %operation.0.i.i) #11
  br label %cleanup

if.else:                                          ; preds = %if.end41
  %sub.i.i = add nsw i32 %conv, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %header.sroa.5.0.extract.trunc)
  %tobool.not.i.i = icmp eq i16 %header.sroa.5.0.extract.trunc, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 3, i32 1
  %call.i.i67 = tail call fastcc ptr @gb_operation_create_common(ptr noundef %connection, i8 noundef zeroext %header.sroa.9.0.extract.trunc, i32 noundef %sub.i.i, i32 noundef 127, i32 noundef %spec.select.i.i, i32 noundef 2592) #11
  %tobool1.not.i.i = icmp eq ptr %call.i.i67, null
  br i1 %tobool1.not.i.i, label %do.end.i69, label %if.end.i

do.end.i69:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %connection, align 4
  %name.i68 = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.55, ptr noundef %name.i68) #14
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %48 = tail call i16 @llvm.bswap.i16(i16 %header.sroa.5.0.extract.trunc) #11
  %id4.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i67, i32 0, i32 5
  %49 = ptrtoint ptr %id4.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %id4.i.i, align 2
  %request.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i67, i32 0, i32 1
  %50 = ptrtoint ptr %request.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %request.i.i, align 4
  %header.i.i = getelementptr inbounds %struct.gb_message, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %header.i.i, align 4
  %54 = call ptr @memcpy(ptr %53, ptr %data, i32 %conv)
  tail call fastcc void @trace_gb_operation_create_incoming(ptr noundef nonnull %call.i.i67) #11
  %call3.i = tail call fastcc i32 @gb_operation_get_active(ptr noundef nonnull %call.i.i67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i67) #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %55 = ptrtoint ptr %request.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %request.i.i, align 4
  tail call fastcc void @trace_gb_message_recv_request(ptr noundef %56) #11
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gb_operations_lock) #11
  %errno.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i67, i32 0, i32 6
  %57 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %errno.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53, i32 %58)
  %cmp6.i.i = icmp eq i32 %58, -53
  %..i.i = select i1 %cmp6.i.i, i32 -115, i32 -84
  %59 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %..i.i, ptr %errno.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gb_operations_lock, i32 noundef %call3.i.i) #11
  br i1 %cmp6.i.i, label %if.end6.i.if.then8.i_crit_edge, label %do.end23.i.i, !prof !188

if.end6.i.if.then8.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

do.end23.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #11
  br label %if.then8.i

if.then8.i:                                       ; preds = %do.end23.i.i, %if.end6.i.if.then8.i_crit_edge
  %wq.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 15
  %60 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wq.i, align 4
  %work.i70 = getelementptr inbounds %struct.gb_operation, ptr %call.i.i67, i32 0, i32 7
  %call.i23.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %61, ptr noundef %work.i70) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.then5.i, %do.end.i69, %if.end79.i, %do.end17.i, %do.body11.i.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end33, %do.body27.cleanup_crit_edge, %do.end16, %do.body10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_message_cancel_outgoing(ptr noundef %message) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_cancel_outgoing, i32 0, i32 1), ptr blockaddress(@trace_gb_message_cancel_outgoing, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !206
  %call42 = tail call i32 @__traceiter_gb_message_cancel_outgoing(ptr noundef null, ptr noundef %message) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_cancel_outgoing, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_cancel_outgoing, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_message_cancel_outgoing.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_message_cancel_outgoing.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 74, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_operation_cancel_incoming(ptr noundef %operation, i32 noundef %errno) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end22.critedge, !prof !197

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end22.critedge:                                ; preds = %entry
  %and.i61 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.i62.not = icmp eq i32 %and.i61, 0
  br i1 %tobool.i62.not, label %if.then24, label %if.end22.critedge.if.end29_crit_edge

if.end22.critedge.if.end29_crit_edge:             ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %if.end22.critedge
  %work = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 7
  %call25 = tail call zeroext i1 @flush_work(ptr noundef %work) #11
  %call26 = tail call fastcc zeroext i1 @gb_operation_result_set(ptr noundef %operation, i32 noundef %errno)
  br i1 %call26, label %if.then24.if.end29_crit_edge, label %if.then27

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %response = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 2
  %2 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %response, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %driver.i = getelementptr inbounds %struct.gb_host_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver.i, align 4
  %message_cancel.i = getelementptr inbounds %struct.gb_hd_driver, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %message_cancel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %message_cancel.i, align 4
  tail call void %13(ptr noundef %3) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24.if.end29_crit_edge, %if.end22.critedge.if.end29_crit_edge
  %response30 = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 2
  %14 = ptrtoint ptr %response30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %response30, align 4
  tail call fastcc void @trace_gb_message_cancel_incoming(ptr noundef %15)
  %waiters = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %waiters, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %waiters, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %waiters, ptr %waiters, i32 1, ptr elementtype(i32) %waiters) #11, !srcloc !204
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1111) #11
  %17 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %operation, align 4
  %lock.i = getelementptr inbounds %struct.gb_connection, ptr %18, i32 0, i32 11
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %active.i = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 13
  %19 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i63.not = icmp eq i32 %20, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #11
  br i1 %tobool.i63.not, label %if.end29.do.end47_crit_edge, label %if.end40

if.end29.do.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

if.end40:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %21 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call4170 = call i32 @prepare_to_wait_event(ptr noundef nonnull @gb_operation_cancellation_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %22 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %operation, align 4
  %lock.i6471 = getelementptr inbounds %struct.gb_connection, ptr %23, i32 0, i32 11
  %call3.i6572 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i6471) #11
  %24 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i67.not73 = icmp eq i32 %25, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i6471, i32 noundef %call3.i6572) #11
  br i1 %tobool.i67.not73, label %if.end40.for.end_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  br label %cleanup

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end40.cleanup_crit_edge
  call void @schedule() #11
  %call41 = call i32 @prepare_to_wait_event(ptr noundef nonnull @gb_operation_cancellation_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %26 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %operation, align 4
  %lock.i64 = getelementptr inbounds %struct.gb_connection, ptr %27, i32 0, i32 11
  %call3.i65 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i64) #11
  %28 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %active.i, align 4
  %tobool.i67.not = icmp eq i32 %29, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i64, i32 noundef %call3.i65) #11
  br i1 %tobool.i67.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end40.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @gb_operation_cancellation_queue, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end47

do.end47:                                         ; preds = %for.end, %if.end29.do.end47_crit_edge
  %call.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %waiters, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %waiters, i32 1, i32 3, i32 1) #11
  %30 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %waiters, ptr %waiters, i32 1, ptr elementtype(i32) %waiters) #11, !srcloc !205
  br label %return

return:                                           ; preds = %do.end47, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_message_cancel_incoming(ptr noundef %message) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_cancel_incoming, i32 0, i32 1), ptr blockaddress(@trace_gb_message_cancel_incoming, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %call42 = tail call i32 @__traceiter_gb_message_cancel_incoming(ptr noundef null, ptr noundef %message) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_cancel_incoming, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_cancel_incoming, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_message_cancel_incoming.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_message_cancel_incoming.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 80, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_operation_sync_timeout(ptr noundef %connection, i32 noundef %type, ptr noundef readonly %request, i32 noundef %request_size, ptr noundef writeonly %response, i32 noundef %response_size, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %response_size)
  %tobool.not = icmp eq i32 %response_size, 0
  %tobool1.not = icmp ne ptr %response, null
  %0 = or i1 %tobool1.not, %tobool.not
  br i1 %0, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_size)
  %tobool2.not = icmp eq i32 %request_size, 0
  %tobool4.not = icmp ne ptr %request, null
  %1 = or i1 %tobool4.not, %tobool2.not
  br i1 %1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i32 %type to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %conv)
  %cmp.i.i = icmp eq i8 %conv, 127
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b182.i.i = load i1, ptr @gb_operation_create_flags.__already_done, align 1
  br i1 %.b182.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !188

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @gb_operation_create_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 582, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %tobool42.not.i.i = icmp sgt i8 %conv, -1
  br i1 %tobool42.not.i.i, label %if.end39.i.i.if.end88.i.i_crit_edge, label %land.rhs50.i.i

if.end39.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i.i

land.rhs50.i.i:                                   ; preds = %if.end39.i.i
  %.b178181.i.i = load i1, ptr @gb_operation_create_flags.__already_done.1, align 1
  br i1 %.b178181.i.i, label %land.rhs50.i.i.if.end88.i.i_crit_edge, label %if.then61.i.i, !prof !188

land.rhs50.i.i.if.end88.i.i_crit_edge:            ; preds = %land.rhs50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i.i

if.then61.i.i:                                    ; preds = %land.rhs50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @gb_operation_create_flags.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #11
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then61.i.i, %land.rhs50.i.i.if.end88.i.i_crit_edge, %if.end39.i.i.if.end88.i.i_crit_edge
  %and99.i.i = and i8 %conv, 127
  %call.i.i = tail call fastcc ptr @gb_operation_create_common(ptr noundef %connection, i8 noundef zeroext %and99.i.i, i32 noundef %request_size, i32 noundef %response_size, i32 noundef 0, i32 noundef 3264) #11
  %tobool162.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool162.not.i.i, label %if.end88.i.i.cleanup_crit_edge, label %if.end7

if.end88.i.i.cleanup_crit_edge:                   ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end88.i.i
  tail call fastcc void @trace_gb_operation_create(ptr noundef nonnull %call.i.i) #11
  br i1 %tobool2.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %request10 = getelementptr inbounds %struct.gb_operation, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %request10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request10, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %payload, align 4
  %6 = call ptr @memcpy(ptr %5, ptr %request, i32 %request_size)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %call.i = tail call i32 @gb_operation_request_send(ptr noundef nonnull %call.i.i, ptr noundef nonnull @gb_operation_sync_callback, i32 noundef %timeout, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.end11
  %completion.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i, i32 0, i32 9
  %call1.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %completion.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_operation_cancel(ptr noundef nonnull %call.i.i, i32 noundef -125) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %errno.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %errno.i.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %8, label %if.end3.i.do.end_crit_edge [
    i32 -53, label %if.end3.i.if.end42.sink.split.i.i_crit_edge
    i32 -115, label %do.end36.i.i
    i32 0, label %if.else
  ], !prof !210

if.end3.i.if.end42.sink.split.i.i_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end36.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i.i

if.end42.sink.split.i.i:                          ; preds = %do.end36.i.i, %if.end3.i.if.end42.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 185, %do.end36.i.i ], [ 184, %if.end3.i.if.end42.sink.split.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i.i, i32 noundef 9, ptr noundef null) #11
  br label %do.end

do.end:                                           ; preds = %if.end42.sink.split.i.i, %if.end3.i.do.end_crit_edge, %if.end11.do.end_crit_edge
  %retval.0.i47 = phi i32 [ %8, %if.end42.sink.split.i.i ], [ %call.i, %if.end11.do.end_crit_edge ], [ %8, %if.end3.i.do.end_crit_edge ]
  %10 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connection, align 4
  %name = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  %id = getelementptr inbounds %struct.gb_operation, ptr %call.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id, align 2
  %conv15 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %conv15, i32 noundef %type, i32 noundef %retval.0.i47) #14
  br label %if.end21

if.else:                                          ; preds = %if.end3.i
  br i1 %tobool.not, label %if.else.if.end21_crit_edge, label %if.then17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %response18 = getelementptr inbounds %struct.gb_operation, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %response18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %response18, align 4
  %payload19 = getelementptr inbounds %struct.gb_message, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %payload19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %payload19, align 4
  %18 = call ptr @memcpy(ptr %response, ptr %17, i32 %response_size)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else.if.end21_crit_edge, %do.end
  %retval.0.i48 = phi i32 [ 0, %if.else.if.end21_crit_edge ], [ 0, %if.then17 ], [ %retval.0.i47, %do.end ]
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end88.i.i.cleanup_crit_edge, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i48, %if.end21 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then.i.i ], [ -12, %if.end88.i.i.cleanup_crit_edge ], [ -12, %land.rhs.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_operation_unidirectional_timeout(ptr noundef %connection, i32 noundef %type, ptr noundef readonly %request, i32 noundef %request_size, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_size)
  %tobool.not = icmp eq i32 %request_size, 0
  %tobool1.not = icmp ne ptr %request, null
  %0 = or i1 %tobool1.not, %tobool.not
  br i1 %0, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %type to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 127
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b182.i = load i1, ptr @gb_operation_create_flags.__already_done, align 1
  br i1 %.b182.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !188

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @gb_operation_create_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 582, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %tobool42.not.i = icmp sgt i8 %conv, -1
  br i1 %tobool42.not.i, label %if.end39.i.if.end88.i_crit_edge, label %land.rhs50.i

if.end39.i.if.end88.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

land.rhs50.i:                                     ; preds = %if.end39.i
  %.b178181.i = load i1, ptr @gb_operation_create_flags.__already_done.1, align 1
  br i1 %.b178181.i, label %land.rhs50.i.if.end88.i_crit_edge, label %if.then61.i, !prof !188

land.rhs50.i.if.end88.i_crit_edge:                ; preds = %land.rhs50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i

if.then61.i:                                      ; preds = %land.rhs50.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @gb_operation_create_flags.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #11
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then61.i, %land.rhs50.i.if.end88.i_crit_edge, %if.end39.i.if.end88.i_crit_edge
  %and99.i = and i8 %conv, 127
  %call.i = tail call fastcc ptr @gb_operation_create_common(ptr noundef %connection, i8 noundef zeroext %and99.i, i32 noundef %request_size, i32 noundef 0, i32 noundef 2, i32 noundef 3264) #11
  %tobool162.not.i = icmp eq ptr %call.i, null
  br i1 %tobool162.not.i, label %if.end88.i.cleanup_crit_edge, label %if.end4

if.end88.i.cleanup_crit_edge:                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end88.i
  tail call fastcc void @trace_gb_operation_create(ptr noundef nonnull %call.i) #11
  br i1 %tobool.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %request7 = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %request7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %request7, align 4
  %payload = getelementptr inbounds %struct.gb_message, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %payload, align 4
  %5 = call ptr @memcpy(ptr %4, ptr %request, i32 %request_size)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %call.i26 = tail call i32 @gb_operation_request_send(ptr noundef nonnull %call.i, ptr noundef nonnull @gb_operation_sync_callback, i32 noundef %timeout, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.end8
  %completion.i = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 9
  %call1.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %completion.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i27 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i27, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_operation_cancel(ptr noundef nonnull %call.i, i32 noundef -125) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %errno.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %errno.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %errno.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %7, label %if.end3.i.do.end_crit_edge [
    i32 -53, label %if.end3.i.if.end42.sink.split.i.i_crit_edge
    i32 -115, label %do.end36.i.i
    i32 0, label %if.end3.i.if.end12_crit_edge
  ], !prof !210

if.end3.i.if.end12_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end3.i.if.end42.sink.split.i.i_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end36.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i.i

if.end42.sink.split.i.i:                          ; preds = %do.end36.i.i, %if.end3.i.if.end42.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 185, %do.end36.i.i ], [ 184, %if.end3.i.if.end42.sink.split.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i.i, i32 noundef 9, ptr noundef null) #11
  br label %do.end

do.end:                                           ; preds = %if.end42.sink.split.i.i, %if.end3.i.do.end_crit_edge, %if.end8.do.end_crit_edge
  %retval.0.i2834 = phi i32 [ %7, %if.end42.sink.split.i.i ], [ %call.i26, %if.end8.do.end_crit_edge ], [ %7, %if.end3.i.do.end_crit_edge ]
  %9 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connection, align 4
  %name = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %type, i32 noundef %retval.0.i2834) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end3.i.if.end12_crit_edge
  %retval.0.i2835 = phi i32 [ %retval.0.i2834, %do.end ], [ %7, %if.end3.i.if.end12_crit_edge ]
  tail call void @gb_operation_put(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end88.i.cleanup_crit_edge, %if.then.i, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i2835, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then.i ], [ -12, %if.end88.i.cleanup_crit_edge ], [ -12, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_operation_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.22, i32 noundef 24, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @gb_message_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.23, i32 noundef 200, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  store ptr %call1, ptr @gb_operation_cache, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_destroy_message_cache_crit_edge, label %if.end4

if.end.err_destroy_message_cache_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_message_cache

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0) #11
  store ptr %call5, ptr @gb_operation_completion_wq, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %err_destroy_operation_cache, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

err_destroy_operation_cache:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @gb_operation_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  store ptr null, ptr @gb_operation_cache, align 4
  br label %err_destroy_message_cache

err_destroy_message_cache:                        ; preds = %err_destroy_operation_cache, %if.end.err_destroy_message_cache_crit_edge
  %1 = load ptr, ptr @gb_message_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  store ptr null, ptr @gb_message_cache, align 4
  br label %return

return:                                           ; preds = %err_destroy_message_cache, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %err_destroy_message_cache ], [ -12, %entry.return_crit_edge ], [ 0, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_operation_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gb_operation_completion_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #11
  store ptr null, ptr @gb_operation_completion_wq, align 4
  %1 = load ptr, ptr @gb_operation_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  store ptr null, ptr @gb_operation_cache, align 4
  %2 = load ptr, ptr @gb_message_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  store ptr null, ptr @gb_message_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_operation_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call81.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gb_operations_lock) #11
  %errno86.i = getelementptr i8, ptr %t, i32 -108
  %0 = ptrtoint ptr %errno86.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %errno86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %1)
  %cmp87.i = icmp eq i32 %1, -115
  br i1 %cmp87.i, label %if.then, label %gb_operation_result_set.exit

gb_operation_result_set.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gb_operations_lock, i32 noundef %call81.i) #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %errno86.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -110, ptr %errno86.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gb_operations_lock, i32 noundef %call81.i) #11
  %3 = load ptr, ptr @gb_operation_completion_wq, align 4
  %work = getelementptr i8, ptr %t, i32 -104
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %gb_operation_result_set.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_operation_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %flags.i = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %handler.i = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %5(ptr noundef %add.ptr) #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %name.i = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 14
  %type.i = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 4
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef %name.i, i32 noundef %conv.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i
  %status.0.i = phi i32 [ %call.i, %if.then.i ], [ -93, %do.end.i ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %response.i.i = getelementptr i8, ptr %work, i32 -16
  %12 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %response.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.if.end4.i.i_crit_edge

if.end.i.if.end4.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end4.i.i_crit_edge

land.lhs.true.i.i.if.end4.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %type2.i.i.i = getelementptr i8, ptr %work, i32 -8
  %18 = ptrtoint ptr %type2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type2.i.i.i, align 4
  %20 = or i8 %19, -128
  %call.i.i.i = tail call fastcc ptr @gb_operation_message_alloc(ptr noundef %17, i8 noundef zeroext %20, i32 noundef 0, i32 noundef 3264) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.do.end8.i_crit_edge, label %gb_operation_response_alloc.exit.thread.i.i

if.then.i.i.do.end8.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

gb_operation_response_alloc.exit.thread.i.i:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %call.i.i.i, align 4
  %request.i.i.i = getelementptr i8, ptr %work, i32 -20
  %22 = ptrtoint ptr %request.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %request.i.i.i, align 4
  %header.i.i.i = getelementptr inbounds %struct.gb_message, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %header.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %header.i.i.i, align 4
  %operation_id.i.i.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %operation_id.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %operation_id.i.i.i, align 1
  %header5.i.i.i = getelementptr inbounds %struct.gb_message, ptr %call.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %header5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %header5.i.i.i, align 4
  %operation_id6.i.i.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %operation_id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %27, ptr %operation_id6.i.i.i, align 1
  %31 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i, ptr %response.i.i, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %gb_operation_response_alloc.exit.thread.i.i, %land.lhs.true.i.i.if.end4.i.i_crit_edge, %if.end.i.if.end4.i.i_crit_edge
  %call5.i.i = tail call fastcc zeroext i1 @gb_operation_result_set(ptr noundef %add.ptr, i32 noundef %status.0.i) #11
  br i1 %call5.i.i, label %if.end7.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.35) #14
  br label %do.end8.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i38.i.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i.i)
  %tobool.i39.not.i.i = icmp eq i32 %and.i38.i.i, 0
  br i1 %tobool.i39.not.i.i, label %if.end10.i.i, label %if.end7.i.i.if.end6_crit_edge

if.end7.i.i.if.end6_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %kref.i.i.i = getelementptr i8, ptr %work, i32 152
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i.i.i, i32 1, i32 3, i32 1) #11
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i.i, ptr %kref.i.i.i, i32 1, ptr elementtype(i32) %kref.i.i.i) #11, !srcloc !196
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end10.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !197

if.end10.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end10.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %37 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.gb_operation_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !188

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.gb_operation_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end10.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end10.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #11
  br label %gb_operation_get.exit.i.i

gb_operation_get.exit.i.i:                        ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.gb_operation_get.exit.i.i_crit_edge
  %call11.i.i = tail call fastcc i32 @gb_operation_get_active(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %gb_operation_get.exit.i.i.err_put.i.i_crit_edge

gb_operation_get.exit.i.i.err_put.i.i_crit_edge:  ; preds = %gb_operation_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i.i

if.end14.i.i:                                     ; preds = %gb_operation_get.exit.i.i
  %38 = zext i32 %status.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %status.0.i, label %sw.default.i.i.i [
    i32 0, label %if.end14.i.i.gb_operation_errno_map.exit.i.i_crit_edge
    i32 -4, label %sw.bb1.i.i.i
    i32 -110, label %sw.bb2.i.i.i
    i32 -12, label %sw.bb3.i.i.i
    i32 -93, label %sw.bb4.i.i.i
    i32 -90, label %sw.bb5.i.i.i
    i32 -22, label %sw.bb6.i.i.i
    i32 -11, label %sw.bb7.i.i.i
    i32 -84, label %sw.bb8.i.i.i
    i32 -19, label %sw.bb9.i.i.i
  ]

if.end14.i.i.gb_operation_errno_map.exit.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gb_operation_errno_map.exit.i.i

gb_operation_errno_map.exit.i.i:                  ; preds = %sw.default.i.i.i, %sw.bb9.i.i.i, %sw.bb8.i.i.i, %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end14.i.i.gb_operation_errno_map.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ -2, %sw.default.i.i.i ], [ 8, %sw.bb9.i.i.i ], [ -1, %sw.bb8.i.i.i ], [ 7, %sw.bb7.i.i.i ], [ 6, %sw.bb6.i.i.i ], [ 5, %sw.bb5.i.i.i ], [ 4, %sw.bb4.i.i.i ], [ 3, %sw.bb3.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ 0, %if.end14.i.i.gb_operation_errno_map.exit.i.i_crit_edge ]
  %39 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %response.i.i, align 4
  %header.i.i = getelementptr inbounds %struct.gb_message, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %header.i.i, align 4
  %result.i.i = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %retval.0.i.i.i, ptr %result.i.i, align 1
  %44 = load ptr, ptr %response.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  tail call fastcc void @trace_gb_message_send(ptr noundef %44) #11
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %driver.i.i.i = getelementptr inbounds %struct.gb_host_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver.i.i.i, align 4
  %message_send.i.i.i = getelementptr inbounds %struct.gb_hd_driver, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %message_send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %message_send.i.i.i, align 4
  %hd_cport_id.i.i.i = getelementptr inbounds %struct.gb_connection, ptr %48, i32 0, i32 4
  %55 = ptrtoint ptr %hd_cport_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hd_cport_id.i.i.i, align 4
  %call.i40.i.i = tail call i32 %54(ptr noundef %50, i16 noundef zeroext %56, ptr noundef %44, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i.i)
  %tobool19.not.i.i = icmp eq i32 %call.i40.i.i, 0
  br i1 %tobool19.not.i.i, label %gb_operation_errno_map.exit.i.i.if.end6_crit_edge, label %err_put_active.i.i

gb_operation_errno_map.exit.i.i.if.end6_crit_edge: ; preds = %gb_operation_errno_map.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

err_put_active.i.i:                               ; preds = %gb_operation_errno_map.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @gb_operation_put_active(ptr noundef %add.ptr) #11
  br label %err_put.i.i

err_put.i.i:                                      ; preds = %err_put_active.i.i, %gb_operation_get.exit.i.i.err_put.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call11.i.i, %gb_operation_get.exit.i.i.err_put.i.i_crit_edge ], [ %call.i40.i.i, %err_put_active.i.i ]
  tail call void @gb_operation_put(ptr noundef %add.ptr) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %err_put.i.i, %do.end.i.i, %if.then.i.i.do.end8.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %if.then.i.i.do.end8.i_crit_edge ], [ -5, %do.end.i.i ], [ %ret.0.i.i, %err_put.i.i ]
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %name11.i = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 14
  %type13.i = getelementptr i8, ptr %work, i32 -8
  %59 = ptrtoint ptr %type13.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %type13.i, align 4
  %conv14.i = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.33, ptr noundef %name11.i, i32 noundef %status.0.i, i32 noundef %conv14.i, i32 noundef %retval.0.i.ph.i) #14
  br label %if.end6

if.else:                                          ; preds = %entry
  %timer = getelementptr i8, ptr %work, i32 104
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then2:                                         ; preds = %if.else
  %errno.i = getelementptr i8, ptr %work, i32 -4
  %61 = ptrtoint ptr %errno.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %errno.i, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %62, label %if.then2.if.end5_crit_edge [
    i32 -53, label %if.then2.if.end42.sink.split.i_crit_edge
    i32 -115, label %do.end36.i
    i32 -110, label %if.then4
  ], !prof !210

if.then2.if.end42.sink.split.i_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end36.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i

if.end42.sink.split.i:                            ; preds = %do.end36.i, %if.then2.if.end42.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 185, %do.end36.i ], [ 184, %if.then2.if.end42.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #11
  br label %if.end5

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %request = getelementptr i8, ptr %work, i32 -20
  %64 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %request, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %driver.i = getelementptr inbounds %struct.gb_host_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver.i, align 4
  %message_cancel.i = getelementptr inbounds %struct.gb_hd_driver, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %message_cancel.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %message_cancel.i, align 4
  tail call void %75(ptr noundef %65) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end42.sink.split.i, %if.then2.if.end5_crit_edge, %if.else.if.end5_crit_edge
  %callback = getelementptr i8, ptr %work, i32 44
  %76 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %callback, align 4
  tail call void %77(ptr noundef %add.ptr) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %do.end8.i, %gb_operation_errno_map.exit.i.i.if.end6_crit_edge, %if.end7.i.i.if.end6_crit_edge
  tail call fastcc void @gb_operation_put_active(ptr noundef %add.ptr)
  tail call void @gb_operation_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_operation_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_operation_create_core(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_operation_destroy(ptr noundef %operation) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_destroy, i32 0, i32 1), ptr blockaddress(@trace_gb_operation_destroy, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !211
  %call42 = tail call i32 @__traceiter_gb_operation_destroy(ptr noundef null, ptr noundef %operation) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_destroy, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_destroy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_operation_destroy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_operation_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 147, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_operation_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_operation_get_active(ptr noundef %operation) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_get_active, i32 0, i32 1), ptr blockaddress(@trace_gb_operation_get_active, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !213
  %call42 = tail call i32 @__traceiter_gb_operation_get_active(ptr noundef null, ptr noundef %operation) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_get_active, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_get_active, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_operation_get_active.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_operation_get_active.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 153, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_operation_get_active(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_message_send(ptr noundef %message) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_send, i32 0, i32 1), ptr blockaddress(@trace_gb_message_send, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !215
  %call42 = tail call i32 @__traceiter_gb_message_send(ptr noundef null, ptr noundef %message) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !216
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_message_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_message_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 57, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_message_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_operation_put_active(ptr noundef %operation) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_put_active, i32 0, i32 1), ptr blockaddress(@trace_gb_operation_put_active, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !217
  %call42 = tail call i32 @__traceiter_gb_operation_put_active(ptr noundef null, ptr noundef %operation) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !218
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_put_active, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_put_active, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_operation_put_active.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_operation_put_active.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 159, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_operation_put_active(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_message_recv_response(ptr noundef %message) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_recv_response, i32 0, i32 1), ptr blockaddress(@trace_gb_message_recv_response, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !219
  %call42 = tail call i32 @__traceiter_gb_message_recv_response(ptr noundef null, ptr noundef %message) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !220
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_recv_response, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_recv_response, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_message_recv_response.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_message_recv_response.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 68, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_message_recv_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_message_recv_request(ptr noundef %message) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_recv_request, i32 0, i32 1), ptr blockaddress(@trace_gb_message_recv_request, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %call42 = tail call i32 @__traceiter_gb_message_recv_request(ptr noundef null, ptr noundef %message) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !222
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_recv_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_message_recv_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_message_recv_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_message_recv_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 62, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gb_operation_create_incoming(ptr noundef %operation) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create_incoming, i32 0, i32 1), ptr blockaddress(@trace_gb_operation_create_incoming, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !223
  %call42 = tail call i32 @__traceiter_gb_operation_create_incoming(ptr noundef null, ptr noundef %operation) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !224
  %13 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create_incoming, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gb_operation_create_incoming, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gb_operation_create_incoming.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_gb_operation_create_incoming.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 141, ptr noundef nonnull @.str.39) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %31 = tail call i32 @llvm.read_register.i32(metadata !177) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_operation_create_incoming(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_message_recv_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_message_cancel_outgoing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gb_message_cancel_incoming(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !160, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176}
!llvm.named.register.sp = !{!177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/greybus/operation.c", i32 184, i32 2}
!2 = !{ptr @__ksymtab_gb_operation_result, !3, !"__ksymtab_gb_operation_result", i1 false, i1 false}
!3 = !{!"../drivers/greybus/operation.c", i32 189, i32 1}
!4 = !{ptr @__ksymtab_gb_operation_response_alloc, !5, !"__ksymtab_gb_operation_response_alloc", i1 false, i1 false}
!5 = !{!"../drivers/greybus/operation.c", i32 494, i32 1}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/greybus/operation.c", i32 582, i32 6}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/greybus/operation.c", i32 584, i32 6}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/greybus/operation.c", i32 587, i32 6}
!12 = !{ptr @__ksymtab_gb_operation_create_flags, !13, !"__ksymtab_gb_operation_create_flags", i1 false, i1 false}
!13 = !{!"../drivers/greybus/operation.c", i32 598, i32 1}
!14 = !{ptr @__ksymtab_gb_operation_get_payload_size_max, !15, !"__ksymtab_gb_operation_get_payload_size_max", i1 false, i1 false}
!15 = !{!"../drivers/greybus/operation.c", i32 627, i32 1}
!16 = !{ptr @__ksymtab_gb_operation_get, !17, !"__ksymtab_gb_operation_get", i1 false, i1 false}
!17 = !{!"../drivers/greybus/operation.c", i32 664, i32 1}
!18 = !{ptr @__ksymtab_gb_operation_put, !19, !"__ksymtab_gb_operation_put", i1 false, i1 false}
!19 = !{!"../drivers/greybus/operation.c", i32 695, i32 1}
!20 = !{ptr @__ksymtab_gb_operation_request_send, !21, !"__ksymtab_gb_operation_request_send", i1 false, i1 false}
!21 = !{!"../drivers/greybus/operation.c", i32 786, i32 1}
!22 = !{ptr @__ksymtab_gb_operation_request_send_sync_timeout, !23, !"__ksymtab_gb_operation_request_send_sync_timeout", i1 false, i1 false}
!23 = !{!"../drivers/greybus/operation.c", i32 812, i32 1}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/greybus/operation.c", i32 890, i32 4}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @greybus_message_sent._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @greybus_message_sent._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_greybus_message_sent, !32, !"__ksymtab_greybus_message_sent", i1 false, i1 false}
!32 = !{!"../drivers/greybus/operation.c", i32 904, i32 1}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/greybus/operation.c", i32 1035, i32 3}
!35 = !{ptr @gb_connection_recv._rs, !34, !"_rs", i1 false, i1 false}
!36 = !{ptr @__func__.gb_connection_recv, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gb_connection_recv._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @gb_connection_recv._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @gb_connection_recv._rs.10, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../drivers/greybus/operation.c", i32 1041, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gb_connection_recv._entry.11, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gb_connection_recv._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @gb_connection_recv._rs.14, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/greybus/operation.c", i32 1050, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gb_connection_recv._entry.15, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @gb_connection_recv._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__ksymtab_gb_operation_cancel, !52, !"__ksymtab_gb_operation_cancel", i1 false, i1 false}
!52 = !{!"../drivers/greybus/operation.c", i32 1087, i32 1}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/greybus/operation.c", i32 1161, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @gb_operation_sync_timeout._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @gb_operation_sync_timeout._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @__ksymtab_gb_operation_sync_timeout, !59, !"__ksymtab_gb_operation_sync_timeout", i1 false, i1 false}
!59 = !{!"../drivers/greybus/operation.c", i32 1175, i32 1}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/greybus/operation.c", i32 1214, i32 3}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gb_operation_unidirectional_timeout._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gb_operation_unidirectional_timeout._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @__ksymtab_gb_operation_unidirectional_timeout, !66, !"__ksymtab_gb_operation_unidirectional_timeout", i1 false, i1 false}
!66 = !{!"../drivers/greybus/operation.c", i32 1223, i32 1}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/greybus/operation.c", i32 1227, i32 39}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/greybus/operation.c", i32 1233, i32 41}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/greybus/operation.c", i32 1239, i32 47}
!73 = !{ptr @gb_operation_cache, !74, !"gb_operation_cache", i1 false, i1 false}
!74 = !{!"../drivers/greybus/operation.c", i32 19, i32 27}
!75 = !{ptr @gb_message_cache, !76, !"gb_message_cache", i1 false, i1 false}
!76 = !{!"../drivers/greybus/operation.c", i32 20, i32 27}
!77 = !{ptr @gb_operation_completion_wq, !78, !"gb_operation_completion_wq", i1 false, i1 false}
!78 = !{!"../drivers/greybus/operation.c", i32 23, i32 33}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/greybus/operation.c", i32 369, i32 3}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @gb_operation_message_alloc._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @gb_operation_message_alloc._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @gb_operation_create_common.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/greybus/operation.c", i32 544, i32 3}
!86 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @gb_operation_create_common.__key.28, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/greybus/operation.c", i32 551, i32 2}
!89 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/greybus/operation.c", i32 245, i32 3}
!92 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @gb_operation_request_handle._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @gb_operation_request_handle._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/greybus/operation.c", i32 254, i32 3}
!97 = !{ptr @gb_operation_request_handle._entry.32, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @gb_operation_request_handle._entry_ptr.34, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/greybus/operation.c", i32 837, i32 3}
!101 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @gb_operation_response_send._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @gb_operation_response_send._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @init_completion.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../include/linux/completion.h", i32 87, i32 2}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../drivers/greybus/greybus_trace.h", i32 130, i32 1}
!109 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!111 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!114 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../drivers/greybus/greybus_trace.h", i32 135, i32 1}
!117 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/greybus/greybus_trace.h", i32 147, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/greybus/operation.c", i32 31, i32 8}
!123 = !{ptr @gb_operations_lock, !122, !"gb_operations_lock", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../drivers/greybus/greybus_trace.h", i32 153, i32 1}
!126 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../drivers/greybus/greybus_trace.h", i32 57, i32 1}
!129 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../drivers/greybus/greybus_trace.h", i32 159, i32 1}
!132 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!133 = !{ptr @gb_connection_recv_response._rs, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/greybus/operation.c", i32 970, i32 3}
!135 = !{ptr @__func__.gb_connection_recv_response, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @gb_connection_recv_response._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @gb_connection_recv_response._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @gb_connection_recv_response._rs.43, !140, !"_rs", i1 false, i1 false}
!140 = !{!"../drivers/greybus/operation.c", i32 978, i32 3}
!141 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @gb_connection_recv_response._entry.44, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @gb_connection_recv_response._entry_ptr.46, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @gb_connection_recv_response._rs.47, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../drivers/greybus/operation.c", i32 988, i32 3}
!146 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @gb_connection_recv_response._entry.48, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @gb_connection_recv_response._entry_ptr.50, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @gb_connection_recv_response._rs.51, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/greybus/operation.c", i32 997, i32 4}
!151 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @gb_connection_recv_response._entry.52, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @gb_connection_recv_response._entry_ptr.54, !150, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__already_done", i1 false, i1 false}
!155 = !{!"../drivers/greybus/greybus_trace.h", i32 68, i32 1}
!156 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!157 = !{ptr @.str.55, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/greybus/operation.c", i32 928, i32 3}
!159 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @gb_connection_recv_request._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @gb_connection_recv_request._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = distinct !{null, !163, !"__already_done", i1 false, i1 false}
!163 = !{!"../drivers/greybus/greybus_trace.h", i32 141, i32 1}
!164 = distinct !{null, !163, !"__warned", i1 false, i1 false}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/greybus/greybus_trace.h", i32 62, i32 1}
!167 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../drivers/greybus/greybus_trace.h", i32 74, i32 1}
!170 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!171 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/greybus/operation.c", i32 26, i32 8}
!173 = !{ptr @gb_operation_cancellation_queue, !172, !"gb_operation_cancellation_queue", i1 false, i1 false}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../drivers/greybus/greybus_trace.h", i32 80, i32 1}
!176 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!177 = !{!"sp"}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 2148725395, i64 2148725400, i64 2148725413, i64 2148725457, i64 2148725491, i64 2148725512}
!190 = !{i64 2154224649}
!191 = !{i64 2154224868}
!192 = !{i64 2149959802}
!193 = !{i64 2149960838}
!194 = !{i64 2154241615}
!195 = !{i64 2154241844}
!196 = !{i64 2148245110, i64 2148245142, i64 2148245171, i64 2148245205, i64 2148245236, i64 2148245259}
!197 = !{!"branch_weights", i32 1, i32 2000}
!198 = !{i64 2148333111}
!199 = !{i64 2148247575, i64 2148247607, i64 2148247636, i64 2148247670, i64 2148247701, i64 2148247724}
!200 = !{i64 2149901700}
!201 = !{i64 2148328991}
!202 = !{i64 2148244300, i64 2148244332, i64 2148244361, i64 2148244395, i64 2148244426, i64 2148244449}
!203 = !{i64 2148329220}
!204 = !{i64 2148243580, i64 2148243606, i64 2148243635, i64 2148243669, i64 2148243700, i64 2148243723}
!205 = !{i64 2148246045, i64 2148246071, i64 2148246100, i64 2148246134, i64 2148246165, i64 2148246188}
!206 = !{i64 2154169674}
!207 = !{i64 2154169903}
!208 = !{i64 2154191049}
!209 = !{i64 2154191278}
!210 = !{!"branch_weights", i32 4000000, i32 4002, i32 4000, i32 4000000}
!211 = !{i64 2154280364}
!212 = !{i64 2154280585}
!213 = !{i64 2154297345}
!214 = !{i64 2154297572}
!215 = !{i64 2154114730}
!216 = !{i64 2154114937}
!217 = !{i64 2154318549}
!218 = !{i64 2154318776}
!219 = !{i64 2154152468}
!220 = !{i64 2154152693}
!221 = !{i64 2154135394}
!222 = !{i64 2154135617}
!223 = !{i64 2154263068}
!224 = !{i64 2154263305}
