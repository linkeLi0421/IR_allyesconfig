; ModuleID = '/llk/IR_all_yes/drivers/memstick/core/memstick.c_pt.bc'
source_filename = "../drivers/memstick/core/memstick.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+memstick_detect_change\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_detect_change\09\09\09\09"
module asm "\09.long\09__crc_memstick_detect_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_detect_change:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_detect_change\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_detect_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_next_req\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_next_req\09\09\09\09"
module asm "\09.long\09__crc_memstick_next_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_next_req:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_next_req\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_next_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_new_req\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_new_req\09\09\09\09"
module asm "\09.long\09__crc_memstick_new_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_new_req:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_new_req\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_new_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_init_req_sg\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_init_req_sg\09\09\09\09"
module asm "\09.long\09__crc_memstick_init_req_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_init_req_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_init_req_sg\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_init_req_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_init_req\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_init_req\09\09\09\09"
module asm "\09.long\09__crc_memstick_init_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_init_req:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_init_req\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_init_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_set_rw_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_set_rw_addr\09\09\09\09"
module asm "\09.long\09__crc_memstick_set_rw_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_set_rw_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_set_rw_addr\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_set_rw_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_alloc_host\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_alloc_host\09\09\09\09"
module asm "\09.long\09__crc_memstick_alloc_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_alloc_host:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_alloc_host\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_alloc_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_add_host\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_add_host\09\09\09\09"
module asm "\09.long\09__crc_memstick_add_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_add_host\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_remove_host\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_remove_host\09\09\09\09"
module asm "\09.long\09__crc_memstick_remove_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_remove_host\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_free_host\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_free_host\09\09\09\09"
module asm "\09.long\09__crc_memstick_free_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_free_host:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_free_host\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_free_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_suspend_host\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_suspend_host\09\09\09\09"
module asm "\09.long\09__crc_memstick_suspend_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_suspend_host\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_resume_host\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_resume_host\09\09\09\09"
module asm "\09.long\09__crc_memstick_resume_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_resume_host\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_register_driver\09\09\09\09"
module asm "\09.long\09__crc_memstick_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memstick_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_memstick_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_memstick_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memstick_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22memstick_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_memstick_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.atomic_t = type { i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, ptr, i32, i8, ptr, ptr, [60 x i8], [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.71 }
%union.anon.71 = type { %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.memstick_dev = type { %struct.memstick_device_id, ptr, %struct.ms_register_addr, %struct.completion, %struct.memstick_request, ptr, ptr, ptr, ptr, %struct.device }
%struct.memstick_device_id = type { i8, i8, i8, i8 }
%struct.ms_register_addr = type { i8, i8, i8, i8 }
%struct.anon.72 = type { i8, [15 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.memstick_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_cmd_retries = internal constant [21 x i8] c"memstick.cmd_retries\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@cmd_retries = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_cmd_retries = internal constant %struct.kernel_param { ptr @__param_str_cmd_retries, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @cmd_retries } }, section "__param", align 4
@__UNIQUE_ID_cmd_retriestype229 = internal constant [35 x i8] c"memstick.parmtype=cmd_retries:uint\00", section ".modinfo", align 1
@workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_memstick_detect_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_detect_change = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_detect_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_detect_change to i32), ptr @__kstrtab_memstick_detect_change, ptr @__kstrtabns_memstick_detect_change }, section "___ksymtab+memstick_detect_change", align 4
@__kstrtab_memstick_next_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_next_req = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_next_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_next_req to i32), ptr @__kstrtab_memstick_next_req, ptr @__kstrtabns_memstick_next_req }, section "___ksymtab+memstick_next_req", align 4
@__kstrtab_memstick_new_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_new_req = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_new_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_new_req to i32), ptr @__kstrtab_memstick_new_req, ptr @__kstrtabns_memstick_new_req }, section "___ksymtab+memstick_new_req", align 4
@__kstrtab_memstick_init_req_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_init_req_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_init_req_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_init_req_sg to i32), ptr @__kstrtab_memstick_init_req_sg, ptr @__kstrtabns_memstick_init_req_sg }, section "___ksymtab+memstick_init_req_sg", align 4
@__kstrtab_memstick_init_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_init_req = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_init_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_init_req to i32), ptr @__kstrtab_memstick_init_req, ptr @__kstrtabns_memstick_init_req }, section "___ksymtab+memstick_init_req", align 4
@__kstrtab_memstick_set_rw_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_set_rw_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_set_rw_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_set_rw_addr to i32), ptr @__kstrtab_memstick_set_rw_addr, ptr @__kstrtabns_memstick_set_rw_addr }, section "___ksymtab+memstick_set_rw_addr", align 4
@memstick_alloc_host.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@memstick_alloc_host.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&host->media_checker)\00", [56 x i8] zeroinitializer }, align 32
@memstick_host_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @memstick_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_memstick_alloc_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_alloc_host = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_alloc_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_alloc_host to i32), ptr @__kstrtab_memstick_alloc_host, ptr @__kstrtabns_memstick_alloc_host }, section "___ksymtab+memstick_alloc_host", align 4
@memstick_host_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@memstick_host_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"memstick%u\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_memstick_add_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_add_host = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_add_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_add_host to i32), ptr @__kstrtab_memstick_add_host, ptr @__kstrtabns_memstick_add_host }, section "___ksymtab+memstick_add_host", align 4
@__kstrtab_memstick_remove_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_remove_host = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_remove_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_remove_host to i32), ptr @__kstrtab_memstick_remove_host, ptr @__kstrtabns_memstick_remove_host }, section "___ksymtab+memstick_remove_host", align 4
@__kstrtab_memstick_free_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_free_host = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_free_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_free_host to i32), ptr @__kstrtab_memstick_free_host, ptr @__kstrtabns_memstick_free_host }, section "___ksymtab+memstick_free_host", align 4
@__kstrtab_memstick_suspend_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_suspend_host = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_suspend_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_suspend_host to i32), ptr @__kstrtab_memstick_suspend_host, ptr @__kstrtabns_memstick_suspend_host }, section "___ksymtab+memstick_suspend_host", align 4
@__kstrtab_memstick_resume_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_resume_host = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_resume_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_resume_host to i32), ptr @__kstrtab_memstick_resume_host, ptr @__kstrtabns_memstick_resume_host }, section "___ksymtab+memstick_resume_host", align 4
@memstick_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.4, ptr null, ptr null, ptr null, ptr @memstick_dev_groups, ptr null, ptr @memstick_bus_match, ptr @memstick_uevent, ptr @memstick_device_probe, ptr null, ptr @memstick_device_remove, ptr null, ptr null, ptr null, ptr @memstick_device_suspend, ptr @memstick_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_memstick_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_register_driver to i32), ptr @__kstrtab_memstick_register_driver, ptr @__kstrtabns_memstick_register_driver }, section "___ksymtab+memstick_register_driver", align 4
@__kstrtab_memstick_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_memstick_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_memstick_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memstick_unregister_driver to i32), ptr @__kstrtab_memstick_unregister_driver, ptr @__kstrtabns_memstick_unregister_driver }, section "___ksymtab+memstick_unregister_driver", align 4
@__initcall__kmod_memstick__234_654_memstick_init6 = internal global ptr @memstick_init, section ".initcall6.init", align 4
@__exitcall_memstick_exit = internal global ptr @memstick_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [27 x i8] c"memstick.author=Alex Dubov\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [45 x i8] c"memstick.file=drivers/memstick/core/memstick\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [21 x i8] c"memstick.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [50 x i8] c"memstick.description=Sony MemoryStick core driver\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@memstick_check.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memstick\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"memstick_check\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/memstick/core/memstick.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"memstick_check started\0A\00", [40 x i8] zeroinitializer }, align 32
@memstick_check.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"new card %02x, %02x, %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@memstick_check.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 0, i8 120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"memstick_check finished\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@h_memstick_read_dev_id.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"h_memstick_read_dev_id\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"if_mode = %02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memstick_host\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"memstick_host_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"memstick_host_idr.xa_lock\00", [38 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@memstick_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @memstick_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@memstick_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @memstick_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@memstick_dev_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_type, ptr @dev_attr_category, ptr @dev_attr_class, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_category = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @category_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_class = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @class_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02X\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"category\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MEMSTICK_TYPE=%02X\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MEMSTICK_CATEGORY=%02X\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MEMSTICK_CLASS=%02X\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kmemstick\00", [22 x i8] zeroinitializer }, align 32
@memstick_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 14]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 14]
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"cmd_retries\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 21, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"workqueue\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 24, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 496, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 497, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"memstick_host_class\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 185, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"memstick_host_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"memstick_host_idr\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 526, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"memstick_bus_type\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 167, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 433, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 453, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 481, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 385, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 87, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 340, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 186, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 26, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 25, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 36, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"memstick_dev_groups\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"memstick_dev_group\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 165, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"memstick_dev_attrs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 159, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"dev_attr_category\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"dev_attr_class\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 155, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 156, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 157, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 65, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 68, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 71, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 624, i32 14 }
@___asan_gen_.155 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private constant [36 x i8] c"../drivers/memstick/core/memstick.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 632, i32 7 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_cmd_retriestype229, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_memstick_exit, ptr @__initcall__kmod_memstick__234_654_memstick_init6, ptr @__ksymtab_memstick_add_host, ptr @__ksymtab_memstick_alloc_host, ptr @__ksymtab_memstick_detect_change, ptr @__ksymtab_memstick_free_host, ptr @__ksymtab_memstick_init_req, ptr @__ksymtab_memstick_init_req_sg, ptr @__ksymtab_memstick_new_req, ptr @__ksymtab_memstick_next_req, ptr @__ksymtab_memstick_register_driver, ptr @__ksymtab_memstick_remove_host, ptr @__ksymtab_memstick_resume_host, ptr @__ksymtab_memstick_set_rw_addr, ptr @__ksymtab_memstick_suspend_host, ptr @__ksymtab_memstick_unregister_driver, ptr @__param_cmd_retries, ptr @memstick_exit, ptr @cmd_retries, ptr @workqueue, ptr @memstick_alloc_host.__key, ptr @.str, ptr @memstick_alloc_host.__key.1, ptr @.str.2, ptr @memstick_host_class, ptr @memstick_host_lock, ptr @memstick_host_idr, ptr @.str.3, ptr @memstick_bus_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @memstick_dev_groups, ptr @memstick_dev_group, ptr @memstick_dev_attrs, ptr @dev_attr_type, ptr @dev_attr_category, ptr @dev_attr_class, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @memstick_init.__key], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_retries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_alloc_host.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_alloc_host.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_host_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_host_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_host_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_dev_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_category to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memstick_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memstick_detect_change(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @workqueue, align 4
  %media_checker = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %media_checker) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memstick_next_req(ptr nocapture noundef %host, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %error = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %retries = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 6
  %4 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -6, ptr %error, align 4
  %7 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retries, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %retries, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %card = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 5
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 16
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end.if.else_crit_edge, label %land.lhs.true7

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true7:                                   ; preds = %if.end
  %next_request = getelementptr inbounds %struct.memstick_dev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %next_request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_request, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %land.lhs.true7.if.else_crit_edge, label %if.end14

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end14:                                         ; preds = %land.lhs.true7
  %call = tail call i32 %12(ptr noundef nonnull %10, ptr noundef %mrq) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %13 = load i32, ptr @cmd_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp ugt i32 %13, 1
  %sub = add i32 %13, -1
  %spec.select = select i1 %cmp, i32 %sub, i32 1
  %retries17 = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 6
  %14 = ptrtoint ptr %retries17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %retries17, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end14.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %if.end.if.else_crit_edge
  %rc.036 = phi i32 [ %call, %if.end14.if.else_crit_edge ], [ -6, %land.lhs.true7.if.else_crit_edge ], [ -6, %if.end.if.else_crit_edge ]
  %15 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mrq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %rc.036, %if.else ], [ 0, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memstick_new_req(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load i32, ptr @cmd_retries, align 4
  %retries = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 6
  %3 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %retries, align 4
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mrq_complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mrq_complete, align 4
  %request = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 8
  %5 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %request, align 4
  tail call void %6(ptr noundef %host) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @memstick_init_req_sg(ptr nocapture noundef %mrq, i8 noundef zeroext %tpc, ptr nocapture noundef readonly %sg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %tpc, ptr %mrq, align 4
  %data_dir2 = getelementptr inbounds %struct.memstick_request, ptr %mrq, i32 0, i32 1
  %1 = ptrtoint ptr %data_dir2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load3 = load i8, ptr %data_dir2, align 1
  %bf.clear4 = and i8 %bf.load3, 127
  %2 = shl i8 %tpc, 4
  %3 = and i8 %2, -128
  %bf.clear4.sink = or i8 %bf.clear4, %3
  store i8 %bf.clear4.sink, ptr %data_dir2, align 1
  %4 = getelementptr inbounds %struct.memstick_request, ptr %mrq, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %4, ptr %sg, i32 20)
  %6 = zext i8 %tpc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %tpc, label %if.else18 [
    i8 14, label %entry.if.then14_crit_edge
    i8 9, label %entry.if.then14_crit_edge33
  ]

entry.if.then14_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

if.then14:                                        ; preds = %entry.if.then14_crit_edge, %entry.if.then14_crit_edge33
  %bf.set17 = or i8 %bf.clear4.sink, 96
  br label %if.end23

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set8 = and i8 %bf.clear4.sink, -97
  %bf.clear21 = or i8 %bf.set8, 32
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then14
  %storemerge = phi i8 [ %bf.clear21, %if.else18 ], [ %bf.set17, %if.then14 ]
  %long_data = getelementptr inbounds %struct.memstick_request, ptr %mrq, i32 0, i32 1
  %7 = ptrtoint ptr %long_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %long_data, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @memstick_init_req(ptr nocapture noundef %mrq, i8 noundef zeroext %tpc, ptr nocapture noundef readonly %buf, i32 noundef %length) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %tpc, ptr %mrq, align 4
  %data_dir2 = getelementptr inbounds %struct.memstick_request, ptr %mrq, i32 0, i32 1
  %1 = ptrtoint ptr %data_dir2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load3 = load i8, ptr %data_dir2, align 1
  %bf.clear4 = and i8 %bf.load3, 127
  %2 = shl i8 %tpc, 4
  %3 = and i8 %2, -128
  %bf.clear4.sink = or i8 %bf.clear4, %3
  store i8 %bf.clear4.sink, ptr %data_dir2, align 1
  %4 = tail call i32 @llvm.umin.i32(i32 %length, i32 15)
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds %struct.memstick_request, ptr %mrq, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear4.sink)
  %cmp11 = icmp slt i8 %bf.clear4.sink, 0
  br i1 %cmp11, label %if.then13, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.anon.72, ptr %6, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %data, ptr %buf, i32 %4)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %entry.if.end16_crit_edge
  %9 = zext i8 %tpc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %tpc, label %if.else30 [
    i8 14, label %if.end16.if.then26_crit_edge
    i8 9, label %if.end16.if.then26_crit_edge50
  ]

if.end16.if.then26_crit_edge50:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

if.end16.if.then26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

if.then26:                                        ; preds = %if.end16.if.then26_crit_edge, %if.end16.if.then26_crit_edge50
  %bf.clear18 = and i8 %bf.clear4.sink, -97
  %bf.set29 = or i8 %bf.clear18, 64
  br label %if.end35

if.else30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %bf.clear33 = and i8 %bf.clear4.sink, -97
  br label %if.end35

if.end35:                                         ; preds = %if.else30, %if.then26
  %storemerge = phi i8 [ %bf.clear33, %if.else30 ], [ %bf.set29, %if.then26 ]
  %data_dir8 = getelementptr inbounds %struct.memstick_request, ptr %mrq, i32 0, i32 1
  %10 = ptrtoint ptr %data_dir8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %data_dir8, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memstick_set_rw_addr(ptr noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %next_request = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 6
  %0 = ptrtoint ptr %next_request to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @h_memstick_set_rw_addr, ptr %next_request, align 4
  %host = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 1
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 4
  %card.i = getelementptr inbounds %struct.memstick_host, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card.i, align 16
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.memstick_new_req.exit_crit_edge, label %if.then.i

entry.memstick_new_req.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %memstick_new_req.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load i32, ptr @cmd_retries, align 4
  %retries.i = getelementptr inbounds %struct.memstick_host, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %retries.i, align 4
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %mrq_complete.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mrq_complete.i, align 4
  %request.i = getelementptr inbounds %struct.memstick_host, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request.i, align 4
  tail call void %9(ptr noundef %2) #14
  br label %memstick_new_req.exit

memstick_new_req.exit:                            ; preds = %if.then.i, %entry.memstick_new_req.exit_crit_edge
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete) #14
  %error = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_memstick_set_rw_addr(ptr noundef %card, ptr nocapture noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %reg_addr = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 2
  %2 = ptrtoint ptr %current_mrq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %current_mrq, align 4
  %data_dir2.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %data_dir2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load3.i = load i8, ptr %data_dir2.i, align 1
  %4 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %4, align 4
  %data.i = getelementptr inbounds %struct.anon.72, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %reg_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %reg_addr, align 1
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %data.i, align 1
  %bf.clear4.sink.i = and i8 %bf.load3.i, 31
  %bf.clear33.i = or i8 %bf.clear4.sink.i, -128
  store i8 %bf.clear33.i, ptr %data_dir2.i, align 1
  %9 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %current_mrq, ptr %mrq, align 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete) #14
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ -11, %if.else ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memstick_alloc_host(i32 noundef %extra, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %extra, 1152
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__mutex_init(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @memstick_alloc_host.__key) #14
  %media_checker = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %media_checker, i32 noundef 0) #14
  %0 = ptrtoint ptr %media_checker to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %media_checker, align 4
  %lockdep_map = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @memstick_alloc_host.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry5 = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry5, ptr %entry5, align 8
  %prev.i = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @memstick_check, ptr %func, align 16
  %dev9 = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 4
  %class = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 4, i32 33
  %4 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @memstick_host_class, ptr %class, align 4
  %parent = getelementptr inbounds %struct.memstick_host, ptr %call9.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 8
  tail call void @device_initialize(ptr noundef %dev9) #14
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %retval.1.i.i25 = phi ptr [ %call9.i.i, %do.body ], [ null, %entry.if.end_crit_edge ]
  ret ptr %retval.1.i.i25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memstick_check(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @memstick_check.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@memstick_check, %do.end)) #14
          to label %if.then [label %do.end], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr i8, ptr %work, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @memstick_check.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr i8, ptr %work, i32 44
  %parent = getelementptr i8, ptr %work, i32 180
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !128
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #14
  %card6 = getelementptr i8, ptr %work, i32 972
  %3 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card6, align 16
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end
  %set_param.i = getelementptr i8, ptr %work, i32 988
  %5 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_param.i, align 64
  %call.i = tail call i32 %6(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %memstick_power_on.exit, label %if.then8.out_power_off_crit_edge

if.then8.out_power_off_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_power_off

memstick_power_on.exit:                           ; preds = %if.then8
  %7 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_param.i, align 64
  %call2.i = tail call i32 %8(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool10.not = icmp eq i32 %call2.i, 0
  br i1 %tobool10.not, label %memstick_power_on.exit.if.end20_crit_edge, label %memstick_power_on.exit.out_power_off_crit_edge

memstick_power_on.exit.out_power_off_crit_edge:   ; preds = %memstick_power_on.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_power_off

memstick_power_on.exit.if.end20_crit_edge:        ; preds = %memstick_power_on.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else:                                          ; preds = %do.end
  %stop = getelementptr inbounds %struct.memstick_dev, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop, align 8
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.else.if.end20_crit_edge, label %if.then15

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %10(ptr noundef nonnull %4) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.else.if.end20_crit_edge, %memstick_power_on.exit.if.end20_crit_edge
  %removing = getelementptr i8, ptr %work, i32 980
  %11 = ptrtoint ptr %removing to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %removing, align 8, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  br i1 %tobool21.not, label %if.end23, label %if.end20.out_power_off_crit_edge

if.end20.out_power_off_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_power_off

if.end23:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1040) #18
  %14 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card6, align 16
  %tobool.not.i179 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i179, label %if.end23.if.then26_crit_edge, label %if.then.i180

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

if.then.i180:                                     ; preds = %if.end23
  %host2.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %host2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %host2.i, align 4
  %dev.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 9
  %init_name.i.i = getelementptr i8, ptr %work, i32 188
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i180.dev_name.exit.i_crit_edge

if.then.i180.dev_name.exit.i_crit_edge:           ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i180.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i180.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i) #14
  %parent.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev5, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 9, i32 5
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @memstick_bus_type, ptr %bus.i, align 8
  %release.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 9, i32 35
  %23 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @memstick_free_card, ptr %release.i, align 4
  %check.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %check.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @memstick_dummy_check, ptr %check.i, align 8
  %reg_addr.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 2
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 67372036, ptr %reg_addr.i, align 8
  %26 = ptrtoint ptr %mrq_complete.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mrq_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #14
  %27 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %card6, align 16
  %next_request.i.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %next_request.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @h_memstick_set_rw_addr, ptr %next_request.i.i, align 4
  %29 = ptrtoint ptr %host2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host2.i, align 4
  %card.i.i.i = getelementptr inbounds %struct.memstick_host, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %card.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card.i.i.i, align 16
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %dev_name.exit.i.memstick_set_rw_addr.exit.i_crit_edge, label %if.then.i.i.i

dev_name.exit.i.memstick_set_rw_addr.exit.i_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memstick_set_rw_addr.exit.i

if.then.i.i.i:                                    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = load i32, ptr @cmd_retries, align 4
  %retries.i.i.i = getelementptr inbounds %struct.memstick_host, ptr %30, i32 0, i32 6
  %34 = ptrtoint ptr %retries.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %retries.i.i.i, align 4
  %mrq_complete.i.i.i = getelementptr inbounds %struct.memstick_dev, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %mrq_complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mrq_complete.i.i.i, align 4
  %request.i.i.i = getelementptr inbounds %struct.memstick_host, ptr %30, i32 0, i32 8
  %36 = ptrtoint ptr %request.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %request.i.i.i, align 4
  tail call void %37(ptr noundef %30) #14
  br label %memstick_set_rw_addr.exit.i

memstick_set_rw_addr.exit.i:                      ; preds = %if.then.i.i.i, %dev_name.exit.i.memstick_set_rw_addr.exit.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i) #14
  %error.i.i = getelementptr inbounds %struct.memstick_dev, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool15.not.i = icmp eq i32 %39, 0
  br i1 %tobool15.not.i, label %if.end.i, label %memstick_set_rw_addr.exit.i.memstick_alloc_card.exit.thread_crit_edge

memstick_set_rw_addr.exit.i.memstick_alloc_card.exit.thread_crit_edge: ; preds = %memstick_set_rw_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memstick_alloc_card.exit.thread

if.end.i:                                         ; preds = %memstick_set_rw_addr.exit.i
  %40 = ptrtoint ptr %next_request.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @h_memstick_read_dev_id, ptr %next_request.i.i, align 4
  %41 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card6, align 16
  %tobool.not.i52.i = icmp eq ptr %42, null
  br i1 %tobool.not.i52.i, label %if.end.i.memstick_new_req.exit.i_crit_edge, label %if.then.i.i

if.end.i.memstick_new_req.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memstick_new_req.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = load i32, ptr @cmd_retries, align 4
  %retries.i.i = getelementptr i8, ptr %work, i32 976
  %44 = ptrtoint ptr %retries.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %retries.i.i, align 4
  %mrq_complete.i53.i = getelementptr inbounds %struct.memstick_dev, ptr %42, i32 0, i32 3
  %45 = ptrtoint ptr %mrq_complete.i53.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %mrq_complete.i53.i, align 4
  %request.i.i = getelementptr i8, ptr %work, i32 984
  %46 = ptrtoint ptr %request.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %request.i.i, align 4
  tail call void %47(ptr noundef %add.ptr) #14
  br label %memstick_new_req.exit.i

memstick_new_req.exit.i:                          ; preds = %if.then.i.i, %if.end.i.memstick_new_req.exit.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i) #14
  %48 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool18.not.i = icmp eq i32 %49, 0
  br i1 %tobool18.not.i, label %do.body35, label %memstick_new_req.exit.i.memstick_alloc_card.exit.thread_crit_edge

memstick_new_req.exit.i.memstick_alloc_card.exit.thread_crit_edge: ; preds = %memstick_new_req.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memstick_alloc_card.exit.thread

memstick_alloc_card.exit.thread:                  ; preds = %memstick_new_req.exit.i.memstick_alloc_card.exit.thread_crit_edge, %memstick_set_rw_addr.exit.i.memstick_alloc_card.exit.thread_crit_edge
  %50 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %15, ptr %card6, align 16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  %51 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr207 = load ptr, ptr %card6, align 16
  br label %if.then26

if.then26:                                        ; preds = %memstick_alloc_card.exit.thread, %if.end23.if.then26_crit_edge
  %52 = phi ptr [ %.pr207, %memstick_alloc_card.exit.thread ], [ %15, %if.end23.if.then26_crit_edge ]
  %tobool28.not = icmp eq ptr %52, null
  br i1 %tobool28.not, label %if.then26.if.then103_crit_edge, label %if.then29

if.then26.if.then103_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %dev31 = getelementptr inbounds %struct.memstick_dev, ptr %52, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %dev31) #14
  br label %if.then103.sink.split

do.body35:                                        ; preds = %memstick_new_req.exit.i
  %53 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %15, ptr %card6, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @memstick_check.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@memstick_check, %do.end57)) #14
          to label %if.then49 [label %do.end57], !srcloc !127

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.memstick_device_id, ptr %call7.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type, align 1
  %conv = zext i8 %55 to i32
  %category = getelementptr inbounds %struct.memstick_device_id, ptr %call7.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %category to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %category, align 2
  %conv52 = zext i8 %57 to i32
  %class = getelementptr inbounds %struct.memstick_device_id, ptr %call7.i.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %class, align 1
  %conv54 = zext i8 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @memstick_check.__UNIQUE_ID_ddebug232, ptr noundef %dev5, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv52, i32 noundef %conv54) #14
  br label %do.end57

do.end57:                                         ; preds = %if.then49, %do.body35
  %60 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card6, align 16
  %tobool59.not = icmp eq ptr %61, null
  br i1 %tobool59.not, label %do.end57.if.then89_crit_edge, label %if.then60

do.end57.if.then89_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then89

if.then60:                                        ; preds = %do.end57
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @h_memstick_set_rw_addr, ptr %next_request.i, align 4
  %host.i = getelementptr inbounds %struct.memstick_dev, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host.i, align 4
  %card.i.i = getelementptr inbounds %struct.memstick_host, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %card.i.i, align 16
  %tobool.not.i.i182 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i182, label %if.then60.memstick_set_rw_addr.exit_crit_edge, label %if.then.i.i185

if.then60.memstick_set_rw_addr.exit_crit_edge:    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  br label %memstick_set_rw_addr.exit

if.then.i.i185:                                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #16
  %67 = load i32, ptr @cmd_retries, align 4
  %retries.i.i183 = getelementptr inbounds %struct.memstick_host, ptr %64, i32 0, i32 6
  %68 = ptrtoint ptr %retries.i.i183 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %retries.i.i183, align 4
  %mrq_complete.i.i = getelementptr inbounds %struct.memstick_dev, ptr %66, i32 0, i32 3
  %69 = ptrtoint ptr %mrq_complete.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %mrq_complete.i.i, align 4
  %request.i.i184 = getelementptr inbounds %struct.memstick_host, ptr %64, i32 0, i32 8
  %70 = ptrtoint ptr %request.i.i184 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %request.i.i184, align 4
  tail call void %71(ptr noundef %64) #14
  br label %memstick_set_rw_addr.exit

memstick_set_rw_addr.exit:                        ; preds = %if.then.i.i185, %if.then60.memstick_set_rw_addr.exit_crit_edge
  %mrq_complete.i186 = getelementptr inbounds %struct.memstick_dev, ptr %61, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i186) #14
  %error.i = getelementptr inbounds %struct.memstick_dev, ptr %61, i32 0, i32 4, i32 3
  %72 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool63.not = icmp eq i32 %73, 0
  br i1 %tobool63.not, label %lor.lhs.false, label %memstick_set_rw_addr.exit.if.then73_crit_edge

memstick_set_rw_addr.exit.if.then73_crit_edge:    ; preds = %memstick_set_rw_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

lor.lhs.false:                                    ; preds = %memstick_set_rw_addr.exit
  %74 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card6, align 16
  %76 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %call7.i.i.i, align 8
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i188 = icmp eq i8 %78, 0
  br i1 %tobool.not.i188, label %lor.lhs.false.if.then73_crit_edge, label %if.then.i189

lor.lhs.false.if.then73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

if.then.i189:                                     ; preds = %lor.lhs.false
  %type.i = getelementptr inbounds %struct.memstick_device_id, ptr %call7.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %type.i, align 1
  %type3.i = getelementptr inbounds %struct.memstick_device_id, ptr %75, i32 0, i32 1
  %81 = ptrtoint ptr %type3.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %type3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %82)
  %cmp.i = icmp eq i8 %80, %82
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i189.if.then73_crit_edge

if.then.i189.if.then73_crit_edge:                 ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

land.lhs.true.i:                                  ; preds = %if.then.i189
  %category.i = getelementptr inbounds %struct.memstick_device_id, ptr %call7.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %category.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %category.i, align 2
  %category8.i = getelementptr inbounds %struct.memstick_device_id, ptr %75, i32 0, i32 2
  %85 = ptrtoint ptr %category8.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %category8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp10.i = icmp eq i8 %84, %86
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.then73_crit_edge

land.lhs.true.i.if.then73_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %class.i = getelementptr inbounds %struct.memstick_device_id, ptr %call7.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %class.i, align 1
  %class15.i = getelementptr inbounds %struct.memstick_device_id, ptr %75, i32 0, i32 3
  %89 = ptrtoint ptr %class15.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %class15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %90)
  %cmp17.i = icmp eq i8 %88, %90
  br i1 %cmp17.i, label %lor.lhs.false68, label %land.lhs.true12.i.if.then73_crit_edge

land.lhs.true12.i.if.then73_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

lor.lhs.false68:                                  ; preds = %land.lhs.true12.i
  %check = getelementptr inbounds %struct.memstick_dev, ptr %75, i32 0, i32 5
  %91 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %check, align 8
  %call71 = tail call i32 %92(ptr noundef %75) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %lor.lhs.false68.if.then73_crit_edge, label %if.else77

lor.lhs.false68.if.then73_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then73

if.then73:                                        ; preds = %lor.lhs.false68.if.then73_crit_edge, %land.lhs.true12.i.if.then73_crit_edge, %land.lhs.true.i.if.then73_crit_edge, %if.then.i189.if.then73_crit_edge, %lor.lhs.false.if.then73_crit_edge, %memstick_set_rw_addr.exit.if.then73_crit_edge
  %93 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card6, align 16
  %dev75 = getelementptr inbounds %struct.memstick_dev, ptr %94, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %dev75) #14
  br label %if.then89

if.else77:                                        ; preds = %lor.lhs.false68
  %95 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card6, align 16
  %start = getelementptr inbounds %struct.memstick_dev, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %start, align 4
  %tobool79.not = icmp eq ptr %98, null
  br i1 %tobool79.not, label %if.else77.if.end86_crit_edge, label %if.then80

if.else77.if.end86_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then80:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %98(ptr noundef %96) #14
  %99 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr = load ptr, ptr %card6, align 16
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %if.else77.if.end86_crit_edge
  %100 = phi ptr [ %.pr, %if.then80 ], [ %96, %if.else77.if.end86_crit_edge ]
  %tobool88.not = icmp eq ptr %100, null
  br i1 %tobool88.not, label %if.end86.if.then89_crit_edge, label %if.else98

if.end86.if.then89_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then89

if.then89:                                        ; preds = %if.end86.if.then89_crit_edge, %if.then73, %do.end57.if.then89_crit_edge
  %101 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i.i, ptr %card6, align 16
  %call92 = tail call i32 @device_register(ptr noundef %dev.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then89.out_power_off_crit_edge, label %if.then94

if.then89.out_power_off_crit_edge:                ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_power_off

if.then94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_device(ptr noundef %dev.i) #14
  br label %if.then103.sink.split

if.else98:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %out_power_off

out_power_off:                                    ; preds = %if.else98, %if.then89.out_power_off_crit_edge, %if.end20.out_power_off_crit_edge, %memstick_power_on.exit.out_power_off_crit_edge, %if.then8.out_power_off_crit_edge
  %102 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr204 = load ptr, ptr %card6, align 16
  %tobool102.not = icmp eq ptr %.pr204, null
  br i1 %tobool102.not, label %out_power_off.if.then103_crit_edge, label %out_power_off.if.end105_crit_edge

out_power_off.if.end105_crit_edge:                ; preds = %out_power_off
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

out_power_off.if.then103_crit_edge:               ; preds = %out_power_off
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then103

if.then103.sink.split:                            ; preds = %if.then94, %if.then29
  %103 = ptrtoint ptr %card6 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %card6, align 16
  br label %if.then103

if.then103:                                       ; preds = %if.then103.sink.split, %out_power_off.if.then103_crit_edge, %if.then26.if.then103_crit_edge
  %set_param = getelementptr i8, ptr %work, i32 988
  %104 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_param, align 64
  %call104 = tail call i32 %105(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0) #14
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %out_power_off.if.end105_crit_edge
  tail call void @mutex_unlock(ptr noundef %add.ptr) #14
  %106 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %parent, align 8
  %call.i191 = tail call i32 @__pm_runtime_idle(ptr noundef %107, i32 noundef 5) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @memstick_check.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@memstick_check, %do.end128)) #14
          to label %if.then124 [label %do.end128], !srcloc !127

if.then124:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @memstick_check.__UNIQUE_ID_ddebug233, ptr noundef %dev5, ptr noundef nonnull @.str.9) #14
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %if.end105
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memstick_add_host(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @idr_preload(i32 noundef 3264) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @memstick_host_lock) #14
  %call = tail call i32 @idr_alloc(ptr noundef nonnull @memstick_host_idr, ptr noundef %host, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %id = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @memstick_host_lock) #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !117) #14
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @radix_tree_preloads to i32)
  %7 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %7) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !130
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #14
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 4
  %id4 = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id4, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %13) #14
  %call7 = tail call i32 @device_add(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_lock(ptr noundef nonnull @memstick_host_lock) #14
  %14 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id4, align 4
  %call10 = tail call ptr @idr_remove(ptr noundef nonnull @memstick_host_idr, i32 noundef %15) #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @memstick_host_lock) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 9
  %16 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_param, align 64
  %call12 = tail call i32 %17(ptr noundef %host, i32 noundef 1, i32 noundef 0) #14
  %18 = load ptr, ptr @workqueue, align 4
  %media_checker.i = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %media_checker.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then8 ], [ 0, %if.end11 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memstick_remove_host(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %removing = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %removing to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %removing, align 8
  %1 = load ptr, ptr @workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %1) #14
  tail call void @mutex_lock_nested(ptr noundef %host, i32 noundef 0) #14
  %card = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 5
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %3, i32 0, i32 9
  tail call void @device_unregister(ptr noundef %dev) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %card, align 16
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 9
  %5 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_param, align 64
  %call = tail call i32 %6(ptr noundef %host, i32 noundef 1, i32 noundef 0) #14
  tail call void @mutex_unlock(ptr noundef %host) #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @memstick_host_lock) #14
  %id = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call4 = tail call ptr @idr_remove(ptr noundef nonnull @memstick_host_idr, i32 noundef %8) #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @memstick_host_lock) #14
  %dev5 = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 4
  tail call void @device_del(ptr noundef %dev5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memstick_free_host(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_destroy(ptr noundef %host) #14
  %dev = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 4
  tail call void @put_device(ptr noundef %dev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memstick_suspend_host(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %host, i32 noundef 0) #14
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %set_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_param, align 64
  %call = tail call i32 %1(ptr noundef %host, i32 noundef 1, i32 noundef 0) #14
  tail call void @mutex_unlock(ptr noundef %host) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memstick_resume_host(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %host, i32 noundef 0) #14
  %card = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then3.critedge, label %if.then

if.then:                                          ; preds = %entry
  %set_param.i = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_param.i, align 64
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 1, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %memstick_power_on.exit, label %memstick_power_on.exit.thread

memstick_power_on.exit.thread:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %host) #14
  br label %if.end4

memstick_power_on.exit:                           ; preds = %if.then
  %4 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_param.i, align 64
  %call2.i = tail call i32 %5(ptr noundef %host, i32 noundef 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %phi.cmp = icmp eq i32 %call2.i, 0
  tail call void @mutex_unlock(ptr noundef %host) #14
  br i1 %phi.cmp, label %memstick_power_on.exit.if.then3_crit_edge, label %memstick_power_on.exit.if.end4_crit_edge

memstick_power_on.exit.if.end4_crit_edge:         ; preds = %memstick_power_on.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

memstick_power_on.exit.if.then3_crit_edge:        ; preds = %memstick_power_on.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then3.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %host) #14
  br label %if.then3

if.then3:                                         ; preds = %if.then3.critedge, %memstick_power_on.exit.if.then3_crit_edge
  %6 = load ptr, ptr @workqueue, align 4
  %media_checker.i = getelementptr inbounds %struct.memstick_host, ptr %host, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %media_checker.i) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %memstick_power_on.exit.if.end4_crit_edge, %memstick_power_on.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memstick_register_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.memstick_driver, ptr %drv, i32 0, i32 5
  %bus = getelementptr inbounds %struct.memstick_driver, ptr %drv, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @memstick_bus_type, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @memstick_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.memstick_driver, ptr %drv, i32 0, i32 5
  tail call void @driver_unregister(ptr noundef %driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @memstick_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @class_unregister(ptr noundef nonnull @memstick_host_class) #14
  tail call void @bus_unregister(ptr noundef nonnull @memstick_bus_type) #14
  %0 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #14
  tail call void @idr_destroy(ptr noundef nonnull @memstick_host_idr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @memstick_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.27) #14
  store ptr %call, ptr @workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bus_register(ptr noundef nonnull @memstick_bus_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.error_destroy_workqueue_crit_edge

if.end.error_destroy_workqueue_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_destroy_workqueue

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @__class_register(ptr noundef nonnull @memstick_host_class, ptr noundef nonnull @memstick_init.__key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %error_bus_unregister

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

error_bus_unregister:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @bus_unregister(ptr noundef nonnull @memstick_bus_type) #14
  br label %error_destroy_workqueue

error_destroy_workqueue:                          ; preds = %error_bus_unregister, %if.end.error_destroy_workqueue_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.error_destroy_workqueue_crit_edge ], [ %call5, %error_bus_unregister ]
  %0 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %error_destroy_workqueue, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %error_destroy_workqueue ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memstick_free_card(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @memstick_dummy_check(ptr nocapture noundef readnone %card) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_memstick_read_dev_id(ptr noundef %card, ptr nocapture noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %current_mrq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %current_mrq, align 4
  %data_dir2.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %data_dir2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load3.i = load i8, ptr %data_dir2.i, align 1
  %4 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %4, align 4
  %bf.clear33.i = and i8 %bf.load3.i, 31
  store i8 %bf.clear33.i, ptr %data_dir2.i, align 1
  %6 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %current_mrq, ptr %mrq, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %error = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4
  %data = getelementptr inbounds %struct.anon.72, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data, align 1
  %id_reg.sroa.0.0.extract.shift = lshr i32 %11, 24
  %id_reg.sroa.0.0.extract.trunc = trunc i32 %id_reg.sroa.0.0.extract.shift to i8
  %id_reg.sroa.7.0.extract.shift = lshr i32 %11, 8
  %id_reg.sroa.7.0.extract.trunc = trunc i32 %id_reg.sroa.7.0.extract.shift to i8
  %id_reg.sroa.9.0.extract.trunc = trunc i32 %11 to i8
  %12 = ptrtoint ptr %card to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %card, align 8
  %type5 = getelementptr inbounds %struct.memstick_device_id, ptr %card, i32 0, i32 1
  %13 = ptrtoint ptr %type5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %id_reg.sroa.0.0.extract.trunc, ptr %type5, align 1
  %category7 = getelementptr inbounds %struct.memstick_device_id, ptr %card, i32 0, i32 2
  %14 = ptrtoint ptr %category7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %id_reg.sroa.7.0.extract.trunc, ptr %category7, align 2
  %class9 = getelementptr inbounds %struct.memstick_device_id, ptr %card, i32 0, i32 3
  %15 = ptrtoint ptr %class9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %id_reg.sroa.9.0.extract.trunc, ptr %class9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h_memstick_read_dev_id.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@h_memstick_read_dev_id, %if.end16)) #14
          to label %if.then14 [label %if.end16], !srcloc !127

if.then14:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %id_reg.sroa.5.0.extract.shift = lshr i32 %11, 16
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %conv = and i32 %id_reg.sroa.5.0.extract.shift, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @h_memstick_read_dev_id.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then3, %if.end.if.end16_crit_edge
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 3
  tail call void @complete(ptr noundef %mrq_complete) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then
  %retval.0 = phi i32 [ -11, %if.end16 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memstick_free(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -144
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !117) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !131

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @memstick_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %drv, i32 -20
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not15 = icmp eq i8 %3, 0
  br i1 %tobool4.not15, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %type3.i = getelementptr i8, ptr %dev, i32 -111
  %category8.i = getelementptr i8, ptr %dev, i32 -110
  %class15.i = getelementptr i8, ptr %dev, i32 -109
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i8 [ %3, %while.body.lr.ph ], [ %19, %if.end.while.body_crit_edge ]
  %ids.016 = phi ptr [ %1, %while.body.lr.ph ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %while.body.if.end_crit_edge, label %if.then.i

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %while.body
  %type.i = getelementptr inbounds %struct.memstick_device_id, ptr %ids.016, i32 0, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 1
  %8 = ptrtoint ptr %type3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.i = icmp eq i8 %7, %9
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then.i
  %category.i = getelementptr inbounds %struct.memstick_device_id, ptr %ids.016, i32 0, i32 2
  %10 = ptrtoint ptr %category.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %category.i, align 1
  %12 = ptrtoint ptr %category8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %category8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp10.i = icmp eq i8 %11, %13
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %class.i = getelementptr inbounds %struct.memstick_device_id, ptr %ids.016, i32 0, i32 3
  %14 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %class.i, align 1
  %16 = ptrtoint ptr %class15.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %class15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp17.i = icmp eq i8 %15, %17
  br i1 %cmp17.i, label %land.lhs.true12.i.cleanup_crit_edge, label %land.lhs.true12.i.if.end_crit_edge

land.lhs.true12.i.if.end_crit_edge:               ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true12.i.cleanup_crit_edge:              ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true12.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.memstick_device_id, ptr %ids.016, i32 1
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr, align 1
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %land.lhs.true12.i.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %land.lhs.true12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memstick_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 -111
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.24, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %category = getelementptr i8, ptr %dev, i32 -110
  %2 = ptrtoint ptr %category to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %category, align 2
  %conv2 = zext i8 %3 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.25, i32 noundef %conv2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %class = getelementptr i8, ptr %dev, i32 -109
  %4 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %class, align 1
  %conv8 = zext i8 %5 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.26, i32 noundef %conv8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memstick_device_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %probe = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then8, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call ptr @get_device(ptr noundef %dev) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %rc.0 = phi i32 [ %call, %if.then.if.end10_crit_edge ], [ 0, %if.then8 ], [ -19, %land.lhs.true.if.end10_crit_edge ], [ -19, %entry.if.end10_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memstick_device_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %remove = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %3(ptr noundef %add.ptr) #14
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @put_device(ptr noundef %dev) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memstick_device_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %suspend = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %3(ptr noundef %add.ptr, [1 x i32] %state.coerce) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memstick_device_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %resume = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resume, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %3(ptr noundef %add.ptr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 -111
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @category_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %category = getelementptr i8, ptr %dev, i32 -110
  %0 = ptrtoint ptr %category to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %category, align 2
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @class_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr i8, ptr %dev, i32 -109
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %class, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !59, !60, !61, !63, !64, !66, !67, !69, !71, !72, !74, !75, !76, !78, !80, !82, !83, !85, !86, !88, !89, !90, !92, !94, !95, !97, !99, !100, !101, !103, !104, !106, !107, !109, !111, !113, !115}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__param_cmd_retries, !1, !"__param_cmd_retries", i1 false, i1 false}
!1 = !{!"../drivers/memstick/core/memstick.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_cmd_retriestype229, !1, !"__UNIQUE_ID_cmd_retriestype229", i1 false, i1 false}
!3 = !{ptr @__ksymtab_memstick_detect_change, !4, !"__ksymtab_memstick_detect_change", i1 false, i1 false}
!4 = !{!"../drivers/memstick/core/memstick.c", i32 210, i32 1}
!5 = !{ptr @__ksymtab_memstick_next_req, !6, !"__ksymtab_memstick_next_req", i1 false, i1 false}
!6 = !{!"../drivers/memstick/core/memstick.c", i32 242, i32 1}
!7 = !{ptr @__ksymtab_memstick_new_req, !8, !"__ksymtab_memstick_new_req", i1 false, i1 false}
!8 = !{!"../drivers/memstick/core/memstick.c", i32 256, i32 1}
!9 = !{ptr @__ksymtab_memstick_init_req_sg, !10, !"__ksymtab_memstick_init_req_sg", i1 false, i1 false}
!10 = !{!"../drivers/memstick/core/memstick.c", i32 281, i32 1}
!11 = !{ptr @__ksymtab_memstick_init_req, !12, !"__ksymtab_memstick_init_req", i1 false, i1 false}
!12 = !{!"../drivers/memstick/core/memstick.c", i32 314, i32 1}
!13 = !{ptr @__ksymtab_memstick_set_rw_addr, !14, !"__ksymtab_memstick_set_rw_addr", i1 false, i1 false}
!14 = !{!"../drivers/memstick/core/memstick.c", i32 374, i32 1}
!15 = !{ptr @memstick_alloc_host.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/memstick/core/memstick.c", i32 496, i32 3}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @memstick_alloc_host.__key.1, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/memstick/core/memstick.c", i32 497, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_memstick_alloc_host, !22, !"__ksymtab_memstick_alloc_host", i1 false, i1 false}
!22 = !{!"../drivers/memstick/core/memstick.c", i32 504, i32 1}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/memstick/core/memstick.c", i32 526, i32 27}
!25 = !{ptr @__ksymtab_memstick_add_host, !26, !"__ksymtab_memstick_add_host", i1 false, i1 false}
!26 = !{!"../drivers/memstick/core/memstick.c", i32 540, i32 1}
!27 = !{ptr @__ksymtab_memstick_remove_host, !28, !"__ksymtab_memstick_remove_host", i1 false, i1 false}
!28 = !{!"../drivers/memstick/core/memstick.c", i32 562, i32 1}
!29 = !{ptr @__ksymtab_memstick_free_host, !30, !"__ksymtab_memstick_free_host", i1 false, i1 false}
!30 = !{!"../drivers/memstick/core/memstick.c", i32 573, i32 1}
!31 = !{ptr @__ksymtab_memstick_suspend_host, !32, !"__ksymtab_memstick_suspend_host", i1 false, i1 false}
!32 = !{!"../drivers/memstick/core/memstick.c", i32 585, i32 1}
!33 = !{ptr @__ksymtab_memstick_resume_host, !34, !"__ksymtab_memstick_resume_host", i1 false, i1 false}
!34 = !{!"../drivers/memstick/core/memstick.c", i32 603, i32 1}
!35 = !{ptr @__ksymtab_memstick_register_driver, !36, !"__ksymtab_memstick_register_driver", i1 false, i1 false}
!36 = !{!"../drivers/memstick/core/memstick.c", i32 611, i32 1}
!37 = !{ptr @__ksymtab_memstick_unregister_driver, !38, !"__ksymtab_memstick_unregister_driver", i1 false, i1 false}
!38 = !{!"../drivers/memstick/core/memstick.c", i32 617, i32 1}
!39 = !{ptr @__initcall__kmod_memstick__234_654_memstick_init6, !40, !"__initcall__kmod_memstick__234_654_memstick_init6", i1 false, i1 false}
!40 = !{!"../drivers/memstick/core/memstick.c", i32 654, i32 1}
!41 = !{ptr @__exitcall_memstick_exit, !42, !"__exitcall_memstick_exit", i1 false, i1 false}
!42 = !{!"../drivers/memstick/core/memstick.c", i32 655, i32 1}
!43 = !{ptr @__UNIQUE_ID_author235, !44, !"__UNIQUE_ID_author235", i1 false, i1 false}
!44 = !{!"../drivers/memstick/core/memstick.c", i32 657, i32 1}
!45 = !{ptr @__UNIQUE_ID_file236, !46, !"__UNIQUE_ID_file236", i1 false, i1 false}
!46 = !{!"../drivers/memstick/core/memstick.c", i32 658, i32 1}
!47 = !{ptr @__UNIQUE_ID_license237, !46, !"__UNIQUE_ID_license237", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_description238, !49, !"__UNIQUE_ID_description238", i1 false, i1 false}
!49 = !{!"../drivers/memstick/core/memstick.c", i32 659, i32 1}
!50 = !{ptr @workqueue, !51, !"workqueue", i1 false, i1 false}
!51 = !{!"../drivers/memstick/core/memstick.c", i32 24, i32 33}
!52 = !{ptr @__param_str_cmd_retries, !1, !"__param_str_cmd_retries", i1 false, i1 false}
!53 = !{ptr @cmd_retries, !54, !"cmd_retries", i1 false, i1 false}
!54 = !{!"../drivers/memstick/core/memstick.c", i32 21, i32 21}
!55 = !{ptr @.str.4, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memstick/core/memstick.c", i32 433, i32 2}
!57 = !{ptr @.str.5, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @memstick_check.__UNIQUE_ID_ddebug231, !56, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!61 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memstick/core/memstick.c", i32 453, i32 3}
!63 = !{ptr @memstick_check.__UNIQUE_ID_ddebug232, !62, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!64 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memstick/core/memstick.c", i32 481, i32 2}
!66 = !{ptr @memstick_check.__UNIQUE_ID_ddebug233, !65, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!67 = !{ptr @.str.10, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memstick/core/memstick.c", i32 385, i32 28}
!69 = !{ptr @init_completion.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../include/linux/completion.h", i32 87, i32 2}
!71 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memstick/core/memstick.c", i32 340, i32 3}
!74 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @h_memstick_read_dev_id.__UNIQUE_ID_ddebug230, !73, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memstick/core/memstick.c", i32 186, i32 17}
!78 = !{ptr @memstick_host_class, !79, !"memstick_host_class", i1 false, i1 false}
!79 = !{!"../drivers/memstick/core/memstick.c", i32 185, i32 21}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memstick/core/memstick.c", i32 26, i32 8}
!82 = !{ptr @memstick_host_lock, !81, !"memstick_host_lock", i1 false, i1 false}
!83 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/memstick/core/memstick.c", i32 25, i32 8}
!85 = !{ptr @memstick_host_idr, !84, !"memstick_host_idr", i1 false, i1 false}
!86 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!88 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @memstick_bus_type, !91, !"memstick_bus_type", i1 false, i1 false}
!91 = !{!"../drivers/memstick/core/memstick.c", i32 167, i32 24}
!92 = !{ptr @memstick_dev_groups, !93, !"memstick_dev_groups", i1 false, i1 false}
!93 = !{!"../drivers/memstick/core/memstick.c", i32 165, i32 1}
!94 = !{ptr @memstick_dev_group, !93, !"memstick_dev_group", i1 false, i1 false}
!95 = !{ptr @memstick_dev_attrs, !96, !"memstick_dev_attrs", i1 false, i1 false}
!96 = !{!"../drivers/memstick/core/memstick.c", i32 159, i32 26}
!97 = !{ptr @.str.20, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memstick/core/memstick.c", i32 155, i32 1}
!99 = !{ptr @dev_attr_type, !98, !"dev_attr_type", i1 false, i1 false}
!100 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memstick/core/memstick.c", i32 156, i32 1}
!103 = !{ptr @dev_attr_category, !102, !"dev_attr_category", i1 false, i1 false}
!104 = !{ptr @.str.23, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/memstick/core/memstick.c", i32 157, i32 1}
!106 = !{ptr @dev_attr_class, !105, !"dev_attr_class", i1 false, i1 false}
!107 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/memstick/core/memstick.c", i32 65, i32 26}
!109 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/memstick/core/memstick.c", i32 68, i32 26}
!111 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memstick/core/memstick.c", i32 71, i32 26}
!113 = !{ptr @.str.27, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/memstick/core/memstick.c", i32 624, i32 14}
!115 = !{ptr @memstick_init.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/memstick/core/memstick.c", i32 632, i32 7}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148922157, i64 2148922162, i64 2148922175, i64 2148922219, i64 2148922253, i64 2148922274}
!128 = !{i64 2148364892, i64 2148364918, i64 2148364947, i64 2148364981, i64 2148365012, i64 2148365035}
!129 = !{i8 0, i8 2}
!130 = !{i64 2153529391}
!131 = !{!"branch_weights", i32 2000, i32 1}
